Profile: VPIClinicaluseissue
Parent: Clinical Use Issue
Id: dd37ac2f-f8bd-4b55-93ec-c5412809d270
Title: "VPI Clinical Use Issue - Contraindication"
Description: "Vulcan medicinal product information profile and instance examples"

// Instance of Clinical Use Definition - Contraindication 1 - Gastrointestinal disorders
Instance: dd37ac2f-f8bd-4b55-93ec-c5412809d270
InstanceOf: clinicalusedefinition
Usage: #example
* id = "dd37ac2f-f8bd-4b55-93ec-c5412809d270"
* type = #contraindication
* subject = Reference(urn:uuid:ba42fdde-dad7-4752-8a5b-b540405a6c21) // Medicinal Product 12 - EU/1/17/1201/001 42 - 30 mg

* status = #current
* contraindication.diseasesymptomprocedure.codeablereference.concept = $spor.ema.europa.eu#100000004856 "Gastrointestinal disorders" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000000006/terms Medical Dictionary For Regulatory Activities (MedDRA)
* contraindication.indication = Reference(urn:uuid:369b031a-8c6e-4513-a327-8a2cb5f32993) "Psoriasis"
