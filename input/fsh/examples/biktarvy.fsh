// Automatically generated from graphBuilder.
// Project: Biktarvy V2 (id1665505010977)
// View: Initial view

Instance: cfsb1665505019066
InstanceOf: RegulatedAuthorization
Description: "RegulatedAuthorization1"
Usage: #example

* identifier.system = "$spor-prod"
* identifier.value = "EU/1/18/1289/001"
* identifier.use = #official

* type = $spor-rms#100000072062
* type.text = "Marketing Authorisation"

* region = urn:iso:std:iso:3166#eu
* region.text = "European Union"

* status = http://hl7.org/fhir/publication-status#active
* status.text = "Active"

* statusDate = "2018-06-21T13:28:17Z"
//reference to Marketing Authorization Holder
* holder = Reference(cfsb1665505132093)

//reference to Regulator
* regulator = Reference(cfsb1665505181936)


Instance: cfsb1665505132093
InstanceOf: Organization
Description: "Marketing Authorization Holder"
Usage: #example

* identifier.system = $spor-org
* identifier.value = "ORG-100008368"
* identifier.use = #official

* active = true

* type = $spor-rms#220000000034 "Marketing authorisation holder"
* type.text = "Marketing authorisation holder"
* name = "Gilead Sciences Ireland UC"

* contact.address.text = "Carrigtohill, County Cork, T45 DP77 Ireland"
* contact.address.use = #work
* contact.address.type = #physical
* contact.address.line = "Carrigtohill, County Cork, T45"
* contact.address.city = "County Cork"
* contact.address.country = "IR"

Instance: cfsb1665505181936
InstanceOf: Organization
Description: "Regulator"
Usage: #example

* identifier.system = $spor-org
* identifier.value = "ORG-100013412"
* identifier.use = #official

* identifier[1].system = $spor-org
* identifier[1].value = "LOC-100020264"
* identifier[1].use = #official



* active = true


* type = https://spor.ema.europa.eu/rmswi/#/#220000000032
* type.text = "Medicines Regulatory Authority"

* name = "European Medicines Agency"
* contact.address.text = "Domenico Scarlattilaan 6 1083 HS Amsterdam The Netherlands"
* contact.address.use = #work
* contact.address.type = #physical
* contact.address.line = "Carretera De Martorell 41 61, Poligono Industrial Nord-Est"
* contact.address.postalCode = "1083 HS"
* contact.address.city = "Amsterdam"
* contact.address.country = "nl"

Instance: cfsb1665505232916
InstanceOf: Ingredient
Description: "Bictegravir"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "4L5MP1Y7W7"
* identifier.use = #official

* status = #active

* role = https://spor.ema.europa.eu/rmswi/#00000072072
* role.text = "active"



* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#4L5MP1Y7W7 "BICTEGRAVIR SODIUM"

* substance.strength.presentationQuantity.value = 50

* substance.strength.presentationQuantity.unit = "mg"

* substance.strength.basis = http://terminology.hl7.org/CodeSystem/v3-RoleClass##ACTIB

* substance.strength.basis.text = "active ingredient - basis of strength"

//reference to EU/1/18/1289/001
* for = Reference(cfsb1665505991728)


Instance: cfsb1665505279685
InstanceOf: Ingredient
Description: "Embtricitabine"
Usage: #example
 
* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "G70B4ETF4S"
* identifier.use = #official

* status = #active

* role = https://spor.ema.europa.eu/rmswi/#100000072072 "active"

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#G70B4ETF4S "Emtricitabine"

* substance.strength.presentationQuantity = 200 'mg'
* substance.strength.basis = http://terminology.hl7.org/CodeSystem/v3-RoleClass##ACTIB

* substance.strength.basis.text = "active ingredient - basis of strength"

//reference to EU/1/18/1289/001
* for = Reference(cfsb1665505991728)


Instance: cfsb1665505991728
InstanceOf: MedicinalProductDefinition
Description: "EU/1/18/1289/001"
Usage: #example
 
* identifier.system = "$spor-prod"
* identifier.value = "11102022"

* type = http://hl7.org/fhir/medicinal-product-type#MedicinalProduct "Medicinal Product"

* domain = http://hl7.org/fhir/medicinal-product-domain#Human
* domain.text = "Human use"

* status = http://hl7.org/fhir/publication-status#active "Active"

* legalStatusOfSupply = $spor-rms#100000072084
* legalStatusOfSupply.text = "Medicinal product subject to medical prescription"

* name.productName = "Biktarvy 50 mg/200 mg/25 mg film-coated tablets"
* name.type = $spor-rms#220000000001 "Full name"
* name.usage.country = urn:iso:std:iso:3166#eu  "European Union"

* name.usage.jurisdiction = urn:iso:std:iso:3166#eu "European Union"

* name.usage.language = urn:ietf:bcp:47#en "English"

* name.part[+].part = "Biktarvy"
* name.part[=].type = $spor-rms#220000000002 "Invented name part"

* name.part[+].part = "bictegravir/emtricitabine/tenofovir alafenamide"
* name.part[=].type = $spor-rms#220000000003 "Scientific name part"

