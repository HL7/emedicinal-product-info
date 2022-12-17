
Instance: ppd-humira20mgsolutionforinjectioninprefilledsyringe2prefilledsyringes2alcoholpads
InstanceOf: PackagedProductDefinitionUvEpi
Title: "Humira 20 mg solution for injection in pre-filled syringe 2 pre-filled syringes + 2 alcohol pads"
Description: "Humira 20 mg solution for injection in pre-filled syringe 2 pre-filled syringes + 2 alcohol pads"
Usage: #example
* id = "c8d43dc8-7c6c-436a-a8f0-1f5ed4b879a0" 

* identifier.system = $spor-prod
* identifier.value = "nan"
* identifier.use = #official

* name = "Humira 20 mg solution for injection in pre-filled syringe 2 pre-filled syringes + 2 alcohol pads"

* type = $spor-rms#100000155527 ""
//* type = $spor-rms#100000155527


* status = #active
* statusDate = "2008-09-08"


* containedItemQuantity = 20 'mg'


* copackagedIndicator = true


* packaging
  * identifier.system = $spor-prod
  * identifier.value = "xxxx"
  * type = $spor-rms#100000073498 "100000073498"
  * quantity = 1
  * material = $spor-rms#200000003529 "Cardboard"


  * packaging.type = $spor-rms#30051000 "Pre-filled syringe"
  * packaging.quantity = 2
 

  * packaging.material[+] = $spor-rms#200000003204 "Glass type I"

//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* packageFor = Reference(mpHumira20mgSolutionforinjectionSubcutaneoususeprefilledsyringeglass)
 // Reference to Organization: MAH
* manufacturer = Reference(org-marketingauthorisationholder-abbviedeutschlandgmbhcokg-humira)
