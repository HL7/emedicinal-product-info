{% for index,row in data["data"].iterrows() %}
{% if row["skip"] not in ['y', 'Y', 'x', 'X'] %}

Instance: bundlepackageleaflet-{{row["name"] | lower | regex_replace('[^A-Za-z0-9]+', '') | create_hash_id}}
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for {{row["name"]}} Package Leaflet"
Description: "Bundle for {{row["name"]}} Package Leaflet ePI document"
Usage: #example

* identifier.system = "{{row['identifier_system']}}" 
* identifier.value = "{{row["identifier_value"]}}"
* type = #document
* timestamp = "{{ now }}"
{% if data["turn"] != "1" %}

// Composition
* entry[0].fullUrl = "Composition/{{data["references"]["Composition"][0][1]}}"
* entry[0].resource = {{data["references"]["Composition"][0][0]}}

{% for key,value in data["references"].items() %} 
{% for refs in value %} 

{% if key != "Composition" and key !="Bundle" %}
// {{key}}
{% if "Substance" not in key  %}

* entry[+].fullUrl = "{{key}}/{{refs[1]}}"
* entry[=].resource = {{refs[0]}}
{%- else %}   
* entry[+].fullUrl = "{{key}}Definition/{{refs[1]}}"
* entry[=].resource = {{refs[0]}}
{%- endif %}   

{%- endif %}   
{%- endfor %}
{%- endfor %}

{%- endif %}


{%- endif %}
{%- endfor %}

