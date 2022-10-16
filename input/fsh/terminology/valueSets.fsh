//=========================
ValueSet: VsRegulatedAuthorization
Id: VsRegulatedAuthorization
Title: "Type of Regulated Authorization"
Description: "Type of Regulated Authorization"
* ^experimental = false
* codes from system https://spor.ema.europa.eu/pmswi // to be reviewed

//=========================
ValueSet: VsRegulatedAuthorizationTypeIdSystems
Id: RegulatedAuthorizationTypeIdSystems
Title: "Regulated Authorization Type identifier systems"
Description: "Regulated Authorization Type Identifier systems (uri)"
* ^experimental = false
* $uri#https://spor.ema.europa.eu/pmswi "SPOR Product (EU)" // to be reviewed

//=========================
ValueSet: VsMedProductIdSystems
Id: VsMedProductIdSystems
Title: "MedicinalProductDefinition identifier systems"
Description: "MedicinalProductDefinition Identifier systems (uri)"
* ^experimental = false
* $uri#https://spor.ema.europa.eu/pmswi "EU MP ID system (placeholder)" // to be reviewed

//=========================
ValueSet: VsMedProductType
Id: medProductType
Title: "Medicinal Product Type"
Description: "Medicinal Product Type"
* ^experimental = false
* codes from system $spor-medicinalProducttype-cs

//=========================
ValueSet: VsPharmaceuticalDoseForm
Id: PharmaceuticalDoseForm
Title: "Pharmaceutical Dose Form"
Description: "Pharmaceutical Dose Form"
* ^experimental = false
* codes from system https://spor.ema.europa.eu/pmswi //"Pharmaceutical Dose Form" // to be reviewed

//=========================
ValueSet: VsRouteOfAdministration
Id: routeOfAdministration
Title: "Route Of Administration"
Description:  "Route Of Administration"
* ^experimental = false
* codes from system $spor-route-cs

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
ValueSet: VsOrganizationIdSystems
Id: organizationIdSystems
Title: "Organization identifier systems"
Description: "Organization Identifier systems (uri)"
* ^experimental = false
* $uri#https://spor.ema.europa.eu/omswi "SPOR Organization (EU)" // to be reviewed

//=========================
ValueSet: VsEpiType
Id: epiType
Title: "ePI document types"
Description: "ePI document types"
* ^experimental = false
* $spor-rms#100000155538 "Package Leaflet"
* $loinc#34390-5	"HUMAN OTC DRUG LABEL"
* $loinc#34391-3	"HUMAN PRESCRIPTION DRUG LABEL"

//==========================
ValueSet: VsOrganizationType
Id: organizationType
Title: "Type of organization"
Description: "Type of organization"
* ^experimental = false
* codes from system $spor-organisationRoleType-cs

//==========================
ValueSet: VsOperationType
Id: operationType
Title: "Type of operation"
Description: "Type of operation"
* ^experimental = false
* codes from system $spor-operationType-cs

//==========================
ValueSet: VsLegalStatusOfSupply
Id: legalStatusOfSupply
Title: "Legal Status for the Supply"
Description: "Legal Status for the Supply"
* ^experimental = false
* codes from system $spor-legalStatusForSupply-cs

//==========================
ValueSet: VsAdditionalMonitoringIndicator
Id: VsAdditionalMonitoringIndicator
Title: "Additional Monitoring Indicator"
Description: "Additional Monitoring Indicator"
* ^experimental = false
* codes from system $spor-additionalMonitoringIndicator-cs

//==========================
ValueSet: VsPediatricUseIndicator
Id: pediatricUseIndicator
Title: "Pediatric Use Indicator"
Description: "Pediatric Use Indicator"
* ^experimental = false
* codes from system $spor-pediatricUseIndicator-cs

//==========================
ValueSet: VsAtcClassification
Id: atcClassification
Title: "ATC Classification"
Description: "ATC Classification"
* ^experimental = false
* codes from system $atc 

//==========================
ValueSet: VsMarketingStatus
Id: marketingStatus
Title: "Marketing Status"
Description: "Marketing Status"
* ^experimental = false
* codes from system $spor-marketingStatus-cs

