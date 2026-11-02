#!/usr/bin/env python3
"""Build the rendered ePI showcase pages (input/images/examples/*.html) from the example Bundles.

Each page is generated from a SUSHI-built example Bundle and styled with
input/images/epi-styles.css. Every value on a page comes from the Bundle, and the
pages show where it came from (resource and element), so they double as a tour of
the structured content in each ePI type.

Usage:
  python3 build_demos.py <sushi-output-dir> <output-dir>
  (normally: python3 scripts/build_demos.py fsh-generated/resources input/images/examples)
Run SUSHI first. Needs Python 3 only.
"""
import html, json, os, re, sys
from collections import OrderedDict

SRC, OUT = sys.argv[1:3]

DEMOS = [
    ("bundle-epi-type1-example-wonderdrug", 1),
    ("bundle-epi-type2-example-wonderdrug", 2),
    ("bundle-epi-type2-example-wonderdrug-suspension", 2),
    ("bundle-epi-type3-example-wonderdrug", 3),
]
# Patient-facing documents for the same product. Each is its own ePI document
# (Bundle with one Composition); the demo page shows it in its own tab.
TABLET_DOCS = {"pil": "bundle-epi-type1-example-wonderdrug-pil", "ifu": None}
SUSPENSION_DOCS = {"pil": "bundle-epi-type1-example-wonderdrug-suspension-pil",
                   "ifu": "bundle-epi-type1-example-wonderdrug-suspension-ifu"}
COMPANIONS = {
    "bundle-epi-type1-example-wonderdrug": TABLET_DOCS,
    "bundle-epi-type2-example-wonderdrug": TABLET_DOCS,
    "bundle-epi-type3-example-wonderdrug": TABLET_DOCS,
    "bundle-epi-type2-example-wonderdrug-suspension": SUSPENSION_DOCS,
}
IFU_SHOWCASE = "bundle-epi-type2-example-wonderdrug-suspension.html"
DOC_KIND = {"smpc": "SmPC", "pil": "Package leaflet", "ifu": "Instructions for use"}
TYPE_NAMES = {1: "Digital Label", 2: "Product Data", 3: "Clinical Data"}

E = lambda s: html.escape(str(s), quote=True)


# ---------------------------------------------------------------------------
# Bundle helpers
# ---------------------------------------------------------------------------
class B:
    def __init__(self, bundle):
        self.bundle = bundle
        self.entries = bundle.get("entry", [])
        self.by_url = {e["fullUrl"]: e["resource"] for e in self.entries}

    def all(self, rtype):
        return [e["resource"] for e in self.entries if e["resource"]["resourceType"] == rtype]

    def one(self, rtype):
        r = self.all(rtype)
        return r[0] if r else None

    def ref(self, reference):
        if not reference:
            return None
        return self.by_url.get(reference.get("reference") if isinstance(reference, dict) else reference)


def cc_text(cc):
    """Display text for a CodeableConcept (text, then first display, then code)."""
    if isinstance(cc, list):
        cc = cc[0] if cc else None
    if not cc:
        return ""
    if cc.get("text"):
        return cc["text"]
    for c in cc.get("coding", []):
        if c.get("display"):
            return c["display"]
        if c.get("code"):
            return c["code"]
    return ""


def cc_code(cc):
    for c in (cc or {}).get("coding", []):
        sysname = {"http://snomed.info/sct": "SNOMED CT", "http://www.whocc.no/atc": "ATC",
                   "https://spor.ema.europa.eu/rmswi": "SPOR RMS", "http://fdasis.nlm.nih.gov": "UNII",
                   "http://terminology.hl7.org/CodeSystem/v3-Race": "HL7 Race"}.get(c.get("system"))
        if sysname:
            return f'{sysname} {c.get("code")}'
        if c.get("system", "").startswith("http://hl7.org/fhir/"):
            return f'FHIR {c.get("code")}'
    return ""


def plural(n, word):
    w = word.lower()
    if n == 1 or n == 1.0:
        return f"{fmt(n)} {w}"
    if w.endswith("y") and len(w) > 1 and w[-2] not in "aeiou":
        return f"{fmt(n)} {w[:-1]}ies"
    return f"{fmt(n)} {w}s"


def fmt(v):
    if isinstance(v, float) and v.is_integer():
        v = int(v)
    if isinstance(v, (int,)) and abs(v) >= 1000:
        return f"{v:,}"
    return str(v)


def qty(q, count=True):
    if not q:
        return ""
    unit = q.get("unit") or q.get("code") or ""
    if count and q.get("system") == "http://hl7.org/fhir/unit-of-presentation":
        return plural(q.get("value"), unit)
    return f'{fmt(q.get("value"))} {unit}'.strip()


def ratio(r):
    if not r:
        return ""
    n, d = r.get("numerator", {}), r.get("denominator", {})
    den = qty(d) if d.get("value") != 1 else (d.get("unit") or "").lower()
    return f"{qty(n, count=False)} per {den}"


def duration(d):
    if not d:
        return ""
    unit = {"a": "year", "mo": "month", "wk": "week", "d": "day", "h": "hour"}.get(d.get("code"), d.get("unit", ""))
    return plural(d.get("value"), unit)


def months(d):
    if not d:
        return None
    v = d.get("value")
    return {"a": v * 12, "mo": v, "d": None}.get(d.get("code"))


def src(path):
    return f'<div class="mk-src">FHIR source: <code>{E(path)}</code></div>'


def chip(text, cls="ch-gr"):
    return f'<span class="chip {cls}">{E(text)}</span>'


def section_card(title, body, icon="", count=None, accent=None, badge=None):
    style = f' style="border-left:3px solid var(--{accent})"' if accent else ""
    cnt = f'<span class="clscount">{count}</span>' if count is not None else ""
    bdg = f'<span class="chip ch-mk" style="margin-left:6px;font-size:9px">{E(badge)}</span>' if badge else ""
    return (f'<div class="cls"{style}><div class="clsh"><span class="clsicon">{icon}</span>'
            f'<span class="clstitle">{E(title)}</span>{cnt}{bdg}</div><div class="clsb">{body}</div></div>')


def inner(title, body, style=""):
    st = f' style="{style}"' if style else ""
    return f'<div class="is"{st}><div class="isl">{E(title)}</div><div class="isb">{body}</div></div>'


def fields(pairs):
    return '<div class="ifs">' + "".join(
        f'<div class="inf"><span class="il">{E(k)}</span><span class="iv">{v}</span></div>' for k, v in pairs if v) + "</div>"


