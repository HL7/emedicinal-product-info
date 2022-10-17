Instance: bundlepackageleaflet75
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for Karvea 75 mg Package Leaflet"
Description: "Bundle for Karvea Package Leaflet ePI document"
Usage: #example

* identifier.system = "https://www.gravitatehealth.eu/sid/doc"
* identifier.value = "EU/1/96/007/035"
* type = #document
* timestamp = "2018-06-23T08:38:00+02:00"

// Composition
* entry[+].resource = compositionkarvea75
* entry[0].fullUrl = "urn:uuid:0d69fdcb-33cf-407f-8209-a6529856ab4f"

// List of Products
* entry[+].resource = listofKarveaProducts
* entry[0].fullUrl = "urn:uuid:cb8b2201-5db4-44e8-b7fd-31703b1ae0de"
