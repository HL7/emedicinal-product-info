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

* section[+]
  * title = "アロマターゼ阻害剤/閉経後乳癌治療剤" //JPI main document header
  * code = https://pmda.jp/#0
  * code.text = "アロマターゼ阻害剤/閉経後乳癌治療剤"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">     
<p>アロマターゼ阻害剤/閉経後乳癌治療剤</p>
<p>エキセメスタン錠</p>
<p>
    <img src="figure0-aromasin-header.png" alt="Aromasin Tablets 25mg"/>
</p>
<p>
    <img src="figure0-aromasin-header.png" alt="Aromasin Tablets 25mg"/>
</p>
</div>"""

* section[+]
  * title = "1. 警告" //1. WARNINGS
  * code = https://pmda.jp/#1
  * code.text = "1. 警告"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"></div>"""
  * emptyReason = https://pmda.jp/#1
  * emptyReason.text = "Not Applicable"

* section[+]
  * title = "2. 禁忌(次の患者には投与しないこと)" //2. CONTRAINDICATIONS
  * code = https://pmda.jp/#2
  * code.text = "禁忌(次の患者には投与しないこと)"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
</div>"""

* section[=].section[+]
  * title = "2.1"
  * code = https://pmda.jp/#2.1
  * code.text = "2.1"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>妊婦又は妊娠している可能性のある女性[9.5参照] </p>
</div>"""

* section[=].section[+]
  * title = "2.2"
  * code = https://pmda.jp/#2.2
  * code.text = "2.2"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>授乳婦[9.6参照]</p>
</div>"""

* section[=].section[+]
  * title = "2.3"
  * code = https://pmda.jp/#2.3
  * code.text = "2.3"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>本剤の成分に対し過敏症の既往歴のある患者</p>
</div>"""
  * emptyReason = https://pmda.jp/#1
  * emptyReason.text = "Not Applicable"

* section[+]
  * title = "3. 組成・性状" //3. COMPOSITION AND PRODUCT DESCRIPTION
  * code = https://pmda.jp/#3
  * code.text = "3. 組成・性状"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
</div>"""

* section[=].section[+]
  * title = "3.1 組成"
  * code = https://pmda.jp/#3.1
  * code.text = "3.1 組成"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
        <table border="1" width="100%">
            <tr>
                <td style="text-align:center">
                    <p>販売名 </p></td>
                <td style="text-align:center">
                    <p>アロマシン錠 25mg </p>
                </td>
            </tr>
            <tr>
                <td style="text-align:center">
                    <p>有 効 成 分 </p>
                </td>
                <td style="text-align:center">
                    <p>1錠中 エキセメスタン 25.000mg </p>
                </td>
            </tr>
            <tr>
                <td style="text-align:center">
                    <p>添   加   剤 </p>
                </td>
                <td>
                    <p>カルナウバロウ、デンプングリコール酸ナトリウム、クロスポビドン、軽 質無水ケイ酸、結晶セルロース、合成ワックス、酸化チタン、シリコン消
                        泡剤、ステアリン酸マグネシウム、精製白糖、タルク、炭酸マグネシウム、
                        パラオキシ安息香酸メチル、ヒプロメロース、ポリソルベート80、ポリビ
                        ニルアルコール(部分けん化物)、ポリエチレングリコール6000NF、D-マ ンニトール </p>
                </td>
            </tr>
        </table>
</div>"""

* section[=].section[+]
  * title = "3.2 製剤の性状"
  * code = https://pmda.jp/#3.2
  * code.text = "3.2 製剤の性状"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
