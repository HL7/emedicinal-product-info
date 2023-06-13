//=========================
ValueSet: VsMedProductIdSystems
Id: VsMedProductIdSystems
Title: "MedicinalProductDefinition identifier systems"
Description: "MedicinalProductDefinition Identifier systems (uri)"
* ^experimental = false
* $uri#https://spor.ema.europa.eu/pmswi "EU MP ID system (placeholder)" // to be reviewed

//=========================
ValueSet: VsAdministrableDoseForm
Id: administrableDoseForm
Title: "Administrable Pharmaceutical Dose Form"
Description: "Administrable Pharmaceutical Dose Form"
* ^experimental = false
* codes from system $administrable-dose-form

//=========================
ValueSet: VsManufacturedDoseForm
Id: manufacturedDoseForm
Title: "Manufactured Dose Form"
Description: "Manufactured Dose Form"
* ^experimental = false
* codes from system $manufactured-dose-form

//=========================
ValueSet: VsRouteOfAdministration
Id: routeOfAdministration
Title: "Route Of Administration"
Description:  "Route Of Administration"
* ^status = #draft
* ^experimental = true
* codes from system EmaSporRouteMethodAdm

// * ^experimental = true
// * $spor-rms#100000073619


//==========================
ValueSet: VsUnitofMeasure
Id: unitofMeasure
Title: "Units of Measure"
Description: "Units of Measure"
* ^experimental = false
* $uri#http://hl7.org/fhir/ValueSet/ucum-units // FHIR terminology

//==========================
ValueSet: VsUnitofPresentation
Id: unitofPresentation
Title: "Units of Presentation"
Description: "Units of Presentation"
* ^experimental = false
* codes from system EmaSporUnitOfPresentation // to be reviewed

//==========================
ValueSet: VsMeddra
Id: meddra
Title: "MedDRA Terms for clinical diseases and symptoms"
Description: "MedDRA Terms for clinical diseases and symptoms"
* ^experimental = false
* codes from system $meddra

//==========================
ValueSet: VsCountry
Id: country
Title: "ISO Country two letter code"
Description: "ISO Country two letter code"
* ^experimental = false
* codes from valueset http://terminology.hl7.org/ValueSet/v3-Country2
// * urn:iso:std:iso:3166#EU "European Union"

//==========================
ValueSet: VsPropertyColor
Id: propertyColor
Title: "Color of the product"
Description: "Color of the product"
* ^experimental = false
* $uri#https://ncithesaurus.nci.nih.gov/ncitbrowser/ConceptReport.jsp?dictionary=NCI_Thesaurus&ns=ncit&code=C54453 // to be reviewed

* $ncithesaurus#C48323	"BLACK"
* $ncithesaurus#C48324	"GRAY"
* $ncithesaurus#C48325	"WHITE"
* $ncithesaurus#C48326	"RED"
* $ncithesaurus#C48327	"PURPLE"
* $ncithesaurus#C48328	"PINK"
* $ncithesaurus#C48329	"GREEN"
* $ncithesaurus#C48330	"YELLOW"
* $ncithesaurus#C48331	"ORANGE"
* $ncithesaurus#C48332	"BROWN"
* $ncithesaurus#C48333	"BLUE"
* $ncithesaurus#C48334	"TURQUOISE"


