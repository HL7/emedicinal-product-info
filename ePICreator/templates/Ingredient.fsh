{% for index,row in data["data"].iterrows() %}
{% if row["skip"] not in ['y', 'Y', 'x', 'X'] %}

Instance: ingredient{{ row["name"]| lower | replace(' ','') }}
InstanceOf: IngredientUvEpi
Title: "Ingredient-{{row["role"]| lower}} {{ row["name"]  }}"
Description: "{{ row["name"]  }}"
Usage: #example

* id = "{{row['id']}}" 

* identifier.system = $ginas
* identifier.value = "{{ row["identifier"]  }}"
* identifier.use = #official

* role = $spor-rms#{{ row["roleID"]  }} "{{ row["role"]  }}"

* status = #{{ row["status"]  }}

* substance.code.concept.coding = $ginas#{{ row["identifier"]  }} "{{ row["name"]  }}"

{% if row["quantity"]|string !="nan" %}

* substance.strength.presentationQuantity = {{ row["quantity"]  }} '{{ row["quantity unit"]  }}'

* substance.strength.basis = http://terminology.hl7.org/CodeSystem/v3-RoleClass#{{row["StrengthBasis"]}} "{{row["StrengthBasisText"]}} "
{% endif %}


{% if data["turn"] != "1" %}
// Reference to manufactured item
* for = Reference({{data["references"]["ManufacturedItemDefinition"][0]}})

{%- endif %}

// Reference to Organization:  Reference to MAH
{% if data["turn"] != "1" %}

* manufacturer.manufacturer = Reference({{data["references"]["Organization"][0]}})

{%- endif %}

{%- endif %}
{%- endfor %}