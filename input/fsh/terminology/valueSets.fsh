//=========================
ValueSet: VsRegulatedAuthIdSystems
Id: regulatedAuthIdSystems
Title: "RegulatedAuthorization identifier systems"
Description: "RegulatedAuthorization Identifier systems (uri)"
* $uri#https://spor.ema.europa.eu/pmswi "SPOR Product (EU)" // to be reviewed

//=========================
ValueSet: VsRegulatedAuthorizationTypeIdSystems
Id: RegulatedAuthorizationTypeIdSystems
Title: "Regulated Authorization Type identifier systems"
Description: "Regulated Authorization Type Identifier systems (uri)"
* $uri#https://spor.ema.europa.eu/pmswi "SPOR Product (EU)" // to be reviewed

//=========================
ValueSet: VsMedProductIdSystems
Id: medProductIdSystems
Title: "MedicinalProductDefinition identifier systems"
Description: "MedicinalProductDefinition Identifier systems (uri)"
* $uri#https://spor.ema.europa.eu/pmswi "EU MP ID system (placeholder)" // to be reviewed

//=========================
ValueSet: VsMedProductType
Id: medProductType
Title: "Medicinal Product Type"
Description: "Medicinal Product Type"
* codes from system $spor-medicinalProducttype-cs

//=========================
ValueSet: VsCombinedPharmaceuticalDoseForm
Id: combinedPharmaceuticalDoseForm
Title: "Combined Pharmaceutical Dose Form"
Description: "Combined Pharmaceutical Dose Form"
* codes from system $spor-combinedPharmaceuticalDoseForm-cs

//=========================
ValueSet: VsRouteOfAdministration
Id: routeOfAdministration
Title: "Route Of Administration"
Description:  "Route Of Administration"
* codes from system $spor-route-cs


//=========================
ValueSet: VsPackagedProductIdSystems
Id: packagedProductIdSystems
Title: "PackagedProductDefinition identifier systems"
Description: "PackagedProductDefinition Identifier systems (uri)"
* $uri#https://spor.ema.europa.eu/pmswi "SPOR Product (EU)" // to be reviewed

//=========================
ValueSet: VsAdmProductIdSystems
Id: admProductIdSystems
Title: "AdministrableProductDefinition identifier systems"
Description: "AdministrableProductDefinition Identifier systems (uri)"
* $uri#https://spor.ema.europa.eu/pmswi "SPOR Product (EU)" // to be reviewed
* $uri#https://www.who-umc.org/phpid "IDMP PhPID" // to be reviewed

//=========================
ValueSet: VsManufacturedItemIdSystems
Id: manufacturedItemIdSystems
Title: "ManufacturedItemDefinition identifier systems"
Description: "ManufacturedItemDefinition Identifier systems (uri)"
* $uri#https://spor.ema.europa.eu/pmswi "SPOR Product (EU)" // to be reviewed

//=========================
ValueSet: VsOrganizationIdSystems
Id: organizationIdSystems
Title: "Organization identifier systems"
Description: "Organization Identifier systems (uri)"
* $uri#https://spor.ema.europa.eu/omswi "SPOR Organization (EU)" // to be reviewed

//=========================
ValueSet: VsEpiType
Id: epiType
Title: "ePI document types"
Description: "ePI document types"
* $spor-rms#100000155538 "Package Leaflet"
* $loinc#34390-5	"HUMAN OTC DRUG LABEL"
* $loinc#34391-3	"HUMAN PRESCRIPTION DRUG LABEL"

//==========================
ValueSet: VsOrganizationType
Id: organizationType
Title: "Type of organization"
Description: "Type of organization"
* codes from system $spor-organisationRoleType-cs

//==========================
ValueSet: VsOperationType
Id: operationType
Title: "Type of operation"
Description: "Type of operation"
* codes from system $spor-operationType-cs


//==========================
ValueSet: VsLegalStatusOfSupply
Id: legalStatusOfSupply
Title: "Legal Status for the Supply"
Description: "Legal Status for the Supply"
* codes from system $spor-legalStatusForSupply-cs

//==========================
ValueSet: VsAdditionalMonitoringIndicator
Id: additionalMonitoringIndicator
Title: "Additional Monitoring Indicator"
Description: "Additional Monitoring Indicator"
* codes from system $spor-additionalMonitoringIndicator-cs

