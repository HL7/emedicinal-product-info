CodeSystem: ListTypeCS
Id: epi-list-type-cs
Title: "ePI List Type CodeSystem"
Description: "Codes to classify the usecase/type of an ePI list."
* ^status = #active
* ^experimental = false

* #medicinal-product "Medicinal Product" "List of ePIs for a given medicinal product."
* #medicinal-product-group "Medicinal Product Group" "List of ePIs for a given class or category of drugs (e.g., ePIs for vaccines or oncology drugs)."
* #jurisdiction "Jurisdiction" "List of ePIs authorized by a health authority within their jurisdiction."
* #jurisdiction-group "Jurisdiction Group" "List of ePIs authorized by multiple health authorities for use within a region (e.g., all ePIs authorized by ASEAN member countries/health authorities)."

ValueSet: ListTypeVS
Id: epi-list-type-vs
Title: "ePI List Type ValueSet"
Description: "Values to classify the usecase/type of an ePI list."
* ^status = #active
* ^experimental = false
* include codes from system ListTypeCS
