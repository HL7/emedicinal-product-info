// Instance of Administrable Product Definition 2 - 120 mg
Instance: c7d4fd6d-de2c-404a-9be4-13d9e552ac1b
InstanceOf: AdministrableProductDefinition
Usage: #example
* id = "c7d4fd6d-de2c-404a-9be4-13d9e552ac1b"
* identifier = "PHPID-120"
* administrabledoseform = $spor.ema.europa.eu#200000002102 "Tablet" //https://spor.ema.europa.eu/rmswi/#/lists/200000000009/terms basic dosage form
* ManufacturedItemDefinition = Reference(urn:uuid:b6154e11-fa77-4bdd-99d0-43a5eb03c694) "120 mg tablet"
* unitofpresentation = $spor.ema.europa.eu#200000002152 "Tablet" //https://spor.ema.europa.eu/rmswi/#/lists/200000000014/terms unit of presentation
* producedfrom = Reference(urn:uuid:b6154e11-fa77-4bdd-99d0-43a5eb03c694) //manufactured item #2 - 120mg 
* ingredient = Reference(urn:uuid:15f5287a-30eb-4128-a0bd-4bf2938eb57a) "dimethyl fumarate"
* ingredient = Reference(urn:uuid:6dfa75f1-8cb4-4ff0-b4a5-ffcf13b5cebe) "Lactose monohydrate"
* ingredient = Reference(urn:uuid:1969dd8c-91ec-497b-a8f8-808346cc22d0) "Cellulose microcrystalline"
* ingredient = Reference(urn:uuid:6ba108fe-dae1-4997-80c2-4c63c7362b32) "Croscarmellose sodium"
* ingredient = Reference(urn:uuid:1685c199-1e59-4a7d-af41-6737eb5a8c1b) "Colloidal anhydrous silica"
* ingredient = Reference(urn:uuid:3ec0406d-217d-4cff-a05d-ed0d817542ed) "Magnesium stearate"
* ingredient = Reference(urn:uuid:8b48299a-4cc1-4178-8b9b-7d1d3fa902f7) "Methacrylic acid-ethyl acrylate copolymer (1:1)"
* ingredient = Reference(urn:uuid:331f6234-4bac-40b3-93dd-c98aa1dd3e03) "Talc"
* ingredient = Reference(urn:uuid:fc06daeb-500a-4c9d-a16e-8db36a8ab32f) "Triethyl citrate"
* ingredient = Reference(urn:uuid:8cac85ae-061b-489c-a707-e23fc94981ba) "Titanium dioxide (E171)"
* ingredient = Reference(urn:uuid:cfd7b82f-7a6c-4e3b-ae59-deeb69570402) "Simethicone"
* ingredient = Reference(urn:uuid:b4568b7e-675f-4824-8b77-996aeb0b05b4) "Indigo carmine (E132)"
* ingredient = Reference(urn:uuid:a6757f15-1d58-4361-a0f1-d28a63b3b0fc) "Sodium hydroxide"

* characteristic.system = $ncithesaurus#9999 "shape" //http://ncithesaurus-stage.nci.nih.gov
* characteristic.code = "C48348"
* characteristic.display = "ROUND"

* characteristic.display = "diameter of approximately 11.6 mm" //size

* characteristic.system = $ncithesaurus#9999 "color" //http://ncithesaurus-stage.nci.nih.gov
* characteristic.code = "C48333"
* characteristic.display = "blue"

*routeofadministration.code = $spor.ema.europa.eu#100000073619 "oral use" //https://spor.ema.europa.eu/rmswi/#/lists/100000073345/terms route and method of administration
