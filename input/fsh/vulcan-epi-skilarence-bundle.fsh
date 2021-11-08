Profile: Bundle-Vulcan-ePI
Parent: Bundle
Id: 5526bcb3-9b7f-4bc1-a9e7-65302382d6f4
Title: "Vulcan FHIR ePI profile"
Description: "Sample Vulcan FHIR ePI for connectathon testing"


// == Instance of Bundle ==
Instance: 5526bcb3-9b7f-4bc1-a9e7-65302382d6f4
InstanceOf: Bundle-Vulcan-ePI
Usage: #example
Title: "Vulcan Skilarence FHIR Package Insert"
Description: "instance of Skilarence package insert for connectathon testing"
* extension.versionid = "9"
* extension.lastupdated = "2021-05-17T08:38:00+02:00" // date of revision of the bundle (document)

* identifier.system = "https://www.gravitatehealth.eu/sid/doc"
* identifier.value = "EMEA/H/C/002157"
* type = #document
* timestamp = "2017-06-23T08:38:00+02:00" // date of first authorization for the bundle (document)
* Language.system = "http://hl7.org/fhir/ValueSet/languages"
* Language.code = "en"
* entry[0].fullUrl = "4d0991e2-0b99-412b-afa9-f5974d3ab2b8" // composition ref
* entry[=].Resource = "4d0991e2-0b99-412b-afa9-f5974d3ab2b8"
* entry[+].fullUrl = "ef262d35-9d2a-4d58-851a-2227a1f028d9" // org MAH
* entry[=].Resource = "ef262d35-9d2a-4d58-851a-2227a1f028d9"
* entry[+].fullUrl = "659ba6da-05fc-4335-beb9-a5f3aecec817" // org manufacturer
* entry[=].Resource = "659ba6da-05fc-4335-beb9-a5f3aecec817"
* entry[+].fullUrl = "b6b3425b-2133-4f66-a7b6-d81ee0e14529" // org EMA
* entry[=].Resource = "b6b3425b-2133-4f66-a7b6-d81ee0e14529"
* entry[+].fullUrl = "bd339f2d-3dbb-4bbc-97b9-107be6ba6dc6" // Authorization 1 -  EU/1/17/1201/002  40 - 120 mg
* entry[=].Resource = "bd339f2d-3dbb-4bbc-97b9-107be6ba6dc6"    
* entry[+].fullUrl = "" // Authorization 2 -  EU/1/17/1201/003  70 - 120 mg
* entry[=].Resource = ""    
* entry[+].fullUrl = "" // Authorization 3 -  EU/1/17/1201/004  90 - 120 mg
* entry[=].Resource = ""    
* entry[+].fullUrl = "" // Authorization 4 -  EU/1/17/1201/005  100 - 120 mg
* entry[=].Resource = ""    
* entry[+].fullUrl = "" // Authorization 5 -  EU/1/17/1201/006  120 - 120 mg
* entry[=].Resource = ""    
* entry[+].fullUrl = "" // Authorization 6 -  EU/1/17/1201/007  180 - 120 mg
* entry[=].Resource = ""    
* entry[+].fullUrl = "" // Authorization 7 -  EU/1/17/1201/008  200 - 120 mg
* entry[=].Resource = ""    
* entry[+].fullUrl = "" // Authorization 8 -  EU/1/17/1201/009  240 - 120 mg
* entry[=].Resource = ""    
* entry[+].fullUrl = "" // Authorization 9 -  EU/1/17/1201/012  300 - 120 mg
* entry[=].Resource = ""    
* entry[+].fullUrl = "" // Authorization 10 -  EU/1/17/1201/010 360 - 120 mg
* entry[=].Resource = ""    
* entry[+].fullUrl = "" // Authorization 11 -  EU/1/17/1201/011 400 - 120 mg
* entry[=].Resource = ""    
* entry[+].fullUrl = "" // Authorization 12 -  EU/1/17/1201/001 42 - 30 mg
* entry[=].Resource = ""    
* entry[+].fullUrl = "" // Authorization 13 -  EU/1/17/1201/013 70 - 30 mg
* entry[=].Resource = ""    
* entry[+].fullUrl = "" // Authorization 14 -  EU/1/17/1201/014 210 - 30 mg
* entry[=].Resource = ""    
* entry[+].fullUrl = "cf9e3d56-22ad-48ba-9cb1-cae88fd267c3" // Medicinal Product 1 - EU/1/17/1201/002 40 - 120 mg
* entry[=].Resource = "cf9e3d56-22ad-48ba-9cb1-cae88fd267c3" 
* entry[+].fullUrl = "" // Medicinal Product 2 - EU/1/17/1201/003 70 - 120 mg
* entry[=].Resource = "" 
* entry[+].fullUrl = "" // Medicinal Product 3 - EU/1/17/1201/004 90 - 120 mg
* entry[=].Resource = "" 
* entry[+].fullUrl = "" // Medicinal Product 4 - EU/1/17/1201/005 100 - 120 mg
* entry[=].Resource = "" 
* entry[+].fullUrl = "" // Medicinal Product 5 - EU/1/17/1201/006 120 - 120 mg
* entry[=].Resource = "" 
* entry[+].fullUrl = "" // Medicinal Product 6 - EU/1/17/1201/007 180 - 120 mg
* entry[=].Resource = "" 
* entry[+].fullUrl = "" // Medicinal Product 7 - EU/1/17/1201/008 200 - 120 mg
* entry[=].Resource = "" 
* entry[+].fullUrl = "" // Medicinal Product 8 - EU/1/17/1201/009 240 - 120 mg
* entry[=].Resource = "" 
* entry[+].fullUrl = "" // Medicinal Product 9 - EU/1/17/1201/012 300 - 120 mg
* entry[=].Resource = "" 
* entry[+].fullUrl = "" // Medicinal Product 10 - EU/1/17/1201/010 360 - 120 mg
* entry[=].Resource = "" 
* entry[+].fullUrl = "" // Medicinal Product 11 - EU/1/17/1201/011 400 - 120 mg
* entry[=].Resource = "" 
* entry[+].fullUrl = "bfd7b841-3114-4e1d-aa18-0a9d0b031efa" // Medicinal Product 12 - EU/1/17/1201/001 42 - 30 mg
* entry[=].Resource = "bfd7b841-3114-4e1d-aa18-0a9d0b031efa" 
* entry[+].fullUrl = "" // Medicinal Product 13 - EU/1/17/1201/013 70 - 30 mg
* entry[=].Resource = "" 
* entry[+].fullUrl = "" // Medicinal Product 14 - EU/1/17/1201/014 210 - 30 mg
* entry[=].Resource = "" 
* entry[+].fullUrl = "" // Packaged Product 1 - EU/1/17/1201/002 40 - 120 mg
* entry[=].Resource = "" 
* entry[+].fullUrl = "" // Packaged Product 2 - EU/1/17/1201/003 70 - 120 mg
* entry[=].Resource = "" 
* entry[+].fullUrl = "" // Packaged Product 3 - EU/1/17/1201/004 90 - 120 mg
* entry[=].Resource = "" 
* entry[+].fullUrl = "" // Packaged Product 4 - EU/1/17/1201/005 100 - 120 mg
* entry[=].Resource = "" 
* entry[+].fullUrl = "" // Packaged Product 5 - EU/1/17/1201/006 120 - 120 mg
* entry[=].Resource = "" 
* entry[+].fullUrl = "" // Packaged Product 6 - EU/1/17/1201/007 180 - 120 mg
* entry[=].Resource = "" 
* entry[+].fullUrl = "" // Packaged Product 7 - EU/1/17/1201/008 200 - 120 mg
* entry[=].Resource = "" 
* entry[+].fullUrl = "" // Packaged Product 8 - EU/1/17/1201/009 240 - 120 mg
* entry[=].Resource = "" 
* entry[+].fullUrl = "" // Packaged Product 9 - EU/1/17/1201/012 300 - 120 mg
* entry[=].Resource = "" 
* entry[+].fullUrl = "" // Packaged Product 10 - EU/1/17/1201/010 360 - 120 mg
* entry[=].Resource = "" 
* entry[+].fullUrl = "" // Packaged Product 11 - EU/1/17/1201/011 400 - 120 mg
* entry[=].Resource = "" 
* entry[+].fullUrl = "" // Packaged Product 12 - EU/1/17/1201/001 42 - 30 mg
* entry[=].Resource = "" 
* entry[+].fullUrl = "" // Packaged Product 13 - EU/1/17/1201/013 70 - 30 mg
* entry[=].Resource = "" 
* entry[+].fullUrl = "" // Packaged Product 14 - EU/1/17/1201/014 210 - 30 mg
* entry[=].Resource = "" 
* entry[+].fullUrl = "1969dd8c-91ec-497b-a8f8-808346cc22d0" // administrable product 1 - 30mg
* entry[=].Resource = "1969dd8c-91ec-497b-a8f8-808346cc22d0"
* entry[+].fullUrl = "c7d4fd6d-de2c-404a-9be4-13d9e552ac1b" // administrable product 2 - 120mg
* entry[=].Resource = "c7d4fd6d-de2c-404a-9be4-13d9e552ac1b"
* entry[+].fullUrl = "7cb035bd-145e-4305-8cea-4e7ab0e515f9" // manufactured item 1 - 30mg
* entry[=].Resource = "7cb035bd-145e-4305-8cea-4e7ab0e515f9"
* entry[+].fullUrl = "b6154e11-fa77-4bdd-99d0-43a5eb03c694" // manufactured item 2 - 120mg
* entry[=].Resource = "b6154e11-fa77-4bdd-99d0-43a5eb03c694"
* entry[+].fullUrl = "15f5287a-30eb-4128-a0bd-4bf2938eb57a" // ingredient 1 - dimethyl fumarate 30 mg
* entry[=].Resource = "15f5287a-30eb-4128-a0bd-4bf2938eb57a"
* entry[+].fullUrl = "15f5287a-30eb-4128-a0bd-4bf2938eb57a" // ingredient 2 - dimethyl fumarate 120 mg
* entry[=].Resource = "15f5287a-30eb-4128-a0bd-4bf2938eb57a"
* entry[+].fullUrl = "6dfa75f1-8cb4-4ff0-b4a5-ffcf13b5cebe" // ingredient 3 - Lactose monohydrate 
* entry[=].Resource = "6dfa75f1-8cb4-4ff0-b4a5-ffcf13b5cebe"
* entry[+].fullUrl = "1969dd8c-91ec-497b-a8f8-808346cc22d0" // ingredient 4 - Cellulose microcrystalline 
* entry[=].Resource = "1969dd8c-91ec-497b-a8f8-808346cc22d0"
* entry[+].fullUrl = "" // ingredient 5 - Croscarmellose sodium 
* entry[=].Resource = ""
* entry[+].fullUrl = "" // ingredient 6 - Colloidal anhydrous silica
* entry[=].Resource = ""
* entry[+].fullUrl = "" // ingredient 7 - Magnesium stearate 
* entry[=].Resource = ""
* entry[+].fullUrl = "" // ingredient 8 - Methacrylic acid-ethyl acrylate copolymer (1:1) 
* entry[=].Resource = ""
* entry[+].fullUrl = "" // ingredient 9 - Talc
* entry[=].Resource = ""
* entry[+].fullUrl = "" // ingredient 10 - Triethyl citrate
* entry[=].Resource = ""
* entry[+].fullUrl = "" // ingredient 11 - Titanium dioxide (E171) 
* entry[=].Resource = ""
* entry[+].fullUrl = "" // ingredient 12 - Simethicone
* entry[=].Resource = ""
* entry[+].fullUrl = "" // ingredient 13 - Indigo carmine (E132)
* entry[=].Resource = ""
* entry[+].fullUrl = "" // ingredient 14 - Sodium hydroxide
* entry[=].Resource = ""
* entry[+].fullUrl = "" // clinical use issue 1 - indication
* entry[=].Resource = ""
* entry[+].fullUrl = "" // contraindication 1
* entry[=].Resource = ""
* entry[+].fullUrl = "" // interaction
* entry[=].Resource = ""
* entry[+].fullUrl = "" // populations
* entry[=].Resource = ""
* entry[+].fullUrl = "" // undesirable effects
* entry[=].Resource = ""


