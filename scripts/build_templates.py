#!/usr/bin/env python3
"""Build the annotated ePI XML templates from the WonderDrug example bundles.

Each template is the matching example bundle written as FHIR XML, with a comment
before every element that says whether the element is required or optional and
what it holds. The comments come from the IG's own profiles (element short
descriptions and cardinality), falling back to the base FHIR R5 definitions, so
the templates stay in step with the profiles.

Usage:
  python3 build_templates.py <sushi-output-dir> <fhir-r5-core-package-dir> <output-dir>

  <sushi-output-dir>   fsh-generated/resources (run SUSHI first)
  <fhir-r5-core-...>   ~/.fhir/packages/hl7.fhir.r5.core#5.0.0/package
  <output-dir>         input/examples
"""
import json, os, sys, glob, re
from xml.sax.saxutils import escape, quoteattr

SRC, CORE, OUT = sys.argv[1:4]  # also set by scripts/build_demos.py before import

TEMPLATES = [
    ("bundle-epi-type1-example-wonderdrug", "template-epi-type1", "ePI Type 1 (digital label)",
     "The SmPC as structured narrative: one Composition with its sections, headings, text and images. "
     "No product or clinical resources are included, so the Composition gives its subject and author as text."),
    ("bundle-epi-type2-example-wonderdrug", "template-epi-type2", "ePI Type 2 (product data)",
     "Type 1 plus the product resources: the marketing authorization holder, medicinal product, marketing authorization, "
     "package, manufactured item, administrable product and ingredients. SmPC sections link to these resources with section.entry."),
    ("bundle-epi-type3-example-wonderdrug", "template-epi-type3", "ePI Type 3 (clinical data)",
     "Type 2 plus the clinical resources: indications with structured dosing, a contraindication, an interaction, "
     "an undesirable effect, a warning and the populations (Groups) they apply to."),
]

# ---------------------------------------------------------------------------
# Definitions
# ---------------------------------------------------------------------------
core = {}
for f in glob.glob(os.path.join(CORE, "StructureDefinition-*.json")):
    sd = json.load(open(f))
    if sd.get("derivation") != "constraint" and "snapshot" in sd:
        core[sd["type"]] = sd
core_by_url = {sd["url"]: sd for sd in core.values()}

ig = {}
for f in glob.glob(os.path.join(SRC, "StructureDefinition-*.json")):
    sd = json.load(open(f))
    ig[sd["url"]] = sd

PRIMITIVES = {t for t, sd in core.items() if sd.get("kind") == "primitive-type"}
PRIMITIVES |= {"http://hl7.org/fhirpath/System.String"}

def base_elements(type_name):
    return core[type_name]["snapshot"]["element"]

def find_child(type_name, path, name):
    """Return (element, choice_type) for child `name` of `path` within core type `type_name`."""
    for e in base_elements(type_name):
        p = e["path"]
        if p == f"{path}.{name}":
            return e, None
        if p.endswith("[x]") and p.rsplit(".", 1)[0] == path:
            stem = p.rsplit(".", 1)[1][:-3]
            if name.startswith(stem) and name[len(stem):] and name[len(stem)].isupper():
                return e, name[len(stem):]
    return None, None

def child_order(type_name, path):
    names = []
    for e in base_elements(type_name):
        p = e["path"]
        if p.rsplit(".", 1)[0] == path and p.count(".") == path.count(".") + 1:
            names.append(p.rsplit(".", 1)[1])
    return names

def resolve_context(type_name, path, elem, choice):
    """Where the children of `elem` are defined: (type_name, path)."""
    if "contentReference" in elem:
        ref = elem["contentReference"].split("#")[1]
        return type_name, ref
    types = [t["code"] for t in elem.get("type", [])]
    t = choice if choice else (types[0] if types else None)
    if t in ("BackboneElement", "Element") or (t is None):
        return type_name, elem["path"]
    if t in core:
        return t, t
    return type_name, elem["path"]

def norm(path):
    return path

