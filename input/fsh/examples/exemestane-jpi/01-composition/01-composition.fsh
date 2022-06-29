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

* section.title = "2. 禁忌(次の患者には投与しないこと)"
* section.code = https://pmda.jp/#2
* section.code.text = "禁忌(次の患者には投与しないこと)"
* section.text.div = "<div xmlns='http://www.w3.org/119/xhtml'>
2.1 妊婦又は妊娠している可能性のある女性[9.5参照] 
2.2 授乳婦[9.6参照]
2.3 本剤の成分に対し過敏症の既往歴のある患者
</div>"
* section[1].title = "2. 禁忌(次の患者には投与しないこと)"
* section[1].code = https://pmda.jp/#2
* section[1].code.text = "禁忌(次の患者には投与しないこと)"
* section[1].text.div = "<div xmlns='http://www.w3.org/119/xhtml'>
2.1 妊婦又は妊娠している可能性のある女性[9.5参照] 
2.2 授乳婦[9.6参照]
2.3 本剤の成分に対し過敏症の既往歴のある患者
</div>"

* section[1].text.status = #additional

* section.text.status = #additional

* section[2].title = "3. 組成・性状"
* section[2].code = https://pmda.jp/#3
* section[2].code.text = "組成・性状"
* section[2].text.div = "<div xmlns='http://www.w3.org/119/xhtml'>
3.1 組成

3.2 製剤の性状

</div>"
* section[2].text.status = #additional