// Instance of Composition
Instance: 4d0991e2-0b99-412b-afa9-f5974d3ab2b8
InstanceOf: Composition
Usage:#example
* id = "4d0991e2-0b99-412b-afa9-f5974d3ab2b8"
* identifier = "EMEA/H/C/002157 - IAIN/0028/G"
* status = #final
* type = $SPOR#100000155538 "Package Leaflet" //SPOR valueset = product information type - 100000155531
* date = "2020-01-01T15:22:00+02:00" // date of revision on the composition
* author = Reference(urn:uuid:ef262d35-9d2a-4d58-851a-2227a1f028d9) //x-ref to MAH org#1
* title = "skilarence Vulcan ePI"
* language.system = "http://hl7.org/fhir/ValueSet/languages"
* language.code = #en

* section.title = "Package Leaflet"
* section.code = ""
* section.text = ""

* section.section.title = ""
* section.code = ""
* section.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\""


// Instance of organization #1 MAH
Instance: ef262d35-9d2a-4d58-851a-2227a1f028d9
InstanceOf: organization
Usage:#example
* id = "ef262d35-9d2a-4d58-851a-2227a1f028d9"
* identifier = "ORG-100011518"
* status = #active
* type = #bus
* name = "Almirall S.A."
* telecom.contactpoint.system = "http://hl7.org/fhir/ValueSet/contact-point-system"
* telecom.contactpoint.value = "phone"
* address.type.system = "https://spor.ema.europa.eu/rmswi/#/lists/"
* address.type.code = #220000000034 "Marketing authorisation holder"
* address.text = "Ronda General Mitre 151
Barcelona
08022
Spain"
* address.line = "Ronda General Mitre 151"
* address.city = "Barcelona"
* address.state = "Barcelona"
* address.postalcode = "08022"
* address.country = "es" //ISO country code for spain