# ---------------------------------------------------------------------------
# Drawings (inline SVG): tablet, bottle, carton artwork
# ---------------------------------------------------------------------------
def tablet_svg(color="White", imprint="", scored=False, size=68):
    fill = {"white": "#ffffff", "pink": "#fbcfe8", "green": "#bbf7d0", "yellow": "#fef9c3"}.get(color.lower(), "#ffffff")
    score = '<line x1="15" y1="50" x2="85" y2="50" stroke="#c7cbd1" stroke-width="1.5" stroke-dasharray="4,2"/>' if scored else ""
    txt = f'<text x="50" y="55" font-family="Arial" font-size="13" font-weight="700" text-anchor="middle" fill="#6b7280">{E(imprint)}</text>' if imprint else ""
    return (f'<svg width="{size}" height="{size}" viewBox="0 0 100 100"><defs><radialGradient id="tg{abs(hash((color, imprint, scored))) % 9999}" cx="40%" cy="35%" r="60%">'
            f'<stop offset="0%" stop-color="#fff"/><stop offset="100%" stop-color="{fill}"/></radialGradient></defs>'
            f'<circle cx="50" cy="50" r="45" fill="{fill}" stroke="#cbd0d6" stroke-width="1.5"/>'
            f'<ellipse cx="50" cy="47" rx="40" ry="38" fill="none" stroke="#fff" stroke-width="2.5" opacity=".7"/>{score}{txt}</svg>')


def bottle_svg(size=68):
    return (f'<svg width="{size}" height="{size}" viewBox="0 0 100 100"><rect x="34" y="6" width="32" height="14" rx="3" fill="#e5e7eb" stroke="#9ca3af"/>'
            '<rect x="22" y="20" width="56" height="74" rx="10" fill="#f8fafc" stroke="#94a3b8" stroke-width="1.5"/>'
            '<rect x="22" y="46" width="56" height="26" fill="#dbeafe"/><text x="50" y="63" font-family="Arial" font-size="9" font-weight="700" text-anchor="middle" fill="#1d4ed8">WonderDrug</text>'
            '<line x1="26" y1="40" x2="74" y2="40" stroke="#2563eb" stroke-dasharray="3,2"/><text x="50" y="37" font-family="Arial" font-size="6" text-anchor="middle" fill="#2563eb">fill to here</text></svg>')


def syringe_svg(size=68):
    return (f'<svg width="{size}" height="{size}" viewBox="0 0 100 100"><rect x="18" y="44" width="56" height="14" rx="3" fill="#f8fafc" stroke="#94a3b8" stroke-width="1.5"/>'
            + "".join(f'<line x1="{24+i*6}" y1="44" x2="{24+i*6}" y2="{50 if i % 2 else 53}" stroke="#64748b"/>' for i in range(9))
            + '<rect x="74" y="48" width="14" height="6" fill="#cbd5e1"/><rect x="86" y="42" width="5" height="18" rx="1" fill="#94a3b8"/>'
              '<rect x="8" y="49" width="10" height="4" fill="#cbd5e1"/></svg>')


def artwork_svg(product, strength, count_text, form_text):
    return (f'<svg width="300" height="220" viewBox="0 0 300 220" xmlns="http://www.w3.org/2000/svg">'
            '<rect x="4" y="4" width="292" height="212" rx="12" fill="#eff6ff" stroke="#bfdbfe" stroke-width="2"/>'
            '<rect x="4" y="4" width="292" height="66" rx="12" fill="#2563eb"/><rect x="4" y="56" width="292" height="14" fill="#2563eb"/>'
            f'<text x="150" y="46" font-family="Arial" font-size="24" font-weight="700" text-anchor="middle" fill="#fff">{E(product)}</text>'
            f'<text x="150" y="100" font-family="Arial" font-size="16" font-weight="700" text-anchor="middle" fill="#1e3a8a">{E(strength)}</text>'
            f'<text x="150" y="122" font-family="Arial" font-size="11" text-anchor="middle" fill="#475569">{E(form_text)}</text>'
            '<rect x="40" y="138" width="220" height="1" fill="#bfdbfe"/>'
            f'<text x="150" y="162" font-family="Arial" font-size="12" text-anchor="middle" fill="#1f2937">{E(count_text)}</text>'
            '<text x="150" y="182" font-family="Arial" font-size="9" text-anchor="middle" fill="#64748b">Paracetamol · For oral use · Read the package leaflet before use</text>'
            '<text x="150" y="202" font-family="Arial" font-size="8" text-anchor="middle" fill="#94a3b8">Illustrative artwork generated from the PackagedProductDefinition</text></svg>')


# ---------------------------------------------------------------------------
# Page parts
# ---------------------------------------------------------------------------
RESOURCE_ICONS = OrderedDict([
    ("Composition", ("&#128196;", "SmPC document")), ("Organization", ("&#127970;", "Organizations")),
    ("MedicinalProductDefinition", ("&#128138;", "Medicinal products")), ("RegulatedAuthorization", ("&#128220;", "Authorizations")),
    ("PackagedProductDefinition", ("&#128230;", "Packs")), ("DeviceDefinition", ("&#129682;", "Devices")),
    ("ManufacturedItemDefinition", ("&#9881;", "Manufactured items")), ("AdministrableProductDefinition", ("&#128167;", "Administrable products")),
    ("Ingredient", ("&#129514;", "Ingredients")), ("ClinicalUseDefinition", ("&#127919;", "Clinical use statements")),
    ("Group", ("&#128101;", "Populations")),
])


def count_codings(obj):
    n = 0
    if isinstance(obj, dict):
        if "system" in obj and "code" in obj:
            n += 1
        for v in obj.values():
            n += count_codings(v)
    elif isinstance(obj, list):
        for v in obj:
            n += count_codings(v)
    return n


def count_sections(sections):
    return sum(1 + count_sections(s.get("section", [])) for s in sections)


