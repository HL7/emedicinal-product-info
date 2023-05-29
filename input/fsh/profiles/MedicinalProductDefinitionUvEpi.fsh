Profile: MedicinalProductDefinitionUvEpi
Parent: MedicinalProductDefinition
Id: MedicinalProductDefinition-uv-epi
Title: "MedicinalProductDefinition (ePI)"
Description: "Description of the packaged authorized medicinal product(s) associated to this ePI document."

* identifier 1..
  * system
  * system 1..
  * value 1..

* type 0..1

* domain 0..1

* version

* status 0..1

* statusDate 0..1
  * ^short = "The date at which this status became applicable." 

* description 0..1
  * ^short = "General description of the medicinal product referred by the ePI"

* combinedPharmaceuticalDoseForm 0..1

* route 0..*

* indication 0..1
  * ^short = "Narrative text of the authorized indication(s) for this product."

* legalStatusOfSupply 0..1

* additionalMonitoringIndicator 0..1

* specialMeasures 0..*

* pediatricUseIndicator 0..1

* classification 0..* 

* marketingStatus 0..
  * country  from VsCountry (preferred)
  * dateRange
  * status

* packagedMedicinalProduct 0..* 

* contact 0..*
  * type 0..1
  * contact 1..1

* name 1..
  * productName 1..1
  * type 0..1
  * part 0..*
    * part 1..1
    * type 1..1
  * usage 0..* 
    * country 1..1
    * jurisdiction 0..1
    * language 1..1

* crossReference 0..*
  * product 1..1
  * type 0..1

* operation 0..*
  * type 0..1
  * type.concept 1..
  * effectiveDate 0..1
  * organization 0..*
