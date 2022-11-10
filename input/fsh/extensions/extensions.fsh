RuleSet: ExtensionContext(path)
* ^context[+].type = #element
* ^context[=].expression = "{path}"


Extension: PropertyOrder
Id: property-order
Title:  "Property Order"
Description: "This extension is used to order ManufacturedItemDefinition properties (e.g. images)"
* insert ExtensionContext(ManufacturedItemDefinition.property)
* insert ExtensionContext(AdministrableProductDefinition.property)
* value[x] only integer
