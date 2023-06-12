// Automatically generated from graphBuilder.
// Project: Biktarvy V2 (id1665505010977)
// View: Initial view


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




 // Reference to MedicinalProductDefinition: EU/
* formOf = Reference(cfsb1665505991728)

 








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


