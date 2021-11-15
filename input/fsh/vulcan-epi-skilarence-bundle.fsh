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
* entry[+].fullUrl = "039d0d6a-502b-4c04-aa55-ffb18feee07e" // Authorization 2 -  EU/1/17/1201/003  70 - 120 mg
* entry[=].Resource = "039d0d6a-502b-4c04-aa55-ffb18feee07e"    
* entry[+].fullUrl = "258fe117-0c4d-4210-b57a-9b490d6852a7" // Authorization 3 -  EU/1/17/1201/004  90 - 120 mg
* entry[=].Resource = "258fe117-0c4d-4210-b57a-9b490d6852a7"    
* entry[+].fullUrl = "342a0b23-2775-4557-a40c-ee2935f64a86" // Authorization 4 -  EU/1/17/1201/005  100 - 120 mg
* entry[=].Resource = "342a0b23-2775-4557-a40c-ee2935f64a86"    
* entry[+].fullUrl = "dc3c0736-e939-4306-9f50-d983f85f1ab3" // Authorization 5 -  EU/1/17/1201/006  120 - 120 mg
* entry[=].Resource = "dc3c0736-e939-4306-9f50-d983f85f1ab3"    
* entry[+].fullUrl = "bcb78f5f-22b4-4a2d-a5e2-6aacbb429c19" // Authorization 6 -  EU/1/17/1201/007  180 - 120 mg
* entry[=].Resource = "bcb78f5f-22b4-4a2d-a5e2-6aacbb429c19"    
* entry[+].fullUrl = "151e9ef9-1e12-4a53-a5a7-5c97d5310e13" // Authorization 7 -  EU/1/17/1201/008  200 - 120 mg
* entry[=].Resource = "151e9ef9-1e12-4a53-a5a7-5c97d5310e13"    
* entry[+].fullUrl = "b31828b6-5035-4d78-a1aa-b6812ada2e60" // Authorization 8 -  EU/1/17/1201/009  240 - 120 mg
* entry[=].Resource = "b31828b6-5035-4d78-a1aa-b6812ada2e60"    
* entry[+].fullUrl = "36f726b7-2a38-4b59-8ccf-ec797c02aba6" // Authorization 9 -  EU/1/17/1201/012  300 - 120 mg
* entry[=].Resource = "36f726b7-2a38-4b59-8ccf-ec797c02aba6"    
* entry[+].fullUrl = "badfe527-5c59-4a52-980c-31735cadc2cc" // Authorization 10 -  EU/1/17/1201/010 360 - 120 mg
* entry[=].Resource = "badfe527-5c59-4a52-980c-31735cadc2cc"    
* entry[+].fullUrl = "8a350f4b-8bcb-4e15-bc6f-4eb18de314a8" // Authorization 11 -  EU/1/17/1201/011 400 - 120 mg
* entry[=].Resource = "8a350f4b-8bcb-4e15-bc6f-4eb18de314a8"    
* entry[+].fullUrl = "aebcba30-11a4-4e92-8380-e3bb54858c71" // Authorization 12 -  EU/1/17/1201/001 42 - 30 mg
* entry[=].Resource = "aebcba30-11a4-4e92-8380-e3bb54858c71"    
* entry[+].fullUrl = "79e68763-f272-4520-a1dd-afe95d65a32c" // Authorization 13 -  EU/1/17/1201/013 70 - 30 mg
* entry[=].Resource = "79e68763-f272-4520-a1dd-afe95d65a32c"    
* entry[+].fullUrl = "3296d254-567e-4fc2-9b1c-5e17cea982f4" // Authorization 14 -  EU/1/17/1201/014 210 - 30 mg
* entry[=].Resource = "3296d254-567e-4fc2-9b1c-5e17cea982f4"    

* entry[+].fullUrl = "9cda1cb4-c543-40ef-849b-3b802b5e6f9e" // Medicinal Product 1 - EU/1/17/1201/002 40 - 120 mg
* entry[=].Resource = "9cda1cb4-c543-40ef-849b-3b802b5e6f9e" 
* entry[+].fullUrl = "82b01a8c-2e70-4410-b8d6-8b71efcc63f4" // Medicinal Product 2 - EU/1/17/1201/003 70 - 120 mg
* entry[=].Resource = "82b01a8c-2e70-4410-b8d6-8b71efcc63f4" 
* entry[+].fullUrl = "e13c01a2-6265-4044-a86f-225cc087574d" // Medicinal Product 3 - EU/1/17/1201/004 90 - 120 mg
* entry[=].Resource = "e13c01a2-6265-4044-a86f-225cc087574d" 
* entry[+].fullUrl = "9ebeecf6-fe0f-41da-bd8c-1791b4659aca" // Medicinal Product 4 - EU/1/17/1201/005 100 - 120 mg
* entry[=].Resource = "9ebeecf6-fe0f-41da-bd8c-1791b4659aca" 
* entry[+].fullUrl = "9b5512d5-970b-4978-8f8d-bcd74d5006f2" // Medicinal Product 5 - EU/1/17/1201/006 120 - 120 mg
* entry[=].Resource = "9b5512d5-970b-4978-8f8d-bcd74d5006f2" 
* entry[+].fullUrl = "7ac36d6e-1ba5-4d13-a763-3ed966b26892" // Medicinal Product 6 - EU/1/17/1201/007 180 - 120 mg
* entry[=].Resource = "7ac36d6e-1ba5-4d13-a763-3ed966b26892" 
* entry[+].fullUrl = "cf9e3d56-22ad-48ba-9cb1-cae88fd267c3" // Medicinal Product 7 - EU/1/17/1201/008 200 - 120 mg
* entry[=].Resource = "cf9e3d56-22ad-48ba-9cb1-cae88fd267c3" 
* entry[+].fullUrl = "bb8caa68-9197-460b-b395-cba1fca019d0" // Medicinal Product 8 - EU/1/17/1201/009 240 - 120 mg
* entry[=].Resource = "bb8caa68-9197-460b-b395-cba1fca019d0" 
* entry[+].fullUrl = "a32302f5-b1d1-401b-a60f-7526a2a31e4e" // Medicinal Product 9 - EU/1/17/1201/012 300 - 120 mg
* entry[=].Resource = "a32302f5-b1d1-401b-a60f-7526a2a31e4e" 
* entry[+].fullUrl = "89682f30-47ca-45df-a691-ffcc9af64fc2" // Medicinal Product 10 - EU/1/17/1201/010 360 - 120 mg
* entry[=].Resource = "89682f30-47ca-45df-a691-ffcc9af64fc2" 
* entry[+].fullUrl = "d1ec4791-2453-4768-b656-d815bf56aff7" // Medicinal Product 11 - EU/1/17/1201/011 400 - 120 mg
* entry[=].Resource = "d1ec4791-2453-4768-b656-d815bf56aff7" 
* entry[+].fullUrl = "ba42fdde-dad7-4752-8a5b-b540405a6c21" // Medicinal Product 12 - EU/1/17/1201/001 42 - 30 mg
* entry[=].Resource = "ba42fdde-dad7-4752-8a5b-b540405a6c21" 
* entry[+].fullUrl = "8b518411-2341-4bd8-be2e-028472436409" // Medicinal Product 13 - EU/1/17/1201/013 70 - 30 mg
* entry[=].Resource = "8b518411-2341-4bd8-be2e-028472436409" 
* entry[+].fullUrl = "151fc002-4f6b-4fc6-91d6-44439a3fae8c" // Medicinal Product 14 - EU/1/17/1201/014 210 - 30 mg
* entry[=].Resource = "151fc002-4f6b-4fc6-91d6-44439a3fae8c" 

* entry[+].fullUrl = "bb2403cc-bb0b-4b1f-b56b-1174d11f6dce" // Packaged Product 1 - EU/1/17/1201/001 42 - 30 mg
* entry[=].Resource = "bb2403cc-bb0b-4b1f-b56b-1174d11f6dce" 
* entry[+].fullUrl = "" // Packaged Product 2 - EU/1/17/1201/013 70 - 30 mg
* entry[=].Resource = "" 
* entry[+].fullUrl = "" // Packaged Product 3 - EU/1/17/1201/014 210 - 30 mg
* entry[=].Resource = "" 
* entry[+].fullUrl = "" // Packaged Product 4 - EU/1/17/1201/002 40 - 120 mg
* entry[=].Resource = "" 
* entry[+].fullUrl = "" // Packaged Product 5 - EU/1/17/1201/003 70 - 120 mg
* entry[=].Resource = "" 
* entry[+].fullUrl = "" // Packaged Product 6 - EU/1/17/1201/004 90 - 120 mg
* entry[=].Resource = "" 
* entry[+].fullUrl = "" // Packaged Product 7 - EU/1/17/1201/005 100 - 120 mg
* entry[=].Resource = "" 
* entry[+].fullUrl = "" // Packaged Product 8 - EU/1/17/1201/006 120 - 120 mg
* entry[=].Resource = "" 
* entry[+].fullUrl = "" // Packaged Product 9 - EU/1/17/1201/007 180 - 120 mg
* entry[=].Resource = "" 
* entry[+].fullUrl = "" // Packaged Product 10 - EU/1/17/1201/008 200 - 120 mg
* entry[=].Resource = "" 
* entry[+].fullUrl = "" // Packaged Product 11 - EU/1/17/1201/009 240 - 120 mg
* entry[=].Resource = "" 
* entry[+].fullUrl = "" // Packaged Product 12 - EU/1/17/1201/012 300 - 120 mg
* entry[=].Resource = "" 
* entry[+].fullUrl = "" // Packaged Product 13 - EU/1/17/1201/010 360 - 120 mg
* entry[=].Resource = "" 
* entry[+].fullUrl = "" // Packaged Product 14 - EU/1/17/1201/011 400 - 120 mg
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
* entry[+].fullUrl = "6ba108fe-dae1-4997-80c2-4c63c7362b32" // ingredient 5 - Croscarmellose sodium 
* entry[=].Resource = "6ba108fe-dae1-4997-80c2-4c63c7362b32"
* entry[+].fullUrl = "1685c199-1e59-4a7d-af41-6737eb5a8c1b" // ingredient 6 - Colloidal anhydrous silica
* entry[=].Resource = "1685c199-1e59-4a7d-af41-6737eb5a8c1b"
* entry[+].fullUrl = "3ec0406d-217d-4cff-a05d-ed0d817542ed" // ingredient 7 - Magnesium stearate 
* entry[=].Resource = "3ec0406d-217d-4cff-a05d-ed0d817542ed"
* entry[+].fullUrl = "8b48299a-4cc1-4178-8b9b-7d1d3fa902f7" // ingredient 8 - Methacrylic acid-ethyl acrylate copolymer (1:1) 
* entry[=].Resource = "8b48299a-4cc1-4178-8b9b-7d1d3fa902f7"
* entry[+].fullUrl = "331f6234-4bac-40b3-93dd-c98aa1dd3e03" // ingredient 9 - Talc
* entry[=].Resource = "331f6234-4bac-40b3-93dd-c98aa1dd3e03"
* entry[+].fullUrl = "fc06daeb-500a-4c9d-a16e-8db36a8ab32f" // ingredient 10 - Triethyl citrate
* entry[=].Resource = "fc06daeb-500a-4c9d-a16e-8db36a8ab32f"
* entry[+].fullUrl = "8cac85ae-061b-489c-a707-e23fc94981ba" // ingredient 11 - Titanium dioxide (E171) 
* entry[=].Resource = "8cac85ae-061b-489c-a707-e23fc94981ba"
* entry[+].fullUrl = "cfd7b82f-7a6c-4e3b-ae59-deeb69570402" // ingredient 12 - Simethicone
* entry[=].Resource = "cfd7b82f-7a6c-4e3b-ae59-deeb69570402"
* entry[+].fullUrl = "b4568b7e-675f-4824-8b77-996aeb0b05b4" // ingredient 13 - Indigo carmine (E132)
* entry[=].Resource = "b4568b7e-675f-4824-8b77-996aeb0b05b4"
* entry[+].fullUrl = "a6757f15-1d58-4361-a0f1-d28a63b3b0fc" // ingredient 14 - Sodium hydroxide
* entry[=].Resource = "a6757f15-1d58-4361-a0f1-d28a63b3b0fc"

* entry[+].fullUrl = "" // clinical use Definition 1 - indication
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
Instance: 039d0d6a-502b-4c04-aa55-ffb18feee07e
InstanceOf: regulatedauthorization
Usage: #example
* id = "039d0d6a-502b-4c04-aa55-ffb18feee07e"
* identifier = "EU/1/17/1201/003"
* subject = Reference(urn:uuid:) "EU/1/17/1201/003"
* type = $spor.ema.europa.eu#100000072062 "Marketing Authorisation" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000072055/terms Scope
* description = ""
* region = $iso:3166-2#eu "european union"
* status = "active" //http://hl7.org/fhir/publication-status
* statusdate = "2021-05-17T08:38:00+02:00"
* validityperiod.start = "2017-06-23T08:38:00+02:00"
* validityperiod.end = ""
* indication = Reference(urn:uuid:) "" //ACTION add indication UUID later
* holder = Reference(urn:uuid:ef262d35-9d2a-4d58-851a-2227a1f028d9) "Almirall S.A." //MAH org #1
* regulator = Reference(urng:uuid:b6b3425b-2133-4f66-a7b6-d81ee0e14529) "European Medicines Agency" //EMA Org #3 

// Authorization 3 -  EU/1/17/1201/004  90 - 120 mg
Instance: 258fe117-0c4d-4210-b57a-9b490d6852a7
InstanceOf: regulatedauthorization
Usage: #example
* id = "258fe117-0c4d-4210-b57a-9b490d6852a7"
* identifier = ""
* subject = Reference(urn:uuid:) ""
* type = $spor.ema.europa.eu#100000072062 "Marketing Authorisation" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000072055/terms Scope
* description = ""
* region = $iso:3166-2#eu "european union"
* status = "active" //http://hl7.org/fhir/publication-status
* statusdate = "2021-05-17T08:38:00+02:00"
* validityperiod.start = "2017-06-23T08:38:00+02:00"
* validityperiod.end = ""
* indication = Reference(urn:uuid:) "" //ACTION add indication UUID later
* holder = Reference(urn:uuid:ef262d35-9d2a-4d58-851a-2227a1f028d9) "Almirall S.A." //MAH org #1
* regulator = Reference(urng:uuid:b6b3425b-2133-4f66-a7b6-d81ee0e14529) "European Medicines Agency" //EMA Org #3 

// Authorization 4 -  EU/1/17/1201/005  100 - 120 mg
Instance: 342a0b23-2775-4557-a40c-ee2935f64a86
InstanceOf: regulatedauthorization
Usage: #example
* id = "342a0b23-2775-4557-a40c-ee2935f64a86"
* identifier = ""
* subject = Reference(urn:uuid:) ""
* type = $spor.ema.europa.eu#100000072062 "Marketing Authorisation" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000072055/terms Scope
* description = ""
* region = $iso:3166-2#eu "european union"
* status = "active" //http://hl7.org/fhir/publication-status
* statusdate = "2021-05-17T08:38:00+02:00"
* validityperiod.start = "2017-06-23T08:38:00+02:00"
* validityperiod.end = ""
* indication = Reference(urn:uuid:) "" //ACTION add indication UUID later
* holder = Reference(urn:uuid:ef262d35-9d2a-4d58-851a-2227a1f028d9) "Almirall S.A." //MAH org #1
* regulator = Reference(urng:uuid:b6b3425b-2133-4f66-a7b6-d81ee0e14529) "European Medicines Agency" //EMA Org #3 

// Authorization 5 -  EU/1/17/1201/006  120 - 120 mg
Instance: dc3c0736-e939-4306-9f50-d983f85f1ab3
InstanceOf: regulatedauthorization
Usage: #example
* id = "dc3c0736-e939-4306-9f50-d983f85f1ab3"
* identifier = ""
* subject = Reference(urn:uuid:) ""
* type = $spor.ema.europa.eu#100000072062 "Marketing Authorisation" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000072055/terms Scope
* description = ""
* region = $iso:3166-2#eu "european union"
* status = "active" //http://hl7.org/fhir/publication-status
* statusdate = "2021-05-17T08:38:00+02:00"
* validityperiod.start = "2017-06-23T08:38:00+02:00"
* validityperiod.end = ""
* indication = Reference(urn:uuid:) "" //ACTION add indication UUID later
* holder = Reference(urn:uuid:ef262d35-9d2a-4d58-851a-2227a1f028d9) "Almirall S.A." //MAH org #1
* regulator = Reference(urng:uuid:b6b3425b-2133-4f66-a7b6-d81ee0e14529) "European Medicines Agency" //EMA Org #3 

