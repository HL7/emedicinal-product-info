//Instance of Medicinal Product Definition 1 - 30 mg - 42 gastro-resistant tablets in PVC/PVDC-aluminium blister packs
Instance: 9cda1cb4-c543-40ef-849b-3b802b5e6f9e
InstanceOf: medicinalproductdefinition
Usage: #example
* id = "9cda1cb4-c543-40ef-849b-3b802b5e6f9e"
* identifier = "EU/1/17/1201/001"
* type = $spor.ema.europa.eu#100000072062 "Marketing Authorisation" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000072055/terms Scope
* domain = $spor.ema.europa.eu#100000000012 "Human use" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/100000000004/terms
* version = "1"
* status = $hl7.org/fhir/publication-status#active "Active"
* statusdate = "2021-05-17T08:38:00+02:00"
* description = "Skilarence 30 mg; Each gastro-resistant tablet contains 30 mg dimethyl fumarate"
* route = $spor.ema.europa.eu:100000073345#100000073619 "oral use" //https://spor.ema.europa.eu/rmswi/#/lists/100000073345/terms route and method of administration
* indication = "for the treatment of moderate to severe plaque psoriasis"
* legalstatusofsupply = $spor.ema.europa.eu#100000072084 "Medicinal product subject to medical prescription" //https://spor.ema.europa.eu/rmswi/#/lists/100000072051/terms
* additionalmonitoringindicator = $ # "" //ACTION find right terminology
* specialmeasures = $ # "" //ACTION find right terminology
* paediatricuseindicator = $ # "" //ACTION find right terminology
* classification = $whocc.no#L04AX07 "Other immunosuppressants" //WHO ATC
* classification = $spor.ema.europa.eu:100000000006#100000116590 "Plaque psoriasis" //SPOR MedDRA

* marketingstatus.country = $iso:3166-2#eu "european union"
* marketingstatus.jurisdiction = $iso:3166-2#eu "european union"
* marketingstatus.status = $spor.ema.europa.eu#100000072083 "Marketed" //https://spor.ema.europa.eu/rmswi/#/lists/100000072052/terms Marketing Status
* marketingstatus.daterange.period.start = "2021-05-17T08:38:00+02:00"
* marketingstatus.daterange.period.end = ""

* name.productname = "Skilarence (dimethyl fumarate) 30 mg gastro-resistant tablet"
* name.type = $spor.ema.europa.eu:220000000000#220000000001 "Full name"
* name.namepart.part = "Skilarence"
* name.namepart.type = $spor.ema.europa.eu:220000000000#220000000002 "Invented name part" //SPOR Medicinal Product Name Part Type
* name.namepart.part = "Dimethyl fumarate"
* name.namepart.type = $spor.ema.europa.eu:220000000000# "Scientific name part"
* name.namepart.part = "30 mg"
* name.namepart.type = $spor.ema.europa.eu:220000000000#220000000004 "Strength part"
* name.namepart.part = "gastro-resistant tablet"
* name.namepart.type = $spor.ema.europa.eu:220000000000#220000000005 "Pharmaceutical dose form part"
* name.countrylanguage.country = $iso:3166-2#gb "united kingdom"
* name.countrylanguage.language = $iso:639-2#en "english"
* name.countrylanguage.country = $iso:3166-2#no "norway"
* name.countrylanguage.language = $iso:639-2#no "norwegian"

* crossreference.product = Reference(urn:uuid:7cb035bd-145e-4305-8cea-4e7ab0e515f9) "30 mg tablet" //ManufacturedItemDefinition
* crossreference.product = Reference(urn:uuid:1969dd8c-91ec-497b-a8f8-808346cc22d0) "30 mg tablet" //AdministrableProductDefinition
* crossreference.product = Reference(urn:uuid:bb2403cc-bb0b-4b1f-b56b-1174d11f6dce) "42 gastro-resistant tablets in PVC/PVDC-aluminium blister packs" //packagedproductdefinition
