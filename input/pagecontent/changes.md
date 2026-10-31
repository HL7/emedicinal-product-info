* TOC
{:toc}

### Version = 1.1.0

**New Features and Model Updates:**

* Added Bundle profiles for ePI Type 2 (bundle-epi-type2) and Type 3 (bundle-epi-type3). They apply the same rules as Bundle (ePI), with entry slices for product and clinical resources
* Composition (ePI) is now a single profile used by all ePI Types
* Composition.status is limited to the ePI lifecycle states (preliminary, final, deprecated, cancelled, entered-in-error), and Composition.type has an example value set of national document types
* Clarified element descriptions on Bundle (ePI) and Composition (ePI), including the SPL Set ID and Document ID equivalents
* Bundle.language is now optional, as in the base Bundle resource (it was required in 1.0.0)
* Bundle.entry.fullUrl must now be a UUID URN (urn:uuid:...), as the 1.0.0 examples already used, and references between resources in a Bundle use those UUID URNs
* Added the ePI Type 4 Dynamic Digital Label, with Concept, Domain and Topic sections linked to the resources they describe
* Added the List profile for tracking collections of ePIs (by medicinal product, product group, jurisdiction or jurisdiction group), with list extensions and the ListEntryStatus code system
* Added the Group profile for populations and sub-populations, with the Group Characteristic Type code system and value sets
* Added structured dosing on the indication ClinicalUseDefinition (draft): the Dosing Guideline extension, with one regimen per sub-population, and the Dosage Manufactured Item extension, so a dose can name the manufactured item or administrable product it applies to
* Added the Binary profile for images contained in the Composition
* Added unique ids on all Composition sections, to support links between sections
* Defined how draft labels carry annotations (tracked changes and comment threads) in the XHTML narrative
* Made identifiers and codings mandatory across profiles, and refined the ClinicalUseDefinition, ManufacturedItemDefinition, AdministrableProductDefinition and Organization profiles
* Added Type 1, 2, 3 and 4 examples and XML templates, including synthetic dosing examples (Fungisynth and Duosynth)

**Documentation and Navigation Improvements:**

* Redesigned the Home page, with About this IG, Scope, How It Works and Why adopt ePI sections
* Added a How It Works page explaining the parts of an ePI, how the resources fit together by ePI Type, and the life of a label
* Added step-by-step build pages for ePI Types 1 to 4 and for ePI Lists
* Added the Dosing and Population Model page
* Added Technical Details pages: FHIR Servers, Tracked Changes, Version Control, Templates, Technical Style Guide and Terminology
* Added rendered example pages and an XSLT stylesheet for viewing ePI Bundles as HTML
* Removed the Getting Started page; its content is now covered by the Home and How It Works pages
* Renamed Credits to Acknowledgements and updated contributors

**Technical and Packaging Updates:**

* Migrated profiles and examples from JSON StructureDefinitions to FSH
* Standardised extension canonical URLs and added meta.profile to example Bundles
* Moved warning suppressions to a structured ignoreWarnings.xml file
* Restored the standard HL7 template header styling

**Breaking Changes:**

* Removed the MedicationKnowledge profile; structured dosing is now carried on the indication ClinicalUseDefinition

### Version = 1.0.0

* Original release