// Authorization 6 -  EU/1/17/1201/007  180 - 120 mg
Instance: bcb78f5f-22b4-4a2d-a5e2-6aacbb429c19
InstanceOf: regulatedauthorization
Usage: #example
* id = "bcb78f5f-22b4-4a2d-a5e2-6aacbb429c19"
* identifier = ""
* subject = Reference(urn:uuid:) ""
* type = $spor.ema.europa.eu#100000072062 "Marketing Authorisation" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000072055/terms Scope
* description = ""
* region = $iso:3166-2#eu "european union"
* status = "active" //http://hl7.org/fhir/publication-status
* statusdate = "2021-05-17T08:38:00+02:00"
* validityperiod.start = "2017-06-23T08:38:00+02:00"
* validityperiod.end = ""
* indication = Reference(urn:uuid:) "" //ACTION add indication UUID later
* holder = Reference(urn:uuid:ef262d35-9d2a-4d58-851a-2227a1f028d9) "Almirall S.A." //MAH org #1
* regulator = Reference(urng:uuid:b6b3425b-2133-4f66-a7b6-d81ee0e14529) "European Medicines Agency" //EMA Org #3 

// Authorization 7 -  EU/1/17/1201/008  200 - 120 mg
Instance: 151e9ef9-1e12-4a53-a5a7-5c97d5310e13
InstanceOf: regulatedauthorization
Usage: #example
* id = "151e9ef9-1e12-4a53-a5a7-5c97d5310e13"
* identifier = ""
* subject = Reference(urn:uuid:) ""
* type = $spor.ema.europa.eu#100000072062 "Marketing Authorisation" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000072055/terms Scope
* description = ""
* region = $iso:3166-2#eu "european union"
* status = "active" //http://hl7.org/fhir/publication-status
* statusdate = "2021-05-17T08:38:00+02:00"
* validityperiod.start = "2017-06-23T08:38:00+02:00"
* validityperiod.end = ""
* indication = Reference(urn:uuid:) "" //ACTION add indication UUID later
* holder = Reference(urn:uuid:ef262d35-9d2a-4d58-851a-2227a1f028d9) "Almirall S.A." //MAH org #1
* regulator = Reference(urng:uuid:b6b3425b-2133-4f66-a7b6-d81ee0e14529) "European Medicines Agency" //EMA Org #3 

// Authorization 8 -  EU/1/17/1201/009  240 - 120 mg
Instance: b31828b6-5035-4d78-a1aa-b6812ada2e60
InstanceOf: regulatedauthorization
Usage: #example
* id = "b31828b6-5035-4d78-a1aa-b6812ada2e60"
* identifier = ""
* subject = Reference(urn:uuid:) ""
* type = $spor.ema.europa.eu#100000072062 "Marketing Authorisation" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000072055/terms Scope
* description = ""
* region = $iso:3166-2#eu "european union"
* status = "active" //http://hl7.org/fhir/publication-status
* statusdate = "2021-05-17T08:38:00+02:00"
* validityperiod.start = "2017-06-23T08:38:00+02:00"
* validityperiod.end = ""
* indication = Reference(urn:uuid:) "" //ACTION add indication UUID later
* holder = Reference(urn:uuid:ef262d35-9d2a-4d58-851a-2227a1f028d9) "Almirall S.A." //MAH org #1
* regulator = Reference(urng:uuid:b6b3425b-2133-4f66-a7b6-d81ee0e14529) "European Medicines Agency" //EMA Org #3 

// Authorization 9 -  EU/1/17/1201/012  300 - 120 mg
Instance: 36f726b7-2a38-4b59-8ccf-ec797c02aba6
InstanceOf: regulatedauthorization
Usage: #example
* id = "36f726b7-2a38-4b59-8ccf-ec797c02aba6"
* identifier = ""
* subject = Reference(urn:uuid:) ""
* type = $spor.ema.europa.eu#100000072062 "Marketing Authorisation" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000072055/terms Scope
* description = ""
* region = $iso:3166-2#eu "european union"
* status = "active" //http://hl7.org/fhir/publication-status
* statusdate = "2021-05-17T08:38:00+02:00"
* validityperiod.start = "2017-06-23T08:38:00+02:00"
* validityperiod.end = ""
* indication = Reference(urn:uuid:) "" //ACTION add indication UUID later
* holder = Reference(urn:uuid:ef262d35-9d2a-4d58-851a-2227a1f028d9) "Almirall S.A." //MAH org #1
* regulator = Reference(urng:uuid:b6b3425b-2133-4f66-a7b6-d81ee0e14529) "European Medicines Agency" //EMA Org #3 

// Authorization 10 -  EU/1/17/1201/010 360 - 120 mg
Instance: badfe527-5c59-4a52-980c-31735cadc2cc
InstanceOf: regulatedauthorization
Usage: #example
* id = "badfe527-5c59-4a52-980c-31735cadc2cc"
* identifier = ""
* subject = Reference(urn:uuid:) ""
* type = $spor.ema.europa.eu#100000072062 "Marketing Authorisation" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000072055/terms Scope
* description = ""
* region = $iso:3166-2#eu "european union"
* status = "active" //http://hl7.org/fhir/publication-status
* statusdate = "2021-05-17T08:38:00+02:00"
* validityperiod.start = "2017-06-23T08:38:00+02:00"
* validityperiod.end = ""
* indication = Reference(urn:uuid:) "" //ACTION add indication UUID later
* holder = Reference(urn:uuid:ef262d35-9d2a-4d58-851a-2227a1f028d9) "Almirall S.A." //MAH org #1
* regulator = Reference(urng:uuid:b6b3425b-2133-4f66-a7b6-d81ee0e14529) "European Medicines Agency" //EMA Org #3 

// Authorization 11 -  EU/1/17/1201/011 400 - 120 mg
Instance: 8a350f4b-8bcb-4e15-bc6f-4eb18de314a8
InstanceOf: regulatedauthorization
Usage: #example
* id = "8a350f4b-8bcb-4e15-bc6f-4eb18de314a8"
* identifier = ""
* subject = Reference(urn:uuid:) ""
* type = $spor.ema.europa.eu#100000072062 "Marketing Authorisation" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000072055/terms Scope
* description = ""
* region = $iso:3166-2#eu "european union"
* status = "active" //http://hl7.org/fhir/publication-status
* statusdate = "2021-05-17T08:38:00+02:00"
* validityperiod.start = "2017-06-23T08:38:00+02:00"
* validityperiod.end = ""
* indication = Reference(urn:uuid:) "" //ACTION add indication UUID later
* holder = Reference(urn:uuid:ef262d35-9d2a-4d58-851a-2227a1f028d9) "Almirall S.A." //MAH org #1
* regulator = Reference(urng:uuid:b6b3425b-2133-4f66-a7b6-d81ee0e14529) "European Medicines Agency" //EMA Org #3 

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
Instance: 79e68763-f272-4520-a1dd-afe95d65a32c
InstanceOf: regulatedauthorization
Usage: #example
* id = "79e68763-f272-4520-a1dd-afe95d65a32c"
* identifier = ""
* subject = Reference(urn:uuid:) ""
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

// Authorization 14 -  EU/1/17/1201/014 210 - 30 mg
Instance: 3296d254-567e-4fc2-9b1c-5e17cea982f4
InstanceOf: regulatedauthorization
Usage: #example
* id = "3296d254-567e-4fc2-9b1c-5e17cea982f4"
* identifier = ""
* subject = Reference(urn:uuid:) ""
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

//MEDICINAL PRODUCT Definition===================
//Instance of Medicinal Product Definition 1 - 30 mg - 42 gastro-resistant tablets in PVC/PVDC-aluminium blister packs
Instance: 9cda1cb4-c543-40ef-849b-3b802b5e6f9e
InstanceOf: medicinalproductdefinition
Usage: #example
* id = "9cda1cb4-c543-40ef-849b-3b802b5e6f9e"
* identifier = "EU/1/17/1201/001"
* type = $spor.ema.europa.eu#100000072062 "Marketing Authorisation" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000072055/terms Scope
* domain = $spor.ema.europa.eu#100000000012 "Human use" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000000004/terms
* version = "1"
* status = "active" //http://hl7.org/fhir/publication-status
* statusdate = "2021-05-17T08:38:00+02:00"
* description = "Skilarence 30 mg
Each gastro-resistant tablet contains 30 mg dimethyl fumarate"
* route = $spor.ema.europa.eu#100000073619 "oral use" //https://spor.ema.europa.eu/rmswi/#/lists/100000073345/terms route and method of administration
* indication = $MeSH#9999 "Psoriasis" //ACTION FIND MESH CODE
* legalstatusofsupply = $spor.ema.europa.eu#100000072084 "Medicinal product subject to medical prescription" //https://spor.ema.europa.eu/rmswi/#/lists/100000072051/terms
* additionalmonitoringindicator = "false"
* paediatricuseindicator = "false"
* classification = $whocc.no#L04AX07 "Other immunosuppressants" //http://www.whocc.no/atc ACTION switch from ATC to MedDRA

* marketingstatus.country = $iso:3166-2#eu "european union"
* marketingstatus.jurisdiction = $iso:3166-2#eu "european union"
* marketingstatus.status = $spor.ema.europa.eu#100000072083 "Marketed" //https://spor.ema.europa.eu/rmswi/#/lists/100000072052/terms Marketing Status
* marketingstatus.daterange.period.start = "2021-05-17T08:38:00+02:00"
* marketingstatus.daterange.period.end = ""

* crossreference.ManufacturedItemDefinition = Reference(urn:uuid:b6154e11-fa77-4bdd-99d0-43a5eb03c694) "120 mg tablet" //ACTION extension 
* crossreference.AdministrableProductDefinition = Reference(urn:uuid:c7d4fd6d-de2c-404a-9be4-13d9e552ac1b) "120 mg tablet" //ACTION extension
* crossreference.packagedproductdefinition = Reference(urn:uuid:) "42 gastro-resistant tablets in PVC/PVDC-aluminium blister packs" //ACTION extension

* name.product.name = "skilarence"
* name.type = "proprietary"
* name.product.name = "dimethyl fumarate"
* name.type = "non-proprietary" 
* name.countrylanguage.country = $iso:3166-2#gb "united kingdom"
* name.countrylanguage.language = $iso:639-2#en "english"
* name.countrylanguage.country = $iso:3166-2#no "norway"
* name.countrylanguage.language = $iso:639-2#no "norwegian"

* AdministrableProduct.route = $spor.ema.europa.eu#100000073619 "oral use" //https://spor.ema.europa.eu/rmswi/#/lists/100000073345/terms route and method of administration
* AdministrableProduct.product = Reference(urng:uuid:c7d4fd6d-de2c-404a-9be4-13d9e552ac1b) //Administrable Product Definition 2 - 120 mg

//Instance of Medicinal Product Definition 2 - 30 mg - 70 gastro-resistant tablets in PVC/PVDC-aluminium blister packs 
Instance: 82b01a8c-2e70-4410-b8d6-8b71efcc63f4
InstanceOf: medicinalproductdefinition
Usage: #example
* id = "82b01a8c-2e70-4410-b8d6-8b71efcc63f4"
* identifier = "EU/1/17/1201/013"
* type = $spor.ema.europa.eu#100000072062 "Marketing Authorisation" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000072055/terms Scope
* domain = $spor.ema.europa.eu#100000000012 "Human use" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000000004/terms
* version = "1"
* status = "active" //http://hl7.org/fhir/publication-status
* statusdate = "2021-05-17T08:38:00+02:00"
* description = "Skilarence 30 mg
Each gastro-resistant tablet contains 30 mg dimethyl fumarate"
* route = $spor.ema.europa.eu#100000073619 "oral use" //https://spor.ema.europa.eu/rmswi/#/lists/100000073345/terms route and method of administration
* indication = $MeSH#9999 "Psoriasis" //ACTION FIND MESH CODE
* legalstatusofsupply = $spor.ema.europa.eu#100000072084 "Medicinal product subject to medical prescription" //https://spor.ema.europa.eu/rmswi/#/lists/100000072051/terms
* additionalmonitoringindicator = "false"
* paediatricuseindicator = "false"
* classification = $whocc.no#L04AX07 "Other immunosuppressants" //http://www.whocc.no/atc ACTION switch from ATC to MedDRA

* marketingstatus.country = $iso:3166-2#eu "european union"
* marketingstatus.jurisdiction = $iso:3166-2#eu "european union"
* marketingstatus.status = $spor.ema.europa.eu#100000072083 "Marketed" //https://spor.ema.europa.eu/rmswi/#/lists/100000072052/terms Marketing Status
* marketingstatus.daterange.period.start = "2021-05-17T08:38:00+02:00"
* marketingstatus.daterange.period.end = ""

* crossreference.ManufacturedItemDefinition = Reference(urn:uuid:b6154e11-fa77-4bdd-99d0-43a5eb03c694) "120 mg tablet" //ACTION extension 
* crossreference.AdministrableProductDefinition = Reference(urn:uuid:c7d4fd6d-de2c-404a-9be4-13d9e552ac1b) "120 mg tablet" //ACTION extension
* crossreference.packagedproductdefinition = Reference(urn:uuid:) "70 gastro-resistant tablets in PVC/PVDC-aluminium blister packs" //ACTION extension

* name.product.name = "skilarence"
* name.type = "proprietary"
* name.product.name = "dimethyl fumarate"
* name.type = "non-proprietary" 
* name.countrylanguage.country = $iso:3166-2#gb "united kingdom"
* name.countrylanguage.language = $iso:639-2#en "english"
* name.countrylanguage.country = $iso:3166-2#no "norway"
* name.countrylanguage.language = $iso:639-2#no "norwegian"

* AdministrableProduct.route = $spor.ema.europa.eu#100000073619 "oral use" //https://spor.ema.europa.eu/rmswi/#/lists/100000073345/terms route and method of administration
* AdministrableProduct.product = Reference(urng:uuid:c7d4fd6d-de2c-404a-9be4-13d9e552ac1b) //Administrable Product Definition 2 - 120 mg

//Instance of Medicinal Product Definition 3 - 30 mg - 210 gastro-resistant tablets in PVC/PVDC-aluminium blister packs
Instance: e13c01a2-6265-4044-a86f-225cc087574d
InstanceOf: medicinalproductdefinition
Usage: #example
* id = "e13c01a2-6265-4044-a86f-225cc087574d"
* identifier = "EU/1/17/1201/014"
* type = $spor.ema.europa.eu#100000072062 "Marketing Authorisation" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000072055/terms Scope
* domain = $spor.ema.europa.eu#100000000012 "Human use" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000000004/terms
* version = "1"
* status = "active" //http://hl7.org/fhir/publication-status
* statusdate = "2021-05-17T08:38:00+02:00"
* description = "Skilarence 30 mg
Each gastro-resistant tablet contains 30 mg dimethyl fumarate"
* route = $spor.ema.europa.eu#100000073619 "oral use" //https://spor.ema.europa.eu/rmswi/#/lists/100000073345/terms route and method of administration
* indication = $MeSH#9999 "Psoriasis" //ACTION FIND MESH CODE
* legalstatusofsupply = $spor.ema.europa.eu#100000072084 "Medicinal product subject to medical prescription" //https://spor.ema.europa.eu/rmswi/#/lists/100000072051/terms
* additionalmonitoringindicator = "false"
* paediatricuseindicator = "false"
* classification = $whocc.no#L04AX07 "Other immunosuppressants" //http://www.whocc.no/atc ACTION switch from ATC to MedDRA

* marketingstatus.country = $iso:3166-2#eu "european union"
* marketingstatus.jurisdiction = $iso:3166-2#eu "european union"
* marketingstatus.status = $spor.ema.europa.eu#100000072083 "Marketed" //https://spor.ema.europa.eu/rmswi/#/lists/100000072052/terms Marketing Status
* marketingstatus.daterange.period.start = "2021-05-17T08:38:00+02:00"
* marketingstatus.daterange.period.end = ""

* crossreference.ManufacturedItemDefinition = Reference(urn:uuid:b6154e11-fa77-4bdd-99d0-43a5eb03c694) "120 mg tablet" //ACTION extension 
* crossreference.AdministrableProductDefinition = Reference(urn:uuid:c7d4fd6d-de2c-404a-9be4-13d9e552ac1b) "120 mg tablet" //ACTION extension
* crossreference.packagedproductdefinition = Reference(urn:uuid:) "210 gastro-resistant tablets in PVC/PVDC-aluminium blister packs" //ACTION extension

* name.product.name = "skilarence"
* name.type = "proprietary"
* name.product.name = "dimethyl fumarate"
* name.type = "non-proprietary" 
* name.countrylanguage.country = $iso:3166-2#gb "united kingdom"
* name.countrylanguage.language = $iso:639-2#en "english"
* name.countrylanguage.country = $iso:3166-2#no "norway"
* name.countrylanguage.language = $iso:639-2#no "norwegian"