//==========================
ValueSet: VsPropertyFlavor
Id: propertyFlavor
Title: "Flavor of the product"
Description: "Flavor of the product"
* ^experimental = false
* $ncithesaurus#C100097 "GINGER"
* $ncithesaurus#C73360 "ALMOND"
* $ncithesaurus#C73361 "ANISE"
* $ncithesaurus#C73362 "APPLE"
* $ncithesaurus#C73363 "APRICOT"
* $ncithesaurus#C73364 "BANANA"
* $ncithesaurus#C73365 "BERRY"
* $ncithesaurus#C73366 "BLACKBERRY"
* $ncithesaurus#C73367 "BLUEBERRY"
* $ncithesaurus#C73368 "BUBBLE GUM"
* $ncithesaurus#C73369 "BURGUNDY"
* $ncithesaurus#C73370 "BUTTER PECAN"
* $ncithesaurus#C73371 "BUTTERMINT"
* $ncithesaurus#C73372 "BUTTERSCOTCH"
* $ncithesaurus#C73373 "CARAMEL"
* $ncithesaurus#C73374 "CHEESE"
* $ncithesaurus#C73375 "CHERRY"
* $ncithesaurus#C73376 "CHOCOLATE"
* $ncithesaurus#C73377 "CINNAMON"
* $ncithesaurus#C73378 "CITRUS"
* $ncithesaurus#C73379 "COCONUT"
* $ncithesaurus#C73380 "COFFEE"
* $ncithesaurus#C73381 "COLA"
* $ncithesaurus#C73382 "COTTON CANDY"
* $ncithesaurus#C73383 "CRANBERRY"
* $ncithesaurus#C73384 "CREME DE MENTHE"
* $ncithesaurus#C73385 "CURACAO"
* $ncithesaurus#C73386 "CUSTARD"
* $ncithesaurus#C73387 "EGG NOG"
* $ncithesaurus#C73388 "FIG"
* $ncithesaurus#C73389 "FRUIT"
* $ncithesaurus#C73390 "FRUIT PUNCH"
* $ncithesaurus#C73391 "GRAPE"
* $ncithesaurus#C73392 "GRAPEFRUIT"
* $ncithesaurus#C73393 "GUARANA"
* $ncithesaurus#C73394 "HONEY"
* $ncithesaurus#C73395 "KIWI"
* $ncithesaurus#C73396 "LEMON"
* $ncithesaurus#C73397 "LICORICE"
* $ncithesaurus#C73398 "LIME"
* $ncithesaurus#C73399 "LIVER"
* $ncithesaurus#C73400 "MANGO"
* $ncithesaurus#C73402 "MEAT"
* $ncithesaurus#C73403 "MENTHOL"
* $ncithesaurus#C73404 "MINT"
* $ncithesaurus#C73405 "ORANGE BANANA"
* $ncithesaurus#C73406 "ORANGE"
* $ncithesaurus#C73407 "PEACH"
* $ncithesaurus#C73408 "PEPPERMINT"
* $ncithesaurus#C73409 "PINEAPPLE"
* $ncithesaurus#C73410 "PLUM"
* $ncithesaurus#C73411 "POMEGRANATE"
* $ncithesaurus#C73412 "RAISIN"
* $ncithesaurus#C73413 "RASPBERRY"
* $ncithesaurus#C73414 "ROOT BEER"
* $ncithesaurus#C73415 "RUM"
* $ncithesaurus#C73416 "SPEARMINT"
* $ncithesaurus#C73417 "STRAWBERRY"
* $ncithesaurus#C73418 "TANGERINE"
* $ncithesaurus#C73419 "TROPICAL FRUIT PUNCH"
* $ncithesaurus#C73420 "TUTTI FRUTTI"
* $ncithesaurus#C73421 "VANILLA"
* $ncithesaurus#C73422 "WALNUT"
* $ncithesaurus#C73423 "WATERMELON"
* $ncithesaurus#C73424 "WINTERGREEN"
* $ncithesaurus#C73433 "MAQUE TREE"
* $ncithesaurus#C79134 "FISH"
* $ncithesaurus#C82400 "MARSHMALLOW"
* $ncithesaurus#C87298 "BOYSENBERRY"
* $ncithesaurus#C92709 "CHICKEN"
* $ncithesaurus#C92710 "MALT"

//==========================
ValueSet: VsPropertyScore
Id: propertyScore
Title: "Score on the product"
Description: "Score on the product"
* ^experimental = false
* $uri#https://placeholder.com // to be reviewed - request HL7 terminology team add this as a valueset

