Profile: VPIPackagedproductdefinition
Parent: PackagedProductDefinition
Id: 15f5287a-30eb-4128-a0bd-4bf2938eb57a
Title: "VPI Packaged Product Definition"
Description: "Vulcan medicinal product information profile and instance examples"


// Instance of Packaged Product Definition 1 Skilarence 30 mg - 42 gastro-resistant tablets in PVC/PVDC-aluminium blister packs
Instance: bb2403cc-bb0b-4b1f-b56b-1174d11f6dce
InstanceOf: PackagedProductDefinition
Usage: #example
* id = "bb2403cc-bb0b-4b1f-b56b-1174d11f6dce"
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "EU/1/17/1201/002-42"
* name = "Skilarence 30 mg - 42 gastro-resistant tablets in PVC/PVDC-aluminium blister packs"
* type = $spor.ema.europa.eu#100000155527 "Chemical Medicinal Product" //https://spor.ema.europa.eu/rmswi/#/lists/100000155526/terms Product Category
* packagedfor = Reference(urn:uuid:7cb035bd-145e-4305-8cea-4e7ab0e515f9) "" //manufactured item #1 - 30mg
* status = $publication-status#active //http://hl7.org/fhir/ValueSet/publication-status
* statusdate = "2021-05-17T08:38:00+02:00" 
* containeditemquantity.quantity.value = "42"
* containeditemquantity.quantity.unit = "Blister"
* containeditemquantity.quantity.system = "https://spor.ema.europa.eu/rmswi/#/lists/100000073346/terms" //Packaging
* containeditemquantity.quantity.code = "100000073496"
* description = "Skilarence 30 mg - 42 gastro-resistant tablets in PVC/PVDC-aluminium blister packs"

* legalstatusofsupply.code = $spor.ema.europa.eu#100000072084 "Medicinal product subject to medical prescription" //https://spor.ema.europa.eu/rmswi/#/lists/100000072051/terms Legal Status for the Supply
* legalstatusofsupply.jurisdiction = $iso:3166-2#eu "european union"

* marketingstatus.country = $iso:3166-2#eu "european union"
* marketingstatus.jurisdiction = $iso:3166-2#eu "european union"
* marketingstatus.status = $spor.ema.europa.eu#100000072083 "Marketed" //https://spor.ema.europa.eu/rmswi/#/lists/100000072052/terms Marketing Status
* marketingstatus.daterange.period.start = "2021-05-17T08:38:00+02:00"
* marketingstatus.daterange.period.end = ""

* copackagedindicator = #false
* manufacturer = Reference(urn:uuid:659ba6da-05fc-4335-beb9-a5f3aecec817)"Almirall S.A."

* package.type = $spor.ema.europa.eu#100000073496 "Blister" //https://spor.ema.europa.eu/rmswi/#/lists/100000073346/terms Packaging
* package.quantity = "42"
* package.material = $spor.ema.europa.eu#200000003224 "Non-plasticised PolyVinyl Chloride / Unplasticised PolyVinyl Chloride" //https://spor.ema.europa.eu/rmswi/#/searchback/lists/200000003199/terms Material

* package.shelflifestorage.productshelflife.type = $ncithesaurus.nci.nih.gov#C70855 "Medical Product Shelf Life" //dont have system
* package.shelflifestorage.productshelflife.period.periodduration.value = "3"
* package.shelflifestorage.productshelflife.period.periodduration.code = "a" //year
* package.shelflifestorage.productshelflife.period.periodduration.system = "http://unitsofmeasure.org"
* package.shelflifestorage.productshelflife.period.periodstring = "Store at 20° to 25°C (68° to 77°F); excursions permitted between 15° to 30°C (59° to 86°F) [see USP Controlled Room Temperature]. Protect the capsules from light. Store in original container."

* package.containeditem.item = Reference(urn:uuid:7cb035bd-145e-4305-8cea-4e7ab0e515f9) "" //manufactureditem 30 mg - 42 gastro-resistant tablets in PVC/PVDC-aluminium blister packs
* package.containeditem.amount.quantity.value = "42"
* package.containeditem.amount.quantity.unit = "200000002152"
* package.containeditem.amount.quantity.system = "https://spor.ema.europa.eu/rmswi/#/lists/200000000014/terms" 