def hero(b, comp, mpd, ptype):
    name = (mpd or {}).get("name", [{}])[0].get("productName") or comp.get("title")
    parts = {p["type"]["coding"][0]["code"]: p["part"] for p in (mpd or {}).get("name", [{}])[0].get("part", [])} if mpd else {}
    brand = parts.get("InventedNamePart") or name.split(" ")[0]
    sub = " ".join(x for x in [parts.get("StrengthPart"), parts.get("DoseFormPart")] if x)
    if not sub:
        subj = comp.get("subject", [{}])[0].get("display", "")
        sub = subj[len(brand):].strip() if subj.startswith(brand) else (subj or "Summary of Product Characteristics")
    legal = cc_text((mpd or {}).get("legalStatusOfSupply"))
    chips_ = [f'<span class="chip ch-g">&#9679; {E(comp.get("status", "").capitalize())}</span>',
              chip(f'Version {comp.get("version", "")}'), chip(comp.get("language", "").upper()),
              chip(f"ePI Type {ptype} · {TYPE_NAMES[ptype]}", "ch-b")]
    if legal:
        chips_.append(chip("Non-prescription" if "not subject" in legal.lower() else "Prescription only", "ch-dk"))
    return (f'<header class="hero"><h1>{E(brand)}</h1><p class="sub">{E(sub)}</p>'
            f'<div class="chips">{"".join(chips_)}</div></header>')


def stats_strip(b, comp):
    resources = len(b.entries) + len(comp.get("contained", []))
    secs = count_sections(comp.get("section", []))
    links = len(re.findall(r'"entry":', json.dumps(comp)))
    codings = count_codings(b.bundle)
    structured = len(b.entries) - 1
    tiles = [(resources, "FHIR resources"), (secs, "Coded SmPC sections"), (codings, "Coded concepts"),
             (structured, "Structured data records"), (sum(len(s.get("entry", [])) for s in walk_sections(comp.get("section", []))), "Text-to-data links")]
    return ('<div class="showcase-strip">' + "".join(
        f'<div class="ss-tile"><div class="ss-n">{n}</div><div class="ss-l">{E(l)}</div></div>' for n, l in tiles) + "</div>")


def walk_sections(sections):
    for s in sections:
        yield s
        yield from walk_sections(s.get("section", []))


def document_panel(b, comp, ptype, docs=None):
    bundle = b.bundle
    rows = [("Bundle ID", f'<div class="v vm">{E(bundle["id"])}</div>'), ("Type", f'<div class="v">{E(bundle["type"])}</div>'),
            ("Timestamp", f'<div class="v">{E(bundle.get("timestamp", "")[:10])}</div>'),
            ("Identifier", f'<div class="v vm">{E(bundle.get("identifier", {}).get("value", "")[:22])}&#8230;</div>')]
    meta = "".join(f'<div class="di"><label>{k}</label>{v}</div>' for k, v in rows)
    tiles = ""
    counts = OrderedDict()
    for e in b.entries:
        counts[e["resource"]["resourceType"]] = counts.get(e["resource"]["resourceType"], 0) + 1
    for rt, (icon, label) in RESOURCE_ICONS.items():
        n = counts.get(rt, 0)
        cls = "rt on" if n else "rt off"
        tiles += f'<div class="{cls}"><span class="rt-i">{icon}</span><span class="rt-n">{n}</span><span class="rt-l">{label}</span><span class="rt-t">{rt}</span></div>'
    entries = "".join(
        f'<tr><td>{E(e["resource"]["resourceType"])}</td><td class="mono">{E(e["resource"].get("id", ""))}</td><td class="mono">{E(e["fullUrl"][:22])}&#8230;</td></tr>'
        for e in b.entries)
    ladder = ""
    for t in (1, 2, 3):
        state = "now" if t == ptype else ("done" if t < ptype else "next")
        what = {1: "SmPC narrative, coded sections, embedded images",
                2: "+ product, authorization, packs, manufactured and administrable items, ingredients",
                3: "+ indications with structured dosing, contraindications, interactions, side effects, warnings, populations"}[t]
        ladder += f'<div class="lad {state}"><div class="lad-t">Type {t} · {TYPE_NAMES[t]}</div><div class="lad-d">{what}</div></div>'
    return (f'{stats_strip(b, comp)}'
            f'<div class="sc ab"><div class="sc-lbl">Bundle</div><div class="sc-body"><div class="dg dg4">{meta}</div></div></div>'
            f'<div class="sc at"><div class="sc-lbl">What this ePI carries</div><div class="sc-body"><div class="rt-grid">{tiles}</div></div></div>'
            f'{docset_card(comp, docs) if docs else ""}'
            f'<div class="sc ap"><div class="sc-lbl">ePI types build on each other</div><div class="sc-body"><div class="ladder">{ladder}</div></div></div>'
            f'<div class="sc"><div class="sc-lbl">Bundle entries ({len(b.entries)})</div><div class="sc-body"><table class="ctbl"><thead><tr><th>Resource</th><th>id</th><th>fullUrl</th></tr></thead><tbody>{entries}</tbody></table></div></div>')


def narrative(div, comp):
    """Section narrative with contained images resolved to data URIs."""
    inner_html = re.sub(r"^<div[^>]*>|</div>$", "", div.strip())
    def img(m):
        bid = m.group(1)
        for c in comp.get("contained", []):
            if c.get("id") == bid:
                return f'src="data:{c["contentType"]};base64,{c["data"]}"'
        return m.group(0)
    return re.sub(r"src=['\"]#([^'\"]+)['\"]", img, inner_html)


def composition_panel(b, comp):
    toc, body = [], []

    def render(sec, depth):
        tag = {1: "h2", 2: "h3"}.get(depth, "h4")
        links = ""
        for e in sec.get("entry", []):
            r = b.ref(e)
            if r:
                label = res_label(r)
                links += f'<span class="lnk">&#128279; {E(r["resourceType"])}: {E(label)}</span>'
        if links:
            links = f'<div class="lnks">{links}</div>'
        anchor = sec.get("id", "")
        if depth == 2:
            toc.append(f'<a href="#{E(anchor)}">{E(sec.get("title", ""))}</a>')
        txt = narrative(sec["text"]["div"], comp) if sec.get("text") else ""
        kids = "".join(render(s, depth + 1) for s in sec.get("section", []))
        return (f'<div class="ns" id="{E(anchor)}"><div class="ns-h"><{tag}>{E(sec.get("title", ""))}</{tag}></div>'
                f'{txt}{links}{kids}</div>')

    for s in comp.get("section", []):
        body.append(render(s, 1))
    return (f'<div class="comp-grid"><nav class="toc"><div class="toc-h">Sections</div>{"".join(toc)}</nav>'
            f'<div>{"".join(body)}</div></div>')


