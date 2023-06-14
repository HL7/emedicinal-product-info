RuleSet:  PropertyRulesSet
* property 0..*
* property ^slicing.discriminator[0].type = #value
* property ^slicing.discriminator[=].path = "type"
* property ^slicing.rules = #open
* property ^slicing.ordered = false
* property contains
    // codeableconcept
    color 0..* and
    flavor 0..*  and
    score  0..* and
    shape  0..* and
    surfaceform 0..* and
    //quantity
    size  0..* and
    //data
    image  0..* and
    //string
    imprint 0..* 

* property[color].value[x]     only CodeableConcept
* property[flavor].value[x]     only CodeableConcept
* property[score].value[x]     only CodeableConcept
* property[shape].value[x]     only CodeableConcept
* property[surfaceform].value[x]     only CodeableConcept
* property[size].value[x]     only Quantity
* property[image].value[x]     only Attachment
* property[imprint].value[x]     only CodeableConcept or Attachment

* property[imprint].valueCodeableConcept.coding 0..0 
* property[imprint].valueCodeableConcept.text 1..1
* property[imprint].type = $medicationknowledge-characteristic#imprintcd 

* property[color].type  = $medicationknowledge-characteristic#color
* property[color].value[x] from VsPropertyColor (example)

* property[flavor].type = EpiIg#flavor
* property[flavor].value[x] from VsPropertyFlavor (example)

* property[score].type   = $medicationknowledge-characteristic#scoring
// * property[score].value[x] from VsPropertyScore (example)

* property[shape].type   = $medicationknowledge-characteristic#shape
* property[shape].value[x] from VsPropertyShape (example)

* property[surfaceform].type   = EpiIg#surfaceform
// * property[surfaceform].value[x] from VsPropertySurfaceForm (preferred)

* property[size].type    = $medicationknowledge-characteristic#size

* property[image].type   = $medicationknowledge-characteristic#image
* property[image].value[x].data ^short = "base64 version of the product image"
