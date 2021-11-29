Profile: VPIRegulatedAuthorization
Parent: RegulatedAuthorization
Id: 79e68763-f272-4520-a1dd-afe95d65a32c
Title: "VPI Regulated Authorization"
Description: "Vulcan medicinal product information profile and instance examples"

// Authorization 13 -  EU/1/17/1201/013 70 - 30 mg
Instance: 79e68763-f272-4520-a1dd-afe95d65a32c
InstanceOf: regulatedauthorization
Usage: #example
* id = "79e68763-f272-4520-a1dd-afe95d65a32c"
* identifier = ""
* subject = Reference(urn:uuid:) ""
* type = $spor.ema.europa.eu#100000072062 "Marketing Authorisation" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000072055/terms Scope
* description = "Skilarence 30 mg gastro-resistant tablets, 42 tablets in PVC/PVDC-aluminium blister packs"
* region = $iso:3166-2#eu "european union"
* status = "active" //http://hl7.org/fhir/publication-status
* statusdate = "2021-05-17T08:38:00+02:00"
* validityperiod.start = "2017-06-23T08:38:00+02:00"
* validityperiod.end = ""
* indication = Reference(urn:uuid:) "" //ACTION add indication UUID later
* holder = Reference(urn:uuid:ef262d35-9d2a-4d58-851a-2227a1f028d9) "Almirall S.A." //MAH org #1
* regulator = Reference(urng:uuid:b6b3425b-2133-4f66-a7b6-d81ee0e14529) "European Medicines Agency" //EMA Org #3 
