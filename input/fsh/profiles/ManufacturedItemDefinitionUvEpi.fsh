Profile: ManufacturedItemDefinitionUvEpi
Parent: ManufacturedItemDefinition
Id: ManufacturedItemDefinition-uv-epi
Title: "ManufacturedItemDefinition (ePI)"
Description: "ManufacturedItemDefinition (ePI)"

* identifier 1..
  * system from VsManufacturedItemIdSystems (extensible)
  * system 1..
  * value 1..

* status ^short = "draft|active|retired|unknown"


// CHANGE TO A VALUE SET BASED DISCRIMINATOR
* manufacturedDoseForm.coding ^slicing.discriminator[0].type = #value
* manufacturedDoseForm.coding ^slicing.discriminator[=].path = "system"
* manufacturedDoseForm.coding ^slicing.rules = #open
* manufacturedDoseForm.coding contains
    spor 0..* 
* manufacturedDoseForm.coding[spor] ^short = "SPOR (Europe)"
* manufacturedDoseForm.coding[spor] ^definition = "EMA - SPOR Referential" // to be reviewed
* manufacturedDoseForm.coding[spor].system = $spor // to be reviewed
* manufacturedDoseForm.coding[spor].code 1.. 

// CHANGE TO A VALUE SET BASED DISCRIMINATOR
* unitOfPresentation.coding ^slicing.discriminator[0].type = #value
* unitOfPresentation.coding ^slicing.discriminator[=].path = "system"
* unitOfPresentation.coding ^slicing.rules = #open
* unitOfPresentation.coding contains
    spor 0..* 
* unitOfPresentation.coding[spor] ^short = "SPOR (Europe)"
* unitOfPresentation.coding[spor] ^definition = "EMA - SPOR Referential" // to be reviewed
* unitOfPresentation.coding[spor].system = $spor // to be reviewed
* unitOfPresentation.coding[spor].code 1.. 

 // Reference to Organization: Manufacturer

* manufacturer only Reference(OrganizationUvEpi)

* property ^slicing.discriminator[0].type = #value
* property ^slicing.discriminator[=].path = "type"
* property ^slicing.rules = #open
* property contains
    // codeableconcept
	colour 0.. and
//	flavour 0..  and
	score  0.. and
	shape  0.. and
	//quantity
	size  0.. and
	//string
	imprint 0.. 
	
* property[colour].value[x]     only CodeableConcept
// * property[flavour].value[x]     only CodeableConcept
* property[score].value[x]     only CodeableConcept
* property[shape].value[x]     only CodeableConcept
* property[size].value[x]     only Quantity

// to be checked
// * property[imprint].value[x]      only CodeableConcept
* property[imprint].valueCodeableConcept.coding 0..0 
* property[imprint].valueCodeableConcept.text 1..1

* property[colour].type  = $sct#703247007 "color"
// * property[flavour].type = $medicationknowledge-characteristic#
* property[score].type   = $medicationknowledge-characteristic#scoring
* property[shape].type   = $medicationknowledge-characteristic#shape
* property[size].type    = $medicationknowledge-characteristic#size 
* property[imprint].type = $medicationknowledge-characteristic#imprintcd 