def companion_panel(cb, kind):
    """A separate ePI document (package leaflet or instructions for use) for the same product."""
    if cb is None:
        if kind == "ifu":
            return (f'<div class="teaser"><div class="teaser-i">&#128203;</div><div><div class="teaser-t">No instructions for use for this product</div>'
                    f'<div class="teaser-d">Tablets are swallowed whole, so no separate instructions for use are needed. An instructions for use is its own ePI document '
                    f'with its own document type. See the <a href="{IFU_SHOWCASE}">WonderDrug 250 mg/5 mL powder for oral suspension</a> example, '
                    f'which carries step-by-step instructions and a picture for preparing the suspension and using the oral syringe.</div></div></div>')
        return '<div class="teaser"><div class="teaser-i">&#128203;</div><div><div class="teaser-t">No package leaflet in this example</div></div></div>'
    b = B(cb)
    comp = b.one("Composition")
    t = (comp.get("type", {}).get("coding") or [{}])[0]
    n_sec = count_sections(comp.get("section", []))
    n_img = len(comp.get("contained", []))
    pairs = [("Document type", f'{E(t.get("display", ""))} <span class="mono faint">{E(t.get("code", ""))}</span>'),
             ("Bundle", f'<span class="mono">{E(cb["id"])}</span>'),
             ("Coded sections", str(n_sec)), ("Embedded images", str(n_img))]
    head = "".join(f'<div class="di"><label>{k}</label><div class="v">{v}</div></div>' for k, v in pairs)
    return (f'<div class="sc ab"><div class="sc-lbl">Separate ePI document for the same product</div><div class="sc-body"><div class="dg dg4">{head}</div></div></div>'
            f'{composition_panel(b, comp)}')


def docset_card(comp, docs):
    rows = []
    def row(kind, c, bid):
        t = (c.get("type", {}).get("coding") or [{}])[0]
        rows.append(f'<tr><td><b>{E(DOC_KIND[kind])}</b></td><td>{E(t.get("display", ""))}</td><td class="mono">{E(t.get("code", ""))}</td><td class="mono">{E(bid)}</td></tr>')
    row("smpc", comp, "this Bundle")
    for kind in ("pil", "ifu"):
        cb = docs.get(kind)
        if cb is not None:
            row(kind, B(cb).one("Composition"), cb["id"])
        elif kind == "ifu":
            rows.append('<tr><td><b>Instructions for use</b></td><td colspan="3" class="faint">Not needed for this product. See the suspension example.</td></tr>')
    return (f'<div class="sc ag"><div class="sc-lbl">Document set for this product</div><div class="sc-body">'
            f'<table class="ctbl"><thead><tr><th>Document</th><th>Composition.type</th><th>Code</th><th>Bundle</th></tr></thead><tbody>{"".join(rows)}</tbody></table></div></div>')


def res_label(r):
    rt = r["resourceType"]
    if rt == "MedicinalProductDefinition":
        return r.get("name", [{}])[0].get("productName", r.get("id"))
    if rt == "Ingredient":
        return cc_text(r.get("substance", {}).get("code", {}).get("concept")).capitalize()
    if rt == "ManufacturedItemDefinition":
        return cc_text(r.get("manufacturedDoseForm"))
    if rt == "AdministrableProductDefinition":
        return cc_text(r.get("administrableDoseForm"))
    if rt in ("PackagedProductDefinition", "Organization", "Group"):
        return r.get("name", r.get("id"))
    if rt == "RegulatedAuthorization":
        return r.get("identifier", [{}])[0].get("value", "")
    if rt == "ClinicalUseDefinition":
        return cud_label(r)
    return r.get("id", "")


def cud_label(c):
    t = c.get("type")
    if t == "indication":
        return cc_text(c["indication"].get("diseaseSymptomProcedure", {}).get("concept"))
    if t == "contraindication":
        return cc_text(c["contraindication"].get("diseaseSymptomProcedure", {}).get("concept"))
    if t == "interaction":
        return cc_text(c["interaction"]["interactant"][0].get("itemCodeableConcept"))
    if t == "undesirable-effect":
        return cc_text(c["undesirableEffect"].get("symptomConditionEffect", {}).get("concept"))
    if t == "warning":
        return "Warning"
    return t


def organization_panel(b, ptype):
    cards = ""
    orgs = b.all("Organization")
    if not orgs:
        comp = b.one("Composition")
        return (f'<div class="og"><div class="oc"><div class="och"><div class="role" style="color:var(--accent)">Author (Marketing authorization holder)</div>'
                f'<div class="name">{E(comp.get("author", [{}])[0].get("display", ""))}</div></div>'
                f'<div class="ocb"><div class="or"><span class="ol">Given as</span><span class="ov">Text in Composition.author</span></div></div></div></div>'
                f'<div class="type1-note"><span class="icon">&#128712;</span><span>Type 1 names the author as text. From Type 2 the organization is a structured Organization resource with identifiers, address and contacts.</span></div>')
    for o in orgs:
        c = o.get("contact", [{}])[0]
        tel = {t["system"]: t["value"] for t in c.get("telecom", [])}
        rows = [("Identifier", f'<span class="ovm">{E(o.get("identifier", [{}])[0].get("value", ""))}</span>'),
                ("Role", E(cc_text(o.get("type", [{}])[0]))), ("Address", E(c.get("address", {}).get("text", ""))),
                ("Phone", E(tel.get("phone", ""))), ("Email", E(tel.get("email", ""))), ("Website", E(tel.get("url", "")))]
        body = "".join(f'<div class="or"><span class="ol">{k}</span><span class="ov">{v}</span></div>' for k, v in rows if v)
        cards += (f'<div class="oc"><div class="och"><div class="role" style="color:var(--accent)">{E(cc_text(o.get("type", [{}])[0]))}</div>'
                  f'<div class="name">{E(o.get("name"))}</div></div><div class="ocb">{body}{src("Organization/" + o["id"])}</div></div>')
    return f'<div class="og">{cards}</div>'


def type_teaser(what, ptype_needed):
    return (f'<div class="teaser"><div class="teaser-i">&#10024;</div><div><div class="teaser-t">Available from ePI Type {ptype_needed}</div>'
            f'<div class="teaser-d">{what}</div></div></div>')