//==========================
ValueSet: VsPropertyShape
Id: propertyShape
Title: "Shape of the product"
Description: "Shape of the product"
* ^experimental = false
* $ncithesaurus#C48335	"BULLET"
* $ncithesaurus#C48336	"CAPSULE"
* $ncithesaurus#C48337	"CLOVER"
* $ncithesaurus#C48338	"DIAMOND"
* $ncithesaurus#C48339	"DOUBLE CIRCLE"	
* $ncithesaurus#C48340	"FREEFORM"	
* $ncithesaurus#C48341	"GEAR"
* $ncithesaurus#C48342	"HEPTAGON (7 sided)"	
* $ncithesaurus#C48343	"HEXAGON (6 sided)"	
* $ncithesaurus#C48344	"OCTAGON (8 sided)"	
* $ncithesaurus#C48345	"OVAL"		
* $ncithesaurus#C48346	"PENTAGON"		
* $ncithesaurus#C48347	"RECTANGL"
* $ncithesaurus#C48348	"ROUND"
* $ncithesaurus#C48349	"SEMI-CIR"
* $ncithesaurus#C48350	"SQUARE"
* $ncithesaurus#C48351	"TEAR"
* $ncithesaurus#C48352	"TRAPEZOI"
* $ncithesaurus#C48353	"TRIANGLE"

//==========================
ValueSet: VsPropertySurfaceForm
Id: propertySurfaceForm
Title: "Surface form of the product"
Description: "Surface form of the product"
* ^experimental = false
* $uri#https://placeholder.com // to be reviewed

//==========================
ValueSet: VsSubstance
Id: substance
Title: "Substances"
Description: "Substances"
* ^experimental = false
* include codes from system http://fdasis.nlm.nih.gov

//=========================
ValueSet: VsPackagedProductIdSystems
Id: packagedProductIdSystems
Title: "PackagedProductDefinition identifier systems"
Description: "PackagedProductDefinition Identifier systems (uri)"
* ^experimental = false
* $uri#https://spor.ema.europa.eu/pmswi "SPOR Product (EU)" // to be reviewed

//=========================
ValueSet: VsAdmProductIdSystems
Id: admProductIdSystems
Title: "AdministrableProductDefinition identifier systems"
Description: "AdministrableProductDefinition Identifier systems (uri)"
* ^experimental = false
* $uri#https://spor.ema.europa.eu/pmswi "SPOR Product (EU)" // to be reviewed
* $uri#https://www.who-umc.org/phpid "IDMP PhPID" // to be reviewed

//=========================
ValueSet: VsManufacturedItemIdSystems
Id: manufacturedItemIdSystems
Title: "ManufacturedItemDefinition identifier systems"
Description: "ManufacturedItemDefinition Identifier systems (uri)"
* ^experimental = false
* $uri#https://spor.ema.europa.eu/pmswi "SPOR Product (EU)" // to be reviewed

//=========================
/* ValueSet: VsOrganizationIdSystems
Id: organizationIdSystems
Title: "Organization identifier systems"
Description: "Organization Identifier systems (uri)"
* ^experimental = false
* $uri#https://spor.ema.europa.eu/omswi "SPOR Organization (EU)" // to be reviewed */

//=========================
ValueSet: VsEpiType
Id: epiType
Title: "ePI document types"
Description: "ePI document types"
* ^experimental = false
* $loinc#34390-5	"HUMAN OTC DRUG LABEL"
* $loinc#34391-3	"HUMAN PRESCRIPTION DRUG LABEL"
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"

/* //==========================
ValueSet: VsLegalStatusOfSupply
Id: legalStatusOfSupply
Title: "Legal Status for the Supply"
Description: "Legal Status for the Supply"
* ^experimental = false
* codes from system $spor-legalStatusForSupply-cs */