<table border="1" width="100%">
            <tr>
                <td colspan="3" style="text-align:center">
                    <p>外         形 </p>
                </td>
                <td rowspan="2" style="text-align:center">
                    <p>識別コード </p>
                </td>
                <td rowspan="2" style="text-align:center">
                    <p>色調等 </p>
                </td>
            </tr>          
            <tr>
                <td style="text-align:center">
                    <p>上面</p>
                </td>
                <td style="text-align:center">
                    <p>下面</p>
                </td>
                <td style="text-align:center">
                    <p>側面</p>
                </td>
            </tr>                        
            <tr>
                <td style="text-align:center">
                    <img alt="Aromasin Tablets 25mg" src="aromasin-tablet-shape-above.png"/>
                </td>
                <td style="text-align:center">
                    <p>image2</p>
                </td>
                <td style="text-align:center">
                    <p>image3</p>
                </td>
                <td rowspan="3" style="text-align:center">
                    <p>7663 </p>
                </td>
                <td rowspan="3" style="text-align:center">
                    <p>白色~微灰白色</p>
                    <p>糖衣錠 </p>
                    <p> </p>
                </td>
            </tr>                      
            <tr>
                <td style="text-align:center">
                    <p>直径</p>
                </td>
                <td style="text-align:center">
                    <p>厚さ</p>
                </td>
                <td style="text-align:center">
                    <p>重量</p>
                </td>
            </tr>          
            <tr>
                <td style="text-align:center">
                    <p>6.0mm </p>
                </td>
                <td style="text-align:center">
                    <p>4.0mm </p>
                </td>
                <td style="text-align:center">
                    <p>100mg </p>
                </td>
            </tr>
        </table>
</div>"""

* section[+]
  * title = "4. 効能又は効果" //4. INDICATIONS
  * code = https://pmda.jp/#4
  * code.text = "効能又は効果"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
閉経後乳癌
</div>"""

* section[+]
  * title = "5. 効能又は効果に関連する注意" //5. PRECAUTIONS CONCERNING INDICATIONS
  * code = https://pmda.jp/#5
  * code.text = "効能又は効果に関連する注意"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
</div>"""
  * emptyReason = https://pmda.jp/#1
  * emptyReason.text = "Not Applicable"

* section[+]
  * title = "6. 用法及び用量" //6. DOSAGE AND ADMINISTRATION
  * code = https://pmda.jp/#6
  * code.text = "用法及び用量"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
通常、成人にはエキセメスタンとして1日1回25mgを食後に経口投 与する。
</div>"""

* section[+]
  * title = "7. 用法及び用量に関連する注意" //7. PRECAUTIONS CONCERNING DOSAGE ANDADMINISTRATION
  * code = https://pmda.jp/#7
  * code.text = "7. 用法及び用量に関連する注意"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
</div>"""
  * emptyReason = https://pmda.jp/#1
  * emptyReason.text = "Not Applicable"

* section[+]
  * title = "8. 重要な基本的注意" //8. IMPORTANT PRECAUTIONS
  * code = https://pmda.jp/#8
  * code.text = "重要な基本的注意"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p></p>
</div>"""

* section[=].section[+]
  * title = "8.1"
  * code = https://pmda.jp/#8.1
  * code.text = "8.1"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
本剤はホルモン療法剤であり、がんに対する薬物療法について十
 分な知識・経験を持つ医師のもとで、本剤による治療が適切と判断
される患者についてのみ使用すること。
</div>"""

* section[=].section[+]
  * title = "8.2"
  * code = https://pmda.jp/#8.2
  * code.text = "8.2"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
本剤は末梢アロマターゼを阻害することにより治療効果を発揮す
るものであり、活発な卵巣機能を有する閉経前の患者ではアロマ ターゼを阻害する効果は不十分であると予想されること、並びに閉 経前の患者では使用経験がないことを考慮して、閉経前患者に対し 使用しないこと。
</div>"""

* section[=].section[+]
  * title = "8.3"
  * code = https://pmda.jp/#8.3
  * code.text = "8.3"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
本剤の投与によって、骨粗鬆症、骨折が起こりやすくなるので、 骨密度等の骨状態を定期的に観察することが望ましい。
</div>"""

* section[=].section[+]
  * title = "8.4"
  * code = https://pmda.jp/#8.4
  * code.text = "8.4"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
本剤の使用による嗜眠、傾眠、無力(症)及びめまいが報告され ており、このような症状がある場合、機械操作や自動車の運転はさ せないよう十分注意すること。
</div>"""

* section[+]
  * title = "9. 特定の背景を有する患者に関する注意" // 9. PRECAUTIONS CONCERNING PATIENTS WITH SPECIFIC BACKGROUNDS
  * code = https://pmda.jp/#9
  * code.text = "特定の背景を有する患者に関する注意"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p></p>
