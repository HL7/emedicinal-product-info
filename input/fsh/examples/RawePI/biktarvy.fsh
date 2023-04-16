// Automatically generated from graphBuilder.
// Project: Biktarvy V2 (id1665505010977)
// View: Initial view

/*
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

* substance.strength.basis = http://terminology.hl7.org/CodeSystem/v3-RoleClass#ACTIB

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
* substance.strength.basis = http://terminology.hl7.org/CodeSystem/v3-RoleClass#ACTIB

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

* substance.strength.basis = http://terminology.hl7.org/CodeSystem/v3-RoleClass#ACTIB

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

* identifier.system = $spor-prod
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



Instance: cfsb1651231019153
InstanceOf: Composition
Description: "Package Leaflet"
Usage: #example

* status = #final
* type = https://spor.ema.europa.eu/#100000155539
* type.text = "Package Leaflet"
 // Reference to RegulatedAuthorization: Regulated authorization
* subject = Reference(cfsb1665505019066)
* date = "2022-04-29T13:28:17Z"

 // Reference to Organization: Marketing Authorization Holder
* author = Reference(cfsb1665505132093)
* title = "TEST PURPOSES ONLY - Biktarvy 50 mg/200 mg/25 mg film-coated tablets"
//* confidentiality = #U
* attester.mode = http://hl7.org/fhir/composition-attestation-mode#official
* attester.time =  "2002-08-01T13:28:17Z"
* language = #en

* section[0].title = "B. Package Leaflet"
* section[0].code = https://spor.ema.europa.eu/#100000155538
* section[0].code.text = "B. PACKAGE LEAFLET"
* section[0].text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>
Package leaflet: Information for the patient
Dovato 50 mg/300 mg film-coated tablets
dolutegravir/lamivudine
Read all of this leaflet carefully before you start taking this medicine because it contains important information for you.
<ul>
<li> Keep this leaflet. You may need to read it again. </li>
<li> If you have any further questions, ask your doctor or pharmacist. </li>
<li> This medicine has been prescribed for you only. Do not pass it on to others. It may harm them, even if their signs of illness are the same as yours. </li>
<li> If you get any side effects talk to your doctor or pharmacist. This includes any possible side effects not listed in this leaflet. See section 4. </li>
</ul>
</div>"""
* section.text.status = #additional

* section[1].title = "What is in this leaflet"
* section[1].code = https://spor.ema.europa.eu/#100000155538-0
* section[1].code.text = "B. PACKAGE LEAFLET"
* section[1].text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>
What in this leaflet
<ol>
<li>What Dovato is and what it is used for</li>
<li>What you need to know before you take Dovato</li>
<li>How to take Dovato</li>
<li>Possible side effects</li>
<li>How to store Dovato</li>
<li>Contents of the pack and other information</li>
</ol>
</div>"""
* section[1].text.status = #additional

* section[2].title = "1. What Dovato is and what it is used for"
* section[2].code = https://spor.ema.europa.eu/#100000155538-1
* section[2].code.text = "B. PACKAGE LEAFLET"
* section[2].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
<b>1. What Dovato is and what it is used for</b>
Dovato is a medicine that contains two active ingredients used to treat human immunodeficiency virus (HIV)
infection: dolutegravir and lamivudine.
</div>"
* section[2].text.status = #additional

* section[3].title = "2. What you need to know before you take Dovato"
* section[3].code = https://spor.ema.europa.eu/#100000155538-2
* section[3].code.text = "B. PACKAGE LEAFLET"
* section[3].text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>
<b>2. What you need to know before you take Dovato</b>
Do not take Dovato
<ul>
<li>if you are allergic (hypersensitive) to dolutegravir or lamivudine or any of the other ingredients of
this medicine (listed in section 6).</li>
<li>If you are taking a medicine called fampridine (also known as dalfampridine; used in multiple
sclerosis).</li>
</ul>
</div>"""
* section[3].text.status = #additional

* section[4].title = "3. How to take Dovato"
* section[4].code = https://spor.ema.europa.eu/#100000155538-3
* section[4].code.text = "B. PACKAGE LEAFLET"
* section[4].text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>
<b>How to take Dovato</b>
<p>Always take this medicine exactly as your doctor has told you. Check with your doctor or pharmacist if you
are not sure</p>
<ul>
<li>The recommended dose of Dovato is <b>one tablet once a day.</b></li>
<li>If you are taking a medicine called fampridine (also known as dalfampridine; used in multiple
sclerosis).</li>
</ul>
</div>"""
* section[4].text.status = #additional

* section[5].title = "4. Possible side effects"
* section[5].code = https://spor.ema.europa.eu/#100000155538-4
* section[5].code.text = "B. PACKAGE LEAFLET"
* section[5].text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>
<p><b>4. Possible side effects</b></p>
<p>Like all medicines, this medicine can cause side effects, although not everybody gets them,<b>so it is very
important to talk to your doctor about any changes in your health</b></p>
</div>"""
* section[5].text.status = #additional

* section[6].title = "5. How to store Dovato"
* section[6].code = https://spor.ema.europa.eu/#100000155538-5
* section[6].code.text = "B. PACKAGE LEAFLET"
* section[6].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
<b>5. How to store Dovato</b>
<p>Keep this medicine out of the sight and reach of children.</p>
<p>Do not use this medicine after the expiry date which is stated on the carton and bottle after EXP. The expiry
date refers to the last day of that month.</p>
<p>This medicine does not require any special storage conditions.</p>
<p>Do not throw away any medicines via wastewater or household waste. Ask your pharmacist how to throw
away medicines you no longer use. These measures will help protect the environment.</p>
</div>"
* section[6].text.status = #additional

* section[7].title = "6. Contents of the pack and other information"
* section[7].code = https://spor.ema.europa.eu/#100000155538-6
* section[7].code.text = "B. PACKAGE LEAFLET"
* section[7].text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>
<b>6. Contents of the pack and other information</b>
<b>What Dovato contains </b>
<ul>
<li>The active substances are dolutegravir and lamivudine. Each tablet contains dolutegravir sodium
equivalent to 50 mg dolutegravir and 300 mg lamivudine.</li>
<li>The other ingredients are microcrystalline cellulose, sodium starch glycolate, magnesium stearate,
mannitol (E421), povidone (K29/32), sodium stearyl fumarate, hypromellose (E464), macrogol,
titanium dioxide (E171).</li>
<li>This medicine contains less than 1 mmol sodium (23 mg) per tablet, that is to say essentially ‘sodiumfree’.</li>
</ul>
</div>"""
* section[7].text.status = #additional

Instance: cfsb1651596479133
InstanceOf: Bundle
Title: "Vulcan Biktarvy FHIR Package Insert EMA"
Description: "English Instance of Biktarvy package insert for Connectathon testing"
Usage: #example

* identifier.system = "https://www.gravitatehealth.eu/sid/doc"
* identifier.value = "EU/1/19/1370/002"
* type = #document
* timestamp = "2011-06-23T08:38:00+02:00"

// Composition
* entry[+].resource = cfsb1651231019153
* entry[=].fullUrl = "Composition/cfsb1651231019153"

// Organizations
* entry[+].resource = cfsb1665505181936
* entry[=].fullUrl = "Organization/cfsb1665505181936"



* entry[+].resource = cfsb1651149636159
* entry[=].fullUrl = "Organization/cfsb1651149636159"

// authorizations
* entry[+].resource = cfsb1665505019066
* entry[=].fullUrl = "RegulatedAuthorization/cfsb1665505019066"

// medicinal products
* entry[+].resource = cfsb1665505991728
* entry[=].fullUrl = "MedicinalProductDefinition/cfsb1665505991728"

// packaged product
* entry[+].resource = cfsb1667580052450
* entry[=].fullUrl = "PackagedProductDefinition/cfsb1667580052450"

// administrable product
* entry[+].resource = cfsb1665507846505
* entry[=].fullUrl = "AdministrableProductDefinition/cfsb1665507846505"

// manufactured items
* entry[+].resource = cfsb1667576615115
* entry[=].fullUrl = "ManufacturedItemDefinition/cfsb1667576615115"

// ingredients
* entry[+].resource = cfsb1665505232916
* entry[=].fullUrl = "Ingredient/cfsb1665505232916"

* entry[+].resource = cfsb1666195266647
* entry[=].fullUrl = "Ingredient/cfsb1666195266647"

* entry[+].resource = cfsb1666197397224
* entry[=].fullUrl = "Ingredient/cfsb1666197397224"

* entry[+].resource = cfsb1666197441225
* entry[=].fullUrl = "Ingredient/cfsb1666197441225"

* entry[+].resource = cfsb1666197470356
* entry[=].fullUrl = "Ingredient/cfsb1666197470356"


*/