* AdministrableProduct.route = $spor.ema.europa.eu#100000073619 "oral use" //https://spor.ema.europa.eu/rmswi/#/lists/100000073345/terms route and method of administration
* AdministrableProduct.product = Reference(urng:uuid:c7d4fd6d-de2c-404a-9be4-13d9e552ac1b) //Administrable Product Definition 2 - 120 mg

// Instance of Medicinal Product Definition 4 - 120 mg - 40 gastro-resistant tablets in PVC/PVDC-aluminium blister packs
Instance: 9ebeecf6-fe0f-41da-bd8c-1791b4659aca
InstanceOf: medicinalproductdefinition
Usage: #example
* id = "9ebeecf6-fe0f-41da-bd8c-1791b4659aca"
* identifier = "EU/1/17/1201/002"
* type = $spor.ema.europa.eu#100000072062 "Marketing Authorisation" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000072055/terms Scope
* domain = $spor.ema.europa.eu#100000000012 "Human use" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000000004/terms
* version = "1"
* status = "active" //http://hl7.org/fhir/publication-status
* statusdate = "2021-05-17T08:38:00+02:00"
* description = "Skilarence 120 mg Each gastro-resistant tablet contains 120 mg dimethyl fumarate"
* route = $spor.ema.europa.eu#100000073619 "oral use" //https://spor.ema.europa.eu/rmswi/#/lists/100000073345/terms route and method of administration
* indication = $MeSH#9999 "Psoriasis" //ACTION FIND MESH CODE
* legalstatusofsupply = $spor.ema.europa.eu#100000072084 "Medicinal product subject to medical prescription" //https://spor.ema.europa.eu/rmswi/#/lists/100000072051/terms
* additionalmonitoringindicator = "false"
* paediatricuseindicator = "false"
* classification = $whocc.no#L04AX07 "Other immunosuppressants" //http://www.whocc.no/atc ACTION switch from ATC to MedDRA

* marketingstatus.country = $iso:3166-2#eu "european union"
* marketingstatus.jurisdiction = $iso:3166-2#eu "european union"
* marketingstatus.status = $spor.ema.europa.eu#100000072083 "Marketed" //https://spor.ema.europa.eu/rmswi/#/lists/100000072052/terms Marketing Status
* marketingstatus.daterange.period.start = "2021-05-17T08:38:00+02:00"
* marketingstatus.daterange.period.end = ""

* crossreference.ManufacturedItemDefinition = Reference(urn:uuid:b6154e11-fa77-4bdd-99d0-43a5eb03c694) "120 mg tablet" //ACTION extension 
* crossreference.AdministrableProductDefinition = Reference(urn:uuid:c7d4fd6d-de2c-404a-9be4-13d9e552ac1b) "120 mg tablet" //ACTION extension
* crossreference.packagedproductdefinition = Reference(urn:uuid:) "40 gastro-resistant tablets in PVC/PVDC-aluminium blister packs" //ACTION extension

* name.product.name = "skilarence"
* name.type = "proprietary"
* name.product.name = "dimethyl fumarate"
* name.type = "non-proprietary" 
* name.countrylanguage.country = $iso:3166-2#gb "united kingdom"
* name.countrylanguage.language = $iso:639-2#en "english"
* name.countrylanguage.country = $iso:3166-2#no "norway"
* name.countrylanguage.language = $iso:639-2#no "norwegian"

* AdministrableProduct.route = $spor.ema.europa.eu#100000073619 "oral use" //https://spor.ema.europa.eu/rmswi/#/lists/100000073345/terms route and method of administration
* AdministrableProduct.product = Reference(urng:uuid:c7d4fd6d-de2c-404a-9be4-13d9e552ac1b) //Administrable Product Definition 2 - 120 mg

// Instance of Medicinal Product Definition 5 - 120 mg - 70 gastro-resistant tablets in PVC/PVDC-aluminium blister packs
Instance: 9b5512d5-970b-4978-8f8d-bcd74d5006f2
InstanceOf: medicinalproductdefinition
Usage: #example
* id = "9b5512d5-970b-4978-8f8d-bcd74d5006f2"
* identifier = "EU/1/17/1201/003"
* type = $spor.ema.europa.eu#100000072062 "Marketing Authorisation" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000072055/terms Scope
* domain = $spor.ema.europa.eu#100000000012 "Human use" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000000004/terms
* version = "1"
* status = "active" //http://hl7.org/fhir/publication-status
* statusdate = "2021-05-17T08:38:00+02:00"
* description = "Skilarence 120 mg Each gastro-resistant tablet contains 120 mg dimethyl fumarate"
* route = $spor.ema.europa.eu#100000073619 "oral use" //https://spor.ema.europa.eu/rmswi/#/lists/100000073345/terms route and method of administration
* indication = $MeSH#9999 "Psoriasis" //ACTION FIND MESH CODE
* legalstatusofsupply = $spor.ema.europa.eu#100000072084 "Medicinal product subject to medical prescription" //https://spor.ema.europa.eu/rmswi/#/lists/100000072051/terms
* additionalmonitoringindicator = "false"
* paediatricuseindicator = "false"
* classification = $whocc.no#L04AX07 "Other immunosuppressants" //http://www.whocc.no/atc ACTION switch from ATC to MedDRA

* marketingstatus.country = $iso:3166-2#eu "european union"
* marketingstatus.jurisdiction = $iso:3166-2#eu "european union"
* marketingstatus.status = $spor.ema.europa.eu#100000072083 "Marketed" //https://spor.ema.europa.eu/rmswi/#/lists/100000072052/terms Marketing Status
* marketingstatus.daterange.period.start = "2021-05-17T08:38:00+02:00"
* marketingstatus.daterange.period.end = ""

* crossreference.ManufacturedItemDefinition = Reference(urn:uuid:b6154e11-fa77-4bdd-99d0-43a5eb03c694) "120 mg tablet" //ACTION extension 
* crossreference.AdministrableProductDefinition = Reference(urn:uuid:c7d4fd6d-de2c-404a-9be4-13d9e552ac1b) "120 mg tablet" //ACTION extension
* crossreference.packagedproductdefinition = Reference(urn:uuid:) "70 gastro-resistant tablets in PVC/PVDC-aluminium blister packs" //ACTION extension

* name.product.name = "skilarence"
* name.type = "proprietary"
* name.product.name = "dimethyl fumarate"
* name.type = "non-proprietary" 
* name.countrylanguage.country = $iso:3166-2#gb "united kingdom"
* name.countrylanguage.language = $iso:639-2#en "english"
* name.countrylanguage.country = $iso:3166-2#no "norway"
* name.countrylanguage.language = $iso:639-2#no "norwegian"

* AdministrableProduct.route = $spor.ema.europa.eu#100000073619 "oral use" //https://spor.ema.europa.eu/rmswi/#/lists/100000073345/terms route and method of administration
* AdministrableProduct.product = Reference(urng:uuid:c7d4fd6d-de2c-404a-9be4-13d9e552ac1b) //Administrable Product Definition 2 - 120 mg

// Instance of Medicinal Product Definition 6 - 120 mg - 90 gastro-resistant tablets in PVC/PVDC-aluminium blister packs
Instance: 7ac36d6e-1ba5-4d13-a763-3ed966b26892
InstanceOf: medicinalproductdefinition
Usage: #example
* id = "7ac36d6e-1ba5-4d13-a763-3ed966b26892"
* identifier = "EU/1/17/1201/004"
* type = $spor.ema.europa.eu#100000072062 "Marketing Authorisation" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000072055/terms Scope
* domain = $spor.ema.europa.eu#100000000012 "Human use" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000000004/terms
* version = "1"
* status = "active" //http://hl7.org/fhir/publication-status
* statusdate = "2021-05-17T08:38:00+02:00"
* description = "Skilarence 120 mg Each gastro-resistant tablet contains 120 mg dimethyl fumarate"
* route = $spor.ema.europa.eu#100000073619 "oral use" //https://spor.ema.europa.eu/rmswi/#/lists/100000073345/terms route and method of administration
* indication = $MeSH#9999 "Psoriasis" //ACTION FIND MESH CODE
* legalstatusofsupply = $spor.ema.europa.eu#100000072083 "Marketed" //https://spor.ema.europa.eu/rmswi/#/lists/100000072052/terms Marketing Status
* additionalmonitoringindicator = "false"
* paediatricuseindicator = "false"
* classification = $whocc.no#L04AX07 "Other immunosuppressants" //http://www.whocc.no/atc ACTION switch from ATC to MedDRA

* marketingstatus.country = $iso:3166-2#eu "european union"
* marketingstatus.jurisdiction = $iso:3166-2#eu "european union"
* marketingstatus.status = $spor.ema.europa.eu#100000072083 "Marketed" //https://spor.ema.europa.eu/rmswi/#/lists/100000072052/terms Marketing Status
* marketingstatus.daterange.period.start = "2021-05-17T08:38:00+02:00"
* marketingstatus.daterange.period.end = ""

* crossreference.ManufacturedItemDefinition = Reference(urn:uuid:b6154e11-fa77-4bdd-99d0-43a5eb03c694) "120 mg tablet" //ACTION extension 
* crossreference.AdministrableProductDefinition = Reference(urn:uuid:c7d4fd6d-de2c-404a-9be4-13d9e552ac1b) "120 mg tablet" //ACTION extension
* crossreference.packagedproductdefinition = Reference(urn:uuid:) "90 gastro-resistant tablets in PVC/PVDC-aluminium blister packs" //ACTION extension

* name.product.name = "skilarence"
* name.type = "proprietary"
* name.product.name = "dimethyl fumarate"
* name.type = "non-proprietary" 
* name.countrylanguage.country = $iso:3166-2#gb "united kingdom"
* name.countrylanguage.language = $iso:639-2#en "english"
* name.countrylanguage.country = $iso:3166-2#no "norway"
* name.countrylanguage.language = $iso:639-2#no "norwegian"

* AdministrableProduct.route = $spor.ema.europa.eu#100000073619 "oral use" //https://spor.ema.europa.eu/rmswi/#/lists/100000073345/terms route and method of administration
* AdministrableProduct.product = Reference(urng:uuid:c7d4fd6d-de2c-404a-9be4-13d9e552ac1b) //Administrable Product Definition 2 - 120 mg

// Instance of Medicinal Product Definition 7 - 120 mg - 100 gastro-resistant tablets in PVC/PVDC-aluminium blister packs
Instance: cf9e3d56-22ad-48ba-9cb1-cae88fd267c3
InstanceOf: medicinalproductdefinition
Usage: #example
* id = "cf9e3d56-22ad-48ba-9cb1-cae88fd267c3"
* identifier = "EU/1/17/1201/005"
* type = $spor.ema.europa.eu#100000072062 "Marketing Authorisation" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000072055/terms Scope
* domain = $spor.ema.europa.eu#100000000012 "Human use" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000000004/terms
* version = "1"
* status = "active" //http://hl7.org/fhir/publication-status
* statusdate = "2021-05-17T08:38:00+02:00"
* description = "Skilarence 120 mg Each gastro-resistant tablet contains 120 mg dimethyl fumarate"
* route = $spor.ema.europa.eu#100000073619 "oral use" //https://spor.ema.europa.eu/rmswi/#/lists/100000073345/terms route and method of administration
* indication = $MeSH#9999 "Psoriasis" //ACTION FIND MESH CODE
* legalstatusofsupply = $spor.ema.europa.eu#100000072084 "Medicinal product subject to medical prescription" //https://spor.ema.europa.eu/rmswi/#/lists/100000072051/terms
* additionalmonitoringindicator = "false"
* paediatricuseindicator = "false"
* classification = $whocc.no#L04AX07 "Other immunosuppressants" //http://www.whocc.no/atc ACTION switch from ATC to MedDRA

* marketingstatus.country = $iso:3166-2#eu "european union"
* marketingstatus.jurisdiction = $iso:3166-2#eu "european union"
* marketingstatus.status = $spor.ema.europa.eu#100000072083 "Marketed" //https://spor.ema.europa.eu/rmswi/#/lists/100000072052/terms Marketing Status
* marketingstatus.daterange.period.start = "2021-05-17T08:38:00+02:00"
* marketingstatus.daterange.period.end = ""

* crossreference.ManufacturedItemDefinition = Reference(urn:uuid:b6154e11-fa77-4bdd-99d0-43a5eb03c694) "120 mg tablet" //ACTION extension 
* crossreference.AdministrableProductDefinition = Reference(urn:uuid:c7d4fd6d-de2c-404a-9be4-13d9e552ac1b) "120 mg tablet" //ACTION extension
* crossreference.packagedproductdefinition = Reference(urn:uuid:) "100 gastro-resistant tablets in PVC/PVDC-aluminium blister packs" //ACTION extension

* name.product.name = "skilarence"
* name.type = "proprietary"
* name.product.name = "dimethyl fumarate"
* name.type = "non-proprietary" 
* name.countrylanguage.country = $iso:3166-2#gb "united kingdom"
* name.countrylanguage.language = $iso:639-2#en "english"
* name.countrylanguage.country = $iso:3166-2#no "norway"
* name.countrylanguage.language = $iso:639-2#no "norwegian"

* AdministrableProduct.route = $spor.ema.europa.eu#100000073619 "oral use" //https://spor.ema.europa.eu/rmswi/#/lists/100000073345/terms route and method of administration
* AdministrableProduct.product = Reference(urng:uuid:c7d4fd6d-de2c-404a-9be4-13d9e552ac1b) //Administrable Product Definition 2 - 120 mg

// Instance of Medicinal Product Definition 8 - 120 mg - 120 gastro-resistant tablets in PVC/PVDC-aluminium blister packs
Instance: bb8caa68-9197-460b-b395-cba1fca019d0
InstanceOf: medicinalproductdefinition
Usage: #example
* id = "bb8caa68-9197-460b-b395-cba1fca019d0"
* identifier = "EU/1/17/1201/006"
* type = $spor.ema.europa.eu#100000072062 "Marketing Authorisation" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000072055/terms Scope
* domain = $spor.ema.europa.eu#100000000012 "Human use" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000000004/terms
* version = "1"
* status = "active" //http://hl7.org/fhir/publication-status
* statusdate = "2021-05-17T08:38:00+02:00"
* description = "Skilarence 120 mg Each gastro-resistant tablet contains 120 mg dimethyl fumarate"
* route = $spor.ema.europa.eu#100000073619 "oral use" //https://spor.ema.europa.eu/rmswi/#/lists/100000073345/terms route and method of administration
* indication = $MeSH#9999 "Psoriasis" //ACTION FIND MESH CODE
* legalstatusofsupply = $spor.ema.europa.eu#100000072084 "Medicinal product subject to medical prescription" //https://spor.ema.europa.eu/rmswi/#/lists/100000072051/terms
* additionalmonitoringindicator = "false"
* paediatricuseindicator = "false"
* classification = $whocc.no#L04AX07 "Other immunosuppressants" //http://www.whocc.no/atc ACTION switch from ATC to MedDRA

* marketingstatus.country = $iso:3166-2#eu "european union"
* marketingstatus.jurisdiction = $iso:3166-2#eu "european union"
* marketingstatus.status = $spor.ema.europa.eu#100000072083 "Marketed" //https://spor.ema.europa.eu/rmswi/#/lists/100000072052/terms Marketing Status
* marketingstatus.daterange.period.start = "2021-05-17T08:38:00+02:00"
* marketingstatus.daterange.period.end = ""

* crossreference.ManufacturedItemDefinition = Reference(urn:uuid:b6154e11-fa77-4bdd-99d0-43a5eb03c694) "120 mg tablet" //ACTION extension 
* crossreference.AdministrableProductDefinition = Reference(urn:uuid:c7d4fd6d-de2c-404a-9be4-13d9e552ac1b) "120 mg tablet" //ACTION extension
* crossreference.packagedproductdefinition = Reference(urn:uuid:) "120 gastro-resistant tablets in PVC/PVDC-aluminium blister packs" //ACTION extension

* name.product.name = "skilarence"
* name.type = "proprietary"
* name.product.name = "dimethyl fumarate"
* name.type = "non-proprietary" 
* name.countrylanguage.country = $iso:3166-2#gb "united kingdom"
* name.countrylanguage.language = $iso:639-2#en "english"
* name.countrylanguage.country = $iso:3166-2#no "norway"
* name.countrylanguage.language = $iso:639-2#no "norwegian"

