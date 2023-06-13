Profile: MedicinalProductDefinitionUvEpi
Parent: MedicinalProductDefinition
Id: MedicinalProductDefinition-uv-epi
Title: "MedicinalProductDefinition (ePI)"
Description: "Description of the packaged authorized medicinal product(s) associated to this ePI document."

* identifier 1..
  * system 1..
  * value 1..

* type ^short = "Regulatory type, e.g. Investigational or Authorized."

* domain ^short = "If this medicine applies to human or veterinary uses."
* domain from $VS-medicinal-product-domain (example)

* version ^short = "A business identifier relating to a specific version of the product."

* status ^short = "The status within the lifecycle of this product record."
* statusDate ^short = "The date at which this status became applicable." 

* description ^short = "General description of the medicinal product referred by the ePI"

* combinedPharmaceuticalDoseForm from VsDoseForm (example)

* route from VsRouteOfAdministration (example)

* indication ^short = "Narrative text of the authorized indication(s) for this product."

* legalStatusOfSupply ^short = "The legal status of supply of the medicinal product as classified by the regulator."

* additionalMonitoringIndicator ^short = "Whether the Medicinal Product is subject to additional monitoring for regulatory reasons."

* specialMeasures ^short = "Whether the Medicinal Product is subject to special measures for regulatory reasons."

* pediatricUseIndicator ^short = "If authorised for pediatric use"

* classification ^short = "Allows the product to be classified by various systems (e.g. ATC)"

* marketingStatus 0..
  * country  from VsCountry (preferred)
  * dateRange ^short = "The date when the Medicinal Product is placed on the market by the Marketing Authorization Holder"
  * status ^short = "Status of the marketing of the medicinal product."

* packagedMedicinalProduct ^short = "Package type for the product." 

* contact 0..*
  * type ^short = "Allows the contact to be classified, for example QPPV, Pharmacovigilance Enquiry Information."
  * contact ^short = "A specific contact, person (in a role), or an organization for this product"

* name 1..
  * productName ^short = "The full product name."
  * type ^short = "Type of product name, such as rINN, Proprietary, Non-Proprietary"
  * part 0..*
    * part ^short = "A fragment of a product name."
    * type ^short = "Type for this part of the name (e.g. strength part)"
  * usage 0..* 
    * country ^short = "Country where this name applies"
    * jurisdiction ^short = "Jurisdiction where this name applies"
    * language ^short = "Language for this name"
