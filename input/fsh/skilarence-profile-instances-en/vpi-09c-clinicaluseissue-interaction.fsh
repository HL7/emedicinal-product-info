Profile: VPIClinicaluseissue
Parent: Clinical Use Issue
Id: c079551f-d78a-4924-8748-744e755156a6
Title: "VPI Clinical Use Issue - Drug-Drug Interaction"
Description: "Vulcan medicinal product information profile and instance examples"

// Instance of Clinical Use Definition - Interaction 1 - METHOTREXATE
Instance: c079551f-d78a-4924-8748-744e755156a6
InstanceOf: clinicalusedefinition
Usage: #example
* id = "c079551f-d78a-4924-8748-744e755156a6"
* type = #interaction

* subject = Reference(urn:uuid:ba42fdde-dad7-4752-8a5b-b540405a6c21) // Medicinal Product 12 - EU/1/17/1201/001 42 - 30 mg

* status = #current

* interaction.interactant.itemcodeableconcept = $gsrs.ncats.nih.gov#YL5FZ2Y5U1 "METHOTREXATE" // FDA G-SRS and UNII code
* interaction.interactant.type = $spor.ema.europa.eu#100000023362 "Drug interaction" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000000006/terms MEDDRA
