### How to connect IPS and ePI resources
The following unique identifiers are used as connection points between the IPS bundle, the ePI Master List and the ePI document (e.g., PIL or SmPC).

**Market Authorization Number (MAN)**
A marketing authorisation number is used to uniquely identify a medicinal product. it is allocated to a specific strength and pharmaceutical form of the medicinal product.

The marketing authorisation number, assigned by the European Medicines Agency to a centrally authorised medicinal product, indicates whether it is a product for human or veterinary use, the year of authorisation of the first presentation of the product, the sequence number of the authorisation of the first presentation of the product and the number distinguishing subsequently authorised presentations of the product (pharmaceutical form, strength, pack size and type of packaging). It has the following format: EU/A/BB/CCC/DDD:

EU – identification of a centrally authorised medicinal product

A – distinction of the medicinal product (1 – human medicine, 2 – veterinary medicine)

BB – year of authorisation

CCC – serial number of the authorisation

DDD – number of the product presentation

This type of the marketing authorisation number allows for the tracing of links between individual product presentations assigned to the global authorisation; however, it does not allow for the distinguishing of the year in which the individual presentations were authorised, and it does not even indicatively point to the therapeutic area of the use of the product.

 

The marketing authorisation number of a product which is subject to parallel distribution, comprises of the marketing authorisation number of a centrally authorised medicinal product complemented with the letters “PD”, meaning parallel distribution, the sequential number of the parallel distribution authorisation in the respective year, and the year of issuance of such authorisation; prior to 1 January 2017, the letters “PD” were complemented with the sequential number of the parallel distribution authorisation issued for the concerned medicinal product and the year of issuance of the parallel distribution authorisation. The data after the letters PD serve solely for the Institute’s internal purposes, they do not form part of the marketing authorisation number and in the search database they are provided on a separate line under the marketing authorisation number.


**Substance Identifier (SID) for the active ingredient(s)**



#### IPS
Within the IPS bundle, the medicinal product identifiers are found in the MedicationIPS section. 

|	Path	|	Description	|
|---------|---------|
|	Medication.language	|	Language of the content	|
|	Medication.code	|	Medication that was administered or was to be administered (medication code from any code system)	|
|	Medication.code:atcClass	|	WHO ATC classification	|
|	Medication.code:snomed	|	SNOMED CT medications	|
|	Medication.code:man	|	Unique medicinal product identifier issued by the national competant authority. **The MAN is the only identifier that definitively connects the IPS bundle to the ePI Master List and the ePI document bundles**	|
|	Medication.status	|	States whether the medicinal product is available for use (active) or not available for use (inactive)	|
|	Medication.form	|	Form of the medicinal product	|
|	Medication.ingredient	|	Active substance (or ingredient) of the medicinal product	|
|	Medication.ingredient.itemCodeableConcept	|	Unique identifier for the active ingredient in the medicinal product	|
|	Medication.ingredient.itemCodeableConcept.text	|	Plain text representation of the active ingredients name	|
|	Medication.ingredient.strength	|	The strength of the medicinal product expressed as a ratio of two quantity values - a numerator and a denominator	|

#### ePI - Master List
The ePI Master List is a List resource and serves as an index of all ePI documents associated to a given medicinal product. For example, all SmPCs and all PILs for a given medicinal product.

Within the ePI Master List, the medicinal product identifiers are found here: 

|Path|Description|
|---------|---------|
|list.identifier.system:medicine-name| Plain text brand name of the medicinal product|
|list.identifier.system:marketing-authorisation-numbers|Unique medicinal product identifier issued by the national competant authority. **The MAN is the only identifier that definitively connects the ePI Master List to the IPS bundle and the ePI document bundles**	|


Within the ePI Master List, the identifier for the individual ePI document bundles are found here:

|Path|Description|
|---------|---------|
|list.code.coding.system:example-pi-list-types|Identifies the type of list|
|list.code.coding.code:00000021213|code for the ePI Master List type|
|list.code.coding.display:ePI Master List|display name for the List type code|
|list.subject.extension.valueCoding.system:medicine-name|branded name of the medicinal product|
|list.subject.extension.valueCoding.system:marketing-authorization-holder|Unique medicinal product identifier issued by the national competant authority. **The MAN is the only identifier that definitively connects the IPS bundle to the ePI Master List and the ePI document bundles**	|
|list.subject.extension.valueCoding.system:active-substance|Active substance (or ingredient) of the medicinal product|
|list.subject.extension.valueCoding.system:domain|Identifies whether the medicinal product is intended for human (H) or veterinary(V) use|
|list.entry.item.extension:documentType|Identifies the type of ePI document bundle (e.g., SmPC or PIL)|
|list.entry.item.extension:language|Identifies the language of the content in the ePI document bundle|
|list.entry.item.reference|Unique identifier to a specific version of a ePI document bundle (e.g., version 1.0 of a PIL for this medicinal product|



