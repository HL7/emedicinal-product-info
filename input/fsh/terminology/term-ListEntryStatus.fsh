CodeSystem: ListEntryFlagCS
Id: epi-list-entry-flag-cs
Title: "ePI List Entry Flag CodeSystem"
Description: "Codes to classify the component type or lifecycle status of an ePI list entry."
* ^status = #active
* ^experimental = false

// Component Types
* #smpc "Summary of Product Characteristics" "The entry is a Summary of Product Characteristics."
* #pil "Patient Information Leaflet" "The entry is a Patient Information Leaflet."
* #combined "SmPC + PIL" "The entry is a combination of an SmPC and PIL."

// Lifecycle / Status Types
* #master "Master" "The entry is the master or reference version."
* #translation "Translation" "The entry is a translation."
* #national "National" "The entry is a nationally recognized variant."


ValueSet: ListEntryFlagVS
Id: epi-list-entry-flag-vs
Title: "ePI List Entry Flag ValueSet"
Description: "Values to classify the component type or lifecycle status of an ePI list entry."
* ^status = #active
* ^experimental = false
* include codes from system ListEntryFlagCS