def product_panel(b):
    mpds = b.all("MedicinalProductDefinition")
    if not mpds:
        return type_teaser("Type 2 adds the structured product record: active substance and strength, excipients, "
                           "tablet appearance and image, every pack with its GTIN and artwork, shelf life and storage, and the marketing authorization.", 2)
    mids, apds, ppds = b.all("ManufacturedItemDefinition"), b.all("AdministrableProductDefinition"), b.all("PackagedProductDefinition")
    ings, ras, dds = b.all("Ingredient"), b.all("RegulatedAuthorization"), b.all("DeviceDefinition")
    out = f'<div class="ps-row"><span>{plural(len(mpds), "medicinal product")} · {plural(len(ppds), "pack")} · {plural(len(ings), "ingredient")}</span></div>'
    modals = ""
    for i, mpd in enumerate(mpds, 1):
        name = mpd["name"][0]["productName"]
        actives = [g for g in ings if cc_text(g.get("role")).lower() == "active"]
        excip = [g for g in ings if cc_text(g.get("role")).lower() == "excipient"]
        mid = mids[0] if mids else {}
        apd = apds[0] if apds else {}
        route = cc_text(apd.get("routeOfAdministration", [{}])[0].get("code"))
        mform, aform = cc_text(mid.get("manufacturedDoseForm")), cc_text(apd.get("administrableDoseForm"))
        subst = ", ".join(cc_text(g["substance"]["code"]["concept"]).capitalize() for g in actives)
        strength = ""
        if actives:
            st = actives[0]["substance"].get("strength", [{}])[0]
            strength = st.get("textConcentration") or ratio(st.get("presentationRatio"))
        head = (f'<summary class="pah"><span class="pnum">{i}</span><span class="pname">{E(name)}</span><span class="psub">{E(subst)}</span>'
                f'<div class="pbadges">{chip(cc_text(mpd.get("status")) or "Active", "ch-g")}{chip(" · ".join(x for x in [route.replace(" use", ""), aform] if x))}</div>'
                f'<span class="pchev">&#9660;</span></summary>')
        body = inner("Substance & form", fields([("Active substance", E(subst)), ("Strength", E(strength)),
                                                  ("Dose form", E(mform)), ("Route", E(route)),
                                                  ("ATC", E(mpd.get("classification", [{}])[0].get("coding", [{}])[0].get("code", "")))]))
        # manufactured vs administrable
        if mform and aform and mform != aform:
            steps = (f'<div class="flow"><div class="flow-box"><div class="flow-l">Manufactured item</div><div class="flow-v">{E(mform)}</div>'
                     f'<div class="flow-s">{E(cc_text(mid.get("unitOfPresentation")))} · as supplied</div></div>'
                     f'<div class="flow-arrow"><span>&#10140;</span><div>{E(apd.get("description", "Transformation"))}</div></div>'
                     f'<div class="flow-box adm"><div class="flow-l">Administrable product</div><div class="flow-v">{E(aform)}</div>'
                     f'<div class="flow-s">as given to the patient</div></div></div>')
            body += inner("Manufactured item → administrable product", steps + src("ManufacturedItemDefinition → AdministrableProductDefinition.producedFrom"), "border-left:3px solid var(--purple)")
        elif mform:
            body += inner("Manufactured item → administrable product",
                          f'<div class="flow-one">&#10004; Taken as supplied: the administrable dose form (<b>{E(aform)}</b>) is the same as the manufactured dose form (<b>{E(mform)}</b>).</div>')
        # ingredients
        rows = ""
        for g in actives + excip:
            role = cc_text(g.get("role"))
            st = g["substance"].get("strength", [{}])
            amount = (st[0].get("textConcentration") or ratio(st[0].get("presentationRatio"))) if st else ""
            known = '<span class="chip ch-am" style="font-size:9px">Known effect</span>' if g.get("allergenicIndicator") or (role == "Excipient" and amount) else ""
            code = cc_code(g["substance"]["code"].get("concept"))
            rows += (f'<tr><td><span class="chip {"ch-b" if role == "Active" else "ch-gr"}" style="font-size:9px">{E(role)}</span></td>'
                     f'<td>{E(cc_text(g["substance"]["code"]["concept"]).capitalize())} {known}</td><td>{E(amount)}</td><td class="mono">{E(code)}</td></tr>')
        body += inner(f"Ingredients ({len(actives) + len(excip)})", f'<table class="ctbl"><thead><tr><th>Role</th><th>Substance</th><th>Amount</th><th>Code</th></tr></thead><tbody>{rows}</tbody></table>')
        # appearance
        props = {p["type"]["coding"][0]["code"]: p for p in mid.get("property", [])}
        apd_props = {p["type"]["coding"][0]["code"]: p for p in apd.get("property", [])}
        def pv(p):
            return cc_text(p.get("valueCodeableConcept")) or p.get("valueMarkdown", "")
        app = [(k.replace("surfaceform", "surface").capitalize(), pv(p)) for k, p in props.items() if k != "image"]
        app += [(f"{k.capitalize()} (administrable)", pv(p)) for k, p in apd_props.items() if k not in props and k != "image"]
        figs = ""
        if "tablet" in mform.lower():
            imprint = pv(props.get("imprint", {})) if "imprint" in props else ""
            figs += f'<figure class="tab-fig">{tablet_svg(pv(props.get("color", {})) or "White", scored="score" in props)}<figcaption>Front</figcaption></figure>'
            figs += f'<figure class="tab-fig">{tablet_svg(pv(props.get("color", {})) or "White", imprint)}<figcaption>Back</figcaption></figure>'
        elif "powder" in mform.lower():
            figs += f'<figure class="tab-fig">{bottle_svg()}<figcaption>Bottle</figcaption></figure>'
        if "image" in props:
            att = props["image"]["valueAttachment"]
            figs = (f'<figure class="tab-fig"><img src="data:{att["contentType"]};base64,{att["data"]}" alt="{E(att.get("title", "Product image"))}" '
                    f'style="height:90px;border:1px solid var(--bd);border-radius:8px;object-fit:contain;background:#fff;padding:4px"/>'
                    f'<figcaption>{E(att.get("title", "Product image"))}</figcaption></figure>')
        app_html = "".join(f'<div class="apf"><span class="al">{E(k)}</span><span class="av">{E(v)}</span></div>' for k, v in app if v)
        body += inner("Physical appearance", f'<div class="ap-in"><div class="ap-data">{app_html}</div><div class="tab-svgs">{figs}</div></div>'
                      + src("ManufacturedItemDefinition.property (color, shape, score, imprint, image)"))
        # packaging
        pk = ""
        for j, p in enumerate(ppds, 1):
            gtin = p.get("identifier", [{}])[0].get("value", "")
            outer = p.get("packaging", {})
            inner_p = outer.get("packaging", [{}])[0] if outer.get("packaging") else {}
            inner_txt = cc_text(inner_p.get("type"))
            if inner_p.get("quantity", 1) > 1:
                inner_txt = f'{inner_p["quantity"]} × {inner_txt}'
            mat = cc_text(inner_p.get("material", [{}])[0]) if inner_p.get("material") else ""
            contained = []
            for ci in outer.get("containedItem", []) + inner_p.get("containedItem", []):
                r = b.ref(ci["item"]["reference"])
                if r:
                    contained.append(f'{qty(ci.get("amount"))}: {res_label(r) if r["resourceType"] != "DeviceDefinition" else r["deviceName"][0]["name"]}')
            mid_id = f"art-{i}-{j}"
            cq = p.get("containedItemQuantity", [{}])[0]
            thumb = (f'<a href="#{mid_id}" class="pka-link"><figure class="pka"><div class="pka-box"><svg width="54" height="38" viewBox="0 0 54 38">'
                     '<rect x="1" y="1" width="52" height="36" rx="4" fill="#eff6ff" stroke="#bfdbfe" stroke-width="1.5"/><rect x="5" y="5" width="44" height="10" rx="2" fill="#2563eb"/>'
                     f'<text x="27" y="29" font-size="6" font-family="Arial" text-anchor="middle" fill="#334155">{E(qty(cq))}</text></svg></div><figcaption>View artwork &#8599;</figcaption></figure></a>')
            pk += (f'<div class="pkg"><div class="pkg-row"><div class="pki"><div class="pn">{E(p.get("name", ""))}</div>'
                   f'<div class="pt mono" style="font-size:10px;margin-bottom:10px">GTIN: {E(gtin)}</div><div class="pkt">'
                   f'{chip(cc_text(p.get("status")) or "Active", "ch-g")}{chip("Pack size: " + qty(cq))}'
                   f'{chip("Outer: " + cc_text(outer.get("type")))}{chip("Inner: " + inner_txt + (" (" + mat + ")" if mat else ""))}</div>'
                   f'<div class="pk-items">{"".join(f"<span>&#8627; {E(c)}</span>" for c in contained)}</div></div>{thumb}</div></div>')
            strength_part = {pp["type"]["coding"][0]["code"]: pp["part"] for pp in mpd["name"][0].get("part", [])}
            modals += (f'<div id="{mid_id}" class="artwork-modal"><div class="artwork-modal-card"><a href="#pp-anchor" class="artwork-modal-close" aria-label="Close">&#10005;</a>'
                       f'<div class="artwork-modal-title">Pack artwork — {E(p.get("name", ""))}</div><div class="artwork-modal-img">'
                       f'{artwork_svg(strength_part.get("InventedNamePart", "WonderDrug"), strength_part.get("StrengthPart", ""), qty(cq) + " · " + cc_text(outer.get("type")), strength_part.get("DoseFormPart", ""))}</div>'
                       f'<div class="artwork-modal-src">PackagedProductDefinition/{E(p["id"])}</div></div></div>')
        for d in dds:
            pk += (f'<div class="pkg"><div class="pkg-row"><div class="pki"><div class="pn">{E(d["deviceName"][0]["name"])}</div>'
                   f'<div class="pt" style="font-size:.78rem;margin-bottom:8px">{E(d.get("description", ""))}</div><div class="pkt">{chip("DeviceDefinition", "ch-p")}{chip(cc_text(d.get("classification", [{}])[0].get("type")))}</div></div>'
                   f'<figure class="pka"><div class="pka-box">{syringe_svg(44)}</div><figcaption>In the pack</figcaption></figure></div></div>')
        body += inner(f"Packaging ({len(ppds)})", f'<div class="pkgs">{pk}</div>')
        # shelf life and storage
        shelf = ""
        for p in ppds:
            outer = p.get("packaging", {})
            sls = list(outer.get("shelfLifeStorage", []))
            for ip in outer.get("packaging", []):
                sls += ip.get("shelfLifeStorage", [])
            for s in sls:
                m = months(s.get("periodDuration"))
                n, unit = (m, "months") if m else (s.get("periodDuration", {}).get("value"), duration(s.get("periodDuration")).split(" ", 1)[-1])
                shelf += (f'<div class="shelf-line"><span class="shelf-pill"><span>&#128197;</span><span class="shelf-n">{fmt(n)}</span>'
                          f'<span style="font-size:.75rem;font-weight:600">{E(unit)}</span></span><span class="shelf-t">{E(cc_text(s.get("type")))}</span></div>')
                for prec in s.get("specialPrecautionsForStorage", []):
                    t = cc_text(prec)
                    icon = "&#127777;" if re.search(r"°C|temperature|refrigerat|freez", t, re.I) else ("&#9728;" if "light" in t.lower() else "&#128274;")
                    shelf += f'<div class="storage-item" style="border-right:none"><span class="storage-icon">{icon}</span><div class="storage-text"><div class="sl">Storage</div><div class="sv">{E(t)}</div></div></div>'
        if shelf:
            body += inner("Shelf life & storage conditions", shelf + src("PackagedProductDefinition.packaging.shelfLifeStorage"), "border-left:3px solid var(--green)")
        # authorization
        for ra in ras:
            holder = b.ref(ra.get("holder"))
            mag = "".join(f'<div class="mai"><div class="ml">{k}</div><div class="mv{" mvm" if k == "Number" else ""}">{E(v)}</div></div>' for k, v in [
                ("Holder", (holder or {}).get("name", "")), ("Number", ra.get("identifier", [{}])[0].get("value", "")),
                ("Region", cc_text(ra.get("region", [{}])[0])), ("Type", cc_text(ra.get("type"))),
                ("Basis", cc_text(ra.get("basis"))), ("Status date", ra.get("statusDate", ""))] if v)
            body += inner("Marketing authorization", f'<div class="mag">{mag}</div>' + src("RegulatedAuthorization/" + ra["id"]))
        out += f'<details class="pa" open="open">{head}<div class="pc">{body}</div></details>'
    return f'<span id="pp-anchor"></span>{out}', modals


