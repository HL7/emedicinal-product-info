{% for index,row in data["data"].iterrows() %}
{% if row["skip"] not in ['y', 'Y', 'x', 'X'] %}

Instance: composition{{row["name"]| regex_replace('[^A-Za-z0-9]+', '')| create_hash_id}}
InstanceOf: CompositionUvEpi
Title: "Composition for {{row['name']}} Package Leaflet"
Description:  "Composition for {{row['name']}} Package Leaflet"
Usage: #example

* identifier.system = "{{row['identifier_system']}}"
* identifier.value = "{{row['identifier']}}"

* status = #final





* type = https://spor.ema.europa.eu/rmswi/#100000155538
* type.text = "Package Leaflet"

{% if data["turn"] != "1" %}
* subject = Reference({{data["references"]["MedicinalProductDefinition"][0][0]}})
{%- endif %}

* date = "{{row['date']}}"
{% if data["turn"] != "1" %}
* author = Reference({{data["references"]["Organization"][0][0]}})
{%- endif %}


* title = "TEST PURPOSES ONLY - {{row['name']}}"
* attester.mode = http://hl7.org/fhir/composition-attestation-mode#official
* attester.time =  "{{row['date']}}"
* language = #{{row['language']}}


* section[+].
  * title = "B. Package Leaflet"
  * code = https://spor.ema.europa.eu/rmswi/#100000155538
  * code.text = "B. PACKAGE LEAFLET"
  * text.status = #additional
{% if row["package_leaflet"]|string == "nan" %}

  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>unavailable</div>"""
  * emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#unavailable
{%- elif row["package_leaflet"].startswith("<div xmlns='http://www.w3.org/1999/xhtml'>")  %}   
  * text.div = """{{row['package_leaflet']}}"""

{% else %}
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>  {{row['package_leaflet']}}         </div>"""
{%- endif %}   


      
* section[=].section[+]
  * title = "Package leaflet: Information for the user"
  * code = https://spor.ema.europa.eu/rmswi/#100000155538
  * code.text = "Package leaflet: Information for the user"
  * text.status = #additional
{% if row["information_user"]|string == "nan" %}

  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>unavailable</div>"""
  * emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#unavailable
{%- elif row["information_user"].startswith("<div xmlns='http://www.w3.org/1999/xhtml'>")  %}   
  * text.div = """{{row['information_user']}}"""

{% else %}
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>  {{row['information_user']}}         </div>"""
{%- endif %}   



* section[=].section[+]
  * title = "What is in this leaflet"
  * code = https://spor.ema.europa.eu/rmswi/#100000155538
  * code.text = "What is in this leaflet"
  * text.status = #additional
{% if row["what_in_leaflet"]|string == "nan" %}

  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>unavailable</div>"""
  * emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#unavailable
{%- elif row["what_in_leaflet"].startswith("<div xmlns='http://www.w3.org/1999/xhtml'>")  %}   
  * text.div = """{{row['what_in_leaflet']}}"""

{% else %}
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>  {{row['what_in_leaflet']}}         </div>"""
{%- endif %}   
          

* section[=].section[+]
  * title = "1. What {{row['name']}} is and what it is used for"
  * code = https://spor.ema.europa.eu/rmswi/#100000155538
  * code.text = "1. What {{row['name']}} is and what it is used for"
  * text.status = #additional
{% if row["what_product_is"]|string == "nan" %}

  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>unavailable</div>"""
  * emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#unavailable

{%- elif row["what_product_is"].startswith("<div xmlns='http://www.w3.org/1999/xhtml'>")  %}   
  * text.div = """{{row['what_product_is']}}"""

{% else %}
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>  {{row['what_product_is']}}         </div>"""
{%- endif %}   
          

             
* section[=].section[+]
  * title = "2. What you need to know before you take {{row['name']}}"
  * code = https://spor.ema.europa.eu/rmswi/#100000155538
  * code.text = "2. What you need to know before you take {{row['name']}}"
  * text.status = #additional
{% if row["before_take"]|string == "nan" %}

  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>unavailable</div>"""
  * emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#unavailable
{%- elif row["before_take"].startswith("<div xmlns='http://www.w3.org/1999/xhtml'>")  %}   
  * text.div = """{{row['before_take']}}"""

{% else %}
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>  {{row['before_take']}}         </div>"""
{%- endif %}   
                    
* section[=].section[+]
  * title = "3. How to take {{row['name']}}"
  * code = https://spor.ema.europa.eu/rmswi/#100000155538
  * code.text = "3. How to take {{row['name']}}"
  * text.status = #additional
{% if row["how_to_take"]|string == "nan" %}

  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>unavailable</div>"""
  * emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#unavailable 
{%- elif row["how_to_take"].startswith("<div xmlns='http://www.w3.org/1999/xhtml'>")  %}   
  * text.div = """{{row['how_to_take']}}"""

{% else %}
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>  {{row['how_to_take']}}         </div>"""
{%- endif %}         

        
* section[=].section[+]
  * title = "4. Possible side effects"
  * code = https://spor.ema.europa.eu/rmswi/#100000155538
  * code.text = "4. Possible side effects"
  * text.status = #additional
{% if row["side_effects"]|string == "nan" %}

  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>unavailable</div>"""
  * emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#unavailable  
{%- elif row["side_effects"].startswith("<div xmlns='http://www.w3.org/1999/xhtml'>")  %}   
  * text.div = """{{row['side_effects']}}"""

{% else %}
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>  {{row['side_effects']}}         </div>"""
{%- endif %}      
        
* section[=].section[+]
  * title = "5. How to store {{row['name']}}"
  * code = https://spor.ema.europa.eu/rmswi/#100000155538
  * code.text = "5. How to store {{row['name']}}"
  * text.status = #additional
{% if row["how_to_store"]|string == "nan" %}

  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>unavailable</div>"""
  * emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#unavailable
{%- elif row["how_to_store"].startswith("<div xmlns='http://www.w3.org/1999/xhtml'>")  %}   
  * text.div = """{{row['how_to_store']}}"""

{% else %}
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>  {{row['how_to_store']}}         </div>"""
{%- endif %}      
        
        
* section[=].section[+]
  * title = "6. Contents of the pack and other information"
  * code = https://spor.ema.europa.eu/rmswi/#100000155538
  * code.text = "6. Contents of the pack and other information"
  * text.status = #additional
{% if row["other_info"]|string == "nan" %}

  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>unavailable</div>"""
  * emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#unavailable
{%- elif row["other_info"].startswith("<div xmlns='http://www.w3.org/1999/xhtml'>")  %}   
  * text.div = """{{row['other_info']}}"""

{% else %}
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>  {{row['other_info']}}         </div>"""
{%- endif %}      

{% endif %}
{% endfor %}