//==========================
ValueSet: VsAuthorizationStatus
Id: VsAuthorizationStatus
Title: "Authorization Status"
Description: "Authorization Status"
* ^experimental = false
* codes from system $spor-marketingStatus-cs // to be reviewed

//==========================
ValueSet: VsSecondaryPrimaryPackType
Id: VsSecondaryPrimaryPackType
Title: "Pack Type"
Description: "Pack Type"
* ^experimental = false
* codes from system $spor-packType-cs

//==========================
ValueSet: Vs-package-type
Id: VsPackageType
Title: "High level Pack Type"
Description: "High level type of pack; e.g., medicinal product pack, sample pack, shipping container."
* ^experimental = false
* codes from system http://hl7.org/fhir/package-type //http://hl7.org/fhir/ValueSet/package-type // FHIR terminology

//==========================
ValueSet: VsCountry
Id: VsCountry
Title: "ISO Country two letter code"
Description: "ISO Country two letter code"
* ^experimental = false
//* $uri#http://hl7.org/fhir/ValueSet/iso3166-1-2 "Iso 3166 Part 1: 2 Letter Codes" // FHIR terminology
* codes from valueset http://terminology.hl7.org/ValueSet/v3-Country2
//* https://www.iso.org/obp/ui/#iso:code:3166:EU
* urn:iso:std:iso:3166#EU "European Union"

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

//==========================
ValueSet: VsProductNamePartType
Id: productNamePartType
Title: "Product Name Part Type"
Description: "Product Name Part Type"
* ^experimental = false
* codes from system $spor-productNamePartType-cs

//==========================
ValueSet: VsPartType
Id: VsPartType
Title: "Part Type"
Description: "Part Type"
* ^experimental = false
* codes from system https://spor.ema.europa.eu/omswi //"SPOR Organization (EU)" // to be reviewed

//==========================
//ValueSet: VsMedicinalProductCrossReferenceType
//Id: VsMedicinalProductCrossReferenceType
//Title: "Product Cross Reference Type"
//Description: "Product Cross Reference Type"
//* ^experimental = false
//* $uri#http://hl7.org/fhir/ValueSet/medicinal-product-cross-reference-type "ProductCrossReferenceType" // FHIR terminology
//* codes from system http://hl7.org/fhir/medicinal-product-cross-reference-type

//==========================
ValueSet: VsProductConfidentialityIdSystems
Id: VsProductConfidentialityIdSystems
Title: "Product Confidentiality"
Description: "Product Confidentiality"
* ^experimental = false
* $uri#https://spor.ema.europa.eu/omswi "SPOR Organization (EU)" // to be reviewed

//==========================
ValueSet: VsPackageMaterial
Id: VsPackageMaterial
Title: "Package Material"
Description: "Package Material"
* ^experimental = false
* codes from system https://spor.ema.europa.eu/omswi //"SPOR Organization (EU)" // to be reviewed

//==========================
ValueSet: VsShelfLifeType
Id: VsShelfLifeType
Title: "Shelf Life Type"
Description: "Shelf Life Type"
* ^experimental = false
* codes from system https://spor.ema.europa.eu/omswi //"SPOR Organization (EU)" // to be reviewed

//==========================
ValueSet: VsSpecialPrecautionsForStorage
Id: VsSpecialPrecautionsForStorage
Title: "Special Precautions For Storage"
Description: "Special Precautions For Storage"
* ^experimental = false
* codes from system $spor-precautionsForStorage-cs // "SPOR Organization (EU)"  to be reviewed
// add fda codes
// add PMDA

//==========================
//ValueSet: VsListOrderCodesIdSystems
//Id: VsListOrderCodesIdSystems
//Title: "Order Codes for List"
//Description: "Order Codes for List"
//* ^experimental = false
//* $uri#http://hl7.org/fhir/ValueSet/list-order "Order Codes for List"
//* codes from system http://terminology.hl7.org/CodeSystem/list-order

//==========================
ValueSet: VsExampleUseCodesForList
Id: VsExampleUseCodesForList
Title: "The topic of this list"
Description: "The topic of this list"
* ^experimental = false
* $uri#http://hl7.org/fhir/ValueSet/list-example-codes "List Order Codes"