* AdministrableProduct.route = $spor.ema.europa.eu#100000073619 "oral use" //https://spor.ema.europa.eu/rmswi/#/lists/100000073345/terms route and method of administration
* AdministrableProduct.product = Reference(urng:uuid:c7d4fd6d-de2c-404a-9be4-13d9e552ac1b) //Administrable Product Definition 2 - 120 mg

// Instance of Medicinal Product Definition 9 - 120 mg - 180 gastro-resistant tablets in PVC/PVDC-aluminium blister packs
Instance: a32302f5-b1d1-401b-a60f-7526a2a31e4e
InstanceOf: medicinalproductdefinition
Usage: #example
* id = "a32302f5-b1d1-401b-a60f-7526a2a31e4e"
* identifier = "EU/1/17/1201/007"
* type = $spor.ema.europa.eu#100000072062 "Marketing Authorisation" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000072055/terms Scope
* domain = $spor.ema.europa.eu#100000000012 "Human use" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000000004/terms
* version = "1"
* status = "active" //http://hl7.org/fhir/publication-status
* statusdate = "2021-05-17T08:38:00+02:00"
* description = "Skilarence 120 mg Each gastro-resistant tablet contains 120 mg dimethyl fumarate"
* route = $spor.ema.europa.eu#100000073619 "oral use" //https://spor.ema.europa.eu/rmswi/#/lists/100000073345/terms route and method of administration
* indication = $MeSH#9999 "Psoriasis" //ACTION FIND MESH CODE
* legalstatusofsupply = $spor.ema.europa.eu#100000072084 "Medicinal product subject to medical prescription" //https://spor.ema.europa.eu/rmswi/#/lists/100000072051/terms
* additionalmonitoringindicator = "false"
* paediatricuseindicator = "false"
* classification = $whocc.no#L04AX07 "Other immunosuppressants" //http://www.whocc.no/atc ACTION switch from ATC to MedDRA

* marketingstatus.country = $iso:3166-2#eu "european union"
* marketingstatus.jurisdiction = $iso:3166-2#eu "european union"
* marketingstatus.status = $spor.ema.europa.eu#100000072083 "Marketed" //https://spor.ema.europa.eu/rmswi/#/lists/100000072052/terms Marketing Status
* marketingstatus.daterange.period.start = "2021-05-17T08:38:00+02:00"
* marketingstatus.daterange.period.end = ""

* crossreference.ManufacturedItemDefinition = Reference(urn:uuid:b6154e11-fa77-4bdd-99d0-43a5eb03c694) "120 mg tablet" //ACTION extension 
* crossreference.AdministrableProductDefinition = Reference(urn:uuid:c7d4fd6d-de2c-404a-9be4-13d9e552ac1b) "120 mg tablet" //ACTION extension
* crossreference.packagedproductdefinition = Reference(urn:uuid:) "180 gastro-resistant tablets in PVC/PVDC-aluminium blister packs" //ACTION extension

* name.product.name = "skilarence"
* name.type = "proprietary"
* name.product.name = "dimethyl fumarate"
* name.type = "non-proprietary" 
* name.countrylanguage.country = $iso:3166-2#gb "united kingdom"
* name.countrylanguage.language = $iso:639-2#en "english"
* name.countrylanguage.country = $iso:3166-2#no "norway"
* name.countrylanguage.language = $iso:639-2#no "norwegian"

* AdministrableProduct.route = $spor.ema.europa.eu#100000073619 "oral use" //https://spor.ema.europa.eu/rmswi/#/lists/100000073345/terms route and method of administration
* AdministrableProduct.product = Reference(urng:uuid:c7d4fd6d-de2c-404a-9be4-13d9e552ac1b) //Administrable Product Definition 2 - 120 mg

// Instance of Medicinal Product Definition 10 - 120 mg - 200 gastro-resistant tablets in PVC/PVDC-aluminium blister packs
Instance: 89682f30-47ca-45df-a691-ffcc9af64fc2
InstanceOf: medicinalproductdefinition
Usage: #example
* id = "89682f30-47ca-45df-a691-ffcc9af64fc2"
* identifier = "EU/1/17/1201/008"
* type = $spor.ema.europa.eu#100000072062 "Marketing Authorisation" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000072055/terms Scope
* domain = $spor.ema.europa.eu#100000000012 "Human use" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000000004/terms
* version = "1"
* status = "active" //http://hl7.org/fhir/publication-status
* statusdate = "2021-05-17T08:38:00+02:00"
* description = "Skilarence 120 mg Each gastro-resistant tablet contains 120 mg dimethyl fumarate"
* route = $spor.ema.europa.eu#100000073619 "oral use" //https://spor.ema.europa.eu/rmswi/#/lists/100000073345/terms route and method of administration
* indication = $MeSH#9999 "Psoriasis" //ACTION FIND MESH CODE
* legalstatusofsupply = $spor.ema.europa.eu#100000072084 "Medicinal product subject to medical prescription" //https://spor.ema.europa.eu/rmswi/#/lists/100000072051/terms
* additionalmonitoringindicator = "false"
* paediatricuseindicator = "false"
* classification = $whocc.no#L04AX07 "Other immunosuppressants" //http://www.whocc.no/atc ACTION switch from ATC to MedDRA

* marketingstatus.country = $iso:3166-2#eu "european union"
* marketingstatus.jurisdiction = $iso:3166-2#eu "european union"
* marketingstatus.status = $spor.ema.europa.eu#100000072083 "Marketed" //https://spor.ema.europa.eu/rmswi/#/lists/100000072052/terms Marketing Status
* marketingstatus.daterange.period.start = "2021-05-17T08:38:00+02:00"
* marketingstatus.daterange.period.end = ""

* crossreference.ManufacturedItemDefinition = Reference(urn:uuid:b6154e11-fa77-4bdd-99d0-43a5eb03c694) "120 mg tablet" //ACTION extension 
* crossreference.AdministrableProductDefinition = Reference(urn:uuid:c7d4fd6d-de2c-404a-9be4-13d9e552ac1b) "120 mg tablet" //ACTION extension
* crossreference.packagedproductdefinition = Reference(urn:uuid:) "200 gastro-resistant tablets in PVC/PVDC-aluminium blister packs" //ACTION extension

* name.product.name = "skilarence"
* name.type = "proprietary"
* name.product.name = "dimethyl fumarate"
* name.type = "non-proprietary" 
* name.countrylanguage.country = $iso:3166-2#gb "united kingdom"
* name.countrylanguage.language = $iso:639-2#en "english"
* name.countrylanguage.country = $iso:3166-2#no "norway"
* name.countrylanguage.language = $iso:639-2#no "norwegian"

* AdministrableProduct.route = $spor.ema.europa.eu#100000073619 "oral use" //https://spor.ema.europa.eu/rmswi/#/lists/100000073345/terms route and method of administration
* AdministrableProduct.product = Reference(urng:uuid:c7d4fd6d-de2c-404a-9be4-13d9e552ac1b) //Administrable Product Definition 2 - 120 mg

// Instance of Medicinal Product Definition 11 - 120 mg - 240 gastro-resistant tablets in PVC/PVDC-aluminium blister packs
Instance: d1ec4791-2453-4768-b656-d815bf56aff7
InstanceOf: medicinalproductdefinition
Usage: #example
* id = "d1ec4791-2453-4768-b656-d815bf56aff7"
* identifier = "EU/1/17/1201/009"
* type = $spor.ema.europa.eu#100000072062 "Marketing Authorisation" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000072055/terms Scope
* domain = $spor.ema.europa.eu#100000000012 "Human use" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000000004/terms
* version = "1"
* status = "active" //http://hl7.org/fhir/publication-status
* statusdate = "2021-05-17T08:38:00+02:00"
* description = "Skilarence 120 mg Each gastro-resistant tablet contains 120 mg dimethyl fumarate"
* route = $spor.ema.europa.eu#100000073619 "oral use" //https://spor.ema.europa.eu/rmswi/#/lists/100000073345/terms route and method of administration
* indication = $MeSH#9999 "Psoriasis" //ACTION FIND MESH CODE
* legalstatusofsupply = $spor.ema.europa.eu#100000072084 "Medicinal product subject to medical prescription" //https://spor.ema.europa.eu/rmswi/#/lists/100000072051/terms
* additionalmonitoringindicator = "false"
* paediatricuseindicator = "false"
* classification = $whocc.no#L04AX07 "Other immunosuppressants" //http://www.whocc.no/atc ACTION switch from ATC to MedDRA

* marketingstatus.country = $iso:3166-2#eu "european union"
* marketingstatus.jurisdiction = $iso:3166-2#eu "european union"
* marketingstatus.status = $spor.ema.europa.eu#100000072083 "Marketed" //https://spor.ema.europa.eu/rmswi/#/lists/100000072052/terms Marketing Status
* marketingstatus.daterange.period.start = "2021-05-17T08:38:00+02:00"
* marketingstatus.daterange.period.end = ""

* crossreference.ManufacturedItemDefinition = Reference(urn:uuid:b6154e11-fa77-4bdd-99d0-43a5eb03c694) "120 mg tablet" //ACTION extension 
* crossreference.AdministrableProductDefinition = Reference(urn:uuid:c7d4fd6d-de2c-404a-9be4-13d9e552ac1b) "120 mg tablet" //ACTION extension
* crossreference.packagedproductdefinition = Reference(urn:uuid:) "240 gastro-resistant tablets in PVC/PVDC-aluminium blister packs" //ACTION extension

* name.product.name = "skilarence"
* name.type = "proprietary"
* name.product.name = "dimethyl fumarate"
* name.type = "non-proprietary" 
* name.countrylanguage.country = $iso:3166-2#gb "united kingdom"
* name.countrylanguage.language = $iso:639-2#en "english"
* name.countrylanguage.country = $iso:3166-2#no "norway"
* name.countrylanguage.language = $iso:639-2#no "norwegian"

* AdministrableProduct.route = $spor.ema.europa.eu#100000073619 "oral use" //https://spor.ema.europa.eu/rmswi/#/lists/100000073345/terms route and method of administration
* AdministrableProduct.product = Reference(urng:uuid:c7d4fd6d-de2c-404a-9be4-13d9e552ac1b) //Administrable Product Definition 2 - 120 mg

// Instance of Medicinal Product Definition 12 - 120 mg - 300 gastro-resistant tablets in PVC/PVDC-aluminium blister packs
Instance: ba42fdde-dad7-4752-8a5b-b540405a6c21
InstanceOf: medicinalproductdefinition
Usage: #example
* id = "ba42fdde-dad7-4752-8a5b-b540405a6c21"
* identifier = "EU/1/17/1201/012"
* type = $spor.ema.europa.eu#100000072062 "Marketing Authorisation" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000072055/terms Scope
* domain = $spor.ema.europa.eu#100000000012 "Human use" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000000004/terms
* version = "1"
* status = "active" //http://hl7.org/fhir/publication-status
* statusdate = "2021-05-17T08:38:00+02:00"
* description = "Skilarence 120 mg Each gastro-resistant tablet contains 120 mg dimethyl fumarate"
* route = $spor.ema.europa.eu#100000073619 "oral use" //https://spor.ema.europa.eu/rmswi/#/lists/100000073345/terms route and method of administration
* indication = $MeSH#9999 "Psoriasis" //ACTION FIND MESH CODE
* legalstatusofsupply = $spor.ema.europa.eu#100000072084 "Medicinal product subject to medical prescription" //https://spor.ema.europa.eu/rmswi/#/lists/100000072051/terms
* additionalmonitoringindicator = "false"
* paediatricuseindicator = "false"
* classification = $whocc.no#L04AX07 "Other immunosuppressants" //http://www.whocc.no/atc ACTION switch from ATC to MedDRA

* marketingstatus.country = $iso:3166-2#eu "european union"
* marketingstatus.jurisdiction = $iso:3166-2#eu "european union"
* marketingstatus.status = $spor.ema.europa.eu#100000072083 "Marketed" //https://spor.ema.europa.eu/rmswi/#/lists/100000072052/terms Marketing Status
* marketingstatus.daterange.period.start = "2021-05-17T08:38:00+02:00"
* marketingstatus.daterange.period.end = ""

* crossreference.ManufacturedItemDefinition = Reference(urn:uuid:b6154e11-fa77-4bdd-99d0-43a5eb03c694) "120 mg tablet" //ACTION extension 
* crossreference.AdministrableProductDefinition = Reference(urn:uuid:c7d4fd6d-de2c-404a-9be4-13d9e552ac1b) "120 mg tablet" //ACTION extension
* crossreference.packagedproductdefinition = Reference(urn:uuid:) "300 gastro-resistant tablets in PVC/PVDC-aluminium blister packs" //ACTION extension

* name.product.name = "skilarence"
* name.type = "proprietary"
* name.product.name = "dimethyl fumarate"
* name.type = "non-proprietary" 
* name.countrylanguage.country = $iso:3166-2#gb "united kingdom"
* name.countrylanguage.language = $iso:639-2#en "english"
* name.countrylanguage.country = $iso:3166-2#no "norway"
* name.countrylanguage.language = $iso:639-2#no "norwegian"

* AdministrableProduct.route = $spor.ema.europa.eu#100000073619 "oral use" //https://spor.ema.europa.eu/rmswi/#/lists/100000073345/terms route and method of administration
* AdministrableProduct.product = Reference(urng:uuid:c7d4fd6d-de2c-404a-9be4-13d9e552ac1b) //Administrable Product Definition 2 - 120 mg

// Instance of Medicinal Product Definition 13 - 120 mg - 360 gastro-resistant tablets in PVC/PVDC-aluminium blister packs
Instance: 8b518411-2341-4bd8-be2e-028472436409
InstanceOf: medicinalproductdefinition
Usage: #example
* id = "8b518411-2341-4bd8-be2e-028472436409"
* identifier = "EU/1/17/1201/010"
* type = $spor.ema.europa.eu#100000072062 "Marketing Authorisation" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000072055/terms Scope
* domain = $spor.ema.europa.eu#100000000012 "Human use" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000000004/terms
* version = "1"
* status = "active" //http://hl7.org/fhir/publication-status
* statusdate = "2021-05-17T08:38:00+02:00"
* description = "Skilarence 120 mg Each gastro-resistant tablet contains 120 mg dimethyl fumarate"
* route = $spor.ema.europa.eu#100000073619 "oral use" //https://spor.ema.europa.eu/rmswi/#/lists/100000073345/terms route and method of administration
* indication = $MeSH#9999 "Psoriasis" //ACTION FIND MESH CODE
* legalstatusofsupply = $spor.ema.europa.eu#100000072084 "Medicinal product subject to medical prescription" //https://spor.ema.europa.eu/rmswi/#/lists/100000072051/terms
* additionalmonitoringindicator = "false"
* paediatricuseindicator = "false"
* classification = $whocc.no#L04AX07 "Other immunosuppressants" //http://www.whocc.no/atc ACTION switch from ATC to MedDRA

* marketingstatus.country = $iso:3166-2#eu "european union"
* marketingstatus.jurisdiction = $iso:3166-2#eu "european union"
* marketingstatus.status = $spor.ema.europa.eu#100000072083 "Marketed" //https://spor.ema.europa.eu/rmswi/#/lists/100000072052/terms Marketing Status
* marketingstatus.daterange.period.start = "2021-05-17T08:38:00+02:00"
* marketingstatus.daterange.period.end = ""

* crossreference.ManufacturedItemDefinition = Reference(urn:uuid:b6154e11-fa77-4bdd-99d0-43a5eb03c694) "120 mg tablet" //ACTION extension 
* crossreference.AdministrableProductDefinition = Reference(urn:uuid:c7d4fd6d-de2c-404a-9be4-13d9e552ac1b) "120 mg tablet" //ACTION extension
* crossreference.packagedproductdefinition = Reference(urn:uuid:) "360 gastro-resistant tablets in PVC/PVDC-aluminium blister packs" //ACTION extension

* name.product.name = "skilarence"
* name.type = "proprietary"
* name.product.name = "dimethyl fumarate"
* name.type = "non-proprietary" 
* name.countrylanguage.country = $iso:3166-2#gb "united kingdom"
* name.countrylanguage.language = $iso:639-2#en "english"
* name.countrylanguage.country = $iso:3166-2#no "norway"
* name.countrylanguage.language = $iso:639-2#no "norwegian"

* AdministrableProduct.route = $spor.ema.europa.eu#100000073619 "oral use" //https://spor.ema.europa.eu/rmswi/#/lists/100000073345/terms route and method of administration
* AdministrableProduct.product = Reference(urng:uuid:c7d4fd6d-de2c-404a-9be4-13d9e552ac1b) //Administrable Product Definition 2 - 120 mg

