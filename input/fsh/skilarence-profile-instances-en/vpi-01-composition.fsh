Profile: VPIComposition
Parent: Composition
Id: 15f5287a-30eb-4128-a0bd-4bf2938eb57a
Title: "VPI Composition"
Description: "Vulcan medicinal product information profile and instance examples"

// Instance of Composition
Instance: 4d0991e2-0b99-412b-afa9-f5974d3ab2b8
InstanceOf: Composition
Usage:#example
* id = "4d0991e2-0b99-412b-afa9-f5974d3ab2b8"
* identifier = "EMEA/H/C/002157 - IAIN/0028/G"
* status = #final
* type = $spor.ema.europa.eu:100000155531#100000155538 "Package Leaflet" //SPOR product information type
* date = "2020-01-01T15:22:00+02:00" // date of revision on the composition
* author = Reference(urn:uuid:ef262d35-9d2a-4d58-851a-2227a1f028d9) //x-ref to MAH org#1
* title = "TEST PURPOSES ONLY - skilarence Vulcan ePI"
* confidentiality = #unrestricted
* language.system = "http://hl7.org/fhir/ValueSet/languages"
* language.code = #en

* section.title = "B. Package Leaflet"
* section.code = $spor.ema.europa.eu# "" //ACTION - fill in later from EMA spreadsheet
* section.text.narrative.status = #generated
* section.text.narrative.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\""