Instance: carnaubawax
InstanceOf: IngredientUvEpi
Description: "Carnauba wax"
Usage: #example

* identifier.system = $ginas
* identifier.value = "R12CBM0EIZ"
* identifier.use = #official

* role = $spor-rms#100000072082
* role.text = "Excipient"

* status = #active

* substance.code.concept.coding = $ginas#R12CBM0EIZ "Carnauba wax"

// Reference to manufactured item
* for = Reference(manitemkarvea75)

// Reference to Organization:  Reference to MAH
* manufacturer.manufacturer = Reference(sanofi-aventis-groupe)