def population_text(g):
    if not g:
        return "All patients for this indication"
    return g.get("name", g.get("id"))


def group_chips(g):
    out = ""
    for c in g.get("characteristic", []):
        code = c["code"]["coding"][0]["code"].replace("-", " ").capitalize()
        if "valueRange" in c:
            lo, hi = c["valueRange"].get("low"), c["valueRange"].get("high")
            unit = (lo or hi).get("unit", "")
            v = f'{fmt(lo["value"])}–{fmt(hi["value"])} {unit}' if lo and hi else (f'≥ {fmt(lo["value"])} {unit}' if lo else f'≤ {fmt(hi["value"])} {unit}')
        else:
            v = cc_text(c.get("valueCodeableConcept"))
        out += chip(f"{code}: {v}", "ch-t")
    return out


def dose_rows(ds, ind_name):
    rows = [("Indication", ind_name)]
    dr = ds.get("doseAndRate", [{}])[0]
    if "doseRange" in dr:
        lo, hi = dr["doseRange"]["low"], dr["doseRange"]["high"]
        rows.append(("Single dose", f'{fmt(lo["value"])}–{plural(hi["value"], hi.get("unit", ""))}'))
    elif "doseQuantity" in dr:
        rows.append(("Single dose", qty(dr["doseQuantity"])))
    rep = ds.get("timing", {}).get("repeat", {})
    if rep:
        unit = {"h": "hours", "d": "days"}.get(rep.get("periodUnit"), rep.get("periodUnit"))
        per = f'{fmt(rep["period"])}–{fmt(rep["periodMax"])}' if rep.get("periodMax") else fmt(rep.get("period"))
        rows.append(("Dose interval", f'Every {per} {unit}' + (" as needed" if ds.get("asNeeded") else "")))
    for m in ds.get("maxDosePerPeriod", []):
        rows.append(("Maximum", f'{qty(m["numerator"])} in {fmt(m["denominator"]["value"])} {m["denominator"].get("unit", "")}'))
    if ds.get("route"):
        rows.append(("Route", cc_text(ds["route"])))
    return rows


