Instance: substanceacetaminophen
InstanceOf: SubstanceDefinitionUvEpi
Title: "Substance - acetaminophen"
Description: "Substance details for the active ingredient - acetaminophen"
Usage: #example

* id = "da33bd51-a726-4232-aaa0-4168b9bfe249"

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta"
* identifier.value = "362O9ITL9D"
* identifier.use = #official

* version = "1"

* status = https://gsrs.ncats.nih.gov/ginas/app/beta/#1
* status.text = "Validated (UNII)"

* description = "White to off-white, biconvex, and oval-shaped with the number 1234 engraved on the other side."

 // Reference to Organization: MAH
* manufacturer = Reference(acmeinc)

* molecularWeight.type.text = "exact"
* molecularWeight.amount.value = 151.6

* structure.molecularFormula = "C8H9NO2"

* name.name = "4'-HYDROXYACETANILIDE ACEPHEN ACETAMIDE, N-(4-HYDROXYPHENYL)-"
* name
  * name = "acetaminophen"
  * type = http://hl7.org/fhir/substance-name-type#Scientific
  * type.text = "Scientific"
