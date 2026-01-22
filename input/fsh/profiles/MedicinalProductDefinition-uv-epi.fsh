Profile: MedicinalProductDefinitionUvEpi
Parent: MedicinalProductDefinition
Id: MedicinalProductDefinition-uv-epi
Title: "MedicinalProductDefinition (ePI)"
Description: "MedicinalProductDefinition (ePI) - ported from MedicinalProductDefinitionUvEpi"
* ^status = #active
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #brr
* identifier 1..
* identifier 1..
* identifier.system 1..1
* identifier.value 1..1
* type.coding 1..1
* type.coding.system 1..1
* type.coding.code 1..1
* type.coding.display 1..1
* domain.coding 1..1
* domain.coding.system 1..1
* domain.coding.code 1..1
* domain.coding.display 1..1
* status.coding 1..1
* status.coding.system 1..1
* status.coding.code 1..1
* status.coding.display 1..1
* combinedPharmaceuticalDoseForm.coding 1..1
* combinedPharmaceuticalDoseForm.coding.system 1..1
* combinedPharmaceuticalDoseForm.coding.code 1..1
* combinedPharmaceuticalDoseForm.coding.display 1..1
* legalStatusOfSupply.coding 1..1
* legalStatusOfSupply.coding.system 1..1
* legalStatusOfSupply.coding.code 1..1
* legalStatusOfSupply.coding.display 1..1
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
* additionalMonitoringIndicator.coding 1..1
* additionalMonitoringIndicator.coding.system 1..1
* additionalMonitoringIndicator.coding.code 1..1
* additionalMonitoringIndicator.coding.display 1..1
* specialMeasures.coding 1..1
* specialMeasures.coding.system 1..1
* specialMeasures.coding.code 1..1
* specialMeasures.coding.display 1..1
* pediatricUseIndicator.coding 1..1
* pediatricUseIndicator.coding.system 1..1
* pediatricUseIndicator.coding.code 1..1
* pediatricUseIndicator.coding.display 1..1
* classification.coding 1..1
* classification.coding.system 1..1
* classification.coding.code 1..1
* classification.coding.display 1..1
* marketingStatus ^short = "Marketing status of the medicinal product, in contrast to marketing authorization."
* marketingStatus.country.coding 1..1
* marketingStatus.country.coding.system 1..1
* marketingStatus.country.coding.code 1..1
* marketingStatus.country.coding.display 1..1
* marketingStatus.status.coding 1..1
* marketingStatus.status.coding.system 1..1
* marketingStatus.status.coding.code 1..1
* marketingStatus.status.coding.display 1..1
* marketingStatus.dateRange ^short = "The date when the status became effective."
* packagedMedicinalProduct ^short = "Package representation for the product."
* comprisedOf ^short = "Types of manufactured items that are part of this product."
* ingredient ^short = "The ingredients of this medicinal product - when not detailed in other resources."
* contact ^short = "A product specific contact, person (in a role), or an organization."
* contact.type.coding 1..1
* contact.type.coding.system 1..1
* contact.type.coding.code 1..1
* contact.type.coding.display 1..1
* contact.contact ^short = "A product specific contact, person (in a role), or an organization."
* name 1..
* name.productName ^short = "The full product name expressed as Proprietary Name (Non-Proprietary Name) strength dose form"
* name.type.coding 1..1
* name.type.coding.system 1..1
* name.type.coding.code 1..1
* name.type.coding.display 1..1
* name.part.type.coding 1..1
* name.part.type.coding.system 1..1
* name.part.type.coding.code 1..1
* name.part.type.coding.display 1..1
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
* name.usage.country.coding 1..1
* name.usage.country.coding.system 1..1
* name.usage.country.coding.code 1..1
* name.usage.country.coding.display 1..1
* name.usage.jurisdiction.coding 1..1
* name.usage.jurisdiction.coding.system 1..1
* name.usage.jurisdiction.coding.code 1..1
* name.usage.jurisdiction.coding.display 1..1
* name.usage.language.coding 1..1
* name.usage.language.coding.system 1..1
* name.usage.language.coding.code 1..1
* name.usage.language.coding.display 1..1
