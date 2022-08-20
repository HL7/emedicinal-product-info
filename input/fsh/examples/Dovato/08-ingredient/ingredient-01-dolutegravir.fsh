Instance: cfsb1651162710491
InstanceOf: Ingredient
Description: "dolutegravir"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "1Q1V9V5WYQ"
* identifier.use = #official

* status = #active

* role = https://spor.ema.europa.eu/rmswi/#00000072072
* role.text = "active"


//reference to Manufactured Item: Dovato 50 mg/300 mg film-coated tablets
* for = Reference(cfsb1650998521654)


 // Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(cfsb1650997423990)






* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#1Q1V9V5WYQ "DOLUTEGRAVIR SODIUM"

* substance.strength.presentationQuantity.value = 50

* substance.strength.presentationQuantity.unit = "mg"

* substance.strength.basis = http://terminology.hl7.org/ValueSet/v3-RoleClassIngredientEntity##ACTIB

* substance.strength.basis.text = "active ingredient - basis of strength"
