{% for index,row in data["data"].iterrows() %}
{% if row["skip"] not in ['y', 'Y', 'x', 'X'] %}


Instance: org-{{ row["type"] | lower | regex_replace('[^A-Za-z0-9]+', '') }}-{{ row["name"] | lower | regex_replace('[^A-Za-z0-9]+', '') }}-{{ data["dictionary"]["MajorName"]|lower}}
InstanceOf: OrganizationUvEpi
Title: "{{ row["name"]  }} as {{ row["type"]  }}"
Description: "{{ row["name"]  }} as {{ row["type"]  }}"
Usage: #example
* id = "{{row['id']}}" 
* identifier.system = $spor-org
* identifier.value = "{{ row["identifier"]  }}"
* identifier.use = #official

* active = {{ row["active"]|lower  }}

* type = $spor-rms#{{row["typeID"]}}  "{{ row["type"]  }}"
* type.text = "{{ row["type"]  }}"
* name = "{{ row["name"]  }}"

* contact
  * address
    * text = "{{ row["address_line"]  }} {{ row["address_city"]  }} {{ row["address_country"]  }} "
    * use = #{{ row["address_use"]  }}
    * type = #{{ row["address_type"]  }}
    * line = "{{ row["address_line"]  }}"
    * city = "{{ row["address_city"]  }}"
    * country = "{{ row["address_country"]  }}"
    {{ "* postalCode = \"{}\"".format(row.address_postalCode) if row.address_postalCode|string !="nan"}}


{%- endif %}
{%- endfor %}