//==========================
ValueSet: VsAtcClassification
Id: atcClassification
Title: "WHO ATC"
Description: "World Health Organization Anatomical Therapeutic Chemical (ATC) classification system"
* ^experimental = false
* codes from system $atc 
* ^copyright = "This artifact includes content from Anatomical Therapeutic Chemical (ATC) classification system. ATC codes are copyright World Health Organization (WHO) Collaborating Centre for Drug Statistics Methodology. Terms & Conditions in https://www.whocc.no/use_of_atc_ddd/"

/* //==========================
ValueSet: VsMarketingStatus
Id: marketingStatus
Title: "Marketing Status"
Description: "Marketing Status"
* ^experimental = false
* codes from system $spor-marketingStatus-cs */

/* //==========================
ValueSet: VsAuthorizationStatus
Id: authorizationStatus
Title: "Authorization Status"
Description: "Authorization Status"
* ^experimental = false
* codes from system $spor-regulatoryEntitlementStatus-cs // to be reviewed */

//==========================
/* ValueSet: VsPackagingType
Id: secondaryPrimaryPackType
Title: "Pack Type"
Description: "Pack Type"
* ^experimental = false
* codes from system $spor-packType-cs */

//==========================
ValueSet: VsContainerType
Id: containerType
Title: "Container Type"
Description: "Type of container"
* ^experimental = false
* $edqm#30001000 "Ampoule"
* $edqm#30004000 "Bag"
* $edqm#30006000 "Barrel"
* $edqm#30007000 "Blister"
* $edqm#30008000 "Bottle"
* $edqm#30009000 "Box"
* $edqm#30014000 "Cartridge"
* $edqm#30015500 "Container"
* $edqm#30018000 "Dart"
* $edqm#30018300 "Dose-dispenser cartridge"
* $edqm#30020000 "Dredging container"
* $edqm#30023000 "Dropper container"
* $edqm#30023005 "Fixed cryogenic vessel"
* $edqm#30024000 "Gas cylinder"
* $edqm#13156000 "Gas cylinder bundle"
* $edqm#30032000 "Jar"
* $edqm#30036005 "Mobile cryogenic vessel"
* $edqm#30038000 "Multidose container"
* $edqm#30039000 "Multidose container with airless pump"
* $edqm#30039400 "Multidose container with metering pump"
* $edqm#30039500 "Multidose container with pump"
* $edqm#13142000 "Pouch"
* $edqm#30048000 "Pour-on container"
* $edqm#30049000 "Pre-filled gastroenteral tube"
* $edqm#13063000 "Pre-filled injector"
* $edqm#13074000 "Pre-filled oral applicator"
* $edqm#13073000 "Pre-filled oral syringe"
* $edqm#30050000 "Pre-filled pen"
* $edqm#30051000 "Pre-filled syringe"
* $edqm#30052000 "Pressurised container"
* $edqm#30053500 "Roll-on container"
* $edqm#30054000 "Sachet"
* $edqm#30057000 "Single-dose container"
* $edqm#30060000 "Spray container"
* $edqm#30064500 "Straw"
* $edqm#30065000 "Strip"
* $edqm#30066000 "Tablet container"
* $edqm#13151000 "Tablet tube"
* $edqm#30067000 "Tube"
* $edqm#13059000 "Unit-dose blister"
* $edqm#30069000 "Vial"
* $edqm#13125000 "Wrapper"


//==========================
ValueSet: VsPackageMaterial
Id: packageMaterial
Title: "Package Material"
Description: "Package Material"
* ^experimental = false
* codes from system EmaSporMaterial //"SPOR Organization (EU)" // to be reviewed

//==========================
ValueSet: VsSectionCode
Id: sectionCode
Title: "Section Codes"
Description: "Section Codes"
* ^experimental = true
* codes from system EmaProductInformationTemplate

