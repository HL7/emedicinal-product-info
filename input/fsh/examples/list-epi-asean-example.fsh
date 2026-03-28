Instance: ListEpiASEANExample
InstanceOf: ListUvEpi
Title: "ASEAN Cross-Jurisdictional ePI Tracking List Example"
Description: "An example of a List resource conforming to the List-uv-epi profile, specifically tracking ePIs across the 10 ASEAN member states using UUID references."
Usage: #example

* identifier.system = "https://asean.org/fhir/list/identifier"
* identifier.value = "epi-tracking-list-asean-001"
* status = #current
* mode = #working
* title = "ASEAN ePI Tracking List"

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">ASEAN Cross-Jurisdictional ePI Tracking List Example</div>"

* code = epi-list-type-cs#jurisdiction-group "Jurisdiction Group"

* date = "2025-06-15"

// subject needs to reference MedicinalProductDefinition
* subject[0] = Reference(medicinalproductdefinition-paracetamol)

// source needs to reference Organization
* source = Reference(organization-mah-paracetamol)

// 1. Brunei
* entry[0].date = "2026-03-27"
* entry[0].extension[language].valueCodeableConcept = urn:ietf:bcp:47#en "English"
* entry[0].flag = epi-list-entry-flag-cs#national "National"
* entry[0].item.reference = "urn:uuid:2088b90a-1158-45ad-ac19-0f47e3a96887"

// 2. Cambodia
* entry[1].date = "2026-03-27"
* entry[1].extension[language].valueCodeableConcept = urn:ietf:bcp:47#en "English"
* entry[1].flag = epi-list-entry-flag-cs#national "National"
* entry[1].item.reference = "urn:uuid:48c2ae46-ceaa-4ea1-b998-ab885ca6eb65"

// 3. Indonesia
* entry[2].date = "2026-03-27"
* entry[2].extension[language].valueCodeableConcept = urn:ietf:bcp:47#en "English"
* entry[2].flag = epi-list-entry-flag-cs#national "National"
* entry[2].item.reference = "urn:uuid:c22141d8-0e86-4f40-8b09-cfad45a90710"

// 4. Laos
* entry[3].date = "2026-03-27"
* entry[3].extension[language].valueCodeableConcept = urn:ietf:bcp:47#en "English"
* entry[3].flag = epi-list-entry-flag-cs#national "National"
* entry[3].item.reference = "urn:uuid:a1b2c3d4-b4a1-4191-88fc-8f64da2f518e"

// 5. Malaysia
* entry[4].date = "2026-03-27"
* entry[4].extension[language].valueCodeableConcept = urn:ietf:bcp:47#en "English"
* entry[4].flag = epi-list-entry-flag-cs#national "National"
* entry[4].item.reference = "urn:uuid:abfa5222-3832-4977-bcbd-5509ba19cd75"

// 6. Myanmar
* entry[5].date = "2026-03-27"
* entry[5].extension[language].valueCodeableConcept = urn:ietf:bcp:47#en "English"
* entry[5].flag = epi-list-entry-flag-cs#national "National"
* entry[5].item.reference = "urn:uuid:7f5f90c3-fba0-4be6-8c46-1e96d7fb1178"

// 7. Philippines
* entry[6].date = "2026-03-27"
* entry[6].extension[language].valueCodeableConcept = urn:ietf:bcp:47#en "English"
* entry[6].flag = epi-list-entry-flag-cs#national "National"
* entry[6].item.reference = "urn:uuid:df35b80a-5c21-432a-bc90-953bc8682827"

// 8. Singapore
* entry[7].date = "2026-03-27"
* entry[7].extension[language].valueCodeableConcept = urn:ietf:bcp:47#en "English"
* entry[7].flag = epi-list-entry-flag-cs#national "National"
* entry[7].item.reference = "urn:uuid:1d624a9a-efaf-4c33-87ea-25aa8cfcd9bd"

// 9. Thailand
* entry[8].date = "2026-03-27"
* entry[8].extension[language].valueCodeableConcept = urn:ietf:bcp:47#en "English"
* entry[8].flag = epi-list-entry-flag-cs#national "National"
* entry[8].item.reference = "urn:uuid:5d8a9ea8-2287-4d7a-b286-9ac747ef9ec2"

// 10. Vietnam
* entry[9].date = "2026-03-27"
* entry[9].extension[language].valueCodeableConcept = urn:ietf:bcp:47#en "English"
* entry[9].flag = epi-list-entry-flag-cs#national "National"
* entry[9].item.reference = "urn:uuid:96e8ba7a-6415-46aa-bcd0-63ceaaac8149"
