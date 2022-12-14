// Automatically generated from graphBuilder.
// Project: Dovato (id1650902604176)
// View: Initial view

/*Instance: cfsb1650902647311
InstanceOf: MedicinalProductDefinition
Description: "Medicinal Product defintion"
Usage: #example
 

Instance: cfsb1650903547398
InstanceOf: MedicinalProductDefinition
Description: "MedicinalProductDefinition2"
Usage: #example
 */

Instance: cfsb1650904258324
InstanceOf: MedicinalProductDefinition
Description: "EU/1/19/1370/001 Dovato 50 mg/300 mg film-coated tablets"
Usage: #example
 
* identifier.system = $spor-prod
* identifier.value = "498163"

* type = http://hl7.org/fhir/medicinal-product-type#MedicinalProduct
* type.text = "Medicinal Product"

* domain = http://hl7.org/fhir/medicinal-product-domain#Human
* domain.text = "Human use"

* status = http://hl7.org/fhir/publication-status#active "Active"

* legalStatusOfSupply = $spor-rms#100000072084
* legalStatusOfSupply.text = "Medicinal product subject to medical prescription"

* name.productName = "Dovato 50 mg/300 mg film-coated tablets"
* name.type = $spor-rms#220000000001

* name.type.text = "Full name"
* name.usage.country = urn:iso:std:iso:3166#eu "European Union"
* name.usage.jurisdiction = urn:iso:std:iso:3166#eu "European Union"
* name.usage.language = urn:ietf:bcp:47#en  "English"

* name.part[+].part = "Dovato"
* name.part[=].type = $spor-rms#220000000002 "Invented name part"

* name.part[+].part = "dolutegravir/lamivudine"
* name.part[=].type = $spor-rms#220000000003 "Scientific name part"

* name.part[+].part = "50 mg/300 mg"
* name.part[=].type = $spor-rms#220000000004 "Strength part"

* name.part[+].part = "film-coated tablets"
* name.part[=].type = $spor-rms#220000000005 "Pharmaceutical dose form part"




Instance: cfsb1650995718524
InstanceOf: PackagedProductDefinition
Description: "50 mg/300 mg film-coated tablets"
Usage: #example

* identifier.system = "$spor-prod"
* identifier.value = "EU/1/19/1370/001"
* identifier.use = #official

* name = "Dovato 50 mg/300 mg film-coated tablets"

* type = $spor-rms#100000155527
* type.text = "Chemical Medicinal Prodcut"

* status = http://hl7.org/fhir/publication-status#active "Active"
* statusDate = "2012-02-07T13:28:17Z"

* containedItemQuantity.value = 30
* containedItemQuantity.unit = "tablets"

* packaging.identifier.system = $spor-prod
* packaging.identifier.value = "654321"
* packaging.type = $spor-rms#100000073504 "Child-resistant closure"
* packaging.quantity = 1
* packaging.material = $spor-rms#200000003529 "Cardboard"


//reference to MedProDef: EU/1/19/1370/001 Dovato 50 mg/300 mg film-coated tablets
* packageFor = Reference(cfsb1650904258324)

 // Reference to Organization: Manufacturer
* manufacturer = Reference(cfsb1650997423990)


Instance: cfsb1650997423990
InstanceOf: Organization
Description: "Manufacturer"
Usage: #example
 
* identifier.system = "$spor-org"
* identifier.value = "ORG-100004538"
* identifier.use = #official

* identifier[1].system = "$spor-org"
* identifier[1].value = "LOC-100000153"
* identifier[1].use = #official

* active = true
* type = $spor-rms#220000000033 "manufacturer"
* name = "GLAXO WELLCOME, S.A."
* contact.address.text = "Avda. Extremadura, 3"
* contact.address.use = #work
* contact.address.type = #physical
* contact.address.line = "Avda. Extremadura 3, 09400 Aranda De Duero"
* contact.address.city = "Aranda De Duero"
* contact.address.country = "ES"


