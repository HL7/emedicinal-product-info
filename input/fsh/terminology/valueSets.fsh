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
Title: "Combined Pharmaceutical Dose Form"
Description: "Combined Pharmaceutical Dose Form"
* ^experimental = false
* codes from system $spor-combinedPharmaceuticalDoseForm-cs

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
* $loinc#34390-5	"HUMAN OTC DRUG LABEL"
* $loinc#34391-3	"HUMAN PRESCRIPTION DRUG LABEL"
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"

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
Title: "WHO ATC"
Description: "World Health Organization Anatomical Therapeutic Chemical (ATC) classification system"
* ^experimental = false
* codes from system $atc 
* ^copyright = "This artifact includes content from Anatomical Therapeutic Chemical (ATC) classification system. ATC codes are copyright World Health Organization (WHO) Collaborating Centre for Drug Statistics Methodology. Terms & Conditions in https://www.whocc.no/use_of_atc_ddd/"

//==========================
ValueSet: VsMarketingStatus
Id: marketingStatus
Title: "Marketing Status"
Description: "Marketing Status"
* ^experimental = false
* codes from system $spor-marketingStatus-cs

//==========================
ValueSet: VsAuthorizationStatus
Id: authorizationStatus
Title: "Authorization Status"
Description: "Authorization Status"
* ^experimental = false
* codes from system $spor-marketingStatus-cs // to be reviewed

//==========================
ValueSet: VsSecondaryPrimaryPackType
Id: secondaryPrimaryPackType
Title: "Pack Type"
Description: "Pack Type"
* ^experimental = false
* codes from system $spor-packType-cs

//==========================
ValueSet: VsPackageType
Id: packageType
Title: "High level Pack Type"
Description: "High level type of pack; e.g., medicinal product pack, sample pack, shipping container."
* ^experimental = false
* codes from system http://hl7.org/fhir/package-type //http://hl7.org/fhir/ValueSet/package-type // FHIR terminology

//==========================
ValueSet: VsCountry
Id: country
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
Id: partType
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
Id: productConfidentialityIdSystems
Title: "Product Confidentiality"
Description: "Product Confidentiality"
* ^experimental = false
* $uri#https://spor.ema.europa.eu/omswi "SPOR Organization (EU)" // to be reviewed

//==========================
ValueSet: VsPackageMaterial
Id: packageMaterial
Title: "Package Material"
Description: "Package Material"
* ^experimental = false
* codes from system https://spor.ema.europa.eu/omswi //"SPOR Organization (EU)" // to be reviewed

//==========================
ValueSet: VsShelfLifeType
Id: shelfLifeType
Title: "Shelf Life Type"
Description: "Shelf Life Type"
* ^experimental = false
* codes from system https://spor.ema.europa.eu/omswi //"SPOR Organization (EU)" // to be reviewed

//==========================
ValueSet: VsSpecialPrecautionsForStorage
Id: specialPrecautionsForStorage
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
Id: exampleUseCodesForList
Title: "The topic of this list"
Description: "The topic of this list"
* ^experimental = false
* $uri#http://hl7.org/fhir/ValueSet/list-example-codes "List Order Codes"

//==========================
ValueSet: VsSectionCode
Id: sectionCode
Title: "Section Codes"
Description: "Section Codes"
* ^experimental = false
* $example-org#sectionCode "sedtion code placeholder"

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
* $uri#https://spor.ema.europa.eu/rmswi // to be reviewed

//==========================
ValueSet: VsPropertyColor
Id: propertyColor
Title: "Color of the product"
Description: "Color of the product"
* ^experimental = false
* $uri#https://ncithesaurus.nci.nih.gov/ncitbrowser/ConceptReport.jsp?dictionary=NCI_Thesaurus&ns=ncit&code=C54453 // to be reviewed

//==========================
ValueSet: VsPropertyFlavor
Id: propertyFlavor
Title: "Flavor of the product"
Description: "Flavor of the product"
* ^experimental = false
* $uri#https://ncithesaurus.nci.nih.gov/ncitbrowser/ConceptReport.jsp?dictionary=NCI_Thesaurus&ns=ncit&code=C73339 // to be reviewed

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
* $uri#https://ncithesaurus.nci.nih.gov/ncitbrowser/ConceptReport.jsp?dictionary=NCI_Thesaurus&ns=ncit&code=C54454 // to be reviewed

//==========================
ValueSet: VsPropertySurfaceForm
Id: VsPropertySurfaceForm
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
* include codes from system https://gsrs.ncats.nih.gov/ginas/app/beta

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
* $uri#http://terminology.hl7.org/ValueSet/v3-RoleClassIngredientEntity // FHIR terminology to be reviewed

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

//==========================
ValueSet: VsMeddra
Id: meddra
Title: "MedDRA Terms for clinical diseases and symptoms"
Description: "MedDRA Terms for clinical diseases and symptoms"
* ^experimental = false
* codes from system $meddra

//==========================
ValueSet: VsProprietaryNamePart
Id: proprietaryNamePart
Title: "Proprietary Name of the medicinal product"
Description: "Proprietary Name of the medicinal product"
* ^experimental = false
* codes from system https://spor.ema.europa.eu/rmswi

//==========================
ValueSet: VsNonproprietaryNamePart
Id: nonproprietaryNamePart
Title: "Non-proprietary Name of the active ingredient(s)"
Description: "Non-proprietary Name of the active ingredient(s)"
* ^experimental = false
* codes from system https://spor.ema.europa.eu/rmswi

//==========================
ValueSet: VsStrengthPart
Id: strengthPart
Title: "Strength of the medicinal product name"
Description: "Strength of the medicinal product name"
* ^experimental = false
* $uri#https://placeholder.com // to be reviewed
* codes from system https://spor.ema.europa.eu/rmswi

//==========================
ValueSet: VsPharmaceuticalDoseFormPart
Id: pharmaceuticalDoseFormPart
Title: "Pharmaceutical Dose Form of the medicinal product"
Description: "Pharmaceutical Dose Form of the medicinal product"
* ^experimental = false
* codes from system https://spor.ema.europa.eu/rmswi
