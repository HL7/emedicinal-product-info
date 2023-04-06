// Automatically generated from graphBuilder.
// Project: MAGNESIOBOI 48,62 mg COMPRIMIDOS (id1665504020613)
// View: Initial view

Instance: cfsb1665505881364
InstanceOf: MedicinalProductDefinition
Description: "54347 MAGNESIOBOI 48,62 mg COMPRIMIDOS"
Usage: #example
 
* identifier.system = $spor-prod
* identifier.value = "498163"

* type = http://hl7.org/fhir/medicinal-product-type#MedicinalProduct "Medicinal Product"

* domain = http://hl7.org/fhir/medicinal-product-domain#Human "Human use"

* status = http://hl7.org/fhir/publication-status#active "Active"

* legalStatusOfSupply = $spor-rms#100000072084  "Medicinal product subject to medical prescription"

* name.productName = "Magnesioboi 48,62 mg comprimidos"
* name.type = $spor-rms#220000000001
* name.type.text = "Full name"

* name.usage.country = urn:iso:std:iso:3166#ES  "Spanish"
* name.usage.jurisdiction = urn:iso:std:iso:3166#ES  "Kingdom of Spain"

* name.usage.language = urn:ietf:bcp:47#ES "Spanish"
* name.part[+].part = "MAGNESIOBOI"
* name.part[=].type = $spor-rms#220000000002 "Invented name part"

* name.part[+].part = "Magnesio"
* name.part[=].type = $spor-rms#220000000003 "Scientific name part"

* name.part[+].part = "48.62 mg"
* name.part[=].type = $spor-rms#220000000004 "Strength part"

* name.part[+].part = "COMPRIMIDOS"
* name.part[=].type = $spor-rms#220000000005 "Pharmaceutical dose form part"


Instance: cfsb1665507849181
InstanceOf: AdministrableProductDefinition
Description: "Magnesioboi 48,62 mg comprimidos"
Usage: #example

* identifier.system = $phpid
* identifier.value = "123456" 

* status = #active

* administrableDoseForm = https://standardterms.edqm.eu/browse/get_concepts_by/SOM/SOM/#10219000 "Tablet"

* unitOfPresentation = https://standardterms.edqm.eu/browse/get_concepts/UOP/#15054000  "Tablet"

* routeOfAdministration.code = https://standardterms.edqm.eu/browse/get_concepts/ROA/#20053000 "Oral use"
* routeOfAdministration.targetSpecies.code = https://spor.ema.europa.eu/rmswi/#/#100000109093  "Human"


//reference to 54347 MAGNESIOBOI 48,62 mg COMPRIMIDOS
* formOf = Reference(cfsb1665505881364)


Instance: cfsb1666195249780
InstanceOf: Ingredient
Description: "MAGNESIUM LACTATE"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "MT6QI8324A"
* identifier.use = #official

* status = #active

* role = https://spor.ema.europa.eu/rmswi/#00000072072
* role.text = "active"

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#MT6QI8324A "MAGNESIUM LACTATE"

* substance.strength.presentationQuantity.value = 404.85

* substance.strength.presentationQuantity.unit = "mg"

* substance.strength.basis = http://terminology.hl7.org/CodeSystem/v3-RoleClass#ACTIB "active ingredient - basis of strength"

//reference to 54347 MAGNESIOBOI 48,62 mg COMPRIMIDOS
* for = Reference(cfsb1665505881364)


Instance: cfsb1666197203511
InstanceOf: Ingredient
Description: "Lactose monohydrate"
Usage: #example
 
* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "EWQ57Q8I5X"
* identifier.use = #official

* role = https://spor.ema.europa.eu/rmswi/#100000072082 "Excipient"

* status = #active

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#EWQ57Q8I5X "Lactose monohydrate"
//reference to 54347 MAGNESIOBOI 48,62 mg COMPRIMIDOS
* for = Reference(cfsb1665505881364)




Instance: cfsb1666197552249
InstanceOf: Ingredient
Description: "MACROGOL 6000"
Usage: #example
 
* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "30IQX730WE"
* identifier.use = #official

* role = https://spor.ema.europa.eu/rmswi/#100000072082
* role.text = "Excipient"

* status = #active

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#30IQX730WE "MACROGOL 6000"