def diff_elements(sd_url):
    sd = ig.get(sd_url)
    if not sd:
        return []
    return sd.get("differential", {}).get("element", [])

def prof_lookup(sd_url, prof_path, slice_id=None):
    """Find the profile element for prof_path (optionally within a matched slice id)."""
    for e in diff_elements(sd_url):
        if slice_id and e["id"] == slice_id:
            return e
    for e in diff_elements(sd_url):
        if e["path"] == prof_path and ":" not in e["id"].split(".")[-1]:
            # prefer the element whose id has no slice anywhere along the path
            if ":" not in e["id"]:
                return e
    return None

def slice_candidates(sd_url, prof_path):
    return [e for e in diff_elements(sd_url) if e["path"] == prof_path and e.get("sliceName")]

def obj_matches_slice(sd_url, slice_elem, obj):
    sid = slice_elem["id"]
    for e in diff_elements(sd_url):
        if not e["id"].startswith(sid + "."):
            continue
        rel = e["id"][len(sid) + 1:].split(".")
        fixed = {k: v for k, v in e.items() if k.startswith(("fixed", "pattern"))}
        for k, v in fixed.items():
            cur = obj
            for part in rel:
                part = part.split(":")[0]
                if isinstance(cur, list):
                    cur = cur[0] if cur else None
                if not isinstance(cur, dict) or part not in cur:
                    cur = None
                    break
                cur = cur[part]
            if cur is None:
                return False
            if isinstance(v, dict) and isinstance(cur, dict):
                vc = [c.get("code") for c in v.get("coding", [])]
                cc = [c.get("code") for c in cur.get("coding", [])]
                if vc and not set(vc) & set(cc):
                    return False
            elif not isinstance(v, dict) and cur != v:
                return False
        if rel == ["resource"] and e.get("type"):
            profs = [p for t in e["type"] for p in t.get("profile", [])]
            res_prof = (obj.get("resource", {}).get("meta", {}) or {}).get("profile", [])
            if profs and not set(profs) & set(res_prof):
                return False
    return True

def describe(base_elem, prof_elem):
    short = None
    if prof_elem and prof_elem.get("short"):
        short = prof_elem["short"]
    elif base_elem is not None:
        short = base_elem.get("short", "")
    mn = prof_elem.get("min") if prof_elem and "min" in prof_elem else (base_elem.get("min", 0) if base_elem else 0)
    mx = prof_elem.get("max") if prof_elem and "max" in prof_elem else (base_elem.get("max", "*") if base_elem else "*")
    need = "Required" if mn and int(mn) >= 1 else "Optional"
    rep = ", repeatable" if mx == "*" or (mx not in ("0", "1") and mx) else ""
    return f"{need}{rep}. {short.strip().rstrip('.') if short else ''}".rstrip()

def comment(text, ind):
    text = text.replace("--", "-")
    return f"{ind}<!-- {text} -->"

# ---------------------------------------------------------------------------
# Writer
# ---------------------------------------------------------------------------
def write_resource(res, ind, out, top_note=None):
    rtype = res["resourceType"]
    prof = (res.get("meta", {}).get("profile") or [None])[0]
    if top_note:
        out.append(comment(top_note, ind))
    root_prof = ig.get(prof, {})
    title = root_prof.get("title") or rtype
    if prof:
        out.append(comment(f"{title}: {root_prof.get('description', '').split(chr(10))[0]}", ind))
    out.append(f'{ind}<{rtype} xmlns="http://hl7.org/fhir">' if ind == "" else f"{ind}<{rtype}>")
    write_children(res, rtype, rtype, rtype, prof, None, ind + "  ", out, is_resource=True)
    out.append(f"{ind}</{rtype}>")