// Instance of organization #2 Manufacturer
Instance: 659ba6da-05fc-4335-beb9-a5f3aecec817
InstanceOf: organization
Usage:#example
* id = "659ba6da-05fc-4335-beb9-a5f3aecec817"
* identifier = "ORG-100011518"
* status = #active
* type = #bus
* name = "Almirall S.A."
* address.type.system = "https://spor.ema.europa.eu/rmswi/#/lists/"
* address.type.code = #220000000033 "Manufacturer"
* address.text = "Carretera De Martorell 41 61
Poligono Industrial Nord-Est
Sant Andreu De La Barca
Barcelona
08740
Spain"
* address.line = "Carretera De Martorell 41 61, Poligono Industrial Nord-Est"
* address.city = "Sant Andreu De La Barca"
* address.state = "Barcelona"
* address.postalcode = "08740"
* address.country = "es"

// Instance of organization #3 health authority
Instance: b6b3425b-2133-4f66-a7b6-d81ee0e14529
InstanceOf: organization
Usage: #example
* id = "b6b3425b-2133-4f66-a7b6-d81ee0e14529"
* identifier = "ORG-99999999"
* status = #active
* type = #bus
* name = "European Medicines Agency"
* address.type.system = "https://spor.ema.europa.eu/rmswi/#/lists/"
* address.type.code = #220000000032 "Medicines Regulatory Authority"
* address.text = "Domenico Scarlattilaan 6
1083 HS Amsterdam
The Netherlands"
* address.line = "Domenico Scarlattilaan 6, 1083 HS"
* address.city = "Amsterdam"
* address.state = "North Holland"
* address.postalcode = "1083"
* address.country = "nl"

