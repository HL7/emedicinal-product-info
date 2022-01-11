Instance: 5526bcb3-9b7f-4bc1-a9e7-65302382e7a5
InstanceOf: Bundle
Usage: #example
Title: "Vulcan Monuril FHIR Package Insert"
Description: "instance of Monuril package insert for connectathon testing"

* identifier.system = "https://www.gravitatehealth.eu/sid/doc"
* identifier.value = "PL 31654/0006"
* type = #document
* timestamp = "2017-06-23T08:38:00+02:00" // date of first authorization for the bundle (document)

// Composition
* entry[+].resource = cfsb1639991356428

// Organizations
* entry[+].resource = cfsb1639753766266
* entry[+].resource = cfsb1639754108144
* entry[+].resource = cfsb1640282801639

// authorizations
* entry[+].resource = cfsb1639761980721

// medicinal products
* entry[+].resource = cfsb1639760186202

// packaged product
* entry[+].resource = cfsb1639758328687
* entry[+].resource = cfsb1639764389611
* entry[+].resource = cfsb1639764389612

// administrable product
* entry[+].resource = cfsb1639760977050

// manufactured items
* entry[+].resource = cfsb1639756818482

// ingredients
* entry[+].resource = cfsb1639762372322
* entry[+].resource = cfsb1639754408039
* entry[+].resource = cfsb1639762593730
* entry[+].resource = cfsb1639762372321
* entry[+].resource = cfsb1639762372323

// Clinical use definition
// None present

// binaries
// None present
