
Instance: ppd-04c9bd6fb89d38b2d83eced2460c4dc1
InstanceOf: PackagedProductDefinitionUvEpi
Title: "Flucelvax Tetra - suspension for injection in pre-filled syringe
Influenza vaccine (surface antigen, inactivated, prepared in cell cultures)"
Description: "Flucelvax Tetra - suspension for injection in pre-filled syringe
Influenza vaccine (surface antigen, inactivated, prepared in cell cultures)"
Usage: #example

* identifier.system = $spor-prod
* identifier.value = "nan"
* identifier.use = #official

* name = "Flucelvax Tetra - suspension for injection in pre-filled syringe
Influenza vaccine (surface antigen, inactivated, prepared in cell cultures)"

* type = $spor-rms#100000155527 ""
//* type = $spor-rms#100000155527


* status = http://hl7.org/fhir/publication-status#active "Active"
* statusDate = "2019-01-01"


* containedItemQuantity = 15 'mcg'


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
* packageFor = Reference(mpb6ced64d25ea2c8da6c6099386f14db1)
 // Reference to Organization: MAH
* manufacturer = Reference(org-45fe50eae508b5755dd140ab2093eb5e)