// Instance of Regulated Authorization 1 -  EU/1/17/1201/002  40 - 120 mg
Instance: bd339f2d-3dbb-4bbc-97b9-107be6ba6dc6
InstanceOf: regulatedauthorization
Usage: #example
* id = "bd339f2d-3dbb-4bbc-97b9-107be6ba6dc6"
* identifier = "EU/1/17/1201/002"
* subject = Reference(urn:uuid:cf9e3d56-22ad-48ba-9cb1-cae88fd267c3) "EU/1/17/1201/002"
* type = $spor.ema.europa.eu#100000072062 "Marketing Authorisation" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000072055/terms Scope
* description = "Skilarence 120 mg gastro-resistant tablets, 40 tablets in PVC/PVDC-aluminium blister packs"
* region = $iso:3166-2#eu "european union"
* status = "active" //http://hl7.org/fhir/publication-status
* statusdate = "2021-05-17T08:38:00+02:00"
* validityperiod.start = "2017-06-23T08:38:00+02:00"
* validityperiod.end = ""
* indication = Reference(urn:uuid:) "" //ACTION add indication UUID later
* holder = Reference(urn:uuid:ef262d35-9d2a-4d58-851a-2227a1f028d9) "Almirall S.A." //MAH org #1
* regulator = Reference(urng:uuid:b6b3425b-2133-4f66-a7b6-d81ee0e14529) "European Medicines Agency" //EMA Org #3 

// Authorization 2 -  EU/1/17/1201/003  70 - 120 mg
// Authorization 3 -  EU/1/17/1201/004  90 - 120 mg
// Authorization 4 -  EU/1/17/1201/005  100 - 120 mg
// Authorization 5 -  EU/1/17/1201/006  120 - 120 mg
// Authorization 6 -  EU/1/17/1201/007  180 - 120 mg
// Authorization 7 -  EU/1/17/1201/008  200 - 120 mg
// Authorization 8 -  EU/1/17/1201/009  240 - 120 mg
// Authorization 9 -  EU/1/17/1201/012  300 - 120 mg
// Authorization 10 -  EU/1/17/1201/010 360 - 120 mg
// Authorization 11 -  EU/1/17/1201/011 400 - 120 mg

