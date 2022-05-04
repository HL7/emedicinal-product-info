Profile: BundleUvEpi
Parent: Bundle
Id: Bundle-uv-epi
Title: "Bundle - ePI"
Description: "This profile represents the constraints applied to the Bundle resource by the Electronic Product Information (ePI) FHIR Implementation Guide."
* ^purpose = "An electronic product information (ePI) is authorised, statutory product information for medicines (i.e. summary of product characteristics, package leaflet and labelling) in a semi-structured format created using the common EU electronic standard."
* . 
* obeys bdl-epi-1
* . ^short = "Electronic Product Information Bundle"
* . ^definition = "Electronic Product Information Bundle. \r\nA container for a collection of resources in the ePI document."
* identifier 1.. 
* type = #document (exactly)
* timestamp 1.. 
* link ..0
* entry 1.. // 
* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[=].path = "resource"

/* --------
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resource"
--- */

* entry ^slicing.rules = #open
* entry ^short = "Entry resource in the ePI bundle"
* entry ^definition = "An entry resource included in the ePI document bundle resource."
* entry ^comment = "Must contain the ePI Composition as the first entry (only a single Composition resource instance may be included).  Additional constraints are specified in the ePI Composition profile."
* entry
  * fullUrl 1..
  * search ..0
  * request ..0
  * response ..0
  * resource 1..
* entry contains
    composition 1..1 and
	organization 0.. and
	authorization 0.. and
	medicinalProduct 0.. and
	administrableProduct 0.. and
	manItem 0.. and
	ingredient 0.. and
	packagedProduct 0.. and
	clinicalUse 0.. and
	substanceDefinition 0.. and
	binary 0..
	
* entry[composition].resource  1..
* entry[organization].resource 	1..
* entry[authorization].resource 		1..
* entry[medicinalProduct].resource 		1..
* entry[packagedProduct].resource 		1..
* entry[administrableProduct].resource 	1..
* entry[manItem].resource 				1..
* entry[ingredient].resource 			1..
* entry[clinicalUse].resource 	1..
* entry[substanceDefinition].resource 1..
* entry[binary].resource 1.. 
	
* entry[composition].resource only CompositionUvEpi
* entry[organization].resource only OrganizationUvEpi
* entry[authorization].resource only RegulatedAuthorizationUvEpi
* entry[medicinalProduct].resource only MedicinalProductDefinitionUvEpi
* entry[packagedProduct].resource only PackagedProductDefinitionUvEpi
* entry[administrableProduct].resource only AdministrableProductDefinitionUvEpi
* entry[manItem].resource only ManufacturedItemDefinitionUvEpi
* entry[ingredient].resource only IngredientUvEpi
* entry[clinicalUse].resource only ClinicalUseDefinitionContraindicationUvEpi or ClinicalUseDefinitionIndicationUvEpi or ClinicalUseDefinitionInteractionUvEpi  or ClinicalUseDefinitionUndesirableEffectUvEpi or ClinicalUseDefinitionWarningUvEpi
* entry[substanceDefinition].resource only SubstanceDefinitionUvEpi
* entry[binary].resource only Binary
* signature ^short = "Digital Signature."