//reference to 54347 MAGNESIOBOI 48,62 mg COMPRIMIDOS
* for = Reference(cfsb1665505881364)


Instance: cfsb1666197990155
InstanceOf: Ingredient
Description: "MAGNESIUM STEARATE"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "70097M6I30"
* identifier.use = #official

* role = https://spor.ema.europa.eu/rmswi/#100000072082
* role.text = "Excipient"

* status = #active

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#70097M6I30 "MAGNESIUM STEARATE"

//reference to 54347 MAGNESIOBOI 48,62 mg COMPRIMIDOS
* for = Reference(cfsb1665505881364)


Instance: cfsb1666198119118
InstanceOf: Ingredient
Description: "Talc"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "7SEV7J4R1U"
* identifier.use = #official

* role = https://spor.ema.europa.eu/rmswi/#100000072082
* role.text = "Excipient"

* status = #active

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#7SEV7J4R1U "Talc"

//reference to 54347 MAGNESIOBOI 48,62 mg COMPRIMIDOS
* for = Reference(cfsb1665505881364)

 

//Instance: cfsb1667576602864
//InstanceOf: ManufacturedItemDefinition
//Description: "ManufacturedItemDefinition1"
//Usage: #example
 

Instance: cfsb1667576759979
InstanceOf: ManufacturedItemDefinition
Description: "Magnesioboi 48,62 mg comprimidos"
Usage: #example

* identifier.system = "https://AEMPS.ES"
* identifier.value = "54347"
* identifier.use = #official

* status = #active

* manufacturedDoseForm = https://spor.ema.europa.eu/rmswi/#100000073664
* manufacturedDoseForm.text = "tablet"

* unitOfPresentation = $spor-rms#200000002152
* unitOfPresentation.text = "Tablet"

//reference to Marketing Authorization Holder
* manufacturer = Reference(cfsb1667579389819)


Instance: cfsb1667578264482
InstanceOf: Organization
Description: "Marketing Authorization Holder"
Usage: #example

* identifier.system = $spor-org
* identifier.value = "ORG-100004711"
* identifier.use = #official

* active = true

* type = $spor-rms#220000000034 "Marketing authorisation holder"
* type.text = "Marketing authorisation holder"
* name = "Laboratorios Vicks S.L."

* contact.address.text = "Avenida De Bruselas 24"
* contact.address.use = #work
* contact.address.type = #physical
* contact.address.line = "Avenida De Bruselas 24"
* contact.address.city = "Alcobendas"
* contact.address.country = "ES"

Instance: cfsb1667579389819
InstanceOf: Organization
Description: "Marketing Authorization Holder"
Usage: #example

* identifier.system = $spor-org
* identifier.value = "ORG-100004711"
* identifier.use = #official

* active = true

* type = $spor-rms#220000000034 "Marketing authorisation holder"
* type.text = "Marketing authorisation holder"
* name = "Laboratorios Vicks S.L."

* contact.address.text = "Avenida De Bruselas 24"
* contact.address.use = #work
* contact.address.type = #physical
* contact.address.line = "Avenida De Bruselas 24"
* contact.address.city = "Alcobendas"
* contact.address.country = "ES"

Instance: cfsb1667580056388
InstanceOf: PackagedProductDefinition
Description: "Packaging Blister x50 tablets"
Usage: #example

* identifier.system = "https://AEMPS.ES"
* identifier.value = "54347"
* identifier.use = #official

* name = "Magnesioboi 48,62 mg comprimidos"

* type = $spor-rms#100000155527
* type.text = "Chemical Medicinal Prodcut"

* status = http://hl7.org/fhir/publication-status#active "Active"
* statusDate = "2012-02-07T13:28:17Z"

* containedItemQuantity.value = 50
* containedItemQuantity.unit = "tablets"

* packaging.identifier.system = $spor-prod
* packaging.identifier.value = "654321"
* packaging.type = $spor-rms#100000073504 "Child-resistant closure"
* packaging.quantity = 1
* packaging.material = $spor-rms#200000003529 "Cardboard"

 // Reference to Organization: Marketing Authorization Holder
* manufacturer = Reference(cfsb1667579389819)

//reference to 54347 MAGNESIOBOI 48,62 mg COMPRIMIDOS
* packageFor = Reference(cfsb1665505881364)





 

