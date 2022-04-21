Profile: MedicinalProductDefinitionUvEpi
Parent: MedicinalProductDefinition
Id: MedicinalProductDefinition-uv-epi
Title: "MedicinalProductDefinition (ePI)"
Description: "MedicinalProductDefinition (ePI)"

* identifier 1..
  * system from VsMedProductIdSystems (extensible)
  * system 1..
  * value 1..

* type from $VS-medicinal-product-type (extensible)
* domain from $VS-medicinal-product-domain  (extensible)

* indication ^short = "Description of indication(s) for this product, used when structured indications are not required."

* version ^short = "Business version of this product"
* status from  $VS-publication-status (extensible)
* statusDate ^short = "The date at which this status became applicable." 
* description ^short = "General description of the product referred by the ePI"

* combinedPharmaceuticalDoseForm ^short = "The dose form for a single part product or combined form of a multiple part product" // ==> add voc binding 
* route ^short = "Route of administration" 

* legalStatusOfSupply
  * coding 1..
  * ^example.label = "SPOR example"
  * ^example.valueCodeableConcept = $spor-rms#100000072084 "Medicinal product subject to medical prescription" 

* additionalMonitoringIndicator ^short = "Additional monitoring this Medicinal Product is subject to (for regulatory reasons)" // ==> add voc binding 
* pediatricUseIndicator ^short = "Authorised pediatric use" // ==> add voc binding 
* classification ^short = "Classifications used for this product" // ==> add voc binding and slices
* marketingStatus ^short = "Marketing status of the medicinal product in contrast to marketing authorization"
* packagedMedicinalProduct ^short = "Package type for this product" // ==> add voc binding 

* name
* name.productName
  * ^short = "The full name of this product"
  * ^example.label = "general"  
  * ^example.valueString = "Humalog Mix50 Insulin KwikPen, 3ml pre-fill"

* name.type 
  * ^example.label = "SPOR example"
  * ^example.valueCodeableConcept = $spor-rms#220000000001 "Full name"
	// * coding 1.. 
* name.countryLanguage.country ^short = "Country for where this name applies (code)" // ==> add voc bidning = urn:iso:std:iso:3166#eu "European Union"
* name.countryLanguage.language ^short = "Language for this name (code)" // = urn:ietf:bcp:47#en  "English"
* name.namePart 0..
  * part ^example.label = "general" 
  * part ^example.valueString = "Humalog"
  * type ^example.label = "SPOR example" 
  * type ^example.valueCodeableConcept = $spor-rms#220000000002 "Invented name part"

* domain.coding 1..