def clinical_panel(b):
    cuds = b.all("ClinicalUseDefinition")
    if not cuds:
        return type_teaser("Type 3 adds clinical data a system can act on: indications with structured dosing for each population, "
                           "contraindications, interactions, undesirable effects with frequencies, and warnings, each linked to its SmPC section.", 3)
    by = lambda t: [c for c in cuds if c["type"] == t]
    inds, cons, ints, ues, wrns = by("indication"), by("contraindication"), by("interaction"), by("undesirable-effect"), by("warning")
    guides = [(c, g) for c in inds for g in c["indication"].get("extension", []) if g["url"].endswith("ext-epi-dosing-guideline")]
    groups = b.all("Group")
    cards = [("ci", "accent", len(inds), "Indications", "&#127919;"), ("cc", "rose", len(cons), "Contraindications", "&#9940;"),
             ("cx", "amber", len(ints), "Interactions", "&#9889;"), ("cd", "teal", len(guides), "Dosing guidelines", "&#128138;"),
             ("cu", "purple", len(ues), "Side effects", "&#128137;"), ("cw", "", len(wrns), "Warnings", "&#9888;"),
             ("cp", "", len(groups), "Populations", "&#128101;")]
    out = '<div class="csum">' + "".join(
        f'<div class="cscard {c}"><div><div class="csn" style="color:{("var(--" + col + ")") if col else "#ea580c"}">{n}</div><div class="csl">{l}</div></div><div class="csi">{i}</div></div>'
        for c, col, n, l, i in cards) + "</div>"
    # indications
    rows = ""
    for c in inds:
        pop = b.ref(c.get("population", [{}])[0]) if c.get("population") else None
        n_g = len([1 for g in c["indication"].get("extension", []) if g["url"].endswith("ext-epi-dosing-guideline")])
        rows += (f'<tr><td><b>{E(cud_label(c))}</b><div class="mono faint">{E(cc_code(c["indication"]["diseaseSymptomProcedure"]["concept"]))}</div></td>'
                 f'<td>{E(population_text(pop))}</td><td>{E(cc_text(c["indication"].get("intendedEffect", {}).get("concept")))}</td><td>{plural(n_g, "guideline")}</td></tr>')
    out += section_card("Indications", f'<table class="ctbl"><thead><tr><th>Condition</th><th>Population</th><th>Intended effect</th><th>Dosing</th></tr></thead><tbody>{rows}</tbody></table>', "&#127919;", len(inds))
    out += section_card("Contraindications", "".join(f'<div class="cxrow"><span class="cxicon">&#8856;</span><span>{E(cud_label(c))}</span></div>' for c in cons), "&#9940;", len(cons))
    rows = ""
    for c in ints:
        it = c["interaction"]
        inc = cc_text(it.get("incidence"))
        rows += (f'<tr><td><b>{E(cud_label(c))}</b><div class="mono faint">{E(cc_code(it["interactant"][0].get("itemCodeableConcept")))}</div></td>'
                 f'<td>{E(cc_text(it.get("type")))}</td><td><span class="{"sev-h" if inc == "Observed" else "sev-m"}">{E(inc)}</span></td>'
                 f'<td>{E(cc_text(it.get("effect", {}).get("concept")))}</td><td>{E(cc_text(it.get("management", [{}])[0]))}</td></tr>')
    out += section_card("Interactions", f'<table class="ctbl"><thead><tr><th>Interacting substance</th><th>Type</th><th>Incidence</th><th>Effect</th><th>Management</th></tr></thead><tbody>{rows}</tbody></table>', "&#9889;", len(ints))
    freq = OrderedDict()
    for c in ues:
        freq.setdefault(cc_text(c["undesirableEffect"].get("frequencyOfOccurrence")) or "Frequency not stated", []).append(c)
    soc = "".join(f'<div class="soc"><div class="soc-hdr">{E(f)}</div>' + "".join(
        f'<div class="soc-item"><span class="si-name">{E(cud_label(c))}</span><span class="si-freq">{E(cc_code(c["undesirableEffect"]["symptomConditionEffect"]["concept"]))}</span></div>' for c in cs) + "</div>"
        for f, cs in freq.items())
    out += section_card("Undesirable effects", soc, "&#128137;", len(ues))
    out += section_card("Warnings & precautions", "".join(f'<div class="wbox"><span class="wicon">&#9650;</span><span>{E(c["warning"].get("description", ""))}</span></div>' for c in wrns), "&#9888;", len(wrns))
    # dosing, one tab per sub-population
    pops = OrderedDict()
    for c, g in guides:
        pref = next((x for x in g.get("extension", []) if x["url"] == "population"), None)
        key = pref["valueReference"]["reference"] if pref else "all"
        pops.setdefault(key, []).append((c, g))
    radios, tabs, panels = "", "", ""
    for k, (key, items) in enumerate(pops.items(), 1):
        grp = b.ref(key) if key != "all" else None
        radios += f'<input type="radio" name="drtabs" id="dr-{k}" class="dr-trd"{" checked=\"checked\"" if k == 1 else ""}/>'
        tabs += f'<label class="dr-tb" for="dr-{k}">{E(population_text(grp))}</label>'
        cards_ = ""
        for c, g in items:
            for dz in [x for x in g.get("extension", []) if x["url"] == "dosage"]:
                phase = next((cc_text(x["valueCodeableConcept"]) for x in dz.get("extension", []) if x["url"] == "type"), "")
                for ins in [x for x in dz.get("extension", []) if x["url"] == "instruction"]:
                    ds = ins["valueDosage"]
                    rr = "".join(f'<div class="dose-row"><span class="dose-label">{E(a)}</span><span class="dose-value">{E(v)}</span></div>' for a, v in dose_rows(ds, cud_label(c)))
                    pills = (f'<div class="timing-strip"><span class="timing-pill">&#9201; {E(phase or "Scheduled")}</span>'
                             + "".join(f'<span class="timing-pill max">&#9888; Max {E(qty(m["numerator"]))}/{fmt(m["denominator"]["value"])} {E(m["denominator"].get("unit", ""))}</span>' for m in ds.get("maxDosePerPeriod", []))
                             + "</div>")
                    cards_ += (f'<div class="dose-card"><div class="dose-card-hdr"><span class="d-pop">{E(cud_label(c))}</span><span class="dose-badge">{E(phase)}</span></div>'
                               f'<div class="dose-body"><div class="dose-text">&#8220;{E(ds.get("text", ""))}&#8221;</div>{rr}{pills}</div></div>')
        gch = f'<div class="pop-chips">{group_chips(grp)}</div>' if grp else ""
        panels += (f'<div class="dr-panel dr-panel-{k}">{gch}{cards_}'
                   f'{src("ClinicalUseDefinition.indication.extension[dosingGuideline] → population: Group/" + (grp or {}).get("id", "(indication population)"))}</div>')
    out += section_card("Dosage regimen", f'{radios}<div class="dr-tabs">{tabs}</div>{panels}', "&#128138;", len(guides), "teal", "Structured dosing")
    # populations
    pc = "".join(f'<div class="pop-card"><div class="pop-n">{E(g.get("name", ""))}</div><div class="pop-chips">{group_chips(g)}</div><div class="mono faint">Group/{E(g["id"])}</div></div>' for g in groups)
    out += section_card("Populations", f'<div class="pop-grid">{pc}</div>', "&#128101;", len(groups))
    return out