//==========================
ValueSet: VsRoleClassIngredientEntity
Id: roleClassIngredientEntity
Title: "Ingredient Role; e.g., inactive, active base, active moiety"
Description: "Ingredient Role; e.g., inactive, active base, active moiety"
* ^experimental = false
* $uri#http://terminology.hl7.org/ValueSet/v3-RoleClassIngredientEntity // to be reviewed

//==========================
ValueSet: VsDataCarrierIdSystem
Id: dataCarrierIdSystem
Title: "Data Carrier Identifiers"
Description: "Listing of identifiers for Data Carriers"
* ^experimental = false
* $uri#https://www.gs1.org/gtin "Global Trade Item Number" // 

//==========================
ValueSet: VsCaseIdSystem
Id: caseIdSystem
Title: "Case System Identifiers"
Description: "Case System Identifiers"
* ^experimental = false
* $uri#https://placeholder.com // to be reviewed

//==========================
ValueSet: VsRegulatoryActivityType
Id: regulatoryActivityType
Title: "Regulatory Activity Type"
Description: "Regulatory Activity Type; e.g., MAA"
* ^experimental = false
* $uri#https://placeholder.com // to be reviewed

//==========================
ValueSet: VsGeneralStatus
Id: generalStatus
Title: "General Status used across ePI resources"
Description: "General Status used across ePI resources"
* ^experimental = false
* $uri#https://placeholder.com // to be reviewed



/* //==========================
ValueSet: VsProprietaryNamePart
Id: proprietaryNamePart
Title: "Proprietary Name of the medicinal product"
Description: "Proprietary Name of the medicinal product"
* ^experimental = false
* codes from system https://spor.ema.europa.eu/rmswi */

/* //==========================
ValueSet: VsNonproprietaryNamePart
Id: nonproprietaryNamePart
Title: "Non-proprietary Name of the active ingredient(s)"
Description: "Non-proprietary Name of the active ingredient(s)"
* ^experimental = false
* codes from system https://spor.ema.europa.eu/rmswi */

/* //==========================
ValueSet: VsStrengthPart
Id: strengthPart
Title: "Strength of the medicinal product name"
Description: "Strength of the medicinal product name"
* ^experimental = false
* $uri#https://placeholder.com // to be reviewed
* codes from system https://spor.ema.europa.eu/rmswi */

/* //==========================
ValueSet: VsPharmaceuticalDoseFormPart
Id: pharmaceuticalDoseFormPart
Title: "Pharmaceutical Dose Form of the medicinal product"
Description: "Pharmaceutical Dose Form of the medicinal product"
* ^experimental = false
* codes from system https://spor.ema.europa.eu/rmswi */

//==========================
//ValueSet: VsListOrderCodesIdSystems
//Id: VsListOrderCodesIdSystems
//Title: "Order Codes for List"
//Description: "Order Codes for List"
//* ^experimental = false
//* $uri#http://hl7.org/fhir/ValueSet/list-order "Order Codes for List"
//* codes from system http://terminology.hl7.org/CodeSystem/list-order

/* //==========================
ValueSet: VsExampleUseCodesForList
Id: exampleUseCodesForList
Title: "The topic of this list"
Description: "The topic of this list"
* ^experimental = false
* $uri#http://hl7.org/fhir/ValueSet/list-example-codes "List Order Codes" */

//==========================
//ValueSet: VsJurisdiction
//Id: VsJurisdiction
//Title: "Two letter country code"
//Description: "Two letter country code"
//* ^experimental = false
//* $uri#http://hl7.org/fhir/ValueSet/jurisdiction "JurisdictionValueSet" // FHIR terminology

//==========================
//ValueSet: VsLanguage
//Id: VsLanguage
//Title: "Languages"
//Description: "Languages"
//* ^experimental = false
//* $uri#http://hl7.org/fhir/ValueSet/languages "Languages" // FHIR terminology

