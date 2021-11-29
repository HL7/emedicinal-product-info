Profile: VPIRegulatedAuthorization
Parent: RegulatedAuthorization
Id: dc3c0736-e939-4306-9f50-d983f85f1ab3
Title: "VPI Regulated Authorization"
Description: "Vulcan medicinal product information profile and instance examples"

// Authorization 5 -  EU/1/17/1201/006  120 - 120 mg
Instance: dc3c0736-e939-4306-9f50-d983f85f1ab3
InstanceOf: regulatedauthorization
Usage: #example
* id = "dc3c0736-e939-4306-9f50-d983f85f1ab3"
* identifier = ""
* subject = Reference(urn:uuid:) ""
* type = $spor.ema.europa.eu#100000072062 "Marketing Authorisation" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000072055/terms Scope
* description = ""
* region = $iso:3166-2#eu "european union"
* status = "active" //http://hl7.org/fhir/publication-status
* statusdate = "2021-05-17T08:38:00+02:00"
* validityperiod.start = "2017-06-23T08:38:00+02:00"
* validityperiod.end = ""
* indication = Reference(urn:uuid:) "" //ACTION add indication UUID later
* holder = Reference(urn:uuid:ef262d35-9d2a-4d58-851a-2227a1f028d9) "Almirall S.A." //MAH org #1
* regulator = Reference(urng:uuid:b6b3425b-2133-4f66-a7b6-d81ee0e14529) "European Medicines Agency" //EMA Org #3 