// Instance of Regulated Authorization 12 -  EU/1/17/1201/001 42 - 30 mg
Instance: aebcba30-11a4-4e92-8380-e3bb54858c71
InstanceOf: regulatedauthorization
Usage: #example
* id = "aebcba30-11a4-4e92-8380-e3bb54858c71"
* identifier = "EU/1/17/1201/001"
* subject = Reference(urn:uuid:bfd7b841-3114-4e1d-aa18-0a9d0b031efa) "EU/1/17/1201/001"
* type = $spor.ema.europa.eu#100000072062 "Marketing Authorisation" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000072055/terms Scope
* description = "Skilarence 30 mg gastro-resistant tablets, 42 tablets in PVC/PVDC-aluminium blister packs"
* region = $iso:3166-2#eu "european union"
* status = "active" //http://hl7.org/fhir/publication-status
* statusdate = "2021-05-17T08:38:00+02:00"
* validityperiod.start = "2017-06-23T08:38:00+02:00"
* validityperiod.end = ""
* indication = Reference(urn:uuid:) "" //ACTION add indication UUID later
* holder = Reference(urn:uuid:ef262d35-9d2a-4d58-851a-2227a1f028d9) "Almirall S.A." //MAH org #1
* regulator = Reference(urng:uuid:b6b3425b-2133-4f66-a7b6-d81ee0e14529) "European Medicines Agency" //EMA Org #3 

// Authorization 13 -  EU/1/17/1201/013 70 - 30 mg
// Authorization 14 -  EU/1/17/1201/014 210 - 30 mg


// Instance of Medicinal Product Definition 1 - 120 mg
Instance: cf9e3d56-22ad-48ba-9cb1-cae88fd267c3
InstanceOf: medicinalproductdefinition
Usage: #example
* id = "cf9e3d56-22ad-48ba-9cb1-cae88fd267c3"
* identifier = "MAN-120"
* type = $spor.ema.europa.eu#100000072062 "Marketing Authorisation" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000072055/terms Scope
* domain = $spor.ema.europa.eu#100000000012 "Human use" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000000004/terms
* version = "1"
* status = "active" //http://hl7.org/fhir/publication-status
* statusdate = "2021-05-17T08:38:00+02:00"
* description = "Skilarence 120 mg
Each gastro-resistant tablet contains 120 mg dimethyl fumarate"
* indication = $MeSH#9999 "Psoriasis" //ACTION FIND MESH CODE
* legalstatusofsupply = $spor.ema.europa.eu#100000072084 "Medicinal product subject to medical prescription" //https://spor.ema.europa.eu/rmswi/#/lists/100000072051/terms
* additionalmonitoringindicator = "false"
* paediatricuseindicator = "false"
* classification = $whocc.no#L04AX07 "Other immunosuppressants" //http://www.whocc.no/atc

* characteristic.system = $ncithesaurus#9999 "shape" //http://ncithesaurus-stage.nci.nih.gov
* characteristic.code = "C48348"
* characteristic.display = "ROUND"

* characteristic.display = "diameter of approximately 11.6 mm" //size

* characteristic.system = $ncithesaurus#9999 "color" //http://ncithesaurus-stage.nci.nih.gov
* characteristic.code = "C48333"
* characteristic.display = "blue"
  
* marketingstatus = $spor.ema.europa.eu#100000072083 "Marketed" //https://spor.ema.europa.eu/rmswi/#/lists/100000072052/terms Marketing Status

* name.product.name = "skilarence"
* name.type = "proprietary"
* name.product.name = "dimethyl fumarate"
* name.type = "non-proprietary" 
* name.countrylanguage.country = $iso:3166-2#gb "united kingdom"
* name.countrylanguage.language = $iso:639-2#en "english"
* name.countrylanguage.country = $iso:3166-2#no "norway"
* name.countrylanguage.language = $iso:639-2#no "norwegian"

* package.package = Reference(urn:uuid:XXXXXXXX) ""

* AdministrableProduct.route = $spor.ema.europa.eu#100000073619 "oral use" //https://spor.ema.europa.eu/rmswi/#/lists/100000073345/terms route and method of administration
* AdministrableProduct.product = Reference(urng:uuid:c7d4fd6d-de2c-404a-9be4-13d9e552ac1b) //Administrable Product Definition 2 - 120 mg