// Instance of Medicinal Product Definition 14 - 120 mg - 400 gastro-resistant tablets in PVC/PVDC-aluminium blister packs
Instance: 151fc002-4f6b-4fc6-91d6-44439a3fae8c
InstanceOf: medicinalproductdefinition
Usage: #example
* id = "151fc002-4f6b-4fc6-91d6-44439a3fae8c"
* identifier = "EU/1/17/1201/011"
* type = $spor.ema.europa.eu#100000072062 "Marketing Authorisation" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000072055/terms Scope
* domain = $spor.ema.europa.eu#100000000012 "Human use" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000000004/terms
* version = "1"
* status = "active" //http://hl7.org/fhir/publication-status
* statusdate = "2021-05-17T08:38:00+02:00"
* description = "Skilarence 120 mg Each gastro-resistant tablet contains 120 mg dimethyl fumarate"
* route = $spor.ema.europa.eu#100000073619 "oral use" //https://spor.ema.europa.eu/rmswi/#/lists/100000073345/terms route and method of administration
* indication = $MeSH#9999 "Psoriasis" //ACTION FIND MESH CODE
* legalstatusofsupply = $spor.ema.europa.eu#100000072084 "Medicinal product subject to medical prescription" //https://spor.ema.europa.eu/rmswi/#/lists/100000072051/terms
* additionalmonitoringindicator = "false"
* paediatricuseindicator = "false"
* classification = $whocc.no#L04AX07 "Other immunosuppressants" //http://www.whocc.no/atc ACTION switch from ATC to MedDRA

* marketingstatus.country = $iso:3166-2#eu "european union"
* marketingstatus.jurisdiction = $iso:3166-2#eu "european union"
* marketingstatus.status = $spor.ema.europa.eu#100000072083 "Marketed" //https://spor.ema.europa.eu/rmswi/#/lists/100000072052/terms Marketing Status
* marketingstatus.daterange.period.start = "2021-05-17T08:38:00+02:00"
* marketingstatus.daterange.period.end = ""

* crossreference.ManufacturedItemDefinition = Reference(urn:uuid:b6154e11-fa77-4bdd-99d0-43a5eb03c694) "120 mg tablet" //ACTION extension 
* crossreference.AdministrableProductDefinition = Reference(urn:uuid:c7d4fd6d-de2c-404a-9be4-13d9e552ac1b) "120 mg tablet" //ACTION extension
* crossreference.packagedproductdefinition = Reference(urn:uuid:) "400 gastro-resistant tablets in PVC/PVDC-aluminium blister packs" //ACTION extension

* name.product.name = "skilarence"
* name.type = "proprietary"
* name.product.name = "dimethyl fumarate"
* name.type = "non-proprietary" 
* name.countrylanguage.country = $iso:3166-2#gb "united kingdom"
* name.countrylanguage.language = $iso:639-2#en "english"
* name.countrylanguage.country = $iso:3166-2#no "norway"
* name.countrylanguage.language = $iso:639-2#no "norwegian"

* AdministrableProduct.route = $spor.ema.europa.eu#100000073619 "oral use" //https://spor.ema.europa.eu/rmswi/#/lists/100000073345/terms route and method of administration
* AdministrableProduct.product = Reference(urng:uuid:c7d4fd6d-de2c-404a-9be4-13d9e552ac1b) //Administrable Product Definition 2 - 120 mg

// PACKAGING ===============
// Instance of Packaged Product Definition 1 Skilarence 30 mg - 42 gastro-resistant tablets in PVC/PVDC-aluminium blister packs
Instance: bb2403cc-bb0b-4b1f-b56b-1174d11f6dce
InstanceOf: PackagedProductDefinition
Usage: #example
* id = "bb2403cc-bb0b-4b1f-b56b-1174d11f6dce"
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "EU/1/17/1201/002-42"
* name = "Skilarence 30 mg - 42 gastro-resistant tablets in PVC/PVDC-aluminium blister packs"
* type = $spor.ema.europa.eu#100000155527 "Chemical Medicinal Product" //https://spor.ema.europa.eu/rmswi/#/lists/100000155526/terms Product Category
* packagedfor = Reference(urn:uuid:7cb035bd-145e-4305-8cea-4e7ab0e515f9) "" //manufactured item #1 - 30mg
* status = $publication-status#active //http://hl7.org/fhir/ValueSet/publication-status
* statusdate = "2021-05-17T08:38:00+02:00" 
* containeditemquantity.quantity.value = "42"
* containeditemquantity.quantity.unit = "Blister"
* containeditemquantity.quantity.system = "https://spor.ema.europa.eu/rmswi/#/lists/100000073346/terms" //Packaging
* containeditemquantity.quantity.code = "100000073496"
* description = "Skilarence 30 mg - 42 gastro-resistant tablets in PVC/PVDC-aluminium blister packs"

* legalstatusofsupply.code = $spor.ema.europa.eu#100000072084 "Medicinal product subject to medical prescription" //https://spor.ema.europa.eu/rmswi/#/lists/100000072051/terms Legal Status for the Supply
* legalstatusofsupply.jurisdiction = $iso:3166-2#eu "european union"

* marketingstatus.country = $iso:3166-2#eu "european union"
* marketingstatus.jurisdiction = $iso:3166-2#eu "european union"
* marketingstatus.status = $spor.ema.europa.eu#100000072083 "Marketed" //https://spor.ema.europa.eu/rmswi/#/lists/100000072052/terms Marketing Status
* marketingstatus.daterange.period.start = "2021-05-17T08:38:00+02:00"
* marketingstatus.daterange.period.end = ""

* copackagedindicator = #false
* manufacturer = Reference(urn:uuid:659ba6da-05fc-4335-beb9-a5f3aecec817)"Almirall S.A."

* package.type = $spor.ema.europa.eu#100000073496 "Blister" //https://spor.ema.europa.eu/rmswi/#/lists/100000073346/terms Packaging
* package.quantity = "42"
* package.material = $spor.ema.europa.eu#200000003224 "Non-plasticised PolyVinyl Chloride / Unplasticised PolyVinyl Chloride" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/200000003199/terms Material

* package.shelflifestorage.productshelflife.type = $ncithesaurus.nci.nih.gov#C70855 "Medical Product Shelf Life" //dont have system
* package.shelflifestorage.productshelflife.period.periodduration.value = "3"
* package.shelflifestorage.productshelflife.period.periodduration.code = "a" //year
* package.shelflifestorage.productshelflife.period.periodduration.system = "http://unitsofmeasure.org"
* package.shelflifestorage.productshelflife.period.periodstring = "Store at 20° to 25°C (68° to 77°F); excursions permitted between 15° to 30°C (59° to 86°F) [see USP Controlled Room Temperature]. Protect the capsules from light. Store in original container."

* package.containeditem.item = Reference(urn:uuid:7cb035bd-145e-4305-8cea-4e7ab0e515f9) "" //manufactureditem 30 mg - 42 gastro-resistant tablets in PVC/PVDC-aluminium blister packs
* package.containeditem.amount.quantity.value = "42"
* package.containeditem.amount.quantity.unit = "200000002152"
* package.containeditem.amount.quantity.system = "https://spor.ema.europa.eu/rmswi/#/lists/200000000014/terms" 

// Instance of Packaged Product Definition 2 Skilarence 30 mg - 70 gastro-resistant tablets in PVC/PVDC-aluminium blister packs 
Instance: becfcbab-8916-4308-8af7-afeb043991bb
InstanceOf: PackagedProductDefinition
Usage: #example
* id = "becfcbab-8916-4308-8af7-afeb043991bb"
* identifier = ""
* name = ""
* type = ""
* packagedfor = Reference(urn:uuid:)""
* status.codeableconcept.coding =  ""
* status.codeableconcept.text =  ""
* statusdate = "" 
* containeditemquantity.quantity.value = ""
* containeditemquantity.quantity.unit = ""
* containeditemquantity.quantity.system = ""

* description = ""
* legalstatusofsupply.code.codeableconcept.coding = ""
* legalstatusofsupply.code.codeableconcept.text = ""

* legalstatusofsupply.jurisdiction.codeableconcept.coding = ""
* legalstatusofsupply.jurisdiction.codeableconcept.text = ""

* marketingstatus = ""
* characteristic = ""
* copackagedindicator = "false"
* manufacturer = Reference(urn:uuid:659ba6da-05fc-4335-beb9-a5f3aecec817)"Almirall S.A."
* package.identifier = ""
* package.type = ""
* package.quantity = ""
* package.material = ""
* package.alternatematerial = ""
* package.shelflifestorage = ""


* package.containeditem.item = Reference(urn:uuid:) "" //manufactureditem XX mg
* package.containeditem.amount.quantity.value = ""
* package.containeditem.amount.quantity.unit = ""
* package.containeditem.amount.quantity.system = "" 


// Instance of Packaged Product Definition 3 Skilarence 30 mg - 210 gastro-resistant tablets in PVC/PVDC-aluminium blister packs.
Instance: cfb0b27a-1c1a-47af-888c-529e49628816
InstanceOf: PackagedProductDefinition
Usage: #example
* id = "cfb0b27a-1c1a-47af-888c-529e49628816"
* identifier = ""
* name = ""
* type = ""
* packagedfor = Reference(urn:uuid:)""
* status.codeableconcept.coding =  ""
* status.codeableconcept.text =  ""
* statusdate = "" 
* containeditemquantity.quantity.value = ""
* containeditemquantity.quantity.unit = ""
* containeditemquantity.quantity.system = ""

* description = ""
* legalstatusofsupply.code.codeableconcept.coding = ""
* legalstatusofsupply.code.codeableconcept.text = ""

* legalstatusofsupply.jurisdiction.codeableconcept.coding = ""
* legalstatusofsupply.jurisdiction.codeableconcept.text = ""

* marketingstatus = ""
* characteristic = ""
* copackagedindicator = "false"
* manufacturer = Reference(urn:uuid:659ba6da-05fc-4335-beb9-a5f3aecec817)"Almirall S.A."
* package.identifier = ""
* package.type = ""
* package.quantity = ""
* package.material = ""
* package.alternatematerial = ""
* package.shelflifestorage = ""


* package.containeditem.item = Reference(urn:uuid:) "" //manufactureditem XX mg
* package.containeditem.amount.quantity.value = ""
* package.containeditem.amount.quantity.unit = ""
* package.containeditem.amount.quantity.system = "" 


// Instance of Packaged Product Definition 4 Skilarence 120 mg - 40 gastro-resistant tablets in PVC/PVDC-aluminium blister packs
Instance: 5aaa4371-3372-418e-8e73-3f44931ac24d
InstanceOf: PackagedProductDefinition
Usage: #example
* id = "5aaa4371-3372-418e-8e73-3f44931ac24d"
* identifier = ""
* name = ""
* type = ""
* packagedfor = Reference(urn:uuid:)""
* status.codeableconcept.coding =  ""
* status.codeableconcept.text =  ""
* statusdate = "" 
* containeditemquantity.quantity.value = ""
* containeditemquantity.quantity.unit = ""
* containeditemquantity.quantity.system = ""

* description = ""
* legalstatusofsupply.code.codeableconcept.coding = ""
* legalstatusofsupply.code.codeableconcept.text = ""

* legalstatusofsupply.jurisdiction.codeableconcept.coding = ""
* legalstatusofsupply.jurisdiction.codeableconcept.text = ""

* marketingstatus = ""
* characteristic = ""
* copackagedindicator = "false"
* manufacturer = Reference(urn:uuid:659ba6da-05fc-4335-beb9-a5f3aecec817)"Almirall S.A."
* package.identifier = ""
* package.type = ""
* package.quantity = ""
* package.material = ""
* package.alternatematerial = ""
* package.shelflifestorage = ""


* package.containeditem.item = Reference(urn:uuid:) "" //manufactureditem XX mg
* package.containeditem.amount.quantity.value = ""
* package.containeditem.amount.quantity.unit = ""
* package.containeditem.amount.quantity.system = "" 


// Instance of Packaged Product Definition 5 Skilarence 120 mg - 70 gastro-resistant tablets in PVC/PVDC-aluminium blister packs
Instance: 280d2c81-cba4-4b0c-a475-178d586f89e0
InstanceOf: PackagedProductDefinition
Usage: #example
* id = "280d2c81-cba4-4b0c-a475-178d586f89e0"
* identifier = ""
* name = ""
* type = ""
* packagedfor = Reference(urn:uuid:)""
* status.codeableconcept.coding =  ""
* status.codeableconcept.text =  ""
* statusdate = "" 
* containeditemquantity.quantity.value = ""
* containeditemquantity.quantity.unit = ""
* containeditemquantity.quantity.system = ""

* description = ""
* legalstatusofsupply.code.codeableconcept.coding = ""
* legalstatusofsupply.code.codeableconcept.text = ""

* legalstatusofsupply.jurisdiction.codeableconcept.coding = ""
* legalstatusofsupply.jurisdiction.codeableconcept.text = ""

* marketingstatus = ""
* characteristic = ""
* copackagedindicator = "false"
* manufacturer = Reference(urn:uuid:659ba6da-05fc-4335-beb9-a5f3aecec817)"Almirall S.A."
* package.identifier = ""
* package.type = ""
* package.quantity = ""
* package.material = ""
* package.alternatematerial = ""
* package.shelflifestorage = ""


* package.containeditem.item = Reference(urn:uuid:) "" //manufactureditem XX mg
* package.containeditem.amount.quantity.value = ""
* package.containeditem.amount.quantity.unit = ""
* package.containeditem.amount.quantity.system = "" 


// Instance of Packaged Product Definition 6 Skilarence 120 mg - 90 gastro-resistant tablets in PVC/PVDC-aluminium blister packs
Instance: 12527e12-b213-4adb-857c-51df41036a4e
InstanceOf: PackagedProductDefinition
Usage: #example
* id = "12527e12-b213-4adb-857c-51df41036a4e"
* identifier = ""
* name = ""
* type = ""
* packagedfor = Reference(urn:uuid:)""
* status.codeableconcept.coding =  ""
* status.codeableconcept.text =  ""
* statusdate = "" 
* containeditemquantity.quantity.value = ""
* containeditemquantity.quantity.unit = ""
* containeditemquantity.quantity.system = ""

* description = ""
* legalstatusofsupply.code.codeableconcept.coding = ""
* legalstatusofsupply.code.codeableconcept.text = ""

* legalstatusofsupply.jurisdiction.codeableconcept.coding = ""
* legalstatusofsupply.jurisdiction.codeableconcept.text = ""

* marketingstatus = ""
* characteristic = ""
* copackagedindicator = "false"
* manufacturer = Reference(urn:uuid:659ba6da-05fc-4335-beb9-a5f3aecec817)"Almirall S.A."
* package.identifier = ""
* package.type = ""
* package.quantity = ""
* package.material = ""
* package.alternatematerial = ""
* package.shelflifestorage = ""


* package.containeditem.item = Reference(urn:uuid:) "" //manufactureditem XX mg
* package.containeditem.amount.quantity.value = ""
* package.containeditem.amount.quantity.unit = ""
* package.containeditem.amount.quantity.system = "" 


// Instance of Packaged Product Definition 7 Skilarence 120 mg - 100 gastro-resistant tablets in PVC/PVDC-aluminium blister packs
Instance: 66573f4a-6749-476a-aa39-78793a06ff57
InstanceOf: PackagedProductDefinition
Usage: #example
* id = "66573f4a-6749-476a-aa39-78793a06ff57"
* identifier = ""
* name = ""
* type = ""
* packagedfor = Reference(urn:uuid:)""
* status.codeableconcept.coding =  ""
* status.codeableconcept.text =  ""
* statusdate = "" 
* containeditemquantity.quantity.value = ""
* containeditemquantity.quantity.unit = ""
* containeditemquantity.quantity.system = ""

* description = ""
* legalstatusofsupply.code.codeableconcept.coding = ""
* legalstatusofsupply.code.codeableconcept.text = ""

* legalstatusofsupply.jurisdiction.codeableconcept.coding = ""
* legalstatusofsupply.jurisdiction.codeableconcept.text = ""

* marketingstatus = ""
* characteristic = ""
* copackagedindicator = "false"
* manufacturer = Reference(urn:uuid:659ba6da-05fc-4335-beb9-a5f3aecec817)"Almirall S.A."
* package.identifier = ""
* package.type = ""
* package.quantity = ""
* package.material = ""
* package.alternatematerial = ""
* package.shelflifestorage = ""


* package.containeditem.item = Reference(urn:uuid:) "" //manufactureditem XX mg
* package.containeditem.amount.quantity.value = ""
* package.containeditem.amount.quantity.unit = ""
* package.containeditem.amount.quantity.system = "" 