</div>"""

* section[=].section[+]
  * title = "9.2 腎機能障害患者"
  * code = https://pmda.jp/#9.2
  * code.text = "9.2 腎機能障害患者"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"></div>"""

* section[=].section[+]
  * title = "9.2.1 重度の腎障害のある患者"
  * code = https://pmda.jp/#9
  * code.text = "9.2.1 重度の腎障害のある患者"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
本剤の重度の腎障害患者における長期安全性を指標とした臨床試験
は実施していない。
</div>"""

* section[=].section[+]
  * title = "9.3 肝機能障害患者"
  * code = https://pmda.jp/#9.3
  * code.text = "9.3 肝機能障害患者"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
</div>"""

* section[=].section.section[+]
  * title = "9.3.1 重度の肝障害のある患者"
  * code = https://pmda.jp/#9.3.1
  * code.text = "9.3.1 重度の肝障害のある患者"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
本剤の重度の肝障害患者における長期安全性を指標とした臨床試験
は実施していない。
</div>"""

* section[=].section[+]
  * title = "9.4"
  * code = https://pmda.jp/#9.4
  * code.text = "9.4"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
</div>"""

* section[=].section[+]
  * title = "9.5 妊婦"
  * code = https://pmda.jp/#9
  * code.text = "9.5 妊婦"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
妊婦又は妊娠している可能性のある女性には投与しないこと。本剤 は、閉経後の患者を対象とするため、妊婦に対する投与は想定され ていないが、妊婦への投与の安全性については次の知見がある。動 物実験(ラット)で、分娩障害、妊娠期間の延長、吸収胚数の増加 及び生存胎児数の減少が認められている。また動物実験(ウサギ)で、 流産、吸収胚数の増加及び胎児体重の低下が認められている。しか し両種による動物実験で、催奇形性は認められてはいない。本剤の 妊婦又は妊娠している可能性のある女性における臨床使用経験はな い。[2.1参照]
</div>"""

* section[=].section[+]
  * title = "9.6 授乳婦"
  * code = https://pmda.jp/#9.6
  * code.text = "9.6 授乳婦"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
投与しないこと。本剤は、閉経後の患者を対象とするため、授乳婦に 対する投与は想定されていないが、授乳婦への投与の安全性について は次の知見がある。動物実験(ラット)で乳汁中への移行が認められ ている。本剤の授乳中の女性における臨床使用経験はない。[2.2参照]
</div>"""

* section[+]
  * title = "10. 相互作用" //10. INTERACTIONS
  * code = https://pmda.jp/#10
  * code.text = "10. 相互作用"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p></p>
</div>"""

* section[=].section[+]
  * title = "10.1"
  * code = https://pmda.jp/#9
  * code.text = "10.1"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
</div>"""
  * emptyReason = https://pmda.jp/#1
  * emptyReason.text = "Not Applicable"

* section[=].section[+]
  * title = "10.2 併用注意(併用に注意すること)"
  * code = https://pmda.jp/#10
  * code.text = "10.2 併用注意(併用に注意すること)"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
        <table border="1">
                <tr>
                    <td>
                        <p>>薬剤名等</p>
                    </td>
                    <td>
                        <p>臨床症状・措置方法</p>
                    </td>
                    <td>
                        <p>機序・危険因子</p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>エストロゲン含有製剤</p>
                    </td>
                    <td>
                        <p>本剤の効果を減弱させる可</p>
                        <p>能性がある。</p>
                    </td>
                    <td>
                        <p>本剤の薬理作用はエストロゲン</p>
                        <p>合成阻害によるものであるため。</p>
                    </td>
                </tr>
        </table>
</div>"""

* section[+]
  * title = "11. 副作用" //11. ADVERSE REACTIONS
  * code = https://pmda.jp/#11
  * code.text = "11. 副作用"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>次の副作用があらわれることがあるので、観察を十分に行い、異常
 が認められた場合には投与を中止するなど適切な処置を行うこと。</p>
</div>"""

* section[=].section[+]
  * title = "11.1 重大な副作用"
  * code = https://pmda.jp/#11.1
  * code.text = "11.1 重大な副作用"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
