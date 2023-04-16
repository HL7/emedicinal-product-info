{% for index,row in data["data"].iterrows() %}
{% if row["skip"] not in ['y', 'Y', 'x', 'X'] %}

Instance: substance-{{ row["name"]| lower | regex_replace('[^A-Za-z0-9]+', '') }}
InstanceOf: SubstanceDefinitionUvEpi
Description: "{{ row["name"] }}"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "{{ row["identifier"] }}"
* identifier.use = #official

* version = "{{ row["version"] }}"

* status = https://gsrs.ncats.nih.gov/ginas/app/beta/#{{ row["statusID"] }} "{{ row["status"] }}"

//* description = "{{ row["description"] }}"
{{ "* description = \"{}\"".format(row.description) if row.description|string !="nan"}}

 // Reference to Organization: MAH
 {% if data["turn"] != "1" %}

* manufacturer = Reference({{data["references"]["Organization"][0][0]}})

{%- endif %}

{% if row["moleclularWeigth"]|string != "nan" %}

{% for idx in range(0,row["moleclularWeigth"].count("|")+1) %} 

* molecularWeight[+].type.text = "{{ row["moleclularWeigthType"].split("|")[idx] }}"
* molecularWeight[=].amount.value = {{ row["moleclularWeigth"].split("|")[idx] | replace (",",".")}}

{%- endfor %}
{%- endif %}

* structure.molecularFormula = "{{ row["molecularFormula"] }}"

//* name.name = "{{ row["name_name"] }}"
{{ "* name.name = \"{}\"".format(row.name_name) if row.name_name|string !="nan"}}

//* name.type = https://gsrs.ncats.nih.gov/ginas/app/beta/#{{ row["name_typeID"] }} "{{ row["name_type"] }}"
{{ "* name.type = https://gsrs.ncats.nih.gov/ginas/app/beta/#{} \"{}\"".format(row.name_typeID,row.name_type) if row.name_type|string !="nan"}}


{%- endif %}
{%- endfor %}