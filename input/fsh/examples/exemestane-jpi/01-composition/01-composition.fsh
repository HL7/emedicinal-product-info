Instance: d19473ec-d66c-443d-bd8f-31398daaffee
InstanceOf: CompositionUvEpi
Description: "Package Leaflet"
Usage: #example

* status = #final
* type = https://spor.ema.europa.eu/#100000155538
* type.text = "Package Leaflet"
* subject = Reference(15c6f86f-8665-4bd6-86da-a3a61fe16084) //reference to the authorization
* date = "2002-08-01T13:28:17Z"

 // Reference to Organization: Marketing Authorization Holder
* author = Reference(7f257409-3b65-401d-a246-7ae51e298fbb)
* title = "TEST PURPOSES ONLY - Aromasin (exemestane) Tablets 25 mg tablets"
* confidentiality = #U
* attester.mode = http://hl7.org/fhir/composition-attestation-mode#official
* attester.time =  "2002-08-01T13:28:17Z"
* language = #ja

* section.title = "level 1"
* section.code = https://pmda.jp/#2
* section.code.text = "禁忌(次の患者には投与しないこと)"
* section.text.div = "<div xmlns='http://www.w3.org/119/xhtml'/>"

* section[1].title = "level 2"
* section[1].code = https://pmda.jp/#2
* section[1].code.text = "禁忌(次の患者には投与しないこと)"
* section[1].text.div = "<div xmlns='http://www.w3.org/119/xhtml'>

test level 2 text
</div>"
* section[2].title = "level 3"
* section[2].code = https://pmda.jp/#3
* section[2].code.text = "組成・性状"
* section[2].text.div = "<div xmlns='http://www.w3.org/119/xhtml'>
test level 3 text

</div>"
* section[2].text.status = #additional

* section[1].text.status = #additional

* section.text.status = #additional