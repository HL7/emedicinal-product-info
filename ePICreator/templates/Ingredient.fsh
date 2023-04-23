{% for index,row in data["data"].iterrows() %}
{% if row["skip"] not in ['y', 'Y', 'x', 'X'] %}

{% set ns = namespace() %}
{% set ns.one = data["dictionary"]["MajorName"]|lower|regex_replace('[^A-Za-z0-9]+', '') %}
{% set ns.two = row["name"]| lower | regex_replace('[^A-Za-z0-9]+', '')  %}
{% set ns.name_to_has= ns.one ~ ns.two  %}



{% if ns.name_to_has|length > 48 %}

Instance: ingredient-for-{{ns.name_to_has| create_hash_id}}


{% else %}

Instance: ingredient-for-{{ data["dictionary"]["MajorName"]|lower|regex_replace('[^A-Za-z0-9]+', '')}}-{{ row["name"]| lower | regex_replace('[^A-Za-z0-9]+', '') }}

{% endif %}

InstanceOf: IngredientUvEpi
Title: "Ingredient-{{row["role"]| lower}} {{ row["name"]  }}"
Description: "{{ row["name"]  }}"
Usage: #example

* identifier.system = $ginas
* identifier.value = "{{ row["identifier"]  }}"
* identifier.use = #official

* role = $spor-rms#{{ row["roleID"]  }} "{{ row["role"]  }}"

* status = #{{ row["status"]  }}

* substance.code.concept.coding = $ginas#{{ row["identifier"]  }} "{{ row["name"]  }}"

{% if row["quantity"]|string !="nan" %}

* substance.strength.presentationQuantity = {{ row["quantity"] | replace (",",".")  }} '{{ row["quantity unit"]  }}'

* substance.strength.basis = http://terminology.hl7.org/CodeSystem/v3-RoleClass#{{row["StrengthBasis"]}} "{{row["StrengthBasisText"]|trim }}"
{% endif %}


{% if data["turn"] != "1" %}
// Reference to products
* for = Reference({{data["references"]["ManufacturedItemDefinition"][0][0]}})
* for[+] = Reference({{data["references"]["MedicinalProductDefinition"][0][0]}})
* for[+] = Reference({{data["references"]["AdministrableProductDefinition"][0][0]}})

{%- endif %}

// Reference to Organization:  Reference to MAH

{% set ns  = namespace(referenced=False) -%}
{% if data["turn"] != "1" %}
{% for refs in data["references"]["Organization"] %} 
{% if refs[0].startswith("manufacturerapi") %}
{% set ns.referenced=True -%}

* manufacturer.manufacturer  = Reference({{refs[0]}})
{%- endif %}
{%- endfor %}

{% if not ns.referenced  %}

* manufacturer.manufacturer = Reference({{data["references"]["Organization"][0][0]}})
{% endif %}
{% endif %}
{% endif %}
{% endfor %}