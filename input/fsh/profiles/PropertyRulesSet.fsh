RuleSet:  PropertyRulesSet

* property ^slicing.discriminator[0].type = #value
* property ^slicing.discriminator[=].path = "type"
* property ^slicing.rules = #open
* property contains
    // codeableconcept
	colour 0.. and
	flavour 0..  and
	score  0.. and
	shape  0.. and
	//quantity
	size  0.. and
	image  0.. and
	//string
	imprint 0.. 

* property[colour].value[x]     only CodeableConcept
* property[flavour].value[x]     only CodeableConcept
* property[score].value[x]     only CodeableConcept
* property[shape].value[x]     only CodeableConcept
* property[size].value[x]     only Quantity
* property[image].value[x]     only Attachment

// to be checked
* property[imprint].value[x] only CodeableConcept or Attachment
* property[imprint].valueCodeableConcept.coding 0..0 
* property[imprint].valueCodeableConcept.text 1..1

* property[colour].type  = $medicationknowledge-characteristic#color
* property[flavour].type = CodeSystemGravitate#flavor
* property[score].type   = $medicationknowledge-characteristic#scoring
* property[shape].type   = $medicationknowledge-characteristic#shape
* property[size].type    = $medicationknowledge-characteristic#size
* property[image].type   = $medicationknowledge-characteristic#image
* property[imprint].type = $medicationknowledge-characteristic#imprintcd 