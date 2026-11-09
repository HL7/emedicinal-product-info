#!/usr/bin/env python3
"""
check-epi-text-links.py - checks the ePI Text Link extensions in ePI Bundles.

The ePI Text Link extension
(http://hl7.org/fhir/uv/emedicinal-product-info/StructureDefinition/epi-text-link)
links span ids in a Composition section narrative to the resource (or element)
that the phrase describes. A validator that does not recognise this extension
checks it only as an ordinary extension: it does not check that the links point
to anything. This script applies the link rules from the "Build an ePI Type 4"
page of the ePI IG:

  1. every htmlid matches an element id (normally a span) in the same section.text.div
  2. each ePI Text Link has at least one htmlid and exactly one data value
  3. the resource part of data matches the fullUrl (or Type/id) of exactly one Bundle entry
  4. a #fragment in data matches an element id inside that resource
  5. the target resource is also referenced in section.entry of the same section
  6. span ids are unique within the narrative and start with a letter
It also warns about span ids that no htmlid uses, and reports selector values,
which it does not check.

It is a helpful starting point, not a conformance test: run it alongside a FHIR
validator, which still checks everything else in the Bundle.

Usage:
  python3 check-epi-text-links.py <bundle.json | bundle.xml> [more files ...]

Exit code: 0 = no errors, 1 = errors found, 2 = a file could not be read.
Requires Python 3.8 or later; standard library only.
"""
import json
import re
import sys
import xml.etree.ElementTree as ET

EPI_URL = "http://hl7.org/fhir/uv/emedicinal-product-info/StructureDefinition/epi-text-link"
CORE_URL = "http://hl7.org/fhir/StructureDefinition/textLink"
XHTML_NS = "http://www.w3.org/1999/xhtml"
ET.register_namespace("", XHTML_NS)

ID_ATTR = re.compile(r'<(?:[\w.-]+:)?([\w.-]+)\b[^>]*?\sid\s*=\s*["\']([^"\']*)["\']')


class Node:
    """A FHIR element read from JSON or XML: a name, an optional value, child nodes."""

    def __init__(self, name, value=None, rtype=None):
        self.name, self.value, self.rtype, self.kids = name, value, rtype, []

    def all(self, name):
        return [k for k in self.kids if k.name == name]

    def one(self, name):
        found = self.all(name)
        return found[0] if found else None

    def val(self, name):
        k = self.one(name)
        return k.value if k is not None else None

    def walk(self):
        for k in self.kids:
            yield k
            yield from k.walk()


def from_json(name, obj):
    node = Node(name, rtype=obj.get("resourceType") if isinstance(obj, dict) else None)
    for key, v in obj.items():
        if key == "resourceType" or key.startswith("_"):
            continue
        for item in v if isinstance(v, list) else [v]:
            if isinstance(item, dict):
                node.kids.append(from_json(key, item))
            else:
                node.kids.append(Node(key, str(item).lower() if isinstance(item, bool) else str(item)))
    return node


def from_xml(el):
    tag = el.tag.split("}")[-1]
    if tag == "div":
        return Node("div", ET.tostring(el, encoding="unicode"))
    if tag in ("resource", "contained") and len(el):
        inner = el[0]
        node = Node(tag, rtype=inner.tag.split("}")[-1])
        source = inner
    else:
        node = Node(tag, el.get("value"))
        source = el
    for attr in ("url", "id"):
        if source.get(attr) is not None:
            node.kids.append(Node(attr, source.get(attr)))
    for child in source:
        node.kids.append(from_xml(child))
    return node


def load(path):
    with open(path, encoding="utf-8-sig") as f:
        text = f.read()
    if text.lstrip().startswith("<"):
        root = ET.fromstring(text)
        bundle = from_xml(root)
        bundle.rtype = root.tag.split("}")[-1]
    else:
        bundle = from_json("Bundle", json.loads(text))
    return bundle


class Report:
    def __init__(self, path):
        self.path, self.errors, self.warnings, self.info, self.links = path, 0, 0, 0, 0

    def add(self, level, where, msg):
        if level == "ERROR":
            self.errors += 1
        elif level == "WARNING":
            self.warnings += 1
        else:
            self.info += 1
        print(f"{level:8} {where}: {msg}")


def element_ids(div):
    """All id attributes in the narrative, and the ids that are on span elements."""
    ids, span_ids = [], []
    for tag, value in ID_ATTR.findall(div or ""):
        ids.append(value)
        if tag == "span":
            span_ids.append(value)
    return ids, span_ids


