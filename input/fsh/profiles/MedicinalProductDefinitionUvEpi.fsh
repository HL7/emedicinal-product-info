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

* type from VsMedProductType (preferred)

* domain from $VS-medicinal-product-domain  (preferred)

* indication ^short = "Narrative text of the authorized indication(s) for this product."

* version ^short = "Business version of this product"
* status from  $VS-publication-status (extensible)
* statusDate ^short = "The date at which this status became applicable." 
* description ^short = "General description of the medicinal product referred by the ePI"

* combinedPharmaceuticalDoseForm from VsPharmaceuticalDoseForm (preferred)
* route from VsRouteOfAdministration (preferred)

* legalStatusOfSupply from VsLegalStatusOfSupply (preferred)

* additionalMonitoringIndicator from VsAdditionalMonitoringIndicator (preferred)
 // additionalMonitoringIndicator ^short = "Additional monitoring this Medicinal Product is subject to (for regulatory reasons)" // ==> add voc binding 

* pediatricUseIndicator from VsPediatricUseIndicator (preferred)
// * pediatricUseIndicator ^short = "Authorised for pediatric use"

* classification from VsAtcClassification (preferred)
// * classification ^short = "Classifications used for this product" // ==> add voc binding and slices

* marketingStatus 0..
  * ^short = "Marketing status of the medicinal product in contrast to marketing authorization"
  * status from VsMarketingStatus (preferred)

* packagedMedicinalProduct from VsPackType (preferred)
// * packagedMedicinalProduct ^short = "Package type for this product" // ==> add voc binding 

* name 1..
  * productName 1..1
    * ^short = "The full name of this product"
    * ^example.label = "general"  
    * ^example.valueString = "Humalog Mix50 Insulin KwikPen, 3 ml pre-fill"
  
  * type from VsProductNamePartType (preferred)
  
	// * coding 1.. 
  * part ^slicing.discriminator[0].type = #value
  * part ^slicing.discriminator[=].path = "system"
  * part ^slicing.rules = #open
  * part contains
    ProprietaryNamePart 0.. and
  Non-proprietaryNamePart 0.. and
  StrengthPart 0.. and
  PharmaceuticalDoseFormPart 0..
  
  * part[ProprietaryNamePart]
    * part
      * ^short = "brand name of this product"
      * ^example.valueString = "Humalog Mix50"
    * type from VsProductNamePartType (preferred)
  * part[Non-proprietaryNamePart]
    * part
      * ^short = "International Non-proprietary Name (INN) of this product"
      * ^example.valueString = "Insulin lispro"
    * type from VsProductNamePartType (preferred)
  * part[StrengthPart]
    * part
      * ^short = "strength expressed as the quantity of active ingredient"
      * ^example.valueString = "100 units/ml"
    * type from VsProductNamePartType (preferred)
  * part[PharmaceuticalDoseFormPart]
    * part
      * ^short = "Physical manifestation of a product as intended to be delivered to the patient."
      * ^example.valueString = "solution for injection"
    * type from VsProductNamePartType (preferred)

  * usage
    * country from VsCountry (preferred)
    * jurisdiction from VsCountry (preferred)
    * language from VsLanguage (preferred)

* crossReference
  * product only Reference(MedicinalProductDefinition)
  * type from VsMedicinalProductCrossReferenceType (extensible)

* operation
  * type from VsOperationType (preferred)
  * type.concept 1..
  * effectiveDate
  * organization only Reference(OrganizationUvEpi)
  // * confidentialityIndicator from ProductConfidentiality (extensible)
