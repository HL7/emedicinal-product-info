Instance: cfsb1639228293199
InstanceOf: AdministrableProductDefinition
Description: "120 mg tablet"
Usage: #example
 
* identifier.system = "https://spor.ema.europa.eu/pmswi/#/"
* identifier.value = "TBD"
* identifier.use = #official

* administrableDoseForm = https://spor.ema.europa.eu/rmswi/#200000002102
* administrableDoseForm.text = "Tablet"

* unitOfPresentation = https://spor.ema.europa.eu/rmswi/#200000002152
* unitOfPresentation.text = "Tablet"

 // Reference to ManufacturedItemDefinition: 120 mg tablet
* producedFrom = Reference(cfsb1639191683660)

 // Reference to Ingredient: dimethyl fumarate 120 mg
* ingredient = Reference(cfsb1639018789432)

 // Reference to Ingredient: Lactose monohydrate
* ingredient[1] = Reference(cfsb1639017722742)

 // Reference to Ingredient: Cellulose microcrystalline
* ingredient[2] = Reference(cfsb1639018040123)

 // Reference to Ingredient: Croscarmellose sodium
* ingredient[3] = Reference(cfsb1639019219159)

 // Reference to Ingredient: Colloidal anhydrous silica
* ingredient[4] = Reference(cfsb1639188900323)

 // Reference to Ingredient: Magnesium stearate
* ingredient[5] = Reference(cfsb1639188914522)

 // Reference to Ingredient: Methacrylic acid-ethyl acrylate copolymer (1:1)
* ingredient[6] = Reference(cfsb1639188931320)

 // Reference to Ingredient: Talc
* ingredient[7] = Reference(cfsb1639188944570)

 // Reference to Ingredient: Triethyl citrate
* ingredient[8] = Reference(cfsb1639188961481)

 // Reference to Ingredient: Titanium dioxide (E171)
* ingredient[9] = Reference(cfsb1639188982012)

 // Reference to Ingredient: Simethicone
* ingredient[10] = Reference(cfsb1639188991744)

 // Reference to Ingredient: Indigo carmine (E132)
* ingredient[11] = Reference(cfsb1639189003542)

 // Reference to Ingredient: Sodium hydroxide
* ingredient[12] = Reference(cfsb1639189015872)

* property.type = https://ncim-stage.nci.nih.gov/ncimbrowser/#C48557

* property.type.text = "Structured Product Labeling Shape"

* property.valueCodeableConcept = https://ncim-stage.nci.nih.gov/ncimbrowser/#C48348

* property.valueCodeableConcept.text = "ROUND"


* property[1].type = https://ncim-stage.nci.nih.gov/ncimbrowser/#C0456389

* property[1].type.text = "Size"

* property[1].valueQuantity.value = 11.6

* property[1].valueQuantity.unit = "mm"


* property[2].type = https://ncim-stage.nci.nih.gov/ncimbrowser/#C0009393

* property[2].type.text = "Color"

* property[2].valueCodeableConcept = https://ncim-stage.nci.nih.gov/ncimbrowser/#C48325

* property[2].valueCodeableConcept.text = "White"


* routeOfAdministration.code = https://spor.ema.europa.eu/rmswi/#100000073619

* routeOfAdministration.code.text = "oral use"

* routeOfAdministration.targetSpecies.code = https://spor.ema.europa.eu/rmswi/#/#100000109093

* routeOfAdministration.targetSpecies.code.text = "Human"

