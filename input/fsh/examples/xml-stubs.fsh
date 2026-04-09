Instance: dummy-composition
InstanceOf: Composition
Usage: #inline
* status = #final
* type = http://spor.ema.europa.eu/v1/lists/100000155531#100000155538 "Package leaflet"
* category = http://snomed.info/sct#422735006 "Summary of product characteristics"
* date = "2026-04-08"
* author = Reference(Organization/dummy)
* title = "Dummy Composition"

Instance: template-epi-type1
InstanceOf: Bundle
Usage: #example
Title: "ePI Type 1 Template"
Description: "Annotated XML Template for Type 1 ePI"
* type = #document
* entry[0].resource = dummy-composition

Instance: template-epi-type2
InstanceOf: Bundle
Usage: #example
Title: "ePI Type 2 Template"
Description: "Annotated XML Template for Type 2 ePI"
* type = #document
* entry[0].resource = dummy-composition

Instance: template-epi-type3
InstanceOf: Bundle
Usage: #example
Title: "ePI Type 3 Template"
Description: "Annotated XML Template for Type 3 ePI"
* type = #document
* entry[0].resource = dummy-composition
