// Instance of Regulated Authorization 12 -  EU/1/17/1201/001 42 - 30 mg
Instance: aebcba30-11a4-4e92-8380-e3bb54858c71
InstanceOf: regulatedauthorization
Usage: #example
* id = "aebcba30-11a4-4e92-8380-e3bb54858c71"
* identifier = "EU/1/17/1201/001"
* subject = Reference(urn:uuid:bfd7b841-3114-4e1d-aa18-0a9d0b031efa) "EU/1/17/1201/001"
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
