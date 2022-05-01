Instance: emacfsb1639754408039
InstanceOf: Ingredient
Description: "fosfomycin trometamol 3g"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "7FXW6U30GY"
* identifier.use = #official

* status = #active

// Reference to Manufactured Item
* for = Reference(emacfsb1639756818482)

* role = https://spor.ema.europa.eu/rmswi/#00000072072
* role.text = "active"

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#7FXW6U30GY "Fosfomycin Tromethamine"
* substance.strength.presentationQuantity.value = 5.631
* substance.strength.presentationQuantity.unit = "g"

* substance.strength.basis = http://terminology.hl7.org/CodeSystem/v3-RoleClass#ACTIM "active ingredient - moiety is basis of strength"
* substance.strength.basis.text = "active ingredient - moiety is basis of strength"
* substance.strength.referenceStrength.substance.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#2N81MY12TE "Fosfomycin"
* substance.strength.referenceStrength.strengthQuantity.value = 3
* substance.strength.referenceStrength.strengthQuantity.unit = "g"

// Reference to Organization: Manufaturer API
* manufacturer.manufacturer = Reference(emacfsb1639753766266)