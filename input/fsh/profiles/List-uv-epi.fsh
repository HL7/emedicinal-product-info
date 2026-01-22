Profile: ListUvEpi
Parent: List
Id: List-uv-epi
Title: "List (ePI)"
Description: "List (ePI) - ported from Business Friendly ePI Outline"
* ^status = #active
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #brr

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    AuthorisationType named authorisationType 0..1 and
    MedicineDomain named medicineDomain 0..1 and
    ProcedureNumber named procedureNumber 0..1 and
    VersionNumber named versionNumber 0..1

* text 1..
* text ^short = "Text summary of the resource, for human interpretation"
* text ^definition = "Text summary of the resource, for human interpretation"

* identifier 1..1
* identifier ^short = "Business identifier for this list"
* identifier ^definition = "Business identifier for this list"
* identifier.system 1..1
* identifier.value 1..1

* status 1..1
* status ^short = "current | retired | entered-in-error"
* status ^definition = "Indicates the current state of this list."

* mode 1..1
* mode = #working
* mode ^short = "working | snapshot | changes"
* mode ^definition = "How this list was prepared - whether it is a working list that is suitable for being maintained on an ongoing basis, or if it represents a snapshot of a list of items from another source, or whether it is a prepared list where items may be marked as added, modified or deleted."

* title 1..1
* title ^short = "Descriptive name for the list"
* title ^definition = "A label for the list assigned by the author."

* code 1..1
* code ^short = "What the purpose of this list is"
* code ^definition = "This code defines the purpose of the list - why it was created."
* code.coding 1..1
* code.coding.system 1..1
* code.coding.code 1..1
* code.coding.display 1..1

* subject 1..1
* subject only Reference(MedicinalProductDefinitionUvEpi)
* subject ^short = "If all resources have the same subject"
* subject ^definition = "The common subject (or patient) of the resources that are in the list if there is one."

* encounter ^short = "Context in which list created"
* encounter ^definition = "The encounter that is the context in which this list was created."

* date 1..1
* date ^short = "When the list was prepared"
* date ^definition = "The date that the list was prepared."

* source 1..1
* source only Reference(OrganizationUvEpi)
* source ^short = "Who and/or what defined the list contents (aka Author)"
* source ^definition = "The entity responsible for deciding what the contents of the list were. Where the list was created by a human, this is the same as the author of the list."

* note ^short = "Comments about the list"
* note ^definition = "Comments that apply to the overall list."

* entry 1..
* entry ^short = "Entries in the list"
* entry ^definition = "Entries in the list."
* entry.flag ^short = "Status/Workflow information about this item"
* entry.flag ^definition = "The flag allows the system constructing the list to indicate the role the item plays."
* entry.deleted ^short = "If this item is actually marked as deleted"
* entry.deleted ^definition = "True if the item is marked as deleted in the list."
* entry.date ^short = "When item added to list"
* entry.date ^definition = "When this item was added to the list."
* entry.item 1..1
* entry.item only Reference(Bundle)
* entry.item ^short = "Actual entry"
* entry.item ^definition = "A reference to the actual resource from which data was derived."
