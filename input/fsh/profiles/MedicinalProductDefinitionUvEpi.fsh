Profile: MedicinalProductDefinitionUvEpi
Parent: MedicinalProductDefinition
Id: MedicinalProductDefinition-uv-epi
Title: "MedicinalProductDefinition (ePI)"
Description: "MedicinalProductDefinition (ePI)"


* identifier 1..
* identifier ^slicing.discriminator[0].type = #value
* identifier ^slicing.discriminator[=].path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    spor 0..* MS
* identifier[spor] ^short = "SPOR (Europe)"
* identifier[spor] ^definition = "EMA - SPOR product identifier" // to be reviewed
* identifier[spor].system = $spor-prod // to be reviewed
* identifier[spor].value ^short = "Marketing Authorisation" // to be reviewed
* identifier[spor].use = #official

* type MS // = https://spor.ema.europa.eu/rmswi/#/#100000072062
* domain MS // = https://spor.ema.europa.eu/rmswi/#/#100000000012 "Human use"
* status MS // http://hl7.org/fhir/publication-status#active "Active"
* legalStatusOfSupply MS // https://spor.ema.europa.eu/rmswi/#/#100000072084 "Medicinal product subject to medical prescription"
* name
  * productName MS // = "Humalog Mix50 Insulin KwikPen, 3ml pre-fill"
  * type MS // = https://spor.ema.europa.eu/rmswi/#/#220000000001 "Full name"
  * countryLanguage.country MS // = urn:iso:std:iso:3166#eu "European Union"
  * countryLanguage.language MS // = urn:ietf:bcp:47#en  "English"
  * namePart 0..
    * part 1.. // = "Humalog"
    * type 1.. // https://spor.ema.europa.eu/rmswi/#/#220000000002 "Invented name part"
	
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
