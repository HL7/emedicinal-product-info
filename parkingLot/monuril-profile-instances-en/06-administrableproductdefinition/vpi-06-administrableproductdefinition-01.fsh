Instance: cfsb1639760977050
InstanceOf: AdministrableProductDefinition
Description: "Administrable Product"
Usage: #example
 
* identifier.system = "https://spor.ema.europa.eu/pmswi/"
* identifier.value = "0xE857DA811B4A6F3BD57810C45D2EA1ED"
* identifier.use = #official
* status = #active

 // Reference to MedicinalProductDefinition: Medicinal Product
* formOf = Reference(cfsb1639760186202)

* administrableDoseForm = https://spor.ema.europa.eu/rmswi/#/#100000116155 "Granules and solvent for oral suspension"
* administrableDoseForm.text = "Granules and solvent for oral suspension"

 // Reference to ManufacturedItemDefinition: Manufactured Item
* producedFrom = Reference(cfsb1639756818482)

* routeOfAdministration.code = https://spor.ema.europa.eu/rmswi/#100000073619


