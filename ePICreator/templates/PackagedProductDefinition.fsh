{% for index,row in data["data"].iterrows() %}
{% if row["skip"] not in ['y', 'Y', 'x', 'X'] %}

Instance: {{ row["name"]| lower | replace( ' ','') }}
InstanceOf: PackagedProductDefinitionUvEpi
Title: "{{ row["name"] }}"
Description: "{{ row["name"] }}"
Usage: #example
* id = "{{row['id']}}" 

* identifier.system = $spor-prod
* identifier.value = "{{ row["identifier"] }}"
* identifier.use = #official

* name = "{{ row["name"] }}"

* type = $spor-rms#{{ row["typeID"] }} "{{ row["type"] }}"
//* type = $spor-rms#100000155527


* status = #{{ row["status"]|lower }}
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
  * quantity = {{ row["packaging.quantity"] }}
  * material = $spor-rms#{{ row["packaging_materialID"] }} "{{ row["packaging_material"] }}"
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