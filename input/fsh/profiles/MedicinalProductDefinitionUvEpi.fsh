Profile: MedicinalProductDefinitionUvEpi
Parent: MedicinalProductDefinition
Id: MedicinalProductDefinition-uv-epi
Title: "MedicinalProductDefinition (ePI)"
Description: "Description of the packaged authorized medicinal product(s) associated to this ePI document."

* identifier 1..
  * system from VsMedProductIdSystems (extensible)
  * system 1..
  * value 1..
  * ^short = "Unique identifier assigned to this medicinal product by the health authority. Could be the ISO IDMP Medicinal Product Identifier (MPID)."

* type from VsMedProductTypeIdSystems (extensible)

* domain from $VS-medicinal-product-domain  (extensible)

* indication ^short = "Narrative text of the authorized indication(s) for this product."

* version ^short = "Business version of this product"
* status from  $VS-publication-status (extensible)
* statusDate ^short = "The date at which this status became applicable." 
* description ^short = "General description of the medicinal product referred by the ePI"

* combinedPharmaceuticalDoseForm ^short = "The dose form for a combined form of a multiple part product" // ==> add voc binding 
* route ^short = "Route of administration" 

* legalStatusOfSupply from VsLegalStatusOfSupplyIdSystems (extensible)

* additionalMonitoringIndicator from VsadditionalMonitoringIndicatorIdSystems (extensible)
* additionalMonitoringIndicator ^short = "Additional monitoring this Medicinal Product is subject to (for regulatory reasons)" // ==> add voc binding 

* pediatricUseIndicator from VspediatricUseIndicatorIdSystems (extensible)
* pediatricUseIndicator ^short = "Authorised for pediatric use"

* classification from VsclassificationIdSystems (extensible)
* classification ^short = "Classifications used for this product" // ==> add voc binding and slices

* marketingStatus 0..
  * ^short = "Marketing status of the medicinal product in contrast to marketing authorization"
  * status from VsMarketingStatusIdSystems (extensible)

* packagedMedicinalProduct from VsPackTypeIdSystems (extensible)
* packagedMedicinalProduct ^short = "Package type for this product" // ==> add voc binding 

* name
  * productName
  * ^short = "The full name of this product"
  * ^example.label = "general"  
  * ^example.valueString = "Humalog Mix50 Insulin KwikPen, 3ml pre-fill"
  
  * type from VsNameTypeIdSystems (extensible)
  * ^example.label = "Example"
  * ^example.valueCodeableConcept = $spor-rms#220000000001 "Full name"
	// * coding 1.. 
  
  * type from VsPartTypeIdSystems (extensible)
  * part ^slicing.discriminator[0].type = #value
  * part ^slicing.discriminator[=].path = "system"
  * part ^slicing.rules = #open
  * part contains
    ProprietaryNamePart 0.. and
  Non-proprietaryNamePart 0.. and
  StrengthPart 0.. and
  PharmaceuticalDoseFormPart 0..

  * usage
    * country from VsIsoCountryIdSystems (extensible)
    * jurisdiction from VsIsoCountryIdSystems (extensible)
    * language from VsIsoLanguageIdSystems (extensible)

* crossReference
  * product from VsMedProductIdSystems (extensible)
  * type from VsProductCrossReferenceTypeIdSystems (extensible)

* operation
  * type from VsOrganizationType (extensible)
  * effectiveDate
  * organization only Reference(OrganizationUvEpi)
  * confidentialityIndicator from ProductConfidentiality (extensible)
