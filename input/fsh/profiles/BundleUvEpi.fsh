Profile: BundleUvEpi
Parent: Bundle
Id: Bundle-uv-epi
Title: "Bundle - ePI"
Description: "Medicinal product information is a pivotal source of regulated and scientifically validated information that assists healthcare professionals in prescribing and dispensing the medicine and informs consumers about its safe and effective use. This profile represents the constraints applied to the Bundle resource used in the Electronic Product Information (ePI) FHIR Implementation Guide."
* ^purpose = "This profile represents the constraints applied to the Bundle resource used to create an Electronic Product Information (ePI) document."
 
* obeys bdl-epi-1
* . ^short = "Electronic Product Information Bundle Document"
* . ^definition = "Electronic Product Information Bundle Document. A container for the collection of resources that make up the ePI document."

* identifier 1.. 
  * ^short = "Persistent identifier for the bundle"
  * ^definition = "Persistent identifier that remains the same for all versions of this ePI. The identifier remains the same regardless of any changes to the Bundle and regardless of any changes made to the Resources within the Bundle. This purpose of this identifier is to ensure all versions of an ePI can be collected as a set under a common parent identifier."

* type = #document (exactly)

* timestamp 1.. 
  * ^short = "Persistent original date of approval"
  * ^definition = "Original date in which this ePI document received its first authorization. As with the identifier, this date persists across versions. "

* meta
  * versionId 1..1
  * lastUpdated 1..1

* entry 1.. // 
* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[=].path = "$this.resource"
/* * entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "$this.resource" */


* entry ^slicing.rules = #open
* entry ^short = "Entry resource in the ePI bundle"
* entry ^definition = "An entry resource included in the ePI document bundle resource."
* entry ^comment = "Must contain the ePI Composition as the first entry (only a single Composition resource instance may be included).  Additional constraints are specified in the ePI Composition profile."
* entry
  * resource 1..


// * entry contains
    // composition 1..1 and
  // list 0.. and
	// organization 0.. and
	// authorization 0.. and
	// medicinalProduct 0.. and
	// administrableProduct 0.. and
	// manufacturedItem 0.. and
	// ingredient 0.. and
	// packagedProduct 0.. and
	// clinicalUse 0.. and
	// substanceDefinition 0.. and
	// binary 0..
	
// * entry[composition].resource  1..
// * entry[organization].resource 	1..
// * entry[authorization].resource 		1..
// * entry[medicinalProduct].resource 		1..
// * entry[packagedProduct].resource 		1..
// * entry[administrableProduct].resource 	1..
// * entry[manufacturedItem].resource 				1..
// * entry[ingredient].resource 			1..
// * entry[substanceDefinition].resource 1..
// * entry[binary].resource 1.. 	
// * entry[composition].resource only CompositionUvEpi
// * entry[organization].resource only OrganizationUvEpi
// * entry[authorization].resource only RegulatedAuthorizationUvEpi
// * entry[medicinalProduct].resource only MedicinalProductDefinitionUvEpi
// * entry[packagedProduct].resource only PackagedProductDefinitionUvEpi
// * entry[administrableProduct].resource only AdministrableProductDefinitionUvEpi
// * entry[manufacturedItem].resource only ManufacturedItemDefinitionUvEpi
// * entry[ingredient].resource only IngredientUvEpi

* insert BundleEntry (composition, 1..1, CompositionUvEpi, ePI Composition, ePI Composition )

* insert BundleEntry (organization, 0.., OrganizationUvEpi, Organization, Organization)
* insert BundleEntry (authorization, 0.., RegulatedAuthorizationUvEpi, Regulated Authorization, Regulated Authorization )

* insert BundleEntry (medicinalProduct, 0.., MedicinalProductDefinitionUvEpi, Medicinal Product, Medicinal Product Definition )
* insert BundleEntry (packagedProduct, 0.., PackagedProductDefinitionUvEpi, Packaged Product, Packaged Product Definition )
* insert BundleEntry (administrableProduct, 0.., AdministrableProductDefinitionUvEpi, Administrable Product, Administrable Product Definition )


* insert BundleEntry (manufacturedItem, 0.., ManufacturedItemDefinitionUvEpi, Manufactured Item, Manufactured Item Definition )
* insert BundleEntry (ingredient, 0.., IngredientUvEpi, Ingredient, Ingredient )
* insert BundleEntry (clinicalUse, 0.., ClinicalUseDefinition, Interactions\, Warnings\, Indications\,Contraindications, ePI ClinicalUseDefinition used for Interactions\, Warnings\,Indication\, Contraindication)
* insert BundleEntry (substanceDefinition, 0.., SubstanceDefinitionUvEpi, Substance Definition, Substance Definition )
* insert BundleEntry (binary, 0.., Binary, Binary, Binary )

/* * insert BundleEntry (clinicalUseDefinitionContraindicationUvEpi, 0.., ClinicalUseDefinitionContraindicationUvEpi )
* insert BundleEntry (clinicalUseDefinitionIndicationUvEpi, 0.., ClinicalUseDefinitionIndicationUvEpi )
* insert BundleEntry (clinicalUseDefinitionInteractionUvEpi, 0.., ClinicalUseDefinitionInteractionUvEpi )
* insert BundleEntry (clinicalUseDefinitionUndesirableEffectUvEpi, 0.., ClinicalUseDefinitionUndesirableEffectUvEpi )
* insert BundleEntry (clinicalUseDefinitionWarningUvEpi, 0.., ClinicalUseDefinitionWarningUvEpi ) */


// * entry[substanceDefinition].resource only SubstanceDefinitionUvEpi
// * entry[binary].resource only Binary


* signature 
  * ^short = "Digital Signature."
  * ^definition = "Market authorization holder can digitally sign the ePI document."