Instance: cfsb1650998521654
InstanceOf: ManufacturedItemDefinition
Description: "Manufactured Item: Dovato 50 mg/300 mg film-coated tablets"
Usage: #example
 
* identifier.system = "https://spor.ema.europa.eu/pmswi/#/"
* identifier.value = "EU/1/19/1370/001"
* identifier.use = #official

* status = #active

* manufacturedDoseForm = https://spor.ema.europa.eu/rmswi/#100000073665
* manufacturedDoseForm.text = "Film-coated tablet"

* unitOfPresentation = $spor-rms#200000002152
* unitOfPresentation.text = "Tablet"

 // Reference to Organization: Manufacturer
* manufacturer = Reference(cfsb1650997423990)


Instance: cfsb1650999516847
InstanceOf: AdministrableProductDefinition
Description: "Dovato 50 mg/300 mg film-coated tablets"
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

//reference to EU/1/19/1370/001 Dovato 50 mg/300 mg film-coated tablets
* formOf = Reference(cfsb1650904258324)

 // Reference to ManufacturedItemDefinition: Manufactured Item: Dovato 50 mg/300 mg film-coated tablets
* producedFrom = Reference(cfsb1650998521654)


Instance: cfsb1651148079894
InstanceOf: RegulatedAuthorization
Description: "Regulated authorization"
Usage: #example
 
* identifier.system = $spor-prod
* identifier.value = "EU/1/19/1370/001"
* identifier.use = #official

 // Reference to MedicinalProductDefinition: EU/1/19/1370/001 Dovato 50 mg/300 mg film-coated tablets
* subject = Reference(cfsb1650904258324)

* type = $spor-rms#100000072062
* type.text = "Marketing Authorisation"

* region = urn:iso:std:iso:3166#eu
* region.text = "European Union"

* status = http://hl7.org/fhir/publication-status#active
* status.text = "Active"

* statusDate = "2019-07-01T13:28:17Z"

 // Reference to Organization: Marketing Authorization Holder
* holder = Reference(cfsb1651149636159)

 // Reference to Organization: Regulator
* regulator = Reference(cfsb1651152112409)





Instance: cfsb1651149548743
InstanceOf: Organization
Description: "Organization2"
Usage: #example
 

Instance: cfsb1651149636159
InstanceOf: Organization
Description: "Marketing Authorization Holder"
Usage: #example

* identifier.system = $spor-org
* identifier.value = "ORG-100012958"
* identifier.use = #official

* active = true

* type = $spor-rms#220000000034 "Marketing authorisation holder"
* type.text = "Marketing authorisation holder"
* name = "ViiV Healthcare BV"

* contact.address.text = "Van Asch van Wijckstraat 55H 3811 LP Amersfoort Netherlands"
* contact.address.use = #work
* contact.address.type = #physical
* contact.address.line = "Van Asch van Wijckstraat 55H"
* contact.address.city = "Amersfoort"
* contact.address.country = "NL"

Instance: cfsb1651152112409
InstanceOf: Organization
Description: "Regulator"
Usage: #example

* identifier.system = $spor-org
* identifier.value = "ORG-100013412"
* identifier.use = #official

* identifier[1].system = "$spor-org"
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
 

Instance: cfsb1651170791283
InstanceOf: Ingredient
Description: "microcrystalline cellulose"
Usage: #example
 
* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "OP1R32D61U"
* identifier.use = #official

* role = https://spor.ema.europa.eu/rmswi/#100000072082
* role.text = "Excipient"

* status = #active

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#OP1R32D61U "microcrystalline cellulose"

//reference to Manufactured Item: Dovato 50 mg/300 mg film-coated tablets
* for = Reference(cfsb1650998521654)

 // Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(cfsb1650997423990)



Instance: cfsb1651229974487
InstanceOf: Ingredient
Description: "sodium starch glycolate"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "H8AV0SQX4D"
* identifier.use = #official

