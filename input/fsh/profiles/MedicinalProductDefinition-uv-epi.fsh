Profile: MedicinalProductDefinitionUvEpi
Parent: MedicinalProductDefinition
Id: MedicinalProductDefinition-uv-epi
Title: "MedicinalProductDefinition (ePI)"
Description: "MedicinalProductDefinition (ePI) - ported from MedicinalProductDefinitionUvEpi"
* ^status = #active
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #brr
* identifier 1..
* identifier.system 1..
* identifier.value 1..
* type ^short = "Regulatory type, e.g. Investigational or Authorized."
* domain ^short = "If this medicine applies to human or veterinary uses."
* version ^short = "A business identifier relating to a specific version of the product."
* status ^short = "The status within the lifecycle of this product record."
* statusDate ^short = "Date of status change"
* description ^short = "General description of the medicinal product referred by the ePI"
* combinedPharmaceuticalDoseForm ^short = "The dose form for a single part product, or combined form of a multiple part product."
* route ^short = "The path by which the product is taken into or makes contact with the body."
* indication ^short = "Narrative text of the authorized indication(s) for this product."
* legalStatusOfSupply ^short = "The legal status of supply of the medicinal product as classified by the regulator."
* additionalMonitoringIndicator ^short = "Whether the Medicinal Product is subject to additional monitoring for regulatory reasons."
* specialMeasures ^short = "Whether the Medicinal Product is subject to special measures for regulatory reasons."
* pediatricUseIndicator ^short = "If authorized for use in children."
* classification ^short = "Allows the product to be classified by various systems."
* marketingStatus ^short = "Marketing status of the medicinal product, in contrast to marketing authorization."
* marketingStatus.country ^short = "The country in which the marketing status applies."
* marketingStatus.status ^short = "The status of the marketing of the medicinal product."
* marketingStatus.dateRange ^short = "The date when the status became effective."
* packagedMedicinalProduct ^short = "Package representation for the product."
* comprisedOf ^short = "Types of manufactured items that are part of this product."
* ingredient ^short = "The ingredients of this medicinal product - when not detailed in other resources."
* contact ^short = "A product specific contact, person (in a role), or an organization."
* contact.type ^short = "Allows the contact to be classified, for example QPPV, Pharmacovigilance Enquiry Information."
* contact.contact ^short = "A product specific contact, person (in a role), or an organization."
* name 1..
* name.productName ^short = "The full product name expressed as Proprietary Name (Non-Proprietary Name) strength dose form"
* name.type ^short = "Type of product name, such as rINN, BAN, Proprietary, Non-Proprietary."
* name.part ^short = "Coding words or phrases of the name."
* name.part ^slicing.discriminator.type = #pattern
* name.part ^slicing.discriminator.path = "type"
* name.part ^slicing.rules = #open
* name.part contains
    ScientificNamePart 0..* and
    InventedNamePart 0..* and
    StrengthPart 0..* and
    PharmaceuticalDosePart 0..* and
    TrademarkOrOtherSuffixPart 0..*
* name.part[ScientificNamePart] ^short = "Non-proprietary name"
* name.part[ScientificNamePart].type = http://hl7.org/fhir/medicinal-product-name-part-type#ScientificNamePart
* name.part[InventedNamePart] ^short = "Proprietary name"
* name.part[InventedNamePart].type = http://hl7.org/fhir/medicinal-product-name-part-type#InventedNamePart
* name.part[StrengthPart] ^short = "Strength"
* name.part[StrengthPart].type = http://hl7.org/fhir/medicinal-product-name-part-type#StrengthPart
* name.part[PharmaceuticalDosePart] ^short = "Dose Form"
* name.part[PharmaceuticalDosePart].type = http://hl7.org/fhir/medicinal-product-name-part-type#DoseFormPart
* name.part[TrademarkOrOtherSuffixPart] ^short = "Suffix"
* name.part[TrademarkOrOtherSuffixPart].type = http://hl7.org/fhir/medicinal-product-name-part-type#TrademarkOrCompanyPart
* name.usage ^short = "Country and jurisdiction where the name applies."
* name.usage.country ^short = "Country where the name applies."
* name.usage.jurisdiction ^short = "Jurisdiction where the name applies."
* name.usage.language ^short = "Language of the name."
