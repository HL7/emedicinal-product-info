




Instance: ingredient-for-acmedrug-acmedruging3


InstanceOf: IngredientUvEpi
Title: "Ingredient-excipient acmedrug-ing3"
Description: "acmedrug-ing3"
Usage: #example

* identifier.system = $ginas
* identifier.value = "ETJ7Z6XBU4"
* identifier.use = #official

* role = $spor-rms#100000072082 "Excipient"

* status = #active

* substance.code.concept.coding = $ginas#ETJ7Z6XBU4 "acmedrug-ing3"



// Reference to products
* for = Reference(mid-534e209eb0a3ff60437639cb2015316f)
* for[+] = Reference(mp534e209eb0a3ff60437639cb2015316f)
* for[+] = Reference(ap-5aa8042f9b2bea12d814ccaf27f6d64e)
// Reference to Organization:  Reference to MAH

 


* manufacturer.manufacturer = Reference(org-2aff7154a8d952c895e8a03849a25108)





Instance: ingredient-for-acmedrug-acmedruging2


InstanceOf: IngredientUvEpi
Title: "Ingredient-excipient acmedrug-ing2"
Description: "acmedrug-ing2"
Usage: #example

* identifier.system = $ginas
* identifier.value = "15FIX9V2JP"
* identifier.use = #official

* role = $spor-rms#100000072082 "Excipient"

* status = #active

* substance.code.concept.coding = $ginas#15FIX9V2JP "acmedrug-ing2"



// Reference to products
* for = Reference(mid-534e209eb0a3ff60437639cb2015316f)
* for[+] = Reference(mp534e209eb0a3ff60437639cb2015316f)
* for[+] = Reference(ap-5aa8042f9b2bea12d814ccaf27f6d64e)
// Reference to Organization:  Reference to MAH

 


* manufacturer.manufacturer = Reference(org-2aff7154a8d952c895e8a03849a25108)





Instance: ingredient-for-acmedrug-acmedruging1


InstanceOf: IngredientUvEpi
Title: "Ingredient-active acmedrug-ing1"
Description: "acmedrug-ing1"
Usage: #example

* identifier.system = $ginas
* identifier.value = "J0E2756Z7N"
* identifier.use = #official

* role = $spor-rms#72072 "active"

* status = #active

* substance.code.concept.coding = $ginas#J0E2756Z7N "acmedrug-ing1"


* substance.strength.presentationQuantity = 75.0 'mg'

* substance.strength.basis = http://terminology.hl7.org/CodeSystem/v3-RoleClass#ACTIB "active ingredient - basis of strength"


// Reference to products
* for = Reference(mid-534e209eb0a3ff60437639cb2015316f)
* for[+] = Reference(mp534e209eb0a3ff60437639cb2015316f)
* for[+] = Reference(ap-5aa8042f9b2bea12d814ccaf27f6d64e)
// Reference to Organization:  Reference to MAH

 


* manufacturer.manufacturer = Reference(org-2aff7154a8d952c895e8a03849a25108)
