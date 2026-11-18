* TOC
{:toc}

### Version = 2.0.0-ballot

Each change links to the Jira ticket that records it.

**New Features and Model Updates:**

* References in the ePI profiles now point to the ePI profile of the target wherever one exists (for example Composition.subject, custodian and section.author; MedicinalProductDefinition.comprisedOf; Ingredient.substance.code; Organization.partOf; List.entry.item). Target types that have no ePI profile are still allowed, and ePI Bundles can still carry any resource ([FHIR-59834](https://jira.hl7.org/browse/FHIR-59834))
* Added Bundle profiles for ePI Type 2 (bundle-epi-type2) and Type 3 (bundle-epi-type3). They apply the same rules as Bundle (ePI), with entry slices for product and clinical resources ([FHIR-59835](https://jira.hl7.org/browse/FHIR-59835))
* Composition.status is limited to the ePI lifecycle states (preliminary, final, deprecated, cancelled, entered-in-error), and Composition.type has an example value set of national document types ([FHIR-59836](https://jira.hl7.org/browse/FHIR-59836))
* Clarified element descriptions on Bundle (ePI) and Composition (ePI), including the SPL Set ID and Document ID equivalents ([FHIR-59837](https://jira.hl7.org/browse/FHIR-59837))
* Bundle.language is now optional, as in the base Bundle resource (it was required in 1.0.0). The language of an ePI is already carried on the Composition, so requiring it on the Bundle as well was redundant ([FHIR-59838](https://jira.hl7.org/browse/FHIR-59838))
* Bundle.entry.fullUrl must now be a UUID URN (urn:uuid:...), as the 1.0.0 examples already used, and references between resources in a Bundle use those UUID URNs. The rule is enforced by the invariant epi-bdl-uuid ([FHIR-59840](https://jira.hl7.org/browse/FHIR-59840))
* Added the ePI Type 4 Dynamic Digital Label, with Concept, Domain and Topic sections linked to the resources they describe ([FHIR-59841](https://jira.hl7.org/browse/FHIR-59841))
* Added the List profile for tracking collections of ePIs (by medicinal product, product group, jurisdiction or jurisdiction group), with list extensions and the ePI List Entry Flag and ePI List Type code systems ([FHIR-59839](https://jira.hl7.org/browse/FHIR-59839))
* Added the Group profile for populations and sub-populations, with the Group Characteristic Type code system and value sets ([FHIR-59846](https://jira.hl7.org/browse/FHIR-59846))
* Added structured dosing on the indication ClinicalUseDefinition (draft): the Dosing Guideline extension, with one regimen per sub-population, and the Dosage Manufactured Item extension, so a dose can name the manufactured item or administrable product it applies to ([FHIR-59842](https://jira.hl7.org/browse/FHIR-59842))
* Added the Binary profile for images contained in the Composition ([FHIR-59843](https://jira.hl7.org/browse/FHIR-59843))
* Added the DeviceDefinition profile for devices supplied with the medicinal product (for example an oral syringe) ([FHIR-59862](https://jira.hl7.org/browse/FHIR-59862))
* Added unique ids on all Composition sections, to support links between sections ([FHIR-59844](https://jira.hl7.org/browse/FHIR-59844))
* Defined how draft labels carry annotations (tracked changes and comment threads) in the XHTML narrative ([FHIR-59845](https://jira.hl7.org/browse/FHIR-59845))
* Made identifiers and codings mandatory across profiles, and refined the ClinicalUseDefinition, ManufacturedItemDefinition, AdministrableProductDefinition and Organization profiles ([FHIR-59847](https://jira.hl7.org/browse/FHIR-59847))
* Added the ePI extensions Authorisation Type, Medicine Domain, Procedure Number, Version Number, Jurisdiction, Language and Regulatory Agency, and added meta.profile to example Bundles ([FHIR-59858](https://jira.hl7.org/browse/FHIR-59858))
* Added Type 1, 2, 3 and 4 examples and XML templates, including synthetic dosing examples (Fungisynth and Duosynth) ([FHIR-59848](https://jira.hl7.org/browse/FHIR-59848))
* Replaced the 1.0.0 DrugX examples with the WonderDrug example set (tablets and oral suspension) ([FHIR-59866](https://jira.hl7.org/browse/FHIR-59866))

**Documentation and Navigation Improvements:**

* Redesigned the Home page, with About this IG, Scope, How It Works and Why adopt ePI sections ([FHIR-59849](https://jira.hl7.org/browse/FHIR-59849))
* Added a How It Works page explaining the parts of an ePI, how the resources fit together by ePI Type, and the life of a label. It replaces the 1.0.0 resource overview with a clearer diagram and explanation ([FHIR-59850](https://jira.hl7.org/browse/FHIR-59850))
* Added step-by-step build pages for ePI Types 1 to 4 and for ePI Lists ([FHIR-59851](https://jira.hl7.org/browse/FHIR-59851))
* Added the Dosing and Population Model page ([FHIR-59852](https://jira.hl7.org/browse/FHIR-59852))
* Added Technical Details pages: FHIR Servers, Tracked Changes, Templates, Technical Style Guide and Terminology ([FHIR-59853](https://jira.hl7.org/browse/FHIR-59853))
* Added the Version Control page, covering version identifiers, the Composition.status lifecycle and Composition.relatesTo usage for ePI versions ([FHIR-59860](https://jira.hl7.org/browse/FHIR-59860))
* Added rendered example pages and an XSLT stylesheet for viewing ePI Bundles as HTML ([FHIR-59854](https://jira.hl7.org/browse/FHIR-59854))
* Removed the Use Case and Best Practice pages; their content is now on the How It Works and Technical Style Guide pages ([FHIR-59855](https://jira.hl7.org/browse/FHIR-59855))
* Renamed Credits to Acknowledgements and updated contributors ([FHIR-59856](https://jira.hl7.org/browse/FHIR-59856))

**Technical and Packaging Updates:**

* Added a dependency on the HL7 Extensions Pack (hl7.fhir.uv.extensions.r5 5.4.0) and allowed the textLink extension on Composition section narratives (ePI Type 4) ([FHIR-59865](https://jira.hl7.org/browse/FHIR-59865))
* Moved warning suppressions to a structured ignoreWarnings.xml file ([FHIR-59857](https://jira.hl7.org/browse/FHIR-59857))
* Restored the standard HL7 template header styling ([FHIR-59859](https://jira.hl7.org/browse/FHIR-59859))

**Breaking Changes:**

* Renamed the ClinicalUseDefinition Undesirable Effect (ePI) profile id from ClinicalUseDefinition-undesirableEffect-uv-epi to ClinicalUseDefinition-undesirable-effect-uv-epi, which changes its canonical URL ([FHIR-59861](https://jira.hl7.org/browse/FHIR-59861))
* Removed the 1.0.0 identifier-system and EMA-specific value sets, and added example value sets and code systems ([FHIR-59863](https://jira.hl7.org/browse/FHIR-59863))
* Added the Bundle invariant epi-bdl-no-binary: a Binary shall not be a Bundle entry on its own. Images are carried as a contained Binary in the Composition, or as an image attachment on ManufacturedItemDefinition ([FHIR-59864](https://jira.hl7.org/browse/FHIR-59864))

### Version = 1.0.0

* Original release
