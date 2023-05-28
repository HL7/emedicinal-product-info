Profile: MedicinalProductDefinitionUvEpi
Parent: MedicinalProductDefinition
Id: MedicinalProductDefinition-uv-epi
Title: "MedicinalProductDefinition (ePI)"
Description: "Description of the packaged authorized medicinal product(s) associated to this ePI document."

* identifier 1..
  * system from VsMedProductIdSystems (extensible)
  * system 1..
  * value 1..

* type

* domain from $VS-medicinal-product-domain  (preferred)

* indication ^short = "Narrative text of the authorized indication(s) for this product."

* version
* status
* statusDate ^short = "The date at which this status became applicable." 
* description ^short = "General description of the medicinal product referred by the ePI"

* combinedPharmaceuticalDoseForm
* route

* legalStatusOfSupply

* additionalMonitoringIndicator

* specialMeasures

* pediatricUseIndicator

* classification

* marketingStatus 0..
  * ^short = "Marketing status of the medicinal product in contrast to marketing authorization"
  * status from VsMarketingStatus (preferred)

* packagedMedicinalProduct

* contact
  * type
  * contact

* name 1..
  * productName 1..1
  
  * type 1..
  
	// * coding 1.. 
  * part ^slicing.discriminator[0].type = #pattern
  * part ^slicing.discriminator[=].path = "type"
  * part ^slicing.rules = #open
  * part contains
    ProprietaryNamePart 0.. and
  Non-proprietaryNamePart 0.. and
  StrengthPart 0.. and
  PharmaceuticalDoseFormPart 0..
  
  * part[ProprietaryNamePart]
    * part
    * type
  * part[Non-proprietaryNamePart]
    * part
    * type
  * part[StrengthPart]
    * part
    * type
  * part[PharmaceuticalDoseFormPart]
    * part
    * type

  * usage
    * country
    * jurisdiction

* crossReference
  * product
  * type

* operation
  * type
  * type.concept 1..
  * effectiveDate
  * organization