* role = https://spor.ema.europa.eu/rmswi/#100000072082
* role.text = "Excipient"

* status = #active

//reference to Manufactured Item: Dovato 50 mg/300 mg film-coated tablets
* for = Reference(cfsb1650998521654)

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#H8AV0SQX4D "sodium starch glycolate"


 // Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(cfsb1650997423990)



Instance: cfsb1651230170831
InstanceOf: Ingredient
Description: "magnesium stearate"
Usage: #example
 
* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "70097M6I30"
* identifier.use = #official

* role = https://spor.ema.europa.eu/rmswi/#100000072082
* role.text = "Excipient"

* status = #active

//reference to Manufactured Item: Dovato 50 mg/300 mg film-coated tablets
* for = Reference(cfsb1650998521654)

 // Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(cfsb1650997423990)

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#70097M6I30 "magnesium stearate"




Instance: cfsb1651230330246
InstanceOf: Ingredient
Description: "mannitol"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "3OWL53L36A"
* identifier.use = #official

* role = https://spor.ema.europa.eu/rmswi/#100000072082
* role.text = "Excipient"

* status = #active

//reference to Manufactured Item: Dovato 50 mg/300 mg film-coated tablets
* for = Reference(cfsb1650998521654)

 // Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(cfsb1650997423990)

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#3OWL53L36A "mannitol"

Instance: cfsb1651231019151
InstanceOf: Composition
Description: "Package Leaflet"
Usage: #example

* status = #final
* type = https://spor.ema.europa.eu/#100000155538
* type.text = "Package Leaflet"
 // Reference to RegulatedAuthorization: Regulated authorization
* subject = Reference(cfsb1651148079894)
* date = "2022-04-29T13:28:17Z"

 // Reference to Organization: Marketing Authorization Holder
* author = Reference(cfsb1651149636159)
* title = "TEST PURPOSES ONLY - Dovato 50 mg/300 mg film-coated tablets"
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





Instance: cfsb1651234995610
InstanceOf: Composition
Description: "Prospecto Dovato 50 mg/300 mg comprimidos recubiertos con película"
Usage: #example

* status = #final
* type = https://spor.ema.europa.eu/#100000155538
* type.text = "Package Leaflet"
 // Reference to RegulatedAuthorization: Regulated authorization
* subject = Reference(cfsb1651148079894)
* date = "2022-04-29T13:28:17Z"

 // Reference to Organization: Marketing Authorization Holder
* author = Reference(cfsb1651149636159)
* title = "TEST PURPOSES ONLY/EJEMPLO DE PRUEBAS - Dovato 50 mg/300 mg comprimidos recubiertos con película"
//* confidentiality = #U
* attester.mode = http://hl7.org/fhir/composition-attestation-mode#official
* attester.time =  "2002-08-01T13:28:17Z"
* language = #es

* section[0].title = "B. Package Leaflet"
* section[0].code = https://spor.ema.europa.eu/#100000155538
* section[0].code.text = "B. PACKAGE LEAFLET"
* section[0].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
Prospecto: información para el paciente
Dovato 50 mg/300 mg comprimidos recubiertos con película
dolutegravir/lamivudina
<b>Lea todo el prospecto detenidamente antes de empezar a tomar este medicamento, porque
contiene información importante para usted.</b>
<ul>
<li>Conserve este prospecto, ya que puede tener que volver a leerlo.</li>
<li>Si tiene alguna duda, consulte a su médico o farmacéutico.</li>
<li>Este medicamento se le ha recetado solamente a usted, y no debe dárselo a otras personas
aunque tengan los mismos síntomas que usted, ya que puede perjudicarles.</li>
<li>Si experimenta efectos adversos, consulte a su médico o farmacéutico, incluso si se trata de
efectos adversos que no aparecen en este prospecto. Ver sección 4.</li>
</ul>
</div>"
* section[0].text.status = #additional

