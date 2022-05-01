Instance: d6758a9f-8d7d-436b-a925-42aa9682a47c
InstanceOf: Bundle
Usage: #example
Title: "EMA-Profile Monuril FHIR Package Insert"
Description: "instance of Monuril package insert for connectathon testing"

* identifier.system = "https://www.gravitatehealth.eu/sid/doc"
* identifier.value = "PL 31654/0006"
* type = #document
* timestamp = "2017-06-23T08:38:00+02:00" // date of first authorization for the bundle (document)

// Composition
* entry[+].resource = emacfsb1639991356428

// List Product Index
* entry[+].resource = ema3868575536701

// Organizations
// * entry[+].resource = emacfsb1639753766266
// * entry[+].resource = emacfsb1639754108144

// authorizations
// * entry[+].resource = emacfsb1639761980721

// medicinal products
// * entry[+].resource = emacfsb1639760186202

// packaged product
// * entry[+].resource = emacfsb1639758328687
// * entry[+].resource = emacfsb1639764389611
// * entry[+].resource = emacfsb1639764389612

// administrable product
// * entry[+].resource = emacfsb1639760977050

// manufactured items
// * entry[+].resource = emacfsb1639756818482

// ingredients
// * entry[+].resource = emacfsb1639762372322 // Orange flavour
// * entry[+].resource = emacfsb1639754408039 // fosfomycin tromotamol
// * entry[+].resource = emacfsb1639762593730 // Sucrose
// * entry[+].resource = emacfsb1639762372321 // Saccharin
// * entry[+].resource = emacfsb1639762372323 // mandarin flavour

// Clinical use definition
// None present

// binaries
// None present
