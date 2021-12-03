Profile: VPIRegulatedAuthorization
Parent: RegulatedAuthorization
Id: badfe527-5c59-4a52-980c-31735cadc2cc
Title: "VPI Regulated Authorization"
Description: "Vulcan medicinal product information profile and instance examples"

// Authorization 10 -  EU/1/17/1201/010 360 - 120 mg
Instance: badfe527-5c59-4a52-980c-31735cadc2cc
InstanceOf: regulatedauthorization
Usage: #example
* id = "badfe527-5c59-4a52-980c-31735cadc2cc"
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