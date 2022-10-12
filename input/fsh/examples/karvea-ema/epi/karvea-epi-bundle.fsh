Instance: bundlepackageleaflet75
InstanceOf: BundleUvEpi
Usage: #example
Title: "Vulcan Humalog FHIR Package Insert EMA v2"
Description: "Instance of Karvea package leaflet"

* identifier.system = "https://www.gravitatehealth.eu/sid/doc"
* identifier.value = "EU/1/96/007/035"
* type = http://hl7.org/fhir/bundle-type#document
* timestamp = "2018-06-23T08:38:00+02:00"

// Composition
* entry[+].resource = compositionkarvea75

// List of Products
* entry[+].resource = listofproducts

