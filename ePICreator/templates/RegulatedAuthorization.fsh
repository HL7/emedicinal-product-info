{% for index,row in data["data"].iterrows() %}
{% if row["skip"] not in ['y', 'Y', 'x', 'X'] %}

Instance: authorization{{ row["name"]| lower | regex_replace('[^A-Za-z0-9]+', '') | create_hash_id }}
InstanceOf: RegulatedAuthorizationUvEpi
Title: "Regulated Authorization for {{ row["name"] }}"
Description: "Regulated Authorization for {{ row["name"] }}"
Usage: #example

* identifier.system = $spor-prod
* identifier.value = "{{ row["identifier"] }}"
* identifier.use = #official

 // Reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
 {% if data["turn"] != "1" %}
//* subject = Reference(karvea75mgblisterx28)
* subject = Reference({{data["references"]["MedicinalProductDefinition"][0][0]}})
{% endif %}
* type = $spor-rms#{{ row["typeID"] }} "{{ row["type"] }}"

//* type = $spor-rms#100000072062
//* type.text = "Marketing Authorisation"

* region = urn:iso:std:iso:3166#{{ row["regionID"] }} "{{ row["region"] }}"


* status = http://hl7.org/fhir/publication-status#{{ row["statusID"] }} "{{ row["status"] }}"


* statusDate = "{{ row["statusDate"] }}"
{% set ns  = namespace(referenced=False) -%}

// * holder = Reference(sanofiaventisgroupe)
{% if data["turn"] != "1" %}
{% for refs in data["references"]["Organization"] %} 
{% if refs[0].startswith("marketingauthorisationholder") %}
{% set ns.referenced=True -%}

* holder = Reference({{refs[0]}})
{%- endif %}
{%- endfor %}

{% if not ns.referenced  %}

* holder = Reference({{data["references"]["Organization"][0][0]}})
{%- endif %}

{%- endif %}

{%- endif %}
{%- endfor %}



{% if data["turn"] != "1" %}
{% for refs in data["references"]["Organization"] %} 
{% if refs[0].startswith("medicinesregulatoryauthority") %}
 // Reference to Organization: EMA
* regulator = Reference({{refs[0]}})
{%- endif %}
{%- endfor %}
{%- endif %}


