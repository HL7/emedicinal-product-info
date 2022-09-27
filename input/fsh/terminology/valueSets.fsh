//=========================
ValueSet: VsRegulatedAuthIdSystems
Id: regulatedAuthIdSystems
Title: "RegulatedAuthorization identifier systems"
Description: "RegulatedAuthorization Identifier systems (uri)"
* ^experimental = false
* $uri#https://spor.ema.europa.eu/pmswi "SPOR Product (EU)" // to be reviewed

//=========================
ValueSet: VsRegulatedAuthorizationTypeIdSystems
Id: RegulatedAuthorizationTypeIdSystems
Title: "Regulated Authorization Type identifier systems"
Description: "Regulated Authorization Type Identifier systems (uri)"
* ^experimental = false
* $uri#https://spor.ema.europa.eu/pmswi "SPOR Product (EU)" // to be reviewed

//=========================
ValueSet: VsMedProductIdSystems
Id: medProductIdSystems
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
* $uri#https://spor.ema.europa.eu/pmswi "Pharmaceutical Dose Form" // to be reviewed

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
Id: additionalMonitoringIndicator
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
ValueSet: VsPackType
Id: packType
Title: "Pack Type"
Description: "Pack Type"
* ^experimental = false
* codes from system $spor-packType-cs

//==========================
ValueSet: VsCountry
Id: VsCountry
Title: "ISO Country two letter code"
Description: "ISO Country two letter code"
* ^experimental = false
* $uri#http://hl7.org/fhir/ValueSet/iso3166-1-2 "Iso 3166 Part 1: 2 Letter Codes" // FHIR terminology

//==========================
ValueSet: VsLanguage
Id: VsLanguage
Title: "Languages"
Description: "Languages"
* ^experimental = false
* $uri#http://hl7.org/fhir/ValueSet/languages "Languages" // FHIR terminology

//==========================
ValueSet: VsProductNamePartType
Id: productNamePartType
Title: "Product Name Part Type"
Description: "Product Name Part Type"
* ^experimental = false
* codes from system $spor-productNamePartType-cs
//==========================
ValueSet: VsPartTypeIdSystems
Id: VsPartTypeIdSystems
Title: "Part Type"
Description: "Part Type"
* ^experimental = false
* $uri#https://spor.ema.europa.eu/omswi "SPOR Organization (EU)" // to be reviewed

//==========================
ValueSet: VsMedicinalProductCrossReferenceType
Id: VsMedicinalProductCrossReferenceType
Title: "Product Cross Reference Type"
Description: "Product Cross Reference Type"
* ^experimental = false
* $uri#http://hl7.org/fhir/ValueSet/medicinal-product-cross-reference-type "ProductCrossReferenceType" // FHIR terminology

//==========================
ValueSet: VsProductConfidentialityIdSystems
Id: VsProductConfidentialityIdSystems
Title: "Product Confidentiality"
Description: "Product Confidentiality"
* ^experimental = false
* $uri#https://spor.ema.europa.eu/omswi "SPOR Organization (EU)" // to be reviewed

//==========================
ValueSet: VsPackageMaterialIdSystems
Id: VsPackageMaterialIdSystems
Title: "Package Material"
Description: "Package Material"
* ^experimental = false
* $uri#https://spor.ema.europa.eu/omswi "SPOR Organization (EU)" // to be reviewed

//==========================
ValueSet: VsShelfLifeTypeIdSystems
Id: VsShelfLifeTypeIdSystems
Title: "Shelf Life Type"
Description: "Shelf Life Type"
* ^experimental = false
* $uri#https://spor.ema.europa.eu/omswi "SPOR Organization (EU)" // to be reviewed

//==========================
ValueSet: VsSpecialPrecautionsForStorageIdSystems
Id: VsSpecialPrecautionsForStorageIdSystems
Title: "Special Precautions For Storage"
Description: "Special Precautions For Storage"
* ^experimental = false
* codes from system $spor-precautionsForStorage-cs // "SPOR Organization (EU)"  to be reviewed
// add fda codes
// add PMDA
//==========================
ValueSet: VsListOrderCodesIdSystems
Id: VsListOrderCodesIdSystems
Title: "Order Codes for List"
Description: "Order Codes for List"
* ^experimental = false
* $uri#http://hl7.org/fhir/ValueSet/list-order "Order Codes for List"

//==========================
ValueSet: VsExampleUseCodesForListIdSystems
Id: VsExampleUseCodesForListIdSystems
Title: "Use Codes for List"
Description: "Use Codes for List"
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
ValueSet: VsUnitofPresentation
Id: VsUnitofPresentation
Title: "Units of Presentation"
Description: "Units of Presentation"
* ^experimental = false
* $uri#https://spor.ema.europa.eu/rmswi // to be reviewed