// Instance of Packaged Product Definition 8 Skilarence 120 mg - 120 gastro-resistant tablets in PVC/PVDC-aluminium blister packs
Instance: 2c5ab1e5-31da-44af-8e30-2328bd54f15d
InstanceOf: PackagedProductDefinition
Usage: #example
* id = "2c5ab1e5-31da-44af-8e30-2328bd54f15d"
* identifier = ""
* name = ""
* type = ""
* packagedfor = Reference(urn:uuid:)""
* status.codeableconcept.coding =  ""
* status.codeableconcept.text =  ""
* statusdate = "" 
* containeditemquantity.quantity.value = ""
* containeditemquantity.quantity.unit = ""
* containeditemquantity.quantity.system = ""

* description = ""
* legalstatusofsupply.code.codeableconcept.coding = ""
* legalstatusofsupply.code.codeableconcept.text = ""

* legalstatusofsupply.jurisdiction.codeableconcept.coding = ""
* legalstatusofsupply.jurisdiction.codeableconcept.text = ""

* marketingstatus = ""
* characteristic = ""
* copackagedindicator = "false"
* manufacturer = Reference(urn:uuid:659ba6da-05fc-4335-beb9-a5f3aecec817)"Almirall S.A."
* package.identifier = ""
* package.type = ""
* package.quantity = ""
* package.material = ""
* package.alternatematerial = ""
* package.shelflifestorage = ""


* package.containeditem.item = Reference(urn:uuid:) "" //manufactureditem XX mg
* package.containeditem.amount.quantity.value = ""
* package.containeditem.amount.quantity.unit = ""
* package.containeditem.amount.quantity.system = "" 


// Instance of Packaged Product Definition 9 Skilarence 120 mg - 180 gastro-resistant tablets in PVC/PVDC-aluminium blister packs
Instance: bb632007-1ebf-453e-afed-7b4d1289353e
InstanceOf: PackagedProductDefinition
Usage: #example
* id = "bb632007-1ebf-453e-afed-7b4d1289353e"
* identifier = ""
* name = ""
* type = ""
* packagedfor = Reference(urn:uuid:)""
* status.codeableconcept.coding =  ""
* status.codeableconcept.text =  ""
* statusdate = "" 
* containeditemquantity.quantity.value = ""
* containeditemquantity.quantity.unit = ""
* containeditemquantity.quantity.system = ""

* description = ""
* legalstatusofsupply.code.codeableconcept.coding = ""
* legalstatusofsupply.code.codeableconcept.text = ""

* legalstatusofsupply.jurisdiction.codeableconcept.coding = ""
* legalstatusofsupply.jurisdiction.codeableconcept.text = ""

* marketingstatus = ""
* characteristic = ""
* copackagedindicator = "false"
* manufacturer = Reference(urn:uuid:659ba6da-05fc-4335-beb9-a5f3aecec817)"Almirall S.A."
* package.identifier = ""
* package.type = ""
* package.quantity = ""
* package.material = ""
* package.alternatematerial = ""
* package.shelflifestorage = ""


* package.containeditem.item = Reference(urn:uuid:) "" //manufactureditem XX mg
* package.containeditem.amount.quantity.value = ""
* package.containeditem.amount.quantity.unit = ""
* package.containeditem.amount.quantity.system = "" 


// Instance of Packaged Product Definition 10 Skilarence 120 mg - 200 gastro-resistant tablets in PVC/PVDC-aluminium blister packs
Instance: 628ecf01-da86-4a14-a4b7-6683448a6d67
InstanceOf: PackagedProductDefinition
Usage: #example
* id = "628ecf01-da86-4a14-a4b7-6683448a6d67"
* identifier = ""
* name = ""
* type = ""
* packagedfor = Reference(urn:uuid:)""
* status.codeableconcept.coding =  ""
* status.codeableconcept.text =  ""
* statusdate = "" 
* containeditemquantity.quantity.value = ""
* containeditemquantity.quantity.unit = ""
* containeditemquantity.quantity.system = ""

* description = ""
* legalstatusofsupply.code.codeableconcept.coding = ""
* legalstatusofsupply.code.codeableconcept.text = ""

* legalstatusofsupply.jurisdiction.codeableconcept.coding = ""
* legalstatusofsupply.jurisdiction.codeableconcept.text = ""

* marketingstatus = ""
* characteristic = ""
* copackagedindicator = "false"
* manufacturer = Reference(urn:uuid:659ba6da-05fc-4335-beb9-a5f3aecec817)"Almirall S.A."
* package.identifier = ""
* package.type = ""
* package.quantity = ""
* package.material = ""
* package.alternatematerial = ""
* package.shelflifestorage = ""


* package.containeditem.item = Reference(urn:uuid:) "" //manufactureditem XX mg
* package.containeditem.amount.quantity.value = ""
* package.containeditem.amount.quantity.unit = ""
* package.containeditem.amount.quantity.system = "" 


// Instance of Packaged Product Definition 11 Skilarence 120 mg - 240 gastro-resistant tablets in PVC/PVDC-aluminium blister packs
Instance: 09245341-270b-4435-b9aa-141626e33557
InstanceOf: PackagedProductDefinition
Usage: #example
* id = "09245341-270b-4435-b9aa-141626e33557"
* identifier = ""
* name = ""
* type = ""
* packagedfor = Reference(urn:uuid:)""
* status.codeableconcept.coding =  ""
* status.codeableconcept.text =  ""
* statusdate = "" 
* containeditemquantity.quantity.value = ""
* containeditemquantity.quantity.unit = ""
* containeditemquantity.quantity.system = ""

* description = ""
* legalstatusofsupply.code.codeableconcept.coding = ""
* legalstatusofsupply.code.codeableconcept.text = ""

* legalstatusofsupply.jurisdiction.codeableconcept.coding = ""
* legalstatusofsupply.jurisdiction.codeableconcept.text = ""

* marketingstatus = ""
* characteristic = ""
* copackagedindicator = "false"
* manufacturer = Reference(urn:uuid:659ba6da-05fc-4335-beb9-a5f3aecec817)"Almirall S.A."
* package.identifier = ""
* package.type = ""
* package.quantity = ""
* package.material = ""
* package.alternatematerial = ""
* package.shelflifestorage = ""


* package.containeditem.item = Reference(urn:uuid:) "" //manufactureditem XX mg
* package.containeditem.amount.quantity.value = ""
* package.containeditem.amount.quantity.unit = ""
* package.containeditem.amount.quantity.system = "" 


// Instance of Packaged Product Definition 12 Skilarence 120 mg - 300 gastro-resistant tablets in PVC/PVDC-aluminium blister packs
Instance: ade94e86-3af6-4885-ba23-d747c2e620f8
InstanceOf: PackagedProductDefinition
Usage: #example
* id = "ade94e86-3af6-4885-ba23-d747c2e620f8"
* identifier = ""
* name = ""
* type = ""
* packagedfor = Reference(urn:uuid:)""
* status.codeableconcept.coding =  ""
* status.codeableconcept.text =  ""
* statusdate = "" 
* containeditemquantity.quantity.value = ""
* containeditemquantity.quantity.unit = ""
* containeditemquantity.quantity.system = ""

* description = ""
* legalstatusofsupply.code.codeableconcept.coding = ""
* legalstatusofsupply.code.codeableconcept.text = ""

* legalstatusofsupply.jurisdiction.codeableconcept.coding = ""
* legalstatusofsupply.jurisdiction.codeableconcept.text = ""

* marketingstatus = ""
* characteristic = ""
* copackagedindicator = "false"
* manufacturer = Reference(urn:uuid:659ba6da-05fc-4335-beb9-a5f3aecec817)"Almirall S.A."
* package.identifier = ""
* package.type = ""
* package.quantity = ""
* package.material = ""
* package.alternatematerial = ""
* package.shelflifestorage = ""


* package.containeditem.item = Reference(urn:uuid:) "" //manufactureditem XX mg
* package.containeditem.amount.quantity.value = ""
* package.containeditem.amount.quantity.unit = ""
* package.containeditem.amount.quantity.system = "" 


// Instance of Packaged Product Definition 13 Skilarence 120 mg - 360 gastro-resistant tablets in PVC/PVDC-aluminium blister packs
Instance: 6316049b-b50f-40a9-aeae-05e865f427bc
InstanceOf: PackagedProductDefinition
Usage: #example
* id = "6316049b-b50f-40a9-aeae-05e865f427bc"
* identifier = ""
* name = ""
* type = ""
* packagedfor = Reference(urn:uuid:)""
* status.codeableconcept.coding =  ""
* status.codeableconcept.text =  ""
* statusdate = "" 
* containeditemquantity.quantity.value = ""
* containeditemquantity.quantity.unit = ""
* containeditemquantity.quantity.system = ""

* description = ""
* legalstatusofsupply.code.codeableconcept.coding = ""
* legalstatusofsupply.code.codeableconcept.text = ""

* legalstatusofsupply.jurisdiction.codeableconcept.coding = ""
* legalstatusofsupply.jurisdiction.codeableconcept.text = ""

* marketingstatus = ""
* characteristic = ""
* copackagedindicator = "false"
* manufacturer = Reference(urn:uuid:659ba6da-05fc-4335-beb9-a5f3aecec817)"Almirall S.A."
* package.identifier = ""
* package.type = ""
* package.quantity = ""
* package.material = ""
* package.alternatematerial = ""
* package.shelflifestorage = ""


* package.containeditem.item = Reference(urn:uuid:) "" //manufactureditem XX mg
* package.containeditem.amount.quantity.value = ""
* package.containeditem.amount.quantity.unit = ""
* package.containeditem.amount.quantity.system = "" 


// Instance of Packaged Product Definition 14 Skilarence 120 mg - 400 gastro-resistant tablets in PVC/PVDC-aluminium blister packs
Instance: 7bc41a43-b23e-4d3c-b9ac-edf6871cc4e7
InstanceOf: PackagedProductDefinition
Usage: #example
* id = "7bc41a43-b23e-4d3c-b9ac-edf6871cc4e7"
* identifier = ""
* name = ""
* type = ""
* packagedfor = Reference(urn:uuid:)""
* status.codeableconcept.coding =  ""
* status.codeableconcept.text =  ""
* statusdate = "" 
* containeditemquantity.quantity.value = ""
* containeditemquantity.quantity.unit = ""
* containeditemquantity.quantity.system = ""

* description = ""
* legalstatusofsupply.code.codeableconcept.coding = ""
* legalstatusofsupply.code.codeableconcept.text = ""

* legalstatusofsupply.jurisdiction.codeableconcept.coding = ""
* legalstatusofsupply.jurisdiction.codeableconcept.text = ""

* marketingstatus = ""
* characteristic = ""
* copackagedindicator = "false"
* manufacturer = Reference(urn:uuid:659ba6da-05fc-4335-beb9-a5f3aecec817)"Almirall S.A."
* package.identifier = ""
* package.type = ""
* package.quantity = ""
* package.material = ""
* package.alternatematerial = ""
* package.shelflifestorage = ""

* package.containeditem.item = Reference(urn:uuid:) "" //manufactureditem XX mg
* package.containeditem.amount.quantity.value = ""
* package.containeditem.amount.quantity.unit = ""
* package.containeditem.amount.quantity.system = "" 

// Instance of Administrable Product Definition 1 - 30 mg
Instance: 1969dd8c-91ec-497b-a8f8-808346cc22d0
InstanceOf: AdministrableProductDefinition
Usage: #example
* id = "1969dd8c-91ec-497b-a8f8-808346cc22d0"
* identifier = "PHPID-30"
* administrabledoseform = $spor.ema.europa.eu#200000002102 "Tablet" //https://spor.ema.europa.eu/rmswi/#/lists/200000000009/terms basic dosage form
* ManufacturedItemDefinition = Reference(urn:uuid:7cb035bd-145e-4305-8cea-4e7ab0e515f9) "30 mg tablet"
* unitofpresentation = $spor.ema.europa.eu#200000002152 "Tablet" //https://spor.ema.europa.eu/rmswi/#/lists/200000000014/terms unit of presentation
* producedfrom = Reference(urn:uuid:7cb035bd-145e-4305-8cea-4e7ab0e515f9) //manufactured item #1 - 30mg 
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

* characteristic.system = $ncithesaurus#9999 "shape" //http://ncithesaurus-stage.nci.nih.gov
* characteristic.code = "C48348"
* characteristic.display = "ROUND"

* characteristic.display = "diameter of approximately 6.8 mm" //size

* characteristic.system = $ncithesaurus#9999 "color" //http://ncithesaurus-stage.nci.nih.gov
* characteristic.code = "C48325"
* characteristic.display = "white"

*routeofadministration.code = $spor.ema.europa.eu#100000073619 "oral use" //https://spor.ema.europa.eu/rmswi/#/lists/100000073345/terms route and method of administration

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

// Instance of Manufactured Item Definition - 30 mg tablet
Instance: 7cb035bd-145e-4305-8cea-4e7ab0e515f9
InstanceOf: ManufacturedItemDefinition
Usage: #example
* id = "7cb035bd-145e-4305-8cea-4e7ab0e515f9"
* identifier = "MAN-30"
* status = "active"
* manufactureddoseform = $spor.ema.europa.eu#200000002102 "Tablet" //https://spor.ema.europa.eu/rmswi/#/lists/200000000009/terms basic dosage form
* unitofpresentation = $spor.ema.europa.eu#200000002152 "Tablet" //https://spor.ema.europa.eu/rmswi/#/lists/200000000014/terms unit of presentation
* manufacturer = Reference(urn:uuid:659ba6da-05fc-4335-beb9-a5f3aecec817) "Almirall S.A."
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

* characteristic.system = $ncithesaurus#9999 "shape" //http://ncithesaurus-stage.nci.nih.gov
* characteristic.code = "C48348"
* characteristic.display = "ROUND"

* characteristic.display = "diameter of approximately 6.8 mm" //size

* characteristic.system = $ncithesaurus#9999 "color" //http://ncithesaurus-stage.nci.nih.gov
* characteristic.code = "C48325"
* characteristic.display = "white"

// Instance of Manufactured Item Definition - 120 mg tablet
Instance: b6154e11-fa77-4bdd-99d0-43a5eb03c694
InstanceOf: ManufacturedItemDefinition
Usage: #example
* id = "b6154e11-fa77-4bdd-99d0-43a5eb03c694"
* identifier = "MAN-120"
* manufactureddoseform = $spor.ema.europa.eu#200000002102 "Tablet" //https://spor.ema.europa.eu/rmswi/#/lists/200000000009/terms basic dosage form
* unitofpresentation = $spor.ema.europa.eu#200000002152 "Tablet" //https://spor.ema.europa.eu/rmswi/#/lists/200000000014/terms unit of presentation
* manufacturer = Reference(urn:uuid:659ba6da-05fc-4335-beb9-a5f3aecec817) "Almirall S.A."
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

// Instance of Ingredient 1 - active 30mg
Instance: 15f5287a-30eb-4128-a0bd-4bf2938eb57a
InstanceOf: ingredient
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
InstanceOf: ingredient
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
InstanceOf: ingredient
Usage: #example
* id = "6dfa75f1-8cb4-4ff0-b4a5-ffcf13b5cebe"
* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/home"
* identifier.value = "EWQ57Q8I5X" //G-SRS UNII 
* role = $spor.ema.europa.eu#100000072082 "excipient"
* description = "Lactose monohydrate"
* allergenicindicator = "true"

// Instance of Ingredient 4 - Cellulose microcrystalline  
Instance: 1969dd8c-91ec-497b-a8f8-808346cc22d0
InstanceOf: ingredient
Usage: #example
* id = "1969dd8c-91ec-497b-a8f8-808346cc22d0"
* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/home"
* identifier.value = "OP1R32D61U" //G-SRS UNII 
* role = $spor.ema.europa.eu#100000072082 "excipient"
* description = "Cellulose microcrystalline"
* allergenicindicator = "false"

// Instance of Ingredient 5 - Croscarmellose sodium 
Instance: 6ba108fe-dae1-4997-80c2-4c63c7362b32
InstanceOf: ingredient
Usage: #example
* id = "6ba108fe-dae1-4997-80c2-4c63c7362b32"
* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/home"
* identifier.value = "M28OL1HH48" //G-SRS UNII 
* role = $spor.ema.europa.eu#100000072082 "excipient"
* description = "Croscarmellose sodium"
* allergenicindicator = "false"

// Instance of Ingredient 6 - Colloidal anhydrous silica 
Instance: 1685c199-1e59-4a7d-af41-6737eb5a8c1b
InstanceOf: ingredient
Usage: #example
* id = "1685c199-1e59-4a7d-af41-6737eb5a8c1b"
* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/home"
* identifier.value = "ETJ7Z6XBU4" //G-SRS UNII 
* role = $spor.ema.europa.eu#100000072082 "excipient"
* description = "Colloidal anhydrous silica"
* allergenicindicator = "false"