// Instance of Medicinal Product Definition 12 - 30 mg
Instance: bfd7b841-3114-4e1d-aa18-0a9d0b031efa
InstanceOf: medicinalproductdefinition
Usage: #example
* id = "bfd7b841-3114-4e1d-aa18-0a9d0b031efa"
* identifier = "MAN-30"
* type = $spor.ema.europa.eu#100000072062 "Marketing Authorisation" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000072055/terms Scope
* domain = $spor.ema.europa.eu#100000000012 "Human use" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000000004/terms
* version = "1"
* status = "active" //http://hl7.org/fhir/publication-status
* statusdate = "2021-05-17T08:38:00+02:00"
* description = "Skilarence 30 mg
42, 70 and 210 gastro-resistant tablets in PVC/PVDC-aluminium blister packs"
* indication = $MeSH#9999 "Psoriasis" //ACTION FIND MESH CODE
* legalstatusofsupply = $spor.ema.europa.eu#100000072084 "Medicinal product subject to medical prescription" //https://spor.ema.europa.eu/rmswi/#/lists/100000072051/terms
* additionalmonitoringindicator = "false"
* paediatricuseindicator = "false"
* classification = $whocc.no#L04AX07 "Other immunosuppressants" //http://www.whocc.no/atc

* characteristic.system = $ncithesaurus#9999 "shape" //http://ncithesaurus-stage.nci.nih.gov
* characteristic.code = "C48348"
* characteristic.display = "ROUND"

* characteristic.display = "diameter of approximately 6.8 mm" //size

* characteristic.system = $ncithesaurus#9999 "color" //http://ncithesaurus-stage.nci.nih.gov
* characteristic.code = "C48325"
* characteristic.display = "white"
  
* marketingstatus = $spor.ema.europa.eu#100000072083 "Marketed" //https://spor.ema.europa.eu/rmswi/#/lists/100000072052/terms Marketing Status

* name.product.name = "skilarence"
* name.type = "proprietary"
* name.product.name = "dimethyl fumarate"
* name.type = "non-proprietary" 
* name.countrylanguage.country = $iso:3166-2#gb "United Kingdom"
* name.countrylanguage.language = $iso:639-2#en "english"
* name.countrylanguage.country = $iso:3166-2#no "norway"
* name.countrylanguage.language = $iso:639-2#no "norwegian"

* package.package = Reference(urn:uuid:XXXXXXXX) ""

* AdministrableProduct.route = $spor.ema.europa.eu#100000073619 "oral use" //https://spor.ema.europa.eu/rmswi/#/lists/100000073345/terms route and method of administration
* AdministrableProduct.product = Reference(urng:uuid:1969dd8c-91ec-497b-a8f8-808346cc22d0) //Administrable Product Definition 1 - 30 mg

// Instance of Packaged Product Definition




// Instance of Administrable Product Definition 1 - 30 mg
Instance: 1969dd8c-91ec-497b-a8f8-808346cc22d0
InstanceOf: AdministrableProductDefinition
Usage: #example
* id = "1969dd8c-91ec-497b-a8f8-808346cc22d0"
* identifier = "PHPID-30"
* administrabledoseform = $spor.ema.europa.eu#200000002102 "Tablet" //https://spor.ema.europa.eu/rmswi/#/lists/200000000009/terms basic dosage form
* ManufacturedItemDefinition = Reference(urn:uuid:7cb035bd-145e-4305-8cea-4e7ab0e515f9) "30 mg tablet"
* unitofpresentation = $spor.ema.europa.eu#200000002152 "Tablet" //https://spor.ema.europa.eu/rmswi/#/lists/200000000014/terms unit of presentation
* ingredient = Reference(urn:uuid:15f5287a-30eb-4128-a0bd-4bf2938eb57a) "dimethyl fumarate" //30 mg
* ingredient = Reference(urn:uuid:6dfa75f1-8cb4-4ff0-b4a5-ffcf13b5cebe) "Lactose monohydrate" 
* ingredient = Reference(urn:uuid:1969dd8c-91ec-497b-a8f8-808346cc22d0) "Cellulose microcrystalline"
* ingredient = Reference(urn:uuid:) "Croscarmellose sodium"
* ingredient = Reference(urn:uuid:) "Colloidal anhydrous silica"
* ingredient = Reference(urn:uuid:) "Magnesium stearate"
* ingredient = Reference(urn:uuid:) "Methacrylic acid-ethyl acrylate copolymer (1:1)"
* ingredient = Reference(urn:uuid:) "Talc"
* ingredient = Reference(urn:uuid:) "Triethyl citrate"
* ingredient = Reference(urn:uuid:) "Titanium dioxide (E171)"
* ingredient = Reference(urn:uuid:) "Simethicone"