* name.part[+].part = "50 mg/200 mg/25 mg"
* name.part[=].type = $spor-rms#220000000004 "Strength part"

* name.part[+].part = "film-coated tablets"
* name.part[=].type = $spor-rms#220000000005 "Pharmaceutical dose form part"

Instance: cfsb1665507846505
InstanceOf: AdministrableProductDefinition
Description: "Biktarvy 50 mg/200 mg/25 mg film-coated tablets"
Usage: #example

* identifier.system = $phpid
* identifier.value = "123456" 

* status = #active

* administrableDoseForm = https://standardterms.edqm.eu/browse/get_concepts_by/SOM/SOM/#10219000
* administrableDoseForm.text = "Tablet"

* unitOfPresentation = https://standardterms.edqm.eu/browse/get_concepts/UOP/#15054000
* unitOfPresentation.text = "Tablet"

* routeOfAdministration.code = https://standardterms.edqm.eu/browse/get_concepts/ROA/#20053000
* routeOfAdministration.code.text = "Oral use"
* routeOfAdministration.targetSpecies.code = https://spor.ema.europa.eu/rmswi/#/#100000109093
* routeOfAdministration.targetSpecies.code.text = "Human"


 // Reference to MedicinalProductDefinition: EU/
* formOf = Reference(cfsb1665505991728)

 



Instance: cfsb1666195266647
InstanceOf: Ingredient
Description: "tenofovir alafenamide"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "EL9943AG5J"
* identifier.use = #official

* status = #active

* role = https://spor.ema.europa.eu/rmswi/#100000072072 "active"

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#EL9943AG5J "tenofovir alafenamide"

* substance.strength.presentationQuantity.value = 25

* substance.strength.presentationQuantity.unit = "mg"

* substance.strength.basis = http://terminology.hl7.org/CodeSystem/v3-RoleClass##ACTIB

* substance.strength.basis.text = "active ingredient - basis of strength"

//reference to EU/1/18/1289/001
* for = Reference(cfsb1665505991728)


Instance: cfsb1666197397224
InstanceOf: Ingredient
Description: "Microcrystalline cellulose"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "OP1R32D61U"
* identifier.use = #official

* role = https://spor.ema.europa.eu/rmswi/#100000072082
* role.text = "Excipient"

* status = #active

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#OP1R32D61U "Microcrystalline cellulose"

//reference to EU/1/18/1289/001
* for = Reference(cfsb1665505991728)


Instance: cfsb1666197441225
InstanceOf: Ingredient
Description: "Croscarmellose sodium"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "M28OL1HH48"
* identifier.use = #official

* role = https://spor.ema.europa.eu/rmswi/#100000072082
* role.text = "Excipient"

* status = #active

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#M28OL1HH48 "Croscarmellose sodium"

//reference to EU/1/18/1289/001
* for = Reference(cfsb1665505991728)


Instance: cfsb1666197470356
InstanceOf: Ingredient
Description: "Magnesium stearate"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "70097M6I30"
* identifier.use = #official

* role = https://spor.ema.europa.eu/rmswi/#100000072082
* role.text = "Excipient"

* status = #active

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#70097M6I30 "Magnesium stearate"
 
//reference to EU/1/18/1289/001
* for = Reference(cfsb1665505991728)


Instance: cfsb1667576615115
InstanceOf: ManufacturedItemDefinition
Description: "Biktarvy 50 mg/200 mg/25 mg film-coated tablets"
Usage: #example

* identifier.system = "https://spor.ema.europa.eu/pmswi/#/"
* identifier.value = "EU/1/18/1289/001"
* identifier.use = #official

* status = #active

* manufacturedDoseForm = https://spor.ema.europa.eu/rmswi/#100000073665
* manufacturedDoseForm.text = "tablet"

* unitOfPresentation = $spor-rms#200000002152
* unitOfPresentation.text = "Tablet"

//reference to Marketing Authorization Holder
* manufacturer = Reference(cfsb1665505132093)




Instance: cfsb1667580052450
InstanceOf: PackagedProductDefinition
Description: "90 (3 bottles of 30) film-coated tablets"
Usage: #example

* identifier.system = "$spor-prod"
* identifier.value = "EU/1/18/1289/001"
* identifier.use = #official

* name = "Biktarvy 50 mg/200 mg/25 mg film-coated tablets"

* type = $spor-rms#100000155527
* type.text = "Chemical Medicinal Prodcut"

* status = http://hl7.org/fhir/publication-status#active "Active"
* statusDate = "2012-02-07T13:28:17Z"

* containedItemQuantity.value = 90
* containedItemQuantity.unit = "tablets"

* packaging.identifier.system = $spor-prod
* packaging.identifier.value = "654321"
* packaging.type = $spor-rms#100000073504 "Child-resistant closure"
* packaging.quantity = 1
* packaging.material = $spor-rms#200000003529 "Cardboard"
 
// Reference to Organization: Marketing Authorization Holder
* manufacturer = Reference(cfsb1665505132093)

//reference to EU/1/18/1289/001
* packageFor = Reference(cfsb1665505991728)