PAGE_STYLE = """
#t-d:checked ~ .tabnav .tb[for="t-d"], #t-c:checked ~ .tabnav .tb[for="t-c"], #t-pl:checked ~ .tabnav .tb[for="t-pl"],
#t-if:checked ~ .tabnav .tb[for="t-if"], #t-o:checked ~ .tabnav .tb[for="t-o"],
#t-p:checked ~ .tabnav .tb[for="t-p"], #t-cl:checked ~ .tabnav .tb[for="t-cl"] { color: var(--text); font-weight: 600; border-bottom-color: var(--accent); }
#t-d:checked ~ #pd, #t-c:checked ~ #pc, #t-pl:checked ~ #ppl, #t-if:checked ~ #pif,
#t-o:checked ~ #po, #t-p:checked ~ #pp, #t-cl:checked ~ #pcl { display: block; }
"""


def page(bundle_json, ptype, docs=None):
    docs = docs or {}
    b = B(bundle_json)
    comp = b.one("Composition")
    mpd = b.one("MedicinalProductDefinition")
    prod, modals = product_panel(b) if mpd else (product_panel(b), "")
    tabs = [("t-d", "pd", "Document", document_panel(b, comp, ptype, docs)), ("t-c", "pc", "SmPC text", composition_panel(b, comp)),
            ("t-pl", "ppl", "Package leaflet", companion_panel(docs.get("pil"), "pil")),
            ("t-if", "pif", "Instructions for use", companion_panel(docs.get("ifu"), "ifu")),
            ("t-o", "po", "Organization", organization_panel(b, ptype)), ("t-p", "pp", "Product details", prod),
            ("t-cl", "pcl", "Clinical details", clinical_panel(b))]
    radios = "".join(f'<input type="radio" name="tabs" id="{t}" class="trd"{" checked=\"checked\"" if t == "t-d" else ""}/>' for t, *_ in tabs)
    nav = '<nav class="tabnav"><div class="tabnav-inner">' + "".join(f'<label class="tb" for="{t}">{E(l)}</label>' for t, _, l, _ in tabs) + "</div></nav>"
    panels = "".join(f'<div id="{p}" class="panel">{body}</div>' for _, p, _, body in tabs)
    title = comp.get("title", "")
    others = [d["id"] for d in docs.values() if d is not None]
    companion_note = ((" and the companion Bundle" + ("s " if len(others) > 1 else " ")) + ", ".join(f"<code>{E(i)}</code>" for i in others)) if others else ""
    return f"""<!DOCTYPE html>
<html lang="{E(comp.get('language', 'en'))}">
<head>
<meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<title>{E(title)} — ePI Type {ptype}</title>
<link rel="stylesheet" href="../epi-styles.css"/>
<style>{PAGE_STYLE}</style>
</head>
<body>
<!--ReleaseHeader--><p id="publish-box">Publish Box goes here</p><!--EndReleaseHeader-->
<div class="crumb"><span class="ig">eMedicinal Product Information IG</span><span class="sep">&#8250;</span><span>Examples</span><span class="sep">&#8250;</span><span>ePI Type {ptype}</span><span class="badge">HL7 FHIR R5</span></div>
{hero(b, comp, mpd, ptype)}
{radios}
{nav}
{panels}
{modals}
<p class="gen-note">Generated from the example Bundle <code>{E(bundle_json['id'])}</code>{companion_note} by <code>scripts/build_demos.py</code>. Every value on this page comes from those Bundles.</p>
</body>
</html>
"""


if __name__ == "__main__":
    for bid, ptype in DEMOS:
        bundle = json.load(open(os.path.join(SRC, f"Bundle-{bid}.json")))
        docs = {k: (json.load(open(os.path.join(SRC, f"Bundle-{v}.json"))) if v else None)
                for k, v in COMPANIONS.get(bid, {}).items()}
        path = os.path.join(OUT, f"{bid}.html")
        open(path, "w", encoding="utf-8").write(page(bundle, ptype, docs))
        print("wrote", path)