// Instance of Administrable Product Definition 2 - 120 mg
Instance: c7d4fd6d-de2c-404a-9be4-13d9e552ac1b
InstanceOf: AdministrableProductDefinition
Usage: #example
* id = "c7d4fd6d-de2c-404a-9be4-13d9e552ac1b"
* identifier = "PHPID-120"
* administrabledoseform = $spor.ema.europa.eu#200000002102 "Tablet" //https://spor.ema.europa.eu/rmswi/#/lists/200000000009/terms basic dosage form
* ManufacturedItemDefinition = Reference(urn:uuid:b6154e11-fa77-4bdd-99d0-43a5eb03c694) "120 mg tablet"
* unitofpresentation = $spor.ema.europa.eu#200000002152 "Tablet" //https://spor.ema.europa.eu/rmswi/#/lists/200000000014/terms unit of presentation
* ingredient = Reference(urn:uuid:15f5287a-30eb-4128-a0bd-4bf2938eb57a) "dimethyl fumarate" //120 mg
* ingredient = Reference(urn:uuid:6dfa75f1-8cb4-4ff0-b4a5-ffcf13b5cebe) "Lactose monohydrate"
* ingredient = Reference(urn:uuid:1969dd8c-91ec-497b-a8f8-808346cc22d0) "Cellulose microcrystalline"
* ingredient = Reference(urn:uuid:) "Croscarmellose sodium"
* ingredient = Reference(urn:uuid:) "Colloidal anhydrous silica"
* ingredient = Reference(urn:uuid:) "Magnesium stearate"
* ingredient = Reference(urn:uuid:) "Methacrylic acid-ethyl acrylate copolymer (1:1)"
* ingredient = Reference(urn:uuid:) "Talc"
* ingredient = Reference(urn:uuid:) "Triethyl citrate"
* ingredient = Reference(urn:uuid:) "Titanium dioxide (E171)"
* ingredient = Reference(urn:uuid:) "Simethicone"
* ingredient = Reference(urn:uuid:) "Indigo carmine (E132)"
* ingredient = Reference(urn:uuid:) "Sodium hydroxide"

// Instance of Manufactured Item Definition - 30 mg tablet
Instance: 7cb035bd-145e-4305-8cea-4e7ab0e515f9
InstanceOf: ManufacturedItemDefinition
Usage: #example
* id = "7cb035bd-145e-4305-8cea-4e7ab0e515f9"
* identifier = "MAN-30"
* manufactureddoseform = $spor.ema.europa.eu#200000002102 "Tablet" //https://spor.ema.europa.eu/rmswi/#/lists/200000000009/terms basic dosage form
* unitofpresentation = $spor.ema.europa.eu#200000002152 "Tablet" //https://spor.ema.europa.eu/rmswi/#/lists/200000000014/terms unit of presentation
* ingredient = Reference(urn:uuid:15f5287a-30eb-4128-a0bd-4bf2938eb57a) "dimethyl fumarate" //120 mg
* ingredient = Reference(urn:uuid:6dfa75f1-8cb4-4ff0-b4a5-ffcf13b5cebe) "Lactose monohydrate"
* ingredient = Reference(urn:uuid:1969dd8c-91ec-497b-a8f8-808346cc22d0) "Cellulose microcrystalline"
* ingredient = Reference(urn:uuid:) "" //Croscarmellose sodium 
* ingredient = Reference(urn:uuid:) "" //Colloidal anhydrous silica 
* ingredient = Reference(urn:uuid:) "" //Magnesium stearate 
* ingredient = Reference(urn:uuid:) "" //Methacrylic acid-ethyl acrylate copolymer (1:1) 
* ingredient = Reference(urn:uuid:) "" //Talc
* ingredient = Reference(urn:uuid:) "" //Triethyl citrate
* ingredient = Reference(urn:uuid:) "" //Titanium dioxide (E171) 
* ingredient = Reference(urn:uuid:) "" //Simethicone 

