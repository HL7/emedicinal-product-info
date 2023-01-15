{% for index,row in data["data"].iterrows() %}
{% if row["skip"] not in ['y', 'Y', 'x', 'X'] %}

Instance: ppd-{{ row["name"]| lower | regex_replace('[^A-Za-z0-9]+', '') | create_hash_id}}
InstanceOf: PackagedProductDefinitionUvEpi
Title: "{{ row["name"] }}"
Description: "{{ row["name"] }}"
Usage: #example

* identifier.system = $spor-prod
* identifier.value = "{{ row["identifier"] }}"
* identifier.use = #official

* name = "{{ row["name"] }}"

* type = $spor-rms#{{ row["typeID"] }} "{{ row["type"] }}"
//* type = $spor-rms#100000155527


* status = http://hl7.org/fhir/publication-status#active "Active"
* statusDate = "{{ row["statusDate"]}}"

{% if row["quantity"]|string !="nan"  %}

* containedItemQuantity = {{ row["quantity"].split(' ')[0] }} '{{ row["quantity"].split(' ')[1] }}'
{% endif %}

{{ "* description = \"{}\"".format(row.description) if row.description|string !="nan"}}
{{ "* copackagedIndicator = {}".format(row.copackagedIndicator|lower) if row.copackagedIndicator|string !="nan"}}


* packaging
  * identifier.system = $spor-prod
  * identifier.value = "{{ row["packaging_identifier"] }}"
  * type = $spor-rms#{{ row["Packaging_typeID"] }} "{{ row["Packaging_type"] }}"
  * quantity = {{ row["packaging_quantity"] }}
  * material = $spor-rms#{{ row["packaging_materialID"] }} "{{ row["packaging_material"] }}"

{% if row["inside_packaging_type"]|string != "nan" %}

  * packaging.type = $spor-rms#{{ row["inside_packaging_typeID"] }} "{{ row["inside_packaging_type"] }}"
  * packaging.quantity = {{ row["inside_packaging_quantity"] }}
{% for idx in range(0,row["inside_packaging_materialID"].count("|")+1) %} 

  * packaging.material[+] = $spor-rms#{{ row["inside_packaging_materialID"].split("|")[idx] }} "{{ row["inside_packaging_material"].split("|")[idx] }}"

{%- endfor %}
{%- endif %}


//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
{% if data["turn"] != "1" %}
* packageFor = Reference({{data["references"]["MedicinalProductDefinition"][0][0]}})
{% endif %}
 // Reference to Organization: MAH
{% if data["turn"] != "1" %}
* manufacturer = Reference({{data["references"]["Organization"][0][0]}})
{% endif %}

{%- endif %}
{%- endfor %}