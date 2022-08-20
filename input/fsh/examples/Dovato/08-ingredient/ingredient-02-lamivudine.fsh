Instance: cfsb1651164758053
InstanceOf: Ingredient
Description: "lamivudine"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "2T8Q726O95"
* identifier.use = #official

* status = #active

* role = https://spor.ema.europa.eu/rmswi/#100000072072
* role.text = "active"

//reference to Manufactured Item: Dovato 50 mg/300 mg film-coated tablets
* for = Reference(cfsb1650998521654)

 // Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(cfsb1650997423990)

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#2T8Q726O95 "lamivudine"
* substance.strength.presentationQuantity.value = 300
* substance.strength.presentationQuantity.unit = "mg"

* substance.strength.basis = http://terminology.hl7.org/ValueSet/v3-RoleClassIngredientEntity##ACTIB
* substance.strength.basis.text = "active ingredient - basis of strength"
