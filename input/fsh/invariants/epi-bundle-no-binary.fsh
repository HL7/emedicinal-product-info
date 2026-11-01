Invariant: epi-bdl-no-binary
Description: "A Binary SHALL NOT be a Bundle entry on its own. Images are embedded in the Composition (as a contained Binary) or in the ManufacturedItemDefinition (as a property image attachment)."
Severity: #error
Expression: "resource.where($this is Binary).empty()"
