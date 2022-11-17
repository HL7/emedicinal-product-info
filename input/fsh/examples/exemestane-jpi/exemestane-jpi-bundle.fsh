Instance: exemestanejpibundle
InstanceOf: Bundle
Usage: #example
Title: "Vulcan FHIR Japanese Package Insert Test - Aromasin (exemestane) Tablets 25 mg"
Description: "Instance of exemestane tablets JPI for Connectathon testing"

* identifier.system = "https://www.gravitatehealth.eu/sid/doc"
* identifier.value = "4291012F1022_4_02"
* type = #document
* timestamp = "2002-08-01T13:28:17Z"

// Composition
* entry[+].resource = aromasinjpi

// Organizations
* entry[+].resource = organizationmah

// authorizations
* entry[+].resource = authorisation1

// medicinal products
* entry[+].resource = medicinalproduct25mg

// packaged product
* entry[+].resource = 28pack
* entry[+].resource = 140pack

// administrable product
* entry[+].resource = administrableproduct25mg

// manufactured items
* entry[+].resource = manufactureditem25mg

// ingredients
* entry[+].resource = exemestane // exemestane
* entry[+].resource = carnubawax // carnuba wax
* entry[+].resource = crystallinecellulose // crystallinecellulose
* entry[+].resource = mannitol // mannitol
* entry[+].resource = hypromelose // hypromelose
* entry[+].resource = lightanhydroussilicicacid // lightanhydroussilicicacid
* entry[+].resource = magnesiumcarbonate // magnesiumcarbonate
* entry[+].resource = magnesiumstearate // magnesiumstearate
* entry[+].resource = methylparaben // methylparaben
* entry[+].resource = polyethyleneglycol // polyethyleneglycol
* entry[+].resource = polysorbate // polysorbate
* entry[+].resource = polyvinylalcohol // polyvinylalcohol
* entry[+].resource = sucrose // sucrose
* entry[+].resource = silicondioxide // silicondioxide
* entry[+].resource = sodiumstarch // sodiumstarch
* entry[+].resource = syntehticwax // syntehticwax
* entry[+].resource = talc // talc
* entry[+].resource = titaniumdioxide2 // titaniumdioxide

// substance
* entry[+].resource = f733a07f-c7fb-43eb-9776-ec0a3e4748da // exemestane