// Instance of Ingredient 7 -  Magnesium stearate 
Instance: 3ec0406d-217d-4cff-a05d-ed0d817542ed
InstanceOf: ingredient
Usage: #example
* id = "3ec0406d-217d-4cff-a05d-ed0d817542ed"
* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/home"
* identifier.value = "70097M6I30" //G-SRS UNII 
* role = $spor.ema.europa.eu#100000072082 "excipient"
* description = "Magnesium stearate"
* allergenicindicator = "false"

// Instance of Ingredient 8 -  Methacrylic acid-ethyl acrylate copolymer (1:1) 
Instance: 8b48299a-4cc1-4178-8b9b-7d1d3fa902f7
InstanceOf: ingredient
Usage: #example
* id = "8b48299a-4cc1-4178-8b9b-7d1d3fa902f7"
* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/home"
* identifier.value = "NX76LV5T8J" //G-SRS UNII 
* role = $spor.ema.europa.eu#100000072082 "excipient"
* description = "Methacrylic acid-ethyl acrylate copolymer (1:1)"
* allergenicindicator = "false"

// Instance of Ingredient 9 -  Talc
Instance: 331f6234-4bac-40b3-93dd-c98aa1dd3e03
InstanceOf: ingredient
Usage: #example
* id = "331f6234-4bac-40b3-93dd-c98aa1dd3e03"
* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/home"
* identifier.value = "7SEV7J4R1U" //G-SRS UNII 
* role = $spor.ema.europa.eu#100000072082 "excipient"
* description = "Talc"
* allergenicindicator = "false"

// Instance of Ingredient 10 - Triethyl citrate	
Instance: fc06daeb-500a-4c9d-a16e-8db36a8ab32f
InstanceOf: ingredient
Usage: #example
* id = "fc06daeb-500a-4c9d-a16e-8db36a8ab32f"
* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/home"
* identifier.value = "8Z96QXD6UM" //G-SRS UNII 
* role = $spor.ema.europa.eu#100000072082 "excipient"
* description = "Triethyl citrate"
* allergenicindicator = "false"

// Instance of Ingredient 11 -  Titanium dioxide (E171) 
Instance: 8cac85ae-061b-489c-a707-e23fc94981ba
InstanceOf: ingredient
Usage: #example
* id = "8cac85ae-061b-489c-a707-e23fc94981ba"
* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/home"
* identifier.value = "15FIX9V2JP" //G-SRS UNII 
* role = $spor.ema.europa.eu#100000072082 "excipient"
* description = "Titanium dioxide (E171)"
* allergenicindicator = "false"

// Instance of Ingredient 12 - Simethicone 
Instance: cfd7b82f-7a6c-4e3b-ae59-deeb69570402
InstanceOf: ingredient
Usage: #example
* id = "cfd7b82f-7a6c-4e3b-ae59-deeb69570402"
* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/home"
* identifier.value = "83D19O7250" //G-SRS UNII 
* role = $spor.ema.europa.eu#100000072082 "excipient"
* description = "Simethicone"
* allergenicindicator = "false"

// Instance of Ingredient 13 -  Indigo carmine (E132) 
Instance: b4568b7e-675f-4824-8b77-996aeb0b05b4
InstanceOf: ingredient
Usage: #example
* id = "b4568b7e-675f-4824-8b77-996aeb0b05b4"
* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/home"
* identifier.value = "D3741U8K7L" //G-SRS UNII 
* role = $spor.ema.europa.eu#100000072082 "excipient"
* description = "Indigo carmine (E132)"
* allergenicindicator = "false"

// Instance of Ingredient 14 - Sodium hydroxide
Instance: a6757f15-1d58-4361-a0f1-d28a63b3b0fc
InstanceOf: ingredient
Usage: #example
* id = "a6757f15-1d58-4361-a0f1-d28a63b3b0fc"
* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/home"
* identifier.value = "55X04QC32I" //G-SRS UNII 
* role = $spor.ema.europa.eu#100000072082 "excipient"
* description = "Sodium hydroxide"
* allergenicindicator = "false"

// Instance of Clinical Use definition - Indication
Instance: 369b031a-8c6e-4513-a327-8a2cb5f32993
InstanceOf: clinicalusedefinition
Usage: #example
* id = "369b031a-8c6e-4513-a327-8a2cb5f32993"
* type = #indication
* subject = Reference(urn:uuid:9cda1cb4-c543-40ef-849b-3b802b5e6f9e) // Medicinal Product 1 - EU/1/17/1201/002 40 - 120 mg
* subject = Reference(urn:uuid:9cda1cb4-c543-40ef-849b-3b802b5e6f9e) // Medicinal Product 1 - EU/1/17/1201/002 40 - 120 mg
* subject = Reference(urn:uuid:82b01a8c-2e70-4410-b8d6-8b71efcc63f4) // Medicinal Product 2 - EU/1/17/1201/003 70 - 120 mg
* subject = Reference(urn:uuid:e13c01a2-6265-4044-a86f-225cc087574d) // Medicinal Product 3 - EU/1/17/1201/004 90 - 120 mg
* subject = Reference(urn:uuid:9ebeecf6-fe0f-41da-bd8c-1791b4659aca) // Medicinal Product 4 - EU/1/17/1201/005 100 - 120 mg
* subject = Reference(urn:uuid:9b5512d5-970b-4978-8f8d-bcd74d5006f2) // Medicinal Product 5 - EU/1/17/1201/006 120 - 120 mg
* subject = Reference(urn:uuid:7ac36d6e-1ba5-4d13-a763-3ed966b26892) // Medicinal Product 6 - EU/1/17/1201/007 180 - 120 mg
* subject = Reference(urn:uuid:cf9e3d56-22ad-48ba-9cb1-cae88fd267c3) // Medicinal Product 7 - EU/1/17/1201/008 200 - 120 mg
* subject = Reference(urn:uuid:bb8caa68-9197-460b-b395-cba1fca019d0) // Medicinal Product 8 - EU/1/17/1201/009 240 - 120 mg
* subject = Reference(urn:uuid:a32302f5-b1d1-401b-a60f-7526a2a31e4e) // Medicinal Product 9 - EU/1/17/1201/012 300 - 120 mg
* subject = Reference(urn:uuid:89682f30-47ca-45df-a691-ffcc9af64fc2) // Medicinal Product 10 - EU/1/17/1201/010 360 - 120 mg
* subject = Reference(urn:uuid:d1ec4791-2453-4768-b656-d815bf56aff7) // Medicinal Product 11 - EU/1/17/1201/011 400 - 120 mg
* subject = Reference(urn:uuid:ba42fdde-dad7-4752-8a5b-b540405a6c21) // Medicinal Product 12 - EU/1/17/1201/001 42 - 30 mg
* subject = Reference(urn:uuid:8b518411-2341-4bd8-be2e-028472436409) // Medicinal Product 13 - EU/1/17/1201/013 70 - 30 mg
* subject = Reference(urn:uuid:151fc002-4f6b-4fc6-91d6-44439a3fae8c) // Medicinal Product 14 - EU/1/17/1201/014 210 - 30 mg

* status = #current
* indication.diseasesymptomprocedure.codeablereference.concept = $spor.ema.europa.eu#100000018190 "Psoriasis" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000000006/terms Medical Dictionary For Regulatory Activities (MedDRA)

// Instance of Clinical Use Definition - Contraindication 1 - Gastrointestinal disorders
Instance: dd37ac2f-f8bd-4b55-93ec-c5412809d270
InstanceOf: clinicalusedefinition
Usage: #example
* id = "dd37ac2f-f8bd-4b55-93ec-c5412809d270"
* type = #contraindication
* subject = Reference(urn:uuid:9cda1cb4-c543-40ef-849b-3b802b5e6f9e) // Medicinal Product 1 - EU/1/17/1201/002 40 - 120 mg
* subject = Reference(urn:uuid:9cda1cb4-c543-40ef-849b-3b802b5e6f9e) // Medicinal Product 1 - EU/1/17/1201/002 40 - 120 mg
* subject = Reference(urn:uuid:82b01a8c-2e70-4410-b8d6-8b71efcc63f4) // Medicinal Product 2 - EU/1/17/1201/003 70 - 120 mg
* subject = Reference(urn:uuid:e13c01a2-6265-4044-a86f-225cc087574d) // Medicinal Product 3 - EU/1/17/1201/004 90 - 120 mg
* subject = Reference(urn:uuid:9ebeecf6-fe0f-41da-bd8c-1791b4659aca) // Medicinal Product 4 - EU/1/17/1201/005 100 - 120 mg
* subject = Reference(urn:uuid:9b5512d5-970b-4978-8f8d-bcd74d5006f2) // Medicinal Product 5 - EU/1/17/1201/006 120 - 120 mg
* subject = Reference(urn:uuid:7ac36d6e-1ba5-4d13-a763-3ed966b26892) // Medicinal Product 6 - EU/1/17/1201/007 180 - 120 mg
* subject = Reference(urn:uuid:cf9e3d56-22ad-48ba-9cb1-cae88fd267c3) // Medicinal Product 7 - EU/1/17/1201/008 200 - 120 mg
* subject = Reference(urn:uuid:bb8caa68-9197-460b-b395-cba1fca019d0) // Medicinal Product 8 - EU/1/17/1201/009 240 - 120 mg
* subject = Reference(urn:uuid:a32302f5-b1d1-401b-a60f-7526a2a31e4e) // Medicinal Product 9 - EU/1/17/1201/012 300 - 120 mg
* subject = Reference(urn:uuid:89682f30-47ca-45df-a691-ffcc9af64fc2) // Medicinal Product 10 - EU/1/17/1201/010 360 - 120 mg
* subject = Reference(urn:uuid:d1ec4791-2453-4768-b656-d815bf56aff7) // Medicinal Product 11 - EU/1/17/1201/011 400 - 120 mg
* subject = Reference(urn:uuid:ba42fdde-dad7-4752-8a5b-b540405a6c21) // Medicinal Product 12 - EU/1/17/1201/001 42 - 30 mg
* subject = Reference(urn:uuid:8b518411-2341-4bd8-be2e-028472436409) // Medicinal Product 13 - EU/1/17/1201/013 70 - 30 mg
* subject = Reference(urn:uuid:151fc002-4f6b-4fc6-91d6-44439a3fae8c) // Medicinal Product 14 - EU/1/17/1201/014 210 - 30 mg

* status = #current
* contraindication.diseasesymptomprocedure.codeablereference.concept = $spor.ema.europa.eu#100000004856 "Gastrointestinal disorders" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000000006/terms Medical Dictionary For Regulatory Activities (MedDRA)
* contraindication.indication = Reference(urn:uuid:369b031a-8c6e-4513-a327-8a2cb5f32993) "Psoriasis"

// Instance of Clinical Use Definition - Contraindication 2 - Hypersensitivity reaction
Instance: 
InstanceOf: clinicalusedefinition
Usage: #example
* id = ""
* type = #contraindication
* subject = Reference(urn:uuid:9cda1cb4-c543-40ef-849b-3b802b5e6f9e) // Medicinal Product 1 - EU/1/17/1201/002 40 - 120 mg
* subject = Reference(urn:uuid:9cda1cb4-c543-40ef-849b-3b802b5e6f9e) // Medicinal Product 1 - EU/1/17/1201/002 40 - 120 mg
* subject = Reference(urn:uuid:82b01a8c-2e70-4410-b8d6-8b71efcc63f4) // Medicinal Product 2 - EU/1/17/1201/003 70 - 120 mg
* subject = Reference(urn:uuid:e13c01a2-6265-4044-a86f-225cc087574d) // Medicinal Product 3 - EU/1/17/1201/004 90 - 120 mg
* subject = Reference(urn:uuid:9ebeecf6-fe0f-41da-bd8c-1791b4659aca) // Medicinal Product 4 - EU/1/17/1201/005 100 - 120 mg
* subject = Reference(urn:uuid:9b5512d5-970b-4978-8f8d-bcd74d5006f2) // Medicinal Product 5 - EU/1/17/1201/006 120 - 120 mg
* subject = Reference(urn:uuid:7ac36d6e-1ba5-4d13-a763-3ed966b26892) // Medicinal Product 6 - EU/1/17/1201/007 180 - 120 mg
* subject = Reference(urn:uuid:cf9e3d56-22ad-48ba-9cb1-cae88fd267c3) // Medicinal Product 7 - EU/1/17/1201/008 200 - 120 mg
* subject = Reference(urn:uuid:bb8caa68-9197-460b-b395-cba1fca019d0) // Medicinal Product 8 - EU/1/17/1201/009 240 - 120 mg
* subject = Reference(urn:uuid:a32302f5-b1d1-401b-a60f-7526a2a31e4e) // Medicinal Product 9 - EU/1/17/1201/012 300 - 120 mg
* subject = Reference(urn:uuid:89682f30-47ca-45df-a691-ffcc9af64fc2) // Medicinal Product 10 - EU/1/17/1201/010 360 - 120 mg
* subject = Reference(urn:uuid:d1ec4791-2453-4768-b656-d815bf56aff7) // Medicinal Product 11 - EU/1/17/1201/011 400 - 120 mg
* subject = Reference(urn:uuid:ba42fdde-dad7-4752-8a5b-b540405a6c21) // Medicinal Product 12 - EU/1/17/1201/001 42 - 30 mg
* subject = Reference(urn:uuid:8b518411-2341-4bd8-be2e-028472436409) // Medicinal Product 13 - EU/1/17/1201/013 70 - 30 mg
* subject = Reference(urn:uuid:151fc002-4f6b-4fc6-91d6-44439a3fae8c) // Medicinal Product 14 - EU/1/17/1201/014 210 - 30 mg

* status = #current
* contraindication.diseasesymptomprocedure.codeablereference.concept = $spor.ema.europa.eu#100000035148 "Hypersensitivity reaction" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000000006/terms Medical Dictionary For Regulatory Activities (MedDRA)
* contraindication.indication = Reference(urn:uuid:369b031a-8c6e-4513-a327-8a2cb5f32993) "Psoriasis"

// Instance of Clinical Use Definition - Contraindication 3 - Hepatic impairment
Instance: 44c7d6db-1679-4fad-9430-e67456290b9b
InstanceOf: clinicalusedefinition
Usage: #example
* id = "44c7d6db-1679-4fad-9430-e67456290b9b"
* type = #contraindication
* subject = Reference(urn:uuid:9cda1cb4-c543-40ef-849b-3b802b5e6f9e) // Medicinal Product 1 - EU/1/17/1201/002 40 - 120 mg
* subject = Reference(urn:uuid:9cda1cb4-c543-40ef-849b-3b802b5e6f9e) // Medicinal Product 1 - EU/1/17/1201/002 40 - 120 mg
* subject = Reference(urn:uuid:82b01a8c-2e70-4410-b8d6-8b71efcc63f4) // Medicinal Product 2 - EU/1/17/1201/003 70 - 120 mg
* subject = Reference(urn:uuid:e13c01a2-6265-4044-a86f-225cc087574d) // Medicinal Product 3 - EU/1/17/1201/004 90 - 120 mg
* subject = Reference(urn:uuid:9ebeecf6-fe0f-41da-bd8c-1791b4659aca) // Medicinal Product 4 - EU/1/17/1201/005 100 - 120 mg
* subject = Reference(urn:uuid:9b5512d5-970b-4978-8f8d-bcd74d5006f2) // Medicinal Product 5 - EU/1/17/1201/006 120 - 120 mg
* subject = Reference(urn:uuid:7ac36d6e-1ba5-4d13-a763-3ed966b26892) // Medicinal Product 6 - EU/1/17/1201/007 180 - 120 mg
* subject = Reference(urn:uuid:cf9e3d56-22ad-48ba-9cb1-cae88fd267c3) // Medicinal Product 7 - EU/1/17/1201/008 200 - 120 mg
* subject = Reference(urn:uuid:bb8caa68-9197-460b-b395-cba1fca019d0) // Medicinal Product 8 - EU/1/17/1201/009 240 - 120 mg
* subject = Reference(urn:uuid:a32302f5-b1d1-401b-a60f-7526a2a31e4e) // Medicinal Product 9 - EU/1/17/1201/012 300 - 120 mg
* subject = Reference(urn:uuid:89682f30-47ca-45df-a691-ffcc9af64fc2) // Medicinal Product 10 - EU/1/17/1201/010 360 - 120 mg
* subject = Reference(urn:uuid:d1ec4791-2453-4768-b656-d815bf56aff7) // Medicinal Product 11 - EU/1/17/1201/011 400 - 120 mg
* subject = Reference(urn:uuid:ba42fdde-dad7-4752-8a5b-b540405a6c21) // Medicinal Product 12 - EU/1/17/1201/001 42 - 30 mg
* subject = Reference(urn:uuid:8b518411-2341-4bd8-be2e-028472436409) // Medicinal Product 13 - EU/1/17/1201/013 70 - 30 mg
* subject = Reference(urn:uuid:151fc002-4f6b-4fc6-91d6-44439a3fae8c) // Medicinal Product 14 - EU/1/17/1201/014 210 - 30 mg

