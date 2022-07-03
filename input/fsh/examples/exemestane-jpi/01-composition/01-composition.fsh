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
* section.text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
2.1 妊婦又は妊娠している可能性のある女性[9.5参照] 
2.2 授乳婦[9.6参照]
2.3 本剤の成分に対し過敏症の既往歴のある患者
</div>"
* section.text.status = #additional

* section[1].title = "3. 組成・性状"
* section[1].code = https://pmda.jp/#3
* section[1].code.text = "組成・性状"
* section[1].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
    <table>
            <tr>
                <td>
                    <p>外        形 </p>
                </td>
                <td>
                    <p>識別コード </p>
                </td>
                <td>
                    <p>色調等 </p>
                </td>
            </tr>          
            <tr>
                <td>
                    <p>上面</p>
                </td>
                <td>
                    <p>下面</p>
                </td>
                <td>
                    <p>側面</p>
                </td>
            </tr>                        
            <tr>
                <td>
                    <p>image1</p>
                </td>
                <td>
                    <p>image2</p>
                </td>
                <td>
                    <p>image3</p>
                </td>
                <td>
                    <p>7663 </p>
                </td>
                <td>
                    <p>白色~微灰白色</p>
                    <p>糖衣錠 </p>
                    <p> </p>
                </td>
            </tr>                      
            <tr>
                <td>
                    <p>直径</p>
                </td>
                <td>
                    <p>厚さ</p>
                </td>
                <td>
                    <p>重量</p>
                </td>
            </tr>          
            <tr>
                <td>
                    <p>6.0mm </p>
                </td>
                <td>
                    <p>4.0mm </p>
                </td>
                <td>
                    <p>100mg </p>
                </td>
            </tr>
        </table>
</div>"
* section[1].text.status = #additional
