#!/usr/bin/env python3
"""Build the rendered ePI demo pages (input/images/examples/*.html) from the WonderDrug example bundles.

Each example Bundle is written as FHIR XML and transformed with input/images/epi-transform.xslt,
the same stylesheet implementers can reuse. Run SUSHI first.

Usage:
  python3 build_demos.py <sushi-output-dir> <fhir-r5-core-package-dir> <output-dir>
  (output-dir is normally input/images/examples)
Requires: lxml
"""
import json, os, re, sys

SRC, CORE, OUT = sys.argv[1:4]
sys.argv = [sys.argv[0], SRC, CORE, OUT]
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import build_templates as bt  # loads the FHIR definitions
from lxml import etree

HERE = os.path.dirname(os.path.abspath(__file__))
XSLT = etree.XSLT(etree.parse(os.path.join(HERE, "..", "input", "images", "epi-transform.xslt")))

DEMOS = [
    "bundle-epi-type1-example-wonderdrug",
    "bundle-epi-type2-example-wonderdrug",
    "bundle-epi-type2-example-wonderdrug-suspension",
    "bundle-epi-type3-example-wonderdrug",
]

for bid in DEMOS:
    bundle = json.load(open(os.path.join(SRC, f"Bundle-{bid}.json")))
    lines = []
    bt.write_resource(bundle, "", lines)
    xml = "\n".join(l for l in lines if not l.strip().startswith("<!--"))
    doc = etree.fromstring(xml.encode("utf-8"))
    html = str(XSLT(doc, **{"css-path": "'../epi-styles.css'"}))
    path = os.path.join(OUT, f"{bid}.html")
    open(path, "w", encoding="utf-8").write(html)
    print("wrote", path)