</div>"""

* section[=].section.section[+]
  * title = "11.1.1"
  * code = https://pmda.jp/#11.1.1
  * code.text = "11.1.1"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
肝炎(頻度不明)、肝機能障害(頻度不明)、黄疸(頻度不明) 肝炎、AST、ALT、Al-P、
γ-GTP等の上昇を伴う肝機能障害、
黄疸があらわれることがある。
</div>"""

* section[=].section[+]
  * title = "11.2 その他の副作用"
  * code = https://pmda.jp/#11.2
  * code.text = "11.2 その他の副作用"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
<table border="1">
            <tbody>
                <tr>
                    <td></td>
                    <td>
                        <p>5%以上 </p>
                    </td>
                    <td>
                        <p>0.1~5%未満 </p>
                    </td>
                    <td>
                        <p>頻度不明 </p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>精神神経系 </p>
                    </td>
                    <td>
                        <p>多汗、めまい </p>
                    </td>
                    <td>
                        <p>しびれ(感)、頭痛、知覚障害、 ふらつき(感)、不眠(症)、 抑うつ、不安、手根管症候群 </p>
                    </td>
                    <td>
                        <p>傾眠 </p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>消化器 </p>
                    </td>
                    <td>
                        <p>悪心 </p>
                    </td>
                    <td>
                        <p>食欲不振、腹痛、嘔吐、腸管 閉塞、のどの通過障害感、胃 もたれ感、心窩部痛(心窩部 の疼痛)、下痢 </p>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <p>肝臓 </p>
                    </td>
                    <td></td>
                    <td></td>
                    <td>
                        <p>肝機能異常、Al-P 上昇 </p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>皮膚</p>
                    </td>
                    <td></td>
                    <td>
                        <p>発疹、脱毛(症)、爪の変化 </p>
                    </td>
                    <td>
                        <p>蕁麻疹、そう痒症 </p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>筋骨格系 </p>
                    </td>
                    <td></td>
                    <td>
                        <p>関節痛、筋骨格痛 </p>
                    </td>
                    <td>
                        <p>骨折、骨粗鬆症、弾 発指、狭窄性腱鞘炎 </p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>循環器 </p>
                    </td>
                    <td>
                        <p>高血圧 </p>
                    </td>
                    <td>
                        <p>動悸、低血圧 </p>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <p>呼吸器 </p>
                    </td>
                    <td></td>
                    <td>
                        <p>鼻出血、かぜ症候群、肺炎
</p>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <p>泌尿器 </p>
                    </td>
                    <td></td>
                    <td>
                        <p>膀胱炎、尿検査異常 </p>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <p>生殖器 </p>
                    </td>
                    <td></td>
                    <td>
                        <p>不正(子宮)出血、帯下 </p>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <p>その他 </p>
                    </td>
                    <td>
                        <p>ほてり、疲労 </p>
                    </td>
                    <td>
                        <p>疼痛、体重減少、倦怠(感)、体臭、 </p>
                        <p>浮腫、味覚異常、嗅覚障害 </p>
                    </td>
                    <td>
                        <p>過敏症 </p>
                    </td>
                </tr>
            </tbody>
        </table>
</div>"""

* section[+]
  * title = "12. 臨床検査結果に及ぼす影響"
  * code = https://pmda.jp/#12
  * code.text = "12. 臨床検査結果に及ぼす影響"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p></p></div>"""
  * emptyReason = https://pmda.jp/#1
  * emptyReason.text = "Not Applicable"

* section[+]
  * title = "13. 過量投与" //13. OVERDOSAGE
  * code = https://pmda.jp/#13
  * code.text = "13. 過量投与"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p></p></div>"""
  * emptyReason = https://pmda.jp/#1
  * emptyReason.text = "Not Applicable"

* section[+]
  * title = "14. 適用上の注意" //14. PRECAUTIONS CONCERNING USE
  * code = https://pmda.jp/#14
  * code.text = "14. 適用上の注意"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p></p></div>"""

* section[=].section[+]
  * title = "14.1 薬剤交付時の注意"
  * code = https://pmda.jp/#14.1
  * code.text = "14.1 薬剤交付時の注意"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
PTP包装の薬剤はPTPシートから取り出して服用するよう指導するこ と。PTPシートの誤飲により、硬い鋭角部が食道粘膜へ刺入し、更に は穿孔をおこして縦隔洞炎等の重篤な合併症を併発することがある。
</div>"""


