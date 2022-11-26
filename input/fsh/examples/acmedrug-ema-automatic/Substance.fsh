
Instance: substance-acmesub
InstanceOf: SubstanceDefinitionUvEpi
Description: "acmesub"
Usage: #example



* id = "55e016dd-3819-4d7b-a6f0-4d37f6918d1a" 

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "J0E2756Z7N"
* identifier.use = #official

* version = "1"

* status = https://gsrs.ncats.nih.gov/ginas/app/beta/#1 "Validated (UNII)"

* description = "White to off-white, biconvex, and oval-shaped with a heart debossed on one side and the number 2771 engraved on the other side."

 // Reference to Organization: MAH
 
* manufacturer = Reference(marketingauthorisationholder-acmeindustry)
 

* molecularWeight[+].type.text = "exact"
* molecularWeight[=].amount.value = 428.53
* structure.molecularFormula = "C25H28N6O"

* name.name = "(+)-6-methyleneandrosta-1,4-diene-3,17-dione"
* name.type = https://gsrs.ncats.nih.gov/ginas/app/beta/#x "Chemical Name"