{% for index,row in data["data"].iterrows() %}
{% if row["skip"] not in ['y', 'Y', 'x', 'X'] %}

Instance: composition{{row["name"]}}
InstanceOf: CompositionUvEpi
Title: "Composition for {{row['name']}} Package Leaflet"
Description:  "Composition for {{row['name']}} Package Leaflet"
Usage: #example

* id = "{{row['id']}}" 
* identifier.system = "{{row['identifier_system']}}"
* identifier.value = "{{row['identifier']}}"

* status = #final

* type = https://spor.ema.europa.eu/rmswi/#100000155538
* type.text = "Package Leaflet"

{% if data["turn"] != "1" %}
* subject = Reference({{data["references"]["MedicinalProductDefinition"][0]}})
{% endif %}

* date = "{{row['date']}}"
{% if data["turn"] != "1" %}
* author = Reference({{data["references"]["Organization"][0]}})
{% endif %}


* title = "{{row['title']}}"


* section[+].
  * title = "B. Package Leaflet"
  * code = https://spor.ema.europa.eu/rmswi/#100000155538
  * code.text = "B. PACKAGE LEAFLET"
  * text.status = #additional
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>unavailable</div>"""
  * emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#unavailable


       
* section[=].section[+]
  * title = "Package leaflet: Information for the user"
  * code = https://spor.ema.europa.eu/rmswi/#100000155538
  * code.text = "Package leaflet: Information for the user"
  * text.status = #additional
  * text.div = """ <div> </div> """
        
* section[=].section[+]
  * title = "What is in this leaflet"
  * code = https://spor.ema.europa.eu/rmswi/#100000155538
  * code.text = "What is in this leaflet"
  * text.status = #additional
  * text.div = """ <div> </div> """
        
* section[=].section[+]
  * title = "1. What {{row['name']}} is and what it is used for"
  * code = https://spor.ema.europa.eu/rmswi/#100000155538
  * code.text = "1. What {{row['name']}} is and what it is used for"
  * text.status = #additional
  * text.div = """ <div> </div> """
        
* section[=].section[+]
  * title = "2. What you need to know before you take {{row['name']}}"
  * code = https://spor.ema.europa.eu/rmswi/#100000155538
  * code.text = "2. What you need to know before you take {{row['name']}}"
  * text.status = #additional
  * text.div = """ <div> </div> """
        
* section[=].section[+]
  * title = "3. How to take {{row['name']}}"
  * code = https://spor.ema.europa.eu/rmswi/#100000155538
  * code.text = "3. How to take {{row['name']}}"
  * text.status = #additional
  * text.div = """ <div> </div> """
        
* section[=].section[+]
  * title = "4. Possible side effects"
  * code = https://spor.ema.europa.eu/rmswi/#100000155538
  * code.text = "4. Possible side effects"
  * text.status = #additional
  * text.div = """ <div> </div> """
        
* section[=].section[+]
  * title = "5. How to store {{row['name']}}"
  * code = https://spor.ema.europa.eu/rmswi/#100000155538
  * code.text = "5. How to store {{row['name']}}"
  * text.status = #additional
  * text.div = """ <div> </div> """
        
* section[=].section[+]
  * title = "6. Contents of the pack and other information"
  * code = https://spor.ema.europa.eu/rmswi/#100000155538
  * code.text = "6. Contents of the pack and other information"
  * text.status = #additional
  * text.div = """ <div> </div> """

        

{%- endif %}
{%- endfor %}