* section[1].title = "What is in this leaflet"
* section[1].code = https://spor.ema.europa.eu/#100000155538-0
* section[1].code.text = "B. PACKAGE LEAFLET"
* section[1].text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>
Contenido del prospecto
<ol>
  <li>Qué es Dovato y para qué se utiliza</li>
  <li>Qué necesita saber antes de empezar a tomar Dovato</li>
  <li>Cómo tomar Dovato</li>
  <li>Posibles efectos adversos</li>
  <li>Conservación de Dovato</li>
  <li>Contenido del envase e información adicional</li>
</ol>
</div>"""
* section[1].text.status = #additional

* section[2].title = "1. What Dovato is and what it is used for"
* section[2].code = https://spor.ema.europa.eu/#100000155538-1
* section[2].code.text = "B. PACKAGE LEAFLET"
* section[2].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
<b>1. Qué es Dovato y para qué se utiliza</b>
Dovato es un medicamento que contiene dos principios activos usados para tratar la infección por el
virus de la inmunodeficiencia humana (VIH): dolutegravir y lamivudina. Dolutegravir pertenece al
grupo de medicamentos antirretrovirales llamados inhibidores de la integrasa (INI) y lamivudina
pertenece a un grupo de medicamentos antirretrovirales denominados inhibidores de la transcriptasa
inversa análogos de nucleósido (ITIAN).
</div>"
* section[2].text.status = #additional

* section[3].title = "2. What you need to know before you take Dovato"
* section[3].code = https://spor.ema.europa.eu/#100000155538-2
* section[3].code.text = "B. PACKAGE LEAFLET"
* section[3].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
<b>2. Qué necesita saber antes de empezar a tomar Dovato</b>
<b>No tome Dovato</b>
<ul>
  <li>si es <b>alérgico</b> (hipersensible) a dolutegravir o lamivudina o a alguno de los demás
componentes de este medicamento (incluidos en la sección 6)</li>
  <li>si está tomando un medicamento llamado <b>fampridina</b> (también conocido como
dalfampridina; utilizado para tratar la esclerosis múltiple).</li>
</ul>
</div>"
* section[3].text.status = #additional

* section[4].title = "3. How to take Dovato"
* section[4].code = https://spor.ema.europa.eu/#100000155538-3
* section[4].code.text = "B. PACKAGE LEAFLET"
* section[4].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
<b>3. Cómo tomar Dovato</b>
<p>Siga exactamente las instrucciones de administración de este medicamento indicadas por su médico.
En caso de duda, consulte de nuevo a su médico o farmacéutico.</p>
<ul>
  <li>La dosis recomendada de Dovato es <b>un comprimido una vez al día.</b></li>
</ul>
<p>Trague el comprimido con un poco de líquido. Dovato se puede tomar con o sin alimentos.</p>
</div>"
* section[4].text.status = #additional

* section[5].title = "4. Possible side effects"
* section[5].code = https://spor.ema.europa.eu/#100000155538-4
* section[5].code.text = "B. PACKAGE LEAFLET"
* section[5].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
<p><b>4. Posibles efectos adversos</b></p>
<p>Al igual que todos los medicamentos, este medicamento puede producir efectos adversos, aunque no
todas las personas los sufran, <b>por lo que es muy importante que le comente a su médico cualquier
cambio en su estado de salud.</b></p>
</div>"
* section[5].text.status = #additional

* section[6].title = "5. How to store Dovato"
* section[6].code = https://spor.ema.europa.eu/#100000155538-5
* section[6].code.text = "B. PACKAGE LEAFLET"
* section[6].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
<b>5. Conservación de Dovato</b>
<p>Mantener este medicamento fuera de la vista y del alcance de los niños</p>
<p>No utilice este medicamento después de la fecha de caducidad que aparece en la caja y el frasco
después de CAD. La fecha de caducidad es el último día del mes que se indica.</p>
<p>Este medicamento no requiere ninguna condición especial de conservación.</p>
<p>Los medicamentos no se deben tirar por los desagües ni a la basura. Pregunte a su farmacéutico cómo
deshacerse de los envases y de los medicamentos que ya no necesita. De esta forma, ayudará a
proteger el medio ambiente.</p>
</div>"
* section[6].text.status = #additional

* section[7].title = "6. Contents of the pack and other information"
* section[7].code = https://spor.ema.europa.eu/#100000155538-6
* section[7].code.text = "B. PACKAGE LEAFLET"
* section[7].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
<b>6. Contenido del envase e información adicional</b>
<b>Composición de Dovato</b>
<ul>
  <li>Los principios activos son dolutegravir y lamivudina. Cada comprimido contiene dolutegravir
sódico equivalente a 50 mg de dolutegravir y 300 mg de lamivudina.</li>
  <li>Los demás componentes son celulosa microcristalina, carboximetilalmidón sódico, estearato de
magnesio, manitol (E421), povidona (K29/32), fumarato estearilo de sodio, hipromelosa (E464),
macrogol, dióxido de titanio (E171).</li>
<li>Este medicamento contiene menos de 1 mmol de sodio (23 mg) por comprimido; esto es,
esencialmente “exento de sodio”.
</li>
</ul>
</div>"
* section[7].text.status = #additional

Instance: cfsb1651596479132
InstanceOf: Bundle
Title: "Vulcan Dovato FHIR Package Insert EMA"
Description: "English Instance of Dovato package insert for Connectathon testing"
Usage: #example

* identifier.system = "https://www.gravitatehealth.eu/sid/doc"
* identifier.value = "EU/1/19/1370/001"
* type = #document
* timestamp = "2011-06-23T08:38:00+02:00"

// Composition
* entry[+].resource = cfsb1651231019151

// Organizations
* entry[+].resource = cfsb1650997423990
* entry[+].resource = cfsb1651152112409
* entry[+].resource = cfsb1651149636159

// authorizations
* entry[+].resource = cfsb1651148079894

// medicinal products
* entry[+].resource = cfsb1650904258324

// packaged product
* entry[+].resource = cfsb1650995718524

// administrable product
* entry[+].resource = cfsb1650999516847

// manufactured items
* entry[+].resource = cfsb1650998521654

// ingredients
* entry[+].resource = cfsb1651162710491
* entry[+].resource = cfsb1651164758053
* entry[+].resource = cfsb1651170791283
* entry[+].resource = cfsb1651229974487
* entry[+].resource = cfsb1651230170831
* entry[+].resource = cfsb1651230330246

Instance: cfsb1651597532341
InstanceOf: Bundle
Title: "Vulcan Dovato FHIR Package Insert EMA ESP"
Description: "Spanish Instance of Dovato package insert for Connectathon testing"
Usage: #example

* identifier.system = "https://www.gravitatehealth.eu/sid/doc"
* identifier.value = "EU/1/19/1370/001"
* type = #document
* timestamp = "2011-06-23T08:38:00+02:00"

// Composition
* entry[+].resource = cfsb1651234995610

// Organizations
* entry[+].resource = cfsb1650997423990
* entry[+].resource = cfsb1651152112409
* entry[+].resource = cfsb1651149636159

// authorizations
* entry[+].resource = cfsb1651148079894

// medicinal products
* entry[+].resource = cfsb1650904258324

// packaged product
* entry[+].resource = cfsb1650995718524

// administrable product
* entry[+].resource = cfsb1650999516847

// manufactured items
* entry[+].resource = cfsb1650998521654

// ingredients
* entry[+].resource = cfsb1651162710491
* entry[+].resource = cfsb1651164758053
* entry[+].resource = cfsb1651170791283
* entry[+].resource = cfsb1651229974487
* entry[+].resource = cfsb1651230170831
* entry[+].resource = cfsb1651230330246
 

