{% for index,row in data["data"].iterrows() %}
{% if row["skip"] not in ['y', 'Y', 'x', 'X'] %}

Instance: composition{{row["name"]| regex_replace('[^A-Za-z0-9]+', '')}}
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
* subject = Reference({{data["references"]["MedicinalProductDefinition"][0][0]}})
{%- endif %}

* date = "{{row['date']}}"
{% if data["turn"] != "1" %}
* author = Reference({{data["references"]["Organization"][0][0]}})
{%- endif %}


* title = "{{row['title']}}"

* section[+].
  * title = "Product Information"
  * code.text = "Product Info"

{% if data["turn"] != "1" %}
{% for key,value in data["references"].items() %} 
{% if key != "Composition" and key !="Bundle" %}
{% for refs in value %} 

  // {{key}}
//  * entry[+].fullUrl = {{refs[1]}}
  * entry[+] = Reference({{refs[0]}})
{%- endfor %}
{%- endif %}   
{%- endfor %}

{%- endif %}   




* section[+].
  * title = "Narrative Text"
  * code.text = "Narrative"

  * section[+].
    * title = "B. Package Leaflet"
    * code = https://spor.ema.europa.eu/rmswi/#100000155538
    * code.text = "B. PACKAGE LEAFLET"
    * text.status = #additional
    {% if row["package_leaflet"]|string == "nan" %}

    * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>unavailable</div>"""
    * emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#unavailable
    {%- else %}   
    * text.div = """{{row['package_leaflet']}}"""
{%- endif %}   


        
  * section[=].section[+]
    * title = "Package leaflet: Information for the user"
    * code = https://spor.ema.europa.eu/rmswi/#100000155538
    * code.text = "Package leaflet: Information for the user"
    * text.status = #additional
    {% if row["information_user"]|string == "nan" %}

    * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>unavailable</div>"""
    * emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#unavailable
    {%- else %}   
    * text.div = """{{row['information_user']}}"""
{%- endif %}   

  * section[=].section[+]
    * title = "What is in this leaflet"
    * code = https://spor.ema.europa.eu/rmswi/#100000155538
    * code.text = "What is in this leaflet"
    * text.status = #additional
    {% if row["what_in_leaflet"]|string == "nan" %}

    * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>unavailable</div>"""
    * emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#unavailable
    {%- else %}   
    * text.div = """{{row['what_in_leaflet']}}"""
{%- endif %}             

  * section[=].section[+]
    * title = "1. What {{row['name']}} is and what it is used for"
    * code = https://spor.ema.europa.eu/rmswi/#100000155538
    * code.text = "1. What {{row['name']}} is and what it is used for"
    * text.status = #additional
    {% if row["what_product_is"]|string == "nan" %}

    * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>unavailable</div>"""
    * emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#unavailable
    {%- else %}   
    * text.div = """{{row['what_product_is']}}"""
{%- endif %}              
  * section[=].section[+]
    * title = "2. What you need to know before you take {{row['name']}}"
    * code = https://spor.ema.europa.eu/rmswi/#100000155538
    * code.text = "2. What you need to know before you take {{row['name']}}"
    * text.status = #additional
    {% if row["before_take"]|string == "nan" %}

    * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>unavailable</div>"""
    * emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#unavailable
    {%- else %}   
    * text.div = """{{row['before_take']}}"""
{%- endif %}              
  * section[=].section[+]
    * title = "3. How to take {{row['name']}}"
    * code = https://spor.ema.europa.eu/rmswi/#100000155538
    * code.text = "3. How to take {{row['name']}}"
    * text.status = #additional
       {% if row["how_to_take"]|string == "nan" %}

    * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>unavailable</div>"""
    * emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#unavailable
    {%- else %}   
    * text.div = """{{row['how_to_take']}}"""
{%- endif %}          

          
  * section[=].section[+]
    * title = "4. Possible side effects"
    * code = https://spor.ema.europa.eu/rmswi/#100000155538
    * code.text = "4. Possible side effects"
    * text.status = #additional
             {% if row["side_effects"]|string == "nan" %}

    * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>unavailable</div>"""
    * emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#unavailable
    {%- else %}   
    * text.div = """{{row['side_effects']}}"""
{%- endif %}   
          
  * section[=].section[+]
    * title = "5. How to store {{row['name']}}"
    * code = https://spor.ema.europa.eu/rmswi/#100000155538
    * code.text = "5. How to store {{row['name']}}"
    * text.status = #additional
              {% if row["how_to_store"]|string == "nan" %}

    * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>unavailable</div>"""
    * emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#unavailable
    {%- else %}   
    * text.div = """{{row['how_to_store']}}"""
{%- endif %}   
          
  * section[=].section[+]
    * title = "6. Contents of the pack and other information"
    * code = https://spor.ema.europa.eu/rmswi/#100000155538
    * code.text = "6. Contents of the pack and other information"
    * text.status = #additional
    {% if row["other_info"]|string == "nan" %}

    * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>unavailable</div>"""
    * emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#unavailable
    {%- else %}   
    * text.div = """{{row['other_info']}}"""
    
{%- endif %}   
        

{%- endif %}
{%- endfor %}