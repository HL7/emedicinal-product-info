Instance: cfsb2726030964451
InstanceOf: Bundle
Usage: #example
Title: "Vulcan Suliqua FHIR Package Insert"
Description: "Instance of Suliqua package insert for Connectathon testing"

* identifier.system = "https://www.gravitatehealth.eu/sid/doc"
* identifier.value = "EU/1/16/1157/003"
* type = #document
* timestamp = "2017-06-23T08:38:00+02:00" // date of first authorization for the bundle (document)

// Composition
* entry[+].resource = cfsb1316794754115

// Organizations
* entry[+].resource = cfsb6005885654359
* entry[+].resource = cfsb2176224411725
* entry[+].resource = cfsb7719260512249
* entry[+].resource = cfsb1639015880655

// authorizations
* entry[+].resource = cfsb2023900992766

// medicinal products
* entry[+].resource = cfsb7123030148537

// packaged product
* entry[+].resource = cfsb5595996591065

// administrable product
* entry[+].resource = cfsb5880516529064

// manufactured items
* entry[+].resource = cfsb7089233601948

// ingredients
* entry[+].resource = cfsb3768802370375
* entry[+].resource = cfsb8724428384435
* entry[+].resource = cfsb8364716455502
* entry[+].resource = cfsb7644964356957
* entry[+].resource = cfsb8873568628101
* entry[+].resource = cfsb7194634205639
* entry[+].resource = cfsb9561966749493
* entry[+].resource = cfsb1268193754623
* entry[+].resource = cfsb3286639616821
* entry[+].resource = cfsb7034777237464

// Clinical use definition
* entry[+].resource = cfsb4325643431772
* entry[+].resource = cfsb8699684597483

// binaries
// Binaries are images used in the package insert HTML.
// The images should be added to the bundle when the reference to them is added to the HTML.

// Document references
* entry[+].resource = cfsb5671063821622
