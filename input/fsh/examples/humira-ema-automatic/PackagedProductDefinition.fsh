
Instance: ppd-humira20mgsolutionforinjectioninprefilledsyringe2prefilledsyringes2alcoholpads
InstanceOf: PackagedProductDefinitionUvEpi
Title: "Humira 20 mg solution for injection in pre-filled syringe 2 pre-filled syringes + 2 alcohol pads"
Description: "Humira 20 mg solution for injection in pre-filled syringe 2 pre-filled syringes + 2 alcohol pads"
Usage: #example
* id = "b3f25574-fca9-4994-82c5-da198f8fa6ac" 

* identifier.system = $spor-prod
* identifier.value = "nan"
* identifier.use = #official

* name = "Humira 20 mg solution for injection in pre-filled syringe 2 pre-filled syringes + 2 alcohol pads"

* type = $spor-rms#100000155527 "Chemical Medicinal Prodcut"
//* type = $spor-rms#100000155527


* status = #active
* statusDate = "2008-09-08"


* containedItemQuantity = 20 'mg'





* packaging
  * identifier.system = $spor-prod
  * identifier.value = "123456"
  * type = $spor-rms#30051000 "Pre-filled syringe"
  * quantity = 1
  * material = $spor-rms#nan "nan"
//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* packageFor = Reference(mpHumira20mgSolutionforinjectionSubcutaneoususeprefilledsyringeglass)
 // Reference to Organization: MAH
* manufacturer = Reference(org-marketingauthorisationholder-abbviedeutschlandgmbhcokg-humira)
