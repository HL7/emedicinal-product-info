Profile: VPIClinicaluseissue
Parent: Clinical Use Issue
Id: 369b031a-8c6e-4513-a327-8a2cb5f32993
Title: "VPI Clinical Use Issue"
Description: "Vulcan medicinal product information profile and instance examples"

// Instance of Clinical Use definition - Indication
Instance: 369b031a-8c6e-4513-a327-8a2cb5f32993
InstanceOf: clinicalusedefinition
Usage: #example
* id = "369b031a-8c6e-4513-a327-8a2cb5f32993"
* type = #indication

* subject = Reference(urn:uuid:ba42fdde-dad7-4752-8a5b-b540405a6c21) // Medicinal Product 12 - EU/1/17/1201/001 42 - 30 mg

* status = #current
* indication.diseasesymptomprocedure.codeablereference.concept = $spor.ema.europa.eu:100000000006#100000018190 "Psoriasis" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000000006/terms Medical Dictionary For Regulatory Activities (MedDRA)
