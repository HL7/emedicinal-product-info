
Instance: ap-04c9bd6fb89d38b2d83eced2460c4dc1
InstanceOf: AdministrableProductDefinitionUvEpi
Title: "Administrable product Flucelvax Tetra - suspension for injection in pre-filled syringe Influenza vaccine (surface antigen, inactivated, prepared in cell cultures)"
Description: "Flucelvax Tetra - suspension for injection in pre-filled syringe Influenza vaccine (surface antigen, inactivated, prepared in cell cultures)"
Usage: #example

* identifier.system = $phpid
* identifier.value = "xx" 

* status = #active

* formOf = Reference(mpb6ced64d25ea2c8da6c6099386f14db1)
* administrableDoseForm = $spor-rms#100000074063 "suspension for injection in pre-filled syringe"
* unitOfPresentation = $spor-rms#200000002150 "Syringe"

//this is just manufactured with extra steps?


//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* producedFrom = Reference(mid-04c9bd6fb89d38b2d83eced2460c4dc1)


* routeOfAdministration.code = $spor-rms#100000073633 "Subcutaneous use"

* routeOfAdministration.targetSpecies.code = $spor-rms#100000109093 "Human"