def check_section(section, where, entries, rep, comp):
    text = section.one("text")
    links = [x for x in (text.all("extension") if text else []) if x.val("url") in (EPI_URL, CORE_URL)]
    if links:
        check_links(text, links, section, where, entries, rep, comp)
    for i, sub in enumerate(section.all("section")):
        check_section(sub, f"{where}.section[{i}]", entries, rep, comp)


def check_links(text, links, section, where, entries, rep, comp):
    ids, span_ids = element_ids(text.val("div"))
    w = f"{where}.text"
    for sid in sorted({s for s in span_ids if span_ids.count(s) > 1}):
        rep.add("ERROR", w, f"span id '{sid}' is used more than once in the narrative")
    for sid in dict.fromkeys(span_ids):
        if not re.match(r"[A-Za-z]", sid):
            rep.add("ERROR", w, f"span id '{sid}' does not start with a letter")
    if sum(1 for x in links if x.val("url") == CORE_URL) > 1:
        rep.add("ERROR", w, "the core textLink extension may appear only once on a narrative")
    refs = [e.val("reference") for e in section.all("entry")]
    used = set()
    for n, link in enumerate(links):
        rep.links += 1
        lw = f"{w}.extension[{n}]"
        subs = link.all("extension")
        htmlids = [s.val("valueString") for s in subs if s.val("url") == "htmlid"]
        datas = [s.val("valueUri") for s in subs if s.val("url") == "data"]
        selectors = [s.val("valueString") for s in subs if s.val("url") == "selector"]
        if not htmlids:
            rep.add("ERROR", lw, "no htmlid")
        for h in htmlids:
            used.add(h)
            if h not in ids:
                rep.add("ERROR", lw, f"htmlid '{h}' does not match any id in the narrative")
        if len(datas) != 1:
            rep.add("ERROR", lw, f"must have exactly one data value, found {len(datas)}")
        for sel in selectors:
            rep.add("INFO", lw, f"selector '{sel}' was not checked")
        if not datas or not datas[0]:
            continue
        data = datas[0]
        base, _, fragment = data.partition("#")
        if not base:
            hits = [n for n in comp.walk() if n.val("id") == fragment and n is not comp]
            hits += [r for _, r in entries if r.val("id") == fragment]
            if not hits:
                rep.add("ERROR", lw, f"data '{data}': no element or Bundle entry with id '{fragment}'")
            elif len(hits) > 1:
                rep.add("ERROR", lw, f"data '{data}': more than one element has id '{fragment}'")
            continue
        targets = [(full, r) for full, r in entries if base in (full, f"{r.rtype}/{r.val('id')}")]
        if not targets:
            rep.add("ERROR", lw, f"data '{data}': no Bundle entry has this fullUrl or Type/id")
            continue
        if len(targets) > 1:
            rep.add("ERROR", lw, f"data '{data}': more than one Bundle entry matches")
        full, target = targets[0]
        if fragment:
            hits = [n for n in target.walk() if n.val("id") == fragment]
            if not hits:
                rep.add("ERROR", lw, f"data '{data}': no element with id '{fragment}' in {target.rtype}/{target.val('id')}")
            elif len(hits) > 1:
                rep.add("ERROR", lw, f"data '{data}': more than one element has id '{fragment}'")
        aliases = {full, f"{target.rtype}/{target.val('id')}"}
        if not aliases.intersection(refs):
            rep.add("ERROR", lw, f"data '{data}': the target is not referenced in section.entry of this section")
    for sid in dict.fromkeys(span_ids):
        if sid not in used:
            rep.add("WARNING", w, f"span id '{sid}' is not used by any htmlid")


def check_file(path):
    try:
        bundle = load(path)
    except Exception as e:  # noqa: BLE001 - report any read or parse problem
        print(f"ERROR    {path}: could not read the file ({e})")
        return None
    rep = Report(path)
    print(f"== {path}")
    if bundle.rtype != "Bundle":
        rep.add("ERROR", path, f"expected a Bundle, found {bundle.rtype}")
        return rep
    entries = [(e.val("fullUrl"), e.one("resource")) for e in bundle.all("entry") if e.one("resource")]
    for i, (_, res) in enumerate(entries):
        if res.rtype == "Composition":
            for s, sec in enumerate(res.all("section")):
                check_section(sec, f"Bundle.entry[{i}].resource.section[{s}]", entries, rep, res)
    print(f"   {rep.links} link(s) checked: {rep.errors} error(s), {rep.warnings} warning(s), {rep.info} information")
    return rep


def main(argv):
    if len(argv) < 2:
        print(__doc__)
        return 2
    status = 0
    for path in argv[1:]:
        rep = check_file(path)
        if rep is None:
            status = max(status, 2)
        elif rep.errors:
            status = max(status, 1)
    return status


if __name__ == "__main__":
    sys.exit(main(sys.argv))
