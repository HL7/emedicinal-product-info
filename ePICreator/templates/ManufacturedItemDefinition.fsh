{% for index,row in data["data"].iterrows() %}
{% if row["skip"] not in ['y', 'Y', 'x', 'X'] %}

Instance: mid-{{ row["name"] | lower | regex_replace('[^A-Za-z0-9]+', '') | create_hash_id }}
InstanceOf: ManufacturedItemDefinitionUvEpi
Title: "Manufactured item {{ row["name"] }}"
Description: "{{ row["name"] }}"
Usage: #example

* identifier.system = "https://spor.ema.europa.eu/pmswi/#/"
* identifier.value = "{{ row["identifier"] }}"
* identifier.use = #official

* status = #{{ row["status"] }}
* manufacturedDoseForm = https://spor.ema.europa.eu/rmswi/#{{row["doseFormID"]}} "{{ row["doseForm"] }}"

* unitOfPresentation = $spor-rms#{{row["unit_presentationID"]}} "{{ row["unit_presentation"] }}"


 

{% set ns  = namespace(referenced=False) -%}
{% if data["turn"] != "1" %}
{% for refs in data["references"]["Organization"] %} 
{% if refs[0].startswith("manufacturer") and "manufacturerapi" not in refs[0]  %}
{% set ns.referenced=True -%}

* manufacturer = Reference({{refs[0]}})
{%- endif %}
{%- endfor %}

{% if not ns.referenced  %}

* manufacturer = Reference({{data["references"]["Organization"][0][0]}})
{%- endif %}
{%- endif %}
{%- endif %}
{%- endfor %}