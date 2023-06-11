Instance: bundlepackageleaflet75type1
InstanceOf: BundleUvEpi
Usage: #example
Title: "ePI Bundle Type 1 - DrugX Package Insert"
Description: "Example of a type 1 ePI Bundle - Package Insert"

* identifier.system = "https://www.gravitatehealth.eu/sid/doc"
* identifier.value = "EU/1/01/001/001"

* meta
  * versionId = "1"
  * lastUpdated = "2018-06-23T08:38:00+02:00"

* type = #document
* timestamp = "2018-06-23T08:38:00+02:00"

// Composition
* entry[0].fullUrl = "urn:uuid:5467a2fd-2463-4ec7-a6bb-b7322000f867"
* entry[0].resource = compositionDrugX75type1

// Organization
* entry[+].fullUrl = "urn:uuid:d71bf884-90eb-47f9-81b7-fa81ecec7e75"
* entry[=].resource = acmeinc