Instance: cfsb1639760977050
InstanceOf: AdministrableProductDefinition
Description: "Administrable Product"
Usage: #example
 
* identifier.system = $phpid
* identifier.value = "0xE857DA811B4A6F3BD57810C45D2EA1ED" // PHPID
* identifier.use = #official

* status = #active

 // Reference to MedicinalProductDefinition: Medicinal Product
* formOf = Reference(cfsb1639760186202)

* administrableDoseForm = $spor-rms#100000116155
* administrableDoseForm.text = "Granules and solvent for oral suspension"

* routeOfAdministration.code = $spor-rms#100000073619
* routeOfAdministration.code.text = "oral use"



// Reference to ManufacturedItemDefinition: Manufactured Item
* producedFrom = Reference(cfsb1639756818482)