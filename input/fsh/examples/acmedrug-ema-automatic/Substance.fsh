
Instance: substance-acmesub
InstanceOf: SubstanceDefinitionUvEpi
Description: "acmesub"
Usage: #example



* id = "36f24df3-e646-4245-b8e0-9b39f8f683b0" 

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