/* //==========================
ValueSet: VsProductNamePartType
Id: productNamePartType
Title: "Product Name Part Type"
Description: "Product Name Part Type"
* ^experimental = false
* codes from system $spor-productNamePartType-cs

//==========================
ValueSet: VsPartType
Id: partType
Title: "Part Type"
Description: "Part Type"
* ^experimental = false
* codes from system https://spor.ema.europa.eu/omswi //"SPOR Organization (EU)" // to be reviewed */

//==========================
//ValueSet: VsMedicinalProductCrossReferenceType
//Id: VsMedicinalProductCrossReferenceType
//Title: "Product Cross Reference Type"
//Description: "Product Cross Reference Type"
//* ^experimental = false
//* $uri#http://hl7.org/fhir/ValueSet/medicinal-product-cross-reference-type "ProductCrossReferenceType" // FHIR terminology
//* codes from system http://hl7.org/fhir/medicinal-product-cross-reference-type

/* //==========================
ValueSet: VsProductConfidentialityIdSystems
Id: productConfidentialityIdSystems
Title: "Product Confidentiality"
Description: "Product Confidentiality"
* ^experimental = false
* $uri#https://spor.ema.europa.eu/omswi "SPOR Organization (EU)" // to be reviewed */

/* //=========================
ValueSet: VsRegulatedAuthorizationType
Id: regulatedAuthorizationType
Title: "Type of Regulated Authorization"
Description: "Type of Regulated Authorization"
* ^experimental = false
* codes from system $spor-regulatoryEntitlementType-cs // to be reviewed */

/* //=========================
ValueSet: VsRegulatedAuthorizationTypeIdSystems
Id: RegulatedAuthorizationTypeIdSystems
Title: "Regulated Authorization Type identifier systems"
Description: "Regulated Authorization Type Identifier systems (uri)"
* ^experimental = false
* $uri#https://spor.ema.europa.eu/pmswi "SPOR Product (EU)" // to be reviewed */

/* //=========================
ValueSet: VsMedProductType
Id: medProductType
Title: "Medicinal Product Type"
Description: "Medicinal Product Type"
* ^experimental = false
* codes from system $spor-medicinalProducttype-cs */

/* //=========================
ValueSet: VsPharmaceuticalDoseForm
Id: PharmaceuticalDoseForm
Title: "Combined Pharmaceutical Dose Form"
Description: "Combined Pharmaceutical Dose Form"
* ^experimental = false
* codes from system $spor-combinedPharmaceuticalDoseForm-cs */

/* //==========================
ValueSet: VsOrganizationType
Id: organizationType
Title: "Type of organization"
Description: "Type of organization"
* ^experimental = false
* codes from system $spor-organisationRoleType-cs */

/* //==========================
ValueSet: VsOperationType
Id: operationType
Title: "Type of operation"
Description: "Type of operation"
* ^experimental = false
* codes from system $spor-operationType-cs */

/* //==========================
ValueSet: VsAdditionalMonitoringIndicator
Id: additionalMonitoringIndicator
Title: "Additional Monitoring Indicator"
Description: "Additional Monitoring Indicator"
* ^experimental = false
* codes from system $spor-additionalMonitoringIndicator-cs */
/* //==========================
ValueSet: VsSpecialPrecautionsForStorage
Id: specialPrecautionsForStorage
Title: "Special Precautions For Storage"
Description: "Special Precautions For Storage"
* ^experimental = false
* codes from system $spor-precautionsForStorage-cs // "SPOR Organization (EU)"  to be reviewed
// add fda codes
// add PMDA */


/* //==========================
ValueSet: VsPediatricUseIndicator
Id: pediatricUseIndicator
Title: "Pediatric Use Indicator"
Description: "Pediatric Use Indicator"
* ^experimental = false
* codes from system $spor-pediatricUseIndicator-cs */

/* //==========================
ValueSet: VsShelfLifeType
Id: shelfLifeType
Title: "Shelf Life Type"
Description: "Shelf Life Type"
* ^experimental = false
* codes from system https://spor.ema.europa.eu/omswi //"SPOR Organization (EU)" // to be reviewed */