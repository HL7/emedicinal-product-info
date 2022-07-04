Instance: 4ab64267-c4a9-46e4-95c6-93907f62a9d6
InstanceOf: List
Usage: #example
Title: "Vulcan Humalog FHIR Product List"
Description: "Instance of Humalog product list for Connectathon testing"

* identifier.system = "https://www.gravitatehealth.eu/sid/list"
* identifier.value = "EU/1/96/007/035"
* status = #current
* mode = #working
* title = "Vulcan Humalog FHIR Product List" 


// medicinal products
* entry[+].item = Reference(fb3d4c9b-3abe-4ef4-9ef8-73dcd1059258)
