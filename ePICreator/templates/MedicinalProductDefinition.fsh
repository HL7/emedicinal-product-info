{% for index,row in data["data"].iterrows() %}
{% if row["skip"] not in ['y', 'Y', 'x', 'X'] %}

Instance: mp{{ row["productname"]| regex_replace('[^A-Za-z0-9]+', '') | create_hash_id }}
InstanceOf: MedicinalProductDefinitionUvEpi
Title: "Medicinal Product {{ row["productname"]}}"
Description: "{{ row["productname"]}}"
Usage: #example

{% if row["identifier_system"]|string != 'nan' %}
{% for idx in range(0,row["identifier_system"].count("|")+1) %} 
* identifier[+].system = "{{ row["identifier_system"].split("|")[idx]}}"
* identifier[=].value = "{{ row["identifier_value"].split("|")[idx]}}"
{%- endfor %}
{%- endif %}

* type = http://hl7.org/fhir/medicinal-product-type#MedicinalProduct "Medicinal Product"

* domain = http://hl7.org/fhir/medicinal-product-domain#Human "Human use"

* status = http://hl7.org/fhir/publication-status#active "active"


{{ "* indication = \"{}\"".format(row.indication) if row.indication|string !="nan"}}


* legalStatusOfSupply = $spor-rms#{{row['statusSuplyID']}} "{{row['statusSuply']}}"

{% if row["classification_ids"]|string != 'nan' %}
{% for idx in range(0,row["classification_ids"].count("|")+1) %} 

* classification[+] = $atc#{{ row["classification_ids"].split("|")[idx]}} "{{ row["classification_texts"].split("|")[idx]}}"

{%- endfor %}
{%- endif %}

* name
  * productName = "{{ row["productname"]|trim  }}"
  * type = $spor-productNamePartType-cs#220000000001
    * text = "Full name"
  
  * part[0]
    * part = "{{ row["inventedNamePart"]|trim  }}"
    * type = $spor-productNamePartType-cs#220000000002
    * type.text = "Invented name part"
  
  * part[+]
    * part = "{{ row["ScientificNamePart"] |trim }}"
    * type = $spor-productNamePartType-cs#220000000003
    * type.text = "Scientific name part"
  
  * part[+]
    * part = "{{ row["StrengthPart"] |trim }}"
    * type = $spor-productNamePartType-cs#220000000004
    * type.text = "Strength part"
  
  * part[+]
    * part = "{{ row["PharmaceuticalDosePart"]|trim  }}"
    * type = $spor-productNamePartType-cs#220000000005
    * type.text = "Pharmaceutical dose form part"
  
  * usage
    * country = urn:iso:std:iso:3166#{{ row["countryCode"]  }} "{{ row["country"]  }}"
    * jurisdiction = urn:iso:std:iso:3166#{{ row["countryCode"]  }} "{{ row["country"]  }}"
    * language = urn:ietf:bcp:47#{{ row["languageID"]  }}  "{{ row["language"]  }}"

{%- endif %}
{%- endfor %}