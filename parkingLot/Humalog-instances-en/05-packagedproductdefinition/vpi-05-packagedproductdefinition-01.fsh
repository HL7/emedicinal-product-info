Instance: c9a02053-149d-48b9-beb8-f7cd3cf1fdd9
InstanceOf: PackagedProductDefinitionUvEpi
Description: "5 pre-filled pens, 3 ml (3.5 mg/ml)"
Usage: #example


* identifier.system = $example-man* identifier.value = "EU/1/96/007/035"
* identifier.use = #official

  // UK dm+d "Humalog Mix50 KwikPen 100units/ml suspension for injection 3ml pre-filled pens" AMPP
* identifier.system = "http://snomed.info/sct/83821000000107"
* identifier.value = "13884911000001102"

* name = "Humalog 100 units/ml KwikPen solution for injection in a pre-filled pen"
  


* type = $spor-rms#100000155527 "Chemical Medininal Prodcut"

* status = $publication-status#active "Active"
* statusDate = "2015-02-07T13:28:17Z"

* containedItemQuantity.value = 3
* containedItemQuantity.unit = "ml"

* package.identifier
  * system = $gs1
  * value = "5014602101435"
* package.type = $spor-rms#100000073543 "Pre-filled pen"

* package.quantity = 5

* package.material = $spor-rms#200000003204 "Glass type 1"


//reference to EU/1/96/007/035 Humalog Mix50 Insulin KwikPen, 3ml pre-fill
* packageFor = Reference(fb3d4c9b-3abe-4ef4-9ef8-73dcd1059258)

 // Reference to Organization: Manufacturer
* manufacturer = Reference(1a2b1f1d-5e6c-40cd-96a1-ee4183243de8)

 // Reference to Organization: Manufaturer API
* manufacturer[1] = Reference(02108a99-0146-4b46-ae72-44e35ca682fc)