// Instance of Manufactured Item Definition - 120 mg tablet
Instance: b6154e11-fa77-4bdd-99d0-43a5eb03c694
InstanceOf: ManufacturedItemDefinition
Usage: #example
* id = "b6154e11-fa77-4bdd-99d0-43a5eb03c694"
* identifier = "MAN-120"
* manufactureddoseform = $spor.ema.europa.eu#200000002102 "Tablet" //https://spor.ema.europa.eu/rmswi/#/lists/200000000009/terms basic dosage form
* unitofpresentation = $spor.ema.europa.eu#200000002152 "Tablet" //https://spor.ema.europa.eu/rmswi/#/lists/200000000014/terms unit of presentation
* ingredient = Reference(urn:uuid:15f5287a-30eb-4128-a0bd-4bf2938eb57a) "dimethyl fumarate" //120 mg
* ingredient = Reference(urn:uuid:6dfa75f1-8cb4-4ff0-b4a5-ffcf13b5cebe) "Lactose monohydrate"
* ingredient = Reference(urn:uuid:1969dd8c-91ec-497b-a8f8-808346cc22d0) "Cellulose microcrystalline"
* ingredient = Reference(urn:uuid:) "" //Croscarmellose sodium 
* ingredient = Reference(urn:uuid:) "" //Colloidal anhydrous silica 
* ingredient = Reference(urn:uuid:) "" //Magnesium stearate 
* ingredient = Reference(urn:uuid:) "" //Methacrylic acid-ethyl acrylate copolymer (1:1) 
* ingredient = Reference(urn:uuid:) "" //Talc
* ingredient = Reference(urn:uuid:) "" //Triethyl citrate
* ingredient = Reference(urn:uuid:) "" //Titanium dioxide (E171) 
* ingredient = Reference(urn:uuid:) "" //Simethicone 
* ingredient = Reference(urn:uuid:) "" //Indigo carmine (E132)
* ingredient = Reference(urn:uuid:) "" //Sodium hydroxide

// Instance of Ingredient 1 - active 30mg
Instance: 15f5287a-30eb-4128-a0bd-4bf2938eb57a
InstanceOf: "ingredient"
Usage: #example
* id = "15f5287a-30eb-4128-a0bd-4bf2938eb57a"
* identifier = "FO2303MNI2" //G-SRS UNII 
* role = $spor.ema.europa.eu#00000072072 "active"
* description = "dimethyl fumarate"
* allergenicindicator = "false"
* substance.strength.presentationratio.numerator.quantity.value = "30"
* substance.strength.presentationratio.numerator.quantity.unit = "milligram"
* substance.strength.presentationratio.numerator.quantity.system = "http://unitsofmeasure.org"
* substance.strength.presentationratio.numerator.quantity.code = "mg"
* substance.strength.presentationratio.denominator.quantity.value = "1"

// Instance of Ingredient 2 - active 120mg
Instance: 15f5287a-30eb-4128-a0bd-4bf2938eb57a
InstanceOf: "ingredient"
Usage: #example
* id = "15f5287a-30eb-4128-a0bd-4bf2938eb57a"
* identifier = "FO2303MNI2" //G-SRS UNII 
* role = $spor.ema.europa.eu#00000072072 "active"
* description = "dimethyl fumarate"
* allergenicindicator = "false"
* substance.strength.presentationratio.numerator.quantity.value = "120"
* substance.strength.presentationratio.numerator.quantity.unit = "milligram"
* substance.strength.presentationratio.numerator.quantity.system = "http://unitsofmeasure.org"
* substance.strength.presentationratio.numerator.quantity.code = "mg"
* substance.strength.presentationratio.denominator.quantity.value = "1"

// Instance of Ingredient 3 - Lactose monohydrate 
Instance: 6dfa75f1-8cb4-4ff0-b4a5-ffcf13b5cebe
InstanceOf: "ingredient"
Usage: #example
* id = "6dfa75f1-8cb4-4ff0-b4a5-ffcf13b5cebe"
* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/home"
* identifier.value = "EWQ57Q8I5X" //G-SRS UNII 
* role = $spor.ema.europa.eu#100000072082 "excipient"
* description = "Lactose monohydrate"
* allergenicindicator = "true"

// Instance of Ingredient 4 - Cellulose microcrystalline  
Instance: 1969dd8c-91ec-497b-a8f8-808346cc22d0
InstanceOf: "ingredient"
Usage: #example
* id = "1969dd8c-91ec-497b-a8f8-808346cc22d0"
* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/home"
* identifier.value = "OP1R32D61U" //G-SRS UNII 
* role = $spor.ema.europa.eu#100000072082 "excipient"
* description = "Cellulose microcrystalline "
* allergenicindicator = "false"

// Instance of Clinical Use Issue


