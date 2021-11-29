Profile: VPIMedicinalProductDefinition
Parent: Medicinal Product Definition
Id: 89682f30-47ca-45df-a691-ffcc9af64fc2
Title: "VPI Medicinal Product Definition"
Description: "Vulcan medicinal product information profile and instance examples"

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