* status = #current
* contraindication.diseasesymptomprocedure.codeablereference.concept = $spor.ema.europa.eu#100000063926 "Hepatic impairment" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000000006/terms Medical Dictionary For Regulatory Activities (MedDRA)
* contraindication.indication = Reference(urn:uuid:369b031a-8c6e-4513-a327-8a2cb5f32993) "Psoriasis"

// Instance of Clinical Use Definition - Contraindication 4 - Renal impairment
Instance: ffc9aa60-2a81-4c1f-8534-ba4bcdb2e7d3
InstanceOf: clinicalusedefinition
Usage: #example
* id = "ffc9aa60-2a81-4c1f-8534-ba4bcdb2e7d3"
* type = #contraindication
* subject = Reference(urn:uuid:9cda1cb4-c543-40ef-849b-3b802b5e6f9e) // Medicinal Product 1 - EU/1/17/1201/002 40 - 120 mg
* subject = Reference(urn:uuid:9cda1cb4-c543-40ef-849b-3b802b5e6f9e) // Medicinal Product 1 - EU/1/17/1201/002 40 - 120 mg
* subject = Reference(urn:uuid:82b01a8c-2e70-4410-b8d6-8b71efcc63f4) // Medicinal Product 2 - EU/1/17/1201/003 70 - 120 mg
* subject = Reference(urn:uuid:e13c01a2-6265-4044-a86f-225cc087574d) // Medicinal Product 3 - EU/1/17/1201/004 90 - 120 mg
* subject = Reference(urn:uuid:9ebeecf6-fe0f-41da-bd8c-1791b4659aca) // Medicinal Product 4 - EU/1/17/1201/005 100 - 120 mg
* subject = Reference(urn:uuid:9b5512d5-970b-4978-8f8d-bcd74d5006f2) // Medicinal Product 5 - EU/1/17/1201/006 120 - 120 mg
* subject = Reference(urn:uuid:7ac36d6e-1ba5-4d13-a763-3ed966b26892) // Medicinal Product 6 - EU/1/17/1201/007 180 - 120 mg
* subject = Reference(urn:uuid:cf9e3d56-22ad-48ba-9cb1-cae88fd267c3) // Medicinal Product 7 - EU/1/17/1201/008 200 - 120 mg
* subject = Reference(urn:uuid:bb8caa68-9197-460b-b395-cba1fca019d0) // Medicinal Product 8 - EU/1/17/1201/009 240 - 120 mg
* subject = Reference(urn:uuid:a32302f5-b1d1-401b-a60f-7526a2a31e4e) // Medicinal Product 9 - EU/1/17/1201/012 300 - 120 mg
* subject = Reference(urn:uuid:89682f30-47ca-45df-a691-ffcc9af64fc2) // Medicinal Product 10 - EU/1/17/1201/010 360 - 120 mg
* subject = Reference(urn:uuid:d1ec4791-2453-4768-b656-d815bf56aff7) // Medicinal Product 11 - EU/1/17/1201/011 400 - 120 mg
* subject = Reference(urn:uuid:ba42fdde-dad7-4752-8a5b-b540405a6c21) // Medicinal Product 12 - EU/1/17/1201/001 42 - 30 mg
* subject = Reference(urn:uuid:8b518411-2341-4bd8-be2e-028472436409) // Medicinal Product 13 - EU/1/17/1201/013 70 - 30 mg
* subject = Reference(urn:uuid:151fc002-4f6b-4fc6-91d6-44439a3fae8c) // Medicinal Product 14 - EU/1/17/1201/014 210 - 30 mg

* status = #current
* contraindication.diseasesymptomprocedure.codeablereference.concept = $spor.ema.europa.eu#100000017614 "Renal impairment" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000000006/terms Medical Dictionary For Regulatory Activities (MedDRA)
* contraindication.indication = Reference(urn:uuid:369b031a-8c6e-4513-a327-8a2cb5f32993) "Psoriasis"

// Instance of Clinical Use Definition - Contraindication 5 - Pregnancy
Instance: 6af34d35-de0c-45f4-b6e2-db35fe8893d8
InstanceOf: clinicalusedefinition
Usage: #example
* id = "6af34d35-de0c-45f4-b6e2-db35fe8893d8"
* type = #contraindication
* subject = Reference(urn:uuid:9cda1cb4-c543-40ef-849b-3b802b5e6f9e) // Medicinal Product 1 - EU/1/17/1201/002 40 - 120 mg
* subject = Reference(urn:uuid:9cda1cb4-c543-40ef-849b-3b802b5e6f9e) // Medicinal Product 1 - EU/1/17/1201/002 40 - 120 mg
* subject = Reference(urn:uuid:82b01a8c-2e70-4410-b8d6-8b71efcc63f4) // Medicinal Product 2 - EU/1/17/1201/003 70 - 120 mg
* subject = Reference(urn:uuid:e13c01a2-6265-4044-a86f-225cc087574d) // Medicinal Product 3 - EU/1/17/1201/004 90 - 120 mg
* subject = Reference(urn:uuid:9ebeecf6-fe0f-41da-bd8c-1791b4659aca) // Medicinal Product 4 - EU/1/17/1201/005 100 - 120 mg
* subject = Reference(urn:uuid:9b5512d5-970b-4978-8f8d-bcd74d5006f2) // Medicinal Product 5 - EU/1/17/1201/006 120 - 120 mg
* subject = Reference(urn:uuid:7ac36d6e-1ba5-4d13-a763-3ed966b26892) // Medicinal Product 6 - EU/1/17/1201/007 180 - 120 mg
* subject = Reference(urn:uuid:cf9e3d56-22ad-48ba-9cb1-cae88fd267c3) // Medicinal Product 7 - EU/1/17/1201/008 200 - 120 mg
* subject = Reference(urn:uuid:bb8caa68-9197-460b-b395-cba1fca019d0) // Medicinal Product 8 - EU/1/17/1201/009 240 - 120 mg
* subject = Reference(urn:uuid:a32302f5-b1d1-401b-a60f-7526a2a31e4e) // Medicinal Product 9 - EU/1/17/1201/012 300 - 120 mg
* subject = Reference(urn:uuid:89682f30-47ca-45df-a691-ffcc9af64fc2) // Medicinal Product 10 - EU/1/17/1201/010 360 - 120 mg
* subject = Reference(urn:uuid:d1ec4791-2453-4768-b656-d815bf56aff7) // Medicinal Product 11 - EU/1/17/1201/011 400 - 120 mg
* subject = Reference(urn:uuid:ba42fdde-dad7-4752-8a5b-b540405a6c21) // Medicinal Product 12 - EU/1/17/1201/001 42 - 30 mg
* subject = Reference(urn:uuid:8b518411-2341-4bd8-be2e-028472436409) // Medicinal Product 13 - EU/1/17/1201/013 70 - 30 mg
* subject = Reference(urn:uuid:151fc002-4f6b-4fc6-91d6-44439a3fae8c) // Medicinal Product 14 - EU/1/17/1201/014 210 - 30 mg

* status = #current
* contraindication.diseasesymptomprocedure.codeablereference.concept = $spor.ema.europa.eu#100000023446 "Pregnancy" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000000006/terms Medical Dictionary For Regulatory Activities (MedDRA)
* contraindication.indication = Reference(urn:uuid:369b031a-8c6e-4513-a327-8a2cb5f32993) "Psoriasis"

// Instance of Clinical Use Definition - Contraindication 6
Instance: a108737d-6dc0-4b34-b20d-18bbce590911
InstanceOf: clinicalusedefinition
Usage: #example
* id = "a108737d-6dc0-4b34-b20d-18bbce590911"
* type = #contraindication
* subject = Reference(urn:uuid:9cda1cb4-c543-40ef-849b-3b802b5e6f9e) // Medicinal Product 1 - EU/1/17/1201/002 40 - 120 mg
* subject = Reference(urn:uuid:9cda1cb4-c543-40ef-849b-3b802b5e6f9e) // Medicinal Product 1 - EU/1/17/1201/002 40 - 120 mg
* subject = Reference(urn:uuid:82b01a8c-2e70-4410-b8d6-8b71efcc63f4) // Medicinal Product 2 - EU/1/17/1201/003 70 - 120 mg
* subject = Reference(urn:uuid:e13c01a2-6265-4044-a86f-225cc087574d) // Medicinal Product 3 - EU/1/17/1201/004 90 - 120 mg
* subject = Reference(urn:uuid:9ebeecf6-fe0f-41da-bd8c-1791b4659aca) // Medicinal Product 4 - EU/1/17/1201/005 100 - 120 mg
* subject = Reference(urn:uuid:9b5512d5-970b-4978-8f8d-bcd74d5006f2) // Medicinal Product 5 - EU/1/17/1201/006 120 - 120 mg
* subject = Reference(urn:uuid:7ac36d6e-1ba5-4d13-a763-3ed966b26892) // Medicinal Product 6 - EU/1/17/1201/007 180 - 120 mg
* subject = Reference(urn:uuid:cf9e3d56-22ad-48ba-9cb1-cae88fd267c3) // Medicinal Product 7 - EU/1/17/1201/008 200 - 120 mg
* subject = Reference(urn:uuid:bb8caa68-9197-460b-b395-cba1fca019d0) // Medicinal Product 8 - EU/1/17/1201/009 240 - 120 mg
* subject = Reference(urn:uuid:a32302f5-b1d1-401b-a60f-7526a2a31e4e) // Medicinal Product 9 - EU/1/17/1201/012 300 - 120 mg
* subject = Reference(urn:uuid:89682f30-47ca-45df-a691-ffcc9af64fc2) // Medicinal Product 10 - EU/1/17/1201/010 360 - 120 mg
* subject = Reference(urn:uuid:d1ec4791-2453-4768-b656-d815bf56aff7) // Medicinal Product 11 - EU/1/17/1201/011 400 - 120 mg
* subject = Reference(urn:uuid:ba42fdde-dad7-4752-8a5b-b540405a6c21) // Medicinal Product 12 - EU/1/17/1201/001 42 - 30 mg
* subject = Reference(urn:uuid:8b518411-2341-4bd8-be2e-028472436409) // Medicinal Product 13 - EU/1/17/1201/013 70 - 30 mg
* subject = Reference(urn:uuid:151fc002-4f6b-4fc6-91d6-44439a3fae8c) // Medicinal Product 14 - EU/1/17/1201/014 210 - 30 mg

* status = #current

* contraindication.diseasesymptomprocedure.codeablereference.concept = $spor.ema.europa.eu#100000023675 "Breast feeding" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000000006/terms Medical Dictionary For Regulatory Activities (MedDRA)
* contraindication.indication = Reference(urn:uuid:369b031a-8c6e-4513-a327-8a2cb5f32993) "Psoriasis"

// Instance of Clinical Use Definition - Interaction 1 - METHOTREXATE
Instance: c079551f-d78a-4924-8748-744e755156a6
InstanceOf: clinicalusedefinition
Usage: #example
* id = "c079551f-d78a-4924-8748-744e755156a6"
* type = #interaction
* subject = Reference(urn:uuid:9cda1cb4-c543-40ef-849b-3b802b5e6f9e) // Medicinal Product 1 - EU/1/17/1201/002 40 - 120 mg
* subject = Reference(urn:uuid:9cda1cb4-c543-40ef-849b-3b802b5e6f9e) // Medicinal Product 1 - EU/1/17/1201/002 40 - 120 mg
* subject = Reference(urn:uuid:82b01a8c-2e70-4410-b8d6-8b71efcc63f4) // Medicinal Product 2 - EU/1/17/1201/003 70 - 120 mg
* subject = Reference(urn:uuid:e13c01a2-6265-4044-a86f-225cc087574d) // Medicinal Product 3 - EU/1/17/1201/004 90 - 120 mg
* subject = Reference(urn:uuid:9ebeecf6-fe0f-41da-bd8c-1791b4659aca) // Medicinal Product 4 - EU/1/17/1201/005 100 - 120 mg
* subject = Reference(urn:uuid:9b5512d5-970b-4978-8f8d-bcd74d5006f2) // Medicinal Product 5 - EU/1/17/1201/006 120 - 120 mg
* subject = Reference(urn:uuid:7ac36d6e-1ba5-4d13-a763-3ed966b26892) // Medicinal Product 6 - EU/1/17/1201/007 180 - 120 mg
* subject = Reference(urn:uuid:cf9e3d56-22ad-48ba-9cb1-cae88fd267c3) // Medicinal Product 7 - EU/1/17/1201/008 200 - 120 mg
* subject = Reference(urn:uuid:bb8caa68-9197-460b-b395-cba1fca019d0) // Medicinal Product 8 - EU/1/17/1201/009 240 - 120 mg
* subject = Reference(urn:uuid:a32302f5-b1d1-401b-a60f-7526a2a31e4e) // Medicinal Product 9 - EU/1/17/1201/012 300 - 120 mg
* subject = Reference(urn:uuid:89682f30-47ca-45df-a691-ffcc9af64fc2) // Medicinal Product 10 - EU/1/17/1201/010 360 - 120 mg
* subject = Reference(urn:uuid:d1ec4791-2453-4768-b656-d815bf56aff7) // Medicinal Product 11 - EU/1/17/1201/011 400 - 120 mg
* subject = Reference(urn:uuid:ba42fdde-dad7-4752-8a5b-b540405a6c21) // Medicinal Product 12 - EU/1/17/1201/001 42 - 30 mg
* subject = Reference(urn:uuid:8b518411-2341-4bd8-be2e-028472436409) // Medicinal Product 13 - EU/1/17/1201/013 70 - 30 mg
* subject = Reference(urn:uuid:151fc002-4f6b-4fc6-91d6-44439a3fae8c) // Medicinal Product 14 - EU/1/17/1201/014 210 - 30 mg

* status = #current

* interaction.interactant.itemcodeableconcept = $gsrs.ncats.nih.gov#YL5FZ2Y5U1 "METHOTREXATE" // FDA G-SRS and UNII code
* interaction.interactant.type = $spor.ema.europa.eu#100000023362 "Drug interaction" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000000006/terms MEDDRA

// Instance of Clinical Use Definition - Population


// Instance of Clinical Use Definition - undesireable effect
Instance: 
InstanceOf: clinicalusedefinition
Usage: #example
* id = ""
* identifier.system = ""
* identifier.value = ""
* type = #
* subject = Reference(urn:uuid:) "" //medicinal product 1
* subject = Reference(urn:uuid:) "" //medicinal product 2
* subject = Reference(urn:uuid:) "" //medicinal product 3
* subject = Reference(urn:uuid:) "" //medicinal product 4
* subject = Reference(urn:uuid:) "" //medicinal product 5
* subject = Reference(urn:uuid:) "" //medicinal product 6
* subject = Reference(urn:uuid:) "" //medicinal product 7
* subject = Reference(urn:uuid:) "" //medicinal product 8
* subject = Reference(urn:uuid:) "" //medicinal product 9
* subject = Reference(urn:uuid:) "" //medicinal product 10
* subject = Reference(urn:uuid:) "" //medicinal product 11
* subject = Reference(urn:uuid:) "" //medicinal product 12
* subject = Reference(urn:uuid:) "" //medicinal product 13
* subject = Reference(urn:uuid:) "" //medicinal product 14

* status = #current


// Instance of Clinical Use Definition - Warning
Instance: 
InstanceOf: clinicalusedefinition
Usage: #example
* id = ""
* identifier.system = ""
* identifier.value = ""
* type = #
* subject = Reference(urn:uuid:) "" //medicinal product 1
* subject = Reference(urn:uuid:) "" //medicinal product 2
* subject = Reference(urn:uuid:) "" //medicinal product 3
* subject = Reference(urn:uuid:) "" //medicinal product 4
* subject = Reference(urn:uuid:) "" //medicinal product 5
* subject = Reference(urn:uuid:) "" //medicinal product 6
* subject = Reference(urn:uuid:) "" //medicinal product 7
* subject = Reference(urn:uuid:) "" //medicinal product 8
* subject = Reference(urn:uuid:) "" //medicinal product 9
* subject = Reference(urn:uuid:) "" //medicinal product 10
* subject = Reference(urn:uuid:) "" //medicinal product 11
* subject = Reference(urn:uuid:) "" //medicinal product 12
* subject = Reference(urn:uuid:) "" //medicinal product 13
* subject = Reference(urn:uuid:) "" //medicinal product 14

* status = #current

