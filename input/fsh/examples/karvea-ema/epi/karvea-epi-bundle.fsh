Instance: bundlepackageleaflet75
InstanceOf: BundleUvEpi
Usage: #example
Title: "Vulcan Humalog FHIR Package Insert EMA v2"
Description: "Instance of Humalog package insert for Connectathon testing"

* identifier.system = "https://www.gravitatehealth.eu/sid/doc"
* identifier.value = "EU/1/96/007/035"
* type = http://hl7.org/fhir/bundle-type#document
* timestamp = "2018-06-23T08:38:00+02:00"

// Composition

* entry[+].resource = composition-karvea-75
* entry[=].fullUrl = "urn:uuid:04121321-4af5-424c-a0e1-ed3aab1c349d"

// List of Products
* entry[+].resource = listofproducts
* entry[=].fullUrl = "urn:uuid:04121321-4af5-424c-a0e1-ed3aab1c349e"
