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

* version ^short = "Business version of this product"
* status from  $VS-publication-status (extensible)
* statusDate ^short = "The date at which this status became applicable." 
* description ^short = "General description of the product referred by the ePI"

* combinedPharmaceuticalDoseForm ^short = "The dose form for a single part product or combined form of a multiple part product" // ==> add voc binding 
* route ^short = "Route of administration" 

// * legalStatusOfSupply MS // https://spor.ema.europa.eu/rmswi/#/#100000072084 "Medicinal product subject to medical prescription"

// CHANGE TO A VALUE SET BASED DISCRIMINATOR
* legalStatusOfSupply.coding ^slicing.discriminator[0].type = #value
* legalStatusOfSupply.coding ^slicing.discriminator[=].path = "system"
* legalStatusOfSupply.coding ^slicing.rules = #open
* legalStatusOfSupply.coding contains
    spor 0..*
* legalStatusOfSupply.coding[spor] ^short = "SPOR (Europe)"
* legalStatusOfSupply.coding[spor] ^definition = "EMA - SPOR Referential" // to be reviewed
* legalStatusOfSupply.coding[spor].system = $spor // to be reviewed
* legalStatusOfSupply.coding[spor].code 1..

* additionalMonitoringIndicator ^short = "Additional monitoring this Medicinal Product is subject to (for regulatory reasons)" // ==> add voc binding 
* pediatricUseIndicator ^short = "Authorised pediatric use" // ==> add voc binding 
* classification ^short = "Classifications used for this product" // ==> add voc binding and slices
* marketingStatus ^short = "Marketing status of the medicinal product in contrast to marketing authorization"
* packagedMedicinalProduct ^short = "Package type for this product" // ==> add voc binding 

* name
  * productName ^short = "The full name of this product" // = "Humalog Mix50 Insulin KwikPen, 3ml pre-fill"
//   * type MS // = https://spor.ema.europa.eu/rmswi/#/#220000000001 "Full name"
  // CHANGE TO A VALUE SET BASED DISCRIMINATOR
  * type.coding ^slicing.discriminator[0].type = #value
  * type.coding ^slicing.discriminator[=].path = "system"
  * type.coding ^slicing.rules = #open
  * type.coding contains
      spor 0..*
  * type.coding[spor] ^short = "SPOR (Europe)"
  * type.coding[spor] ^definition = "EMA - SPOR Referential" // to be reviewed
  * type.coding[spor].system = $spor // to be reviewed
  * type.coding[spor].code 1..
  * countryLanguage.country ^short = "Country for where this name applies (code)" // ==> add voc bidning = urn:iso:std:iso:3166#eu "European Union"
  * countryLanguage.language ^short = "Language for this name (code)" // = urn:ietf:bcp:47#en  "English"
  * namePart 0..
    * part 1.. // = "Humalog"
    * type 1.. // https://spor.ema.europa.eu/rmswi/#/#220000000002 "Invented name part"
	// CHANGE TO A VALUE SET BASED DISCRIMINATOR
    * type.coding ^slicing.discriminator[0].type = #value
    * type.coding ^slicing.discriminator[=].path = "system"
    * type.coding ^slicing.rules = #open
    * type.coding contains
        spor 0..*
    * type.coding[spor] ^short = "SPOR (Europe)"
    * type.coding[spor] ^definition = "EMA - SPOR Referential" // to be reviewed
    * type.coding[spor].system = $spor // to be reviewed
    * type.coding[spor].code 1..
	
	/*------
* name.namePart.part = "insulin lispro"
* name.namePart.type = https://spor.ema.europa.eu/rmswi/#/#220000000003
* name.namePart.type.text = "Scientific name part"
* name.namePart.part = "100 U/ml"
* name.namePart.type = https://spor.ema.europa.eu/rmswi/#/#220000000004
* name.namePart.type.text = "Strength part"
* name.namePart.part = "Suspension for injection"
* name.namePart.type = https://spor.ema.europa.eu/rmswi/#/#220000000005
* name.namePart.type.text = "Pharmaceutical dose form part"
   ----*/
   
   /* =====
* identifier ^slicing.discriminator[0].type = #value
* identifier ^slicing.discriminator[=].path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    spor 0..*
* identifier[spor] ^short = "SPOR (Europe)"
* identifier[spor] ^definition = "EMA - SPOR product identifier" // to be reviewed
* identifier[spor].system = $spor-prod // to be reviewed
* identifier[spor].value ^short = "Marketing Authorisation" // to be reviewed
* identifier[spor].use = #official
==== */
/* --- CHANGE TO A VALUE SET BASED DISCRIMINATOR
* type.coding ^slicing.discriminator[0].type = #value
* type.coding ^slicing.discriminator[=].path = "system"
* type.coding ^slicing.rules = #open
* type.coding contains
    spor 0..*
* type.coding[spor] ^short = "SPOR (Europe)"
* type.coding[spor] ^definition = "EMA - SPOR Referential" // to be reviewed
* type.coding[spor].system = $spor // to be reviewed
* type.coding[spor].code 1.. 

-- */


// * domain MS // = https://spor.ema.europa.eu/rmswi/#/#100000000012 "Human use"
/* ==== CHANGE TO A VALUE SET BASED DISCRIMINATOR
* domain.coding ^slicing.discriminator[0].type = #value
* domain.coding ^slicing.discriminator[=].path = "system"
* domain.coding ^slicing.rules = #open
* domain.coding contains
    spor 0..*
* domain.coding[spor] ^short = "SPOR (Europe)"
* domain.coding[spor] ^definition = "EMA - SPOR Referential" // to be reviewed
* domain.coding[spor].system = $spor // to be reviewed
* domain.coding[spor].code 1.. 
=== */
