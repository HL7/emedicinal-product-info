{% for index,row in data["data"].iterrows() %}
{% if row["skip"] not in ['y', 'Y', 'x', 'X'] %}

Instance: {{ row["productname"]| replace(' ','')  }}
InstanceOf: MedicinalProductDefinitionUvEpi
Title: "Medicinal Product {{ row["productname"]}}"
Description: "EU/1/97/049/001 {{ row["productname"]}}"
Usage: #example


* id = "{{row['id']}}" 
* identifier.system = $spor-prod
* identifier.value = "{{row['identifier']}}"

* type = http://hl7.org/fhir/medicinal-product-type#{{row['typeID']}} "{{row['type']}}"

* domain = http://hl7.org/fhir/medicinal-product-domain#{{row['domainID']}} "{{row['domain']}}"

* status = http://hl7.org/fhir/publication-status#{{ row["status"]  }} "{{ row["status"]  }}"

* legalStatusOfSupply = $spor-rms#{{row['statusSuplyID']}} "{{row['statusSuply']}}"

* name
  * productName = "{{ row["productname"]  }}"
  * type = $spor-productNamePartType-cs#220000000001
    * text = "Full name"
  
  * part[0]
    * part = "{{ row["inventedNamePart"]  }}"
    * type = $spor-productNamePartType-cs#220000000002
    * type.text = "Invented name part"
  
  * part[+]
    * part = "{{ row["ScientificNamePart"]  }}"
    * type = $spor-productNamePartType-cs#220000000003
    * type.text = "Scientific name part"
  
  * part[+]
    * part = "{{ row["StrengthPart"]  }}"
    * type = $spor-productNamePartType-cs#220000000004
    * type.text = "Strength part"
  
  * part[+]
    * part = "{{ row["PharmaceuticalDosePart"]  }}"
    * type = $spor-productNamePartType-cs#220000000005
    * type.text = "Pharmaceutical dose form part"
  
  * usage
    * country = urn:iso:std:iso:3166#{{ row["countryCode"]  }} "{{ row["country"]  }}"
    * jurisdiction = urn:iso:std:iso:3166#{{ row["countryCode"]  }} "{{ row["country"]  }}"
    * language = urn:ietf:bcp:47#{{ row["languageID"]  }}  "{{ row["language"]  }}"

{%- endif %}
{%- endfor %}