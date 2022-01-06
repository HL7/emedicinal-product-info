Instance: cfsb1640777487408
InstanceOf: ManufacturedItemDefinition
Description: "Manufactured Item"
Usage: #example

* identifier.system = "https://spor.ema.europa.eu/pmswi/#/"
* identifier.value = "EU/1/96/007/035"
* identifier.use = #official
 
* manufacturedDoseForm = https://spor.ema.europa.eu/rmswi/#100000073864
* manufacturedDoseForm.text = "Suspension for injection"

* unitOfPresentation = https://spor.ema.europa.eu/rmswi/#/#200000002135
* unitOfPresentation.text = "Pen"

 // Reference to Organization: Manufacturer
* manufacturer = Reference(cfsb1640870328895)

//reference to insulin lispro
* ingredient.reference = Reference(cfsb1640607635665)

//reference to Glycerol
* ingredient[1].reference = Reference(cfsb1640780048702)

//reference to metacresol
* ingredient[2].reference = Reference(cfsb1640780419325)

//reference to Trometamol
* ingredient[3].reference = Reference(cfsb1640780546710)

//reference to Zinc Oxide
* ingredient[4].reference = Reference(cfsb1640780625902)

//reference to Water for injections
* ingredient[5].reference = Reference(cfsb1640780743829)

//reference to Hydrochloric acid
* ingredient[6].reference = Reference(cfsb1640780784213)

//reference to Sodium Hydroxide
* ingredient[7].reference = Reference(cfsb1640780830373)

