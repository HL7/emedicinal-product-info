// Instance of Clinical Use Definition - Interaction 1 - METHOTREXATE
Instance: c079551f-d78a-4924-8748-744e755156a6
InstanceOf: clinicalusedefinition
Usage: #example
* id = "c079551f-d78a-4924-8748-744e755156a6"
* type = #interaction
* subject = Reference(urn:uuid:9cda1cb4-c543-40ef-849b-3b802b5e6f9e) // Medicinal Product 1 - EU/1/17/1201/002 40 - 120 mg
* subject = Reference(urn:uuid:9cda1cb4-c543-40ef-849b-3b802b5e6f9e) // Medicinal Product 1 - EU/1/17/1201/002 40 - 120 mg
* subject = Reference(urn:uuid:82b01a8c-2e70-4410-b8d6-8b71efcc63f4) // Medicinal Product 2 - EU/1/17/1201/003 70 - 120 mg
* subject = Reference(urn:uuid:e13c01a2-6265-4044-a86f-225cc087574d) // Medicinal Product 3 - EU/1/17/1201/004 90 - 120 mg
* subject = Reference(urn:uuid:9ebeecf6-fe0f-41da-bd8c-1791b4659aca) // Medicinal Product 4 - EU/1/17/1201/005 100 - 120 mg
* subject = Reference(urn:uuid:9b5512d5-970b-4978-8f8d-bcd74d5006f2) // Medicinal Product 5 - EU/1/17/1201/006 120 - 120 mg
* subject = Reference(urn:uuid:7ac36d6e-1ba5-4d13-a763-3ed966b26892) // Medicinal Product 6 - EU/1/17/1201/007 180 - 120 mg
* subject = Reference(urn:uuid:cf9e3d56-22ad-48ba-9cb1-cae88fd267c3) // Medicinal Product 7 - EU/1/17/1201/008 200 - 120 mg
* subject = Reference(urn:uuid:bb8caa68-9197-460b-b395-cba1fca019d0) // Medicinal Product 8 - EU/1/17/1201/009 240 - 120 mg
* subject = Reference(urn:uuid:a32302f5-b1d1-401b-a60f-7526a2a31e4e) // Medicinal Product 9 - EU/1/17/1201/012 300 - 120 mg
* subject = Reference(urn:uuid:89682f30-47ca-45df-a691-ffcc9af64fc2) // Medicinal Product 10 - EU/1/17/1201/010 360 - 120 mg
* subject = Reference(urn:uuid:d1ec4791-2453-4768-b656-d815bf56aff7) // Medicinal Product 11 - EU/1/17/1201/011 400 - 120 mg
* subject = Reference(urn:uuid:ba42fdde-dad7-4752-8a5b-b540405a6c21) // Medicinal Product 12 - EU/1/17/1201/001 42 - 30 mg
* subject = Reference(urn:uuid:8b518411-2341-4bd8-be2e-028472436409) // Medicinal Product 13 - EU/1/17/1201/013 70 - 30 mg
* subject = Reference(urn:uuid:151fc002-4f6b-4fc6-91d6-44439a3fae8c) // Medicinal Product 14 - EU/1/17/1201/014 210 - 30 mg

* status = #current

* interaction.interactant.itemcodeableconcept = $gsrs.ncats.nih.gov#YL5FZ2Y5U1 "METHOTREXATE" // FDA G-SRS and UNII code
* interaction.interactant.type = $spor.ema.europa.eu#100000023362 "Drug interaction" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000000006/terms MEDDRA