//==========================
ValueSet: VsPediatricUseIndicator
Id: pediatricUseIndicator
Title: "Pediatric Use Indicator"
Description: "Pediatric Use Indicator"
* codes from system $spor-pediatricUseIndicator-cs



//==========================
ValueSet: VsAtcClassification
Id: atcClassification
Title: "ATC Classification"
Description: "ATC Classification"
* codes from system $atc 
//==========================
ValueSet: VsMarketingStatus
Id: marketingStatus
Title: "Marketing Status"
Description: "Marketing Status"
* codes from system $spor-marketingStatus-cs


//==========================
ValueSet: VsPackType
Id: packType
Title: "Pack Type"
Description: "Pack Type"
* codes from system $spor-packType-cs

//==========================
ValueSet: VsIsoCountryIdSystems
Id: VsIsoCountryIdSystems
Title: "ISO Country two letter code"
Description: "ISO Country two letter code"
* $uri#https://spor.ema.europa.eu/omswi "SPOR Organization (EU)" // to be reviewed

//==========================
ValueSet: VsIsoLanguageIdSystems
Id: VsIsoLanguageIdSystems
Title: "ISO Language two letter code"
Description: "ISO Language two letter code"
* $uri#https://spor.ema.europa.eu/omswi "SPOR Organization (EU)" // to be reviewed

//==========================
ValueSet: VsProductNamePartType
Id: productNamePartType
Title: "Product Name Part Type"
Description: "Product Name Part Type"
* codes from system $spor-productNamePartType-cs
//==========================
ValueSet: VsPartTypeIdSystems
Id: VsPartTypeIdSystems
Title: "Part Type"
Description: "Part Type"
* $uri#https://spor.ema.europa.eu/omswi "SPOR Organization (EU)" // to be reviewed

//==========================
ValueSet: VsProductCrossReferenceTypeIdSystems
Id: VsProductCrossReferenceTypeIdSystems
Title: "Product Cross Reference Type"
Description: "Product Cross Reference Type"
* $uri#https://spor.ema.europa.eu/omswi "SPOR Organization (EU)" // to be reviewed

//==========================
ValueSet: VsProductConfidentialityIdSystems
Id: VsProductConfidentialityIdSystems
Title: "Product Confidentiality"
Description: "Product Confidentiality"
* $uri#https://spor.ema.europa.eu/omswi "SPOR Organization (EU)" // to be reviewed

//==========================
ValueSet: VsPackageMaterialIdSystems
Id: VsPackageMaterialIdSystems
Title: "Package Material"
Description: "Package Material"
* $uri#https://spor.ema.europa.eu/omswi "SPOR Organization (EU)" // to be reviewed

//==========================
ValueSet: VsShelfLifeTypeIdSystems
Id: VsShelfLifeTypeIdSystems
Title: "Shelf Life Type"
Description: "Shelf Life Type"
* $uri#https://spor.ema.europa.eu/omswi "SPOR Organization (EU)" // to be reviewed

//==========================
ValueSet: VsSpecialPrecautionsForStorageIdSystems
Id: VsSpecialPrecautionsForStorageIdSystems
Title: "Special Precautions For Storage"
Description: "Special Precautions For Storage"
* codes from system $spor-precautionsForStorage-cs // "SPOR Organization (EU)"  to be reviewed
// add fda codes
// add PMDA
//==========================
ValueSet: VsListOrderCodesIdSystems
Id: VsListOrderCodesIdSystems
Title: "Order Codes for List"
Description: "Order Codes for List"
* $uri#http://hl7.org/fhir/ValueSet/list-order "Order Codes for List"

//==========================
ValueSet: VsExampleUseCodesForListIdSystems
Id: VsExampleUseCodesForListIdSystems
Title: "Use Codes for List"
Description: "Use Codes for List"
* $uri#http://hl7.org/fhir/ValueSet/list-example-codes "List Order Codes"

//==========================
ValueSet: VsSectionCode
Id: VsSectionCode
Title: "Section Codes"
Description: "Section Codes"
* $example-org#sectionCode "sedtion code placeholder"