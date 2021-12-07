// Instance of Ingredient 1 - active 30mg
Instance: 15f5287a-30eb-4128-a0bd-4bf2938eb57a
InstanceOf: ingredient
Usage: #example
* id = "15f5287a-30eb-4128-a0bd-4bf2938eb57a"
* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "FO2303MNI2" //G-SRS UNII 
* role = $spor.ema.europa.eu:100000072050#00000072072 "active" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000072050/terms#search
* description = "dimethyl fumarate"
* allergenicindicator = "false"
* manufacturer.role = $spor.ema.europa.eu:220000000031#220000000033 "Manufacturer" //from Organisation Role Type
* manufacturer.manufacturer = Reference(urn:uuid:659ba6da-05fc-4335-beb9-a5f3aecec817) "Almirall S.A."
* substance.code = $gsrs.ncats.nih.gov#FO2303MNI2 "DIMETHYL FUMARATE"
* substance.strength.presentationratio.numerator.quantity.value = "30"
* substance.strength.presentationratio.numerator.quantity.system = "http://unitsofmeasure.org"
* substance.strength.presentationratio.numerator.quantity.code = #mg "milligram"
* substance.strength.presentationratio.denominator.quantity.value = "1"
