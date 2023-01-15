{% for index,row in data["data"].iterrows() %}
{% if row["skip"] not in ['y', 'Y', 'x', 'X'] %}

{% set ns = namespace() %}
{% set ns.one = row['type'] %}
{% set ns.two = row['name'] %}
{% set ns.three= data["dictionary"]["MajorName"] %}
{% set ns.name_to_has= ns.one ~ ns.two ~ns.three  %}



Instance: org-{{ns.name_to_has| create_hash_id}}

InstanceOf: OrganizationUvEpi
Title: "{{ row["name"]  }} as {{ row["type"]  }}"
Description: "{{ row["name"]  }} as {{ row["type"]  }}"
Usage: #example

* identifier.system = $spor-org
* identifier.value = "{{ row["identifier"]  }}"
* identifier.use = #official

* active = {{ row["active"]|lower  }}

* type = $spor-rms#{{row["typeID"]}}  "{{ row["type"]  }}"
* type.text = "{{ row["type"]  }}"
* name = "{{ row["name"]  }}"

* contact
  * address
    * text = "{{ row["address_line"]  }} {{ row["address_city"]  }} {{ row["address_country"]  }}"
    * use = #{{ row["address_use"]  }}
    * type = #{{ row["address_type"]  }}
    * line = "{{ row["address_line"]|trim  }}"
    * city = "{{ row["address_city"]|trim  }}"
    * country = "{{ row["address_country"]|trim  }}"
    {{ "* postalCode = \"{}\"".format(row.address_postalCode|trim) if row.address_postalCode|string !="nan"}}


{%- endif %}
{%- endfor %}