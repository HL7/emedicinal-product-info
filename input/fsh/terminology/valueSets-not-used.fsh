
 /* //==========================
ValueSet: VsContainerType
Id: containerType
Title: "Container Type"
Description: "Type of container"
* ^copyright = "This artifact includes content from EDQM Standard Terms. EDQM Standard Terms are copyright European Directorate for the Quality of Medicines. Terms & Conditions in https://www.edqm.eu/en/standard-terms-database"
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
* $edqm#13125000 "Wrapper" */


/* //==========================
ValueSet: VsPackageMaterial
Id: packageMaterial
Title: "Package Material"
Description: "Package Material"
* ^experimental = false
* codes from system EmaSporMaterial //"SPOR Organization (EU)" // to be reviewed */


/* //==========================
ValueSet: VsDataCarrierIdSystem
Id: dataCarrierIdSystem
Title: "Data Carrier Identifiers"
Description: "Listing of identifiers for Data Carriers"
* ^experimental = false
* $uri#https://www.gs1.org/gtin "Global Trade Item Number" //  */


/* //=========================
ValueSet: VsMedProductIdSystems
Id: VsMedProductIdSystems
Title: "MedicinalProductDefinition identifier systems"
Description: "MedicinalProductDefinition Identifier systems (uri)"
* ^experimental = false
* $uri#https://spor.ema.europa.eu/pmswi "EU MP ID system (placeholder)" // to be reviewed
 */
//=========================
/* ValueSet: VsOrganizationIdSystems
Id: organizationIdSystems
Title: "Organization identifier systems"
Description: "Organization Identifier systems (uri)"
* ^experimental = false
* $uri#https://spor.ema.europa.eu/omswi "SPOR Organization (EU)" // to be reviewed */

/* //==========================
ValueSet: VsLegalStatusOfSupply
Id: legalStatusOfSupply
Title: "Legal Status for the Supply"
Description: "Legal Status for the Supply"
* ^experimental = false
* codes from system $spor-legalStatusForSupply-cs */

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





/* //==========================
ValueSet: VsCaseIdSystem
Id: caseIdSystem
Title: "Case System Identifiers"
Description: "Case System Identifiers"
* ^experimental = false
* $uri#https://placeholder.com // to be reviewed */

/* //==========================
ValueSet: VsRegulatoryActivityType
Id: regulatoryActivityType
Title: "Regulatory Activity Type"
Description: "Regulatory Activity Type; e.g., MAA"
* ^experimental = false
* $uri#https://placeholder.com // to be reviewed */

/* 
//==========================
ValueSet: VsGeneralStatus
Id: generalStatus
Title: "General Status used across ePI resources"
Description: "General Status used across ePI resources"
* ^experimental = false
* $uri#https://placeholder.com // to be reviewed
 */

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
* codes from system https://spor.ema.europa.eu/rmswi 

//==========================
//ValueSet: VsListOrderCodesIdSystems
//Id: VsListOrderCodesIdSystems
//Title: "Order Codes for List"
//Description: "Order Codes for List"
// * ^experimental = false
// * $uri#http://hl7.org/fhir/ValueSet/list-order "Order Codes for List"
// * codes from system http://terminology.hl7.org/CodeSystem/list-order
*/

/* //==========================
ValueSet: VsExampleUseCodesForList
Id: exampleUseCodesForList
Title: "The topic of this list"
Description: "The topic of this list"
* ^experimental = false
* $uri#http://hl7.org/fhir/ValueSet/list-example-codes "List Order Codes" 

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
// * ^experimental = false
// * $uri#http://hl7.org/fhir/ValueSet/languages "Languages" // FHIR terminology

 //==========================
ValueSet: VsProductNamePartType
Id: productNamePartType
Title: "Product Name Part Type"
Description: "Product Name Part Type"
* ^experimental = false
* codes from system $example-productNamePartType-cs

//==========================
ValueSet: VsPartType
Id: partType
Title: "Part Type"
Description: "Part Type"
* ^experimental = false
* codes from system https://spor.ema.europa.eu/omswi //"SPOR Organization (EU)" // to be reviewed */

/*
//==========================
//ValueSet: VsMedicinalProductCrossReferenceType
//Id: VsMedicinalProductCrossReferenceType
//Title: "Product Cross Reference Type"
//Description: "Product Cross Reference Type"
* ^experimental = false
* $uri#http://hl7.org/fhir/ValueSet/medicinal-product-cross-reference-type "ProductCrossReferenceType" // FHIR terminology
* codes from system http://hl7.org/fhir/medicinal-product-cross-reference-type

//==========================
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
* codes from system $example-organisationRoleType-cs */

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

/* //==========================
ValueSet: VsPropertySurfaceForm
Id: propertySurfaceForm
Title: "Surface form of the product"
Description: "Surface form of the product"
* ^experimental = false
* $uri#https://placeholder.com // to be reviewed */

/* //==========================
ValueSet: VsPropertyScore
Id: propertyScore
Title: "Score on the product"
Description: "Score on the product"
* ^experimental = true
* $uri#https://placeholder.com // to be reviewed - request HL7 terminology team add this as a valueset */

/* //==========================
ValueSet: VsUnitofMeasure
Id: unitofMeasure
Title: "Units of Measure"
Description: "Units of Measure"
* ^experimental = false
* $uri#http://hl7.org/fhir/ValueSet/ucum-units // FHIR terminology */

/* //=========================
ValueSet: VsPackagedProductIdSystems
Id: packagedProductIdSystems
Title: "PackagedProductDefinition identifier systems"
Description: "PackagedProductDefinition Identifier systems (uri)"
* ^experimental = false
* $uri#https://spor.ema.europa.eu/pmswi "SPOR Product (EU)" // to be reviewed

//===================== */

/* ====
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
* $uri#https://spor.ema.europa.eu/pmswi "SPOR Product (EU)" // to be reviewed */