def ordered_keys(obj, type_name, path, is_resource):
    names = child_order(type_name, path)
    def idx(k):
        k2 = k[1:] if k.startswith("_") else k
        for i, n in enumerate(names):
            if n == k2 or (n.endswith("[x]") and k2.startswith(n[:-3]) and k2[len(n) - 3:len(n) - 2].isupper()):
                return i
        return 10_000
    keys = [k for k in obj if k not in ("resourceType",) and not (k == "id" and not is_resource) and not (k == "url" and path.endswith("extension") is False and False)]
    return sorted(dict.fromkeys(k[1:] if k.startswith("_") else k for k in keys), key=idx)

def write_children(obj, type_name, path, prof_path, prof, ext_sd, ind, out, is_resource=False):
    for k in ordered_keys(obj, type_name, path, is_resource):
        if not is_resource and k == "url" and type_name == "Extension" and path == "Extension":
            continue
        val = obj.get(k)
        under = obj.get("_" + k)
        elem, choice = find_child(type_name, path, k)
        if elem is None:
            raise SystemExit(f"Unknown element {path}.{k}")
        ename = elem["path"].rsplit(".", 1)[1]
        ppath = f"{prof_path}.{ename}"
        vals = val if isinstance(val, list) else [val]
        unders = under if isinstance(under, list) else [under] * len(vals)
        for i, v in enumerate(vals):
            u = unders[i] if i < len(unders) else None
            # description
            prof_elem = None
            cur_ext_sd = ext_sd
            if k in ("extension", "modifierExtension") and isinstance(v, dict):
                url = v.get("url", "")
                if url.startswith("http"):
                    xsd = ig.get(url) or core_by_url.get(url)
                    cur_ext_sd = url
                    desc = (xsd or {}).get("title") or url
                    xs = [e for e in diff_elements(url) if e["path"] == "Extension"]
                    short = xs[0].get("short") if xs and xs[0].get("short") and xs[0].get("short") != desc else (xsd or {}).get("description", "")
                    note = f"Extension: {desc}. {short.split(chr(10))[0]}"
                else:
                    xs = [e for e in diff_elements(ext_sd) if e.get("sliceName") == url and e["path"].endswith("extension")] if ext_sd else []
                    note = f"{url}: {xs[0].get('short')}" if xs and xs[0].get("short") else url
                if i == 0 or True:
                    out.append(comment(note, ind))
            else:
                slice_elem = None
                for s in slice_candidates(prof, ppath) if prof else []:
                    if isinstance(v, dict) and obj_matches_slice(prof, s, v):
                        slice_elem = s
                        break
                prof_elem = slice_elem or (prof_lookup(prof, ppath) if prof else None)
                if k == "div":
                    pass  # no comment before <div>: SUSHI's XML reader cannot attach comments to xhtml
                elif i == 0 or slice_elem is not None:
                    shown = ppath.split('.', 1)[-1] if '.' in ppath else ppath
                    if ".extension." in "." + shown:
                        shown = shown.rsplit("extension.", 1)[-1]
                    if shown.endswith("[x]") or shown.split(".")[-1].endswith("[x]"):
                        shown = shown.rsplit(".", 1)[0] + "." + k if "." in shown else k
                    out.append(comment(f"{shown}: {describe(elem, prof_elem)}", ind))
            tag = k
            ctx_type, ctx_path = resolve_context(type_name, path, elem, choice)
            is_prim = (choice or (elem.get("type") or [{}])[0].get("code")) in PRIMITIVES or not isinstance(v, (dict,)) and v is not None
            if k == "div":
                out.append(ind + v)
                continue
            if k in ("resource",) or (k == "contained"):
                out.append(f"{ind}<{tag}>")
                write_resource(v, ind + "  ", out)
                out.append(f"{ind}</{tag}>")
                continue
            attrs = ""
            if isinstance(v, dict) and "id" in v and not is_resource_type(v):
                attrs += f" id={quoteattr(v['id'])}"
            if isinstance(v, dict) and "url" in v and k in ("extension", "modifierExtension"):
                attrs += f" url={quoteattr(v['url'])}"
            if not isinstance(v, dict) and v is not None:
                sv = json.dumps(v) if isinstance(v, bool) else str(v)
                if isinstance(v, bool):
                    sv = "true" if v else "false"
                if u:
                    out.append(f"{ind}<{tag} value={quoteattr(sv)}>")
                    write_children(u, "Element", "Element", ppath, None, cur_ext_sd, ind + "  ", out)
                    out.append(f"{ind}</{tag}>")
                else:
                    out.append(f"{ind}<{tag} value={quoteattr(sv)}/>")
                continue
            if v is None and u:
                out.append(f"{ind}<{tag}>")
                write_children(u, "Element", "Element", ppath, None, cur_ext_sd, ind + "  ", out)
                out.append(f"{ind}</{tag}>")
                continue
            out.append(f"{ind}<{tag}{attrs}>")
            # children of extensions are described from the extension definition
            sub_prof = prof
            write_children(v, ctx_type, ctx_path, ppath, sub_prof, cur_ext_sd, ind + "  ", out)
            out.append(f"{ind}</{tag}>")

def is_resource_type(v):
    return isinstance(v, dict) and "resourceType" in v

ENTRY_NOTES = {
    "Composition": "The document itself: SmPC sections with headings, text and images. Always the first entry.",
    "Organization": "The marketing authorization holder (referenced as the Composition author).",
    "MedicinalProductDefinition": "The medicinal product the ePI describes (the Composition subject).",
    "RegulatedAuthorization": "The marketing authorization for the product.",
    "PackagedProductDefinition": "The marketed pack: its packaging layers and what each layer contains.",
    "ManufacturedItemDefinition": "The dose form as manufactured, in its primary packaging.",
    "AdministrableProductDefinition": "The dose form as given to the patient, after any transformation.",
    "Ingredient": "One ingredient of the manufactured item, with its role and strength.",
    "ClinicalUseDefinition": "One clinical use statement (indication, contraindication, interaction, undesirable effect or warning).",
    "Group": "A population that a clinical use statement or dosing guideline applies to.",
}

def build(src_id, tpl_id, label, summary):
    b = json.load(open(os.path.join(SRC, f"Bundle-{src_id}.json")))
    b["id"] = tpl_id
    out = ['<?xml version="1.0" encoding="UTF-8"?>',
           "<!--",
           f"  {label} TEMPLATE",
           f"  {summary}",
           "",
           "  How to use: copy this file and replace the WonderDrug content with your own product.",
           "  Each element is preceded by a comment that says whether it is Required or Optional",
           "  and what it holds, taken from the ePI profiles. Every fullUrl is a UUID (urn:uuid:...),",
           "  and references between resources in the Bundle use the same UUIDs.",
           f"  Generated from the example {src_id} by scripts/build_templates.py - do not edit by hand.",
           "-->"]
    # write bundle with entry notes
    body = []
    write_resource(b, "", body)
    # add a banner before each entry
    final = []
    for line in body:
        m = re.match(r"^(\s*)<resource>$", line)
        final.append(line)
    out += final
    xml = "\n".join(out) + "\n"
    # insert entry banners: before each <entry>, look ahead for the resource type
    lines = xml.split("\n")
    res = []
    for i, line in enumerate(lines):
        m = re.match(r"^(\s*)<entry>$", line)
        if m:
            for j in range(i + 1, min(i + 12, len(lines))):
                mm = re.match(r"^\s*<(\w+)>$", lines[j])
                if mm and mm.group(1) in ENTRY_NOTES:
                    banner = f"{m.group(1)}<!-- ===== {mm.group(1)}: {ENTRY_NOTES[mm.group(1)]} ===== -->"
                    if res and res[-1].strip().startswith("<!-- entry:"):
                        res.insert(len(res) - 1, banner)
                    else:
                        res.append(banner)
                    break
        res.append(line)
    path = os.path.join(OUT, f"Bundle-{tpl_id}.xml")
    open(path, "w").write("\n".join(res))
    print("wrote", path)

if __name__ == "__main__":
    for t in TEMPLATES:
        build(*t)