//==========================
ValueSet: VsSectionCode
Id: VsSectionCode
Title: "Section Codes"
Description: "Section Codes"
* ^experimental = false
* $example-org#sectionCode "sedtion code placeholder"

//==========================
ValueSet: VsUnitofMeasure
Id: VsUnitofMeasure
Title: "Units of Measure"
Description: "Units of Measure"
* ^experimental = false
* $uri#http://hl7.org/fhir/ValueSet/ucum-units // FHIR terminology

//==========================
ValueSet: VsUnitofPresentation
Id: VsUnitofPresentation
Title: "Units of Presentation"
Description: "Units of Presentation"
* ^experimental = false
* $uri#https://spor.ema.europa.eu/rmswi // to be reviewed

//==========================
ValueSet: VsPropertyColor
Id: VsPropertyColor
Title: "Color of the product"
Description: "Color of the product"
* ^experimental = false
* $uri#https://ncithesaurus.nci.nih.gov/ncitbrowser/ConceptReport.jsp?dictionary=NCI_Thesaurus&ns=ncit&code=C54453 // to be reviewed

//==========================
ValueSet: VsPropertyFlavor
Id: VsPropertyFlavor
Title: "Flavor of the product"
Description: "Flavor of the product"
* ^experimental = false
* $uri#https://ncithesaurus.nci.nih.gov/ncitbrowser/ConceptReport.jsp?dictionary=NCI_Thesaurus&ns=ncit&code=C73339 // to be reviewed

//==========================
ValueSet: VsPropertyScore
Id: VsPropertyScore
Title: "Score on the product"
Description: "Score on the product"
* ^experimental = false
* $uri#https://placeholder.com // to be reviewed - request HL7 terminology team add this as a valueset

//==========================
ValueSet: VsPropertyShape
Id: VsPropertyShape
Title: "Shape of the product"
Description: "Shape of the product"
* ^experimental = false
* $uri#https://ncithesaurus.nci.nih.gov/ncitbrowser/ConceptReport.jsp?dictionary=NCI_Thesaurus&ns=ncit&code=C54454 // to be reviewed

//==========================
ValueSet: VsSubstance
Id: VsSubstance
Title: "Substances"
Description: "Substances"
* ^experimental = false
* $uri#https://gsrs.ncats.nih.gov/ginas/app/beta // to be reviewed

//==========================
ValueSet: VsRoleClassIngredientEntity
Id: VsRoleClassIngredientEntity
Title: "Ingredient Role; e.g., inactive, active base, active moiety"
Description: "Ingredient Role; e.g., inactive, active base, active moiety"
* ^experimental = false
* $uri#http://terminology.hl7.org/ValueSet/v3-RoleClassIngredientEntity // to be reviewed

//==========================
ValueSet: VsDataCarrierIdSystem
Id: VsDataCarrierIdSystem
Title: "Data Carrier Identifiers"
Description: "Listing of identifiers for Data Carriers"
* ^experimental = false
* $uri#http://terminology.hl7.org/ValueSet/v3-RoleClassIngredientEntity // FHIR terminology to be reviewed

//==========================
ValueSet: VsCaseIdSystem
Id: VsCaseIdSystem
Title: "Case System Identifiers"
Description: "Case System Identifiers"
* ^experimental = false
* $uri#https://placeholder.com // to be reviewed

//==========================
ValueSet: VsRegulatoryActivityType
Id: VsRegulatoryActivityType
Title: "Regulatory Activity Type"
Description: "Regulatory Activity Type; e.g., MAA"
* ^experimental = false
* $uri#https://placeholder.com // to be reviewed

//==========================
ValueSet: VsGeneralStatus
Id: VsGeneralStatus
Title: "General Status used across ePI resources"
Description: "General Status used across ePI resources"
* ^experimental = false
* $uri#https://placeholder.com // to be reviewed

//==========================
ValueSet: VsMeddra
Id: VsMeddra
Title: "MedDRA Terms for clinical diseases and symptoms"
Description: "MedDRA Terms for clinical diseases and symptoms"
* ^experimental = false
* $uri#https://placeholder.com // to be reviewed