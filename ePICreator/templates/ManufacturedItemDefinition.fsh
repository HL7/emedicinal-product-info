{% for index,row in data["data"].iterrows() %}
{% if row["skip"] not in ['y', 'Y', 'x', 'X'] %}

Instance: {{ row["name"] | lower | replace(' ','') }}
InstanceOf: ManufacturedItemDefinitionUvEpi
Title: "Manufactured item {{ row["name"] }}"
Description: "{{ row["name"] }}"
Usage: #example
* id = "{{row['id']}}" 

* identifier.system = "https://spor.ema.europa.eu/pmswi/#/"
* identifier.value = "{{ row["identifier"] }}"
* identifier.use = #official

* status = #{{ row["status"] }}
* manufacturedDoseForm = https://spor.ema.europa.eu/rmswi/#{{row["doseFormID"]}} "{{ row["doseForm"] }}"

* unitOfPresentation = $spor-rms#{{row["unit_presentationID"]}} "{{ row["unit_presentation"] }}"


 // Reference to Organization: Manufacturer
// * manufacturer = Reference(sanofiaventisgroupe)
{% if data["turn"] != "1" %}
* manufacturer = Reference({{data["references"]["Organization"][0]}})
{% endif %}

{%- endif %}
{%- endfor %}

