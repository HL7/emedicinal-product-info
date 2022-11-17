Instance: aromasinjpi
InstanceOf: CompositionUvEpi
Description: "Package Leaflet"
Usage: #example

* identifier.system = "https://spor.ema.europa.eu/rmswi/"
* identifier.value = "testcomp1"

* status = #final

* type = https://spor.ema.europa.eu/#100000155538
* type.text = "Package Leaflet"

* subject = Reference(medicinalproduct25mg) //reference to the medicinal product

* date = "2002-08-01T13:28:17Z"

* author = Reference(organizationmah)  // Reference to Organization: Marketing Authorization Holder
* title = "TEST PURPOSES ONLY - Aromasin (exemestane) Tablets 25 mg tablets"

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
                    <p>
                        <img alt="Aromasin Tablets 25mg" src="aromasin-tablet-shape-above.png"/>
                    </p>
                </td>
                <td style="text-align:center">
                    <p>
                        <img alt="Aromasin Tablets 25mg" src="aromasin-tablet-shape-under.png"/>
                    </p>
                </td>
                <td style="text-align:center">
                    <p>
                        <img alt="Aromasin Tablets 25mg" src="aromasin-tablet-shape-side.png"/>
                    </p>
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


* section[+]
  * title = "15. その他の注意" //15
  * code = https://pmda.jp/#13
  * code.text = "15. その他の注意"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
  <p></p>
  </div>"""
  * emptyReason = https://pmda.jp/#2
  * emptyReason.text = "Section Heading"

* section[=].section[+]
  * title = "15.1" //15.1
  * code = https://pmda.jp/#13
  * code.text = "15.1"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"></div>"""
  * emptyReason = https://pmda.jp/#1
  * emptyReason.text = "Not Applicable"

* section[=].section[+]
  * title = "15.2 非臨床試験に基づく情報" //15.2
  * code = https://pmda.jp/#13
  * code.text = "15.2 非臨床試験に基づく情報"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
  <p>24ヵ月間のマウスがん原性試験において、中用量(150mg/kg/日)、 高用量(450mg/kg/日)で雌雄において肝細胞腺腫及び肝細胞癌の 発生率の上昇が認められた。また、雄の高用量群で腎腺腫の発生の 上昇がみられた。これらの腫瘍はマウス特有なものである可能性が 高くヒトにおける臨床的な安全性との関連は低いと考えられる1)。</p>
  </div>"""

* section[+]
  * title = "16. 薬物動態" //16
  * code = https://pmda.jp/#13
  * code.text = "16. 薬物動態"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"></div>"""
  * emptyReason = https://pmda.jp/#2
  * emptyReason.text = "Section Heading"

* section[=].section[+]
  * title = "16.1 血中濃度" //16.1
  * code = https://pmda.jp/#13
  * code.text = "16.1 血中濃度"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
 <p>日本人の閉経後進行乳癌患者にエキセメスタン25mgを1日1回反復投与したと き、tmaxは2.01±1.35時間、Cmaxは27.4±16.6ng/mL、AUCは115±76ng・h/mL、 終末相のt1/2は20.2±11.7時間であった。血漿中エキセメスタン濃度推移を下図 に示す。</p>
  <p>
    <img src="figure1-aromasin-plasma-concentration.png"/>
  </p>
  <p>図 日本人閉経後進行乳癌患者にエキセメスタン25mgを1日1回29日間反復投 与した後の血漿中エキセメスタン濃度推移(n=15~16、平均値±標準偏差)</p>
  <p>日本人の閉経後健康成人女性に単回及び反復経口投与(0.5~50mg)後のエ キセメスタンのCmax及びAUCは用量比例的であった2~4)。</p>
  </div>"""

* section[=].section[+]
  * title = "16.2 吸収" //16.2
  * code = https://pmda.jp/#13
  * code.text = "16.2 吸収"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"></div>"""
  * emptyReason = https://pmda.jp/#2
  * emptyReason.text = "Section Heading"

* section[=].section[=].section[+]
  * title = "16.2.1 食事の影響" //
  * code = https://pmda.jp/#13
  * code.text = "16.2.1 食事の影響"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
  <p>エキセメスタン25mgを閉経後健康女性(欧米人)に高脂肪食摂取直後に投与 した時、Cmax及びAUCの平均値は空腹投与時に比べそれぞれ25%及び39%上 昇した2)。</p>
  </div>"""

* section[=].section[+]
  * title = "16.3 分布" //
  * code = https://pmda.jp/#13
  * code.text = "16.3 分布"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"></div>"""
  * emptyReason = https://pmda.jp/#2
  * emptyReason.text = "Section Heading"

* section[=].section[=].section[+]
  * title = "16.3.1 組織内濃度" //
  * code = https://pmda.jp/#13
  * code.text = "16.3.1 組織内濃度"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
  <p>雌性ラットに14C-エキセメスタン1mg/kgを単回経口投与した後、放射能は組 織中に広範囲に分布し、大部分の組織で投与後1あるいは6時間に最高放射能 濃度を示した。肝臓、腎臓及び皮膚を除いた他の組織からの放射能の消失は 速やかであった5)。</p>
  </div>"""

* section[=].section[=].section[+]
  * title = "16.3.2 胎児・胎盤移行性" //
  * code = https://pmda.jp/#13
  * code.text = "16.3.2 胎児・胎盤移行性"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
  <p>妊娠ラットに14C-エキセメスタンを経口投与した後の放射能は、胎盤を通過
し胎児に分布した5)。</p>
  </div>"""

* section[=].section[=].section[+]
  * title = "16.3.3 蛋白結合率" //
  * code = https://pmda.jp/#13
  * code.text = "16.3.3 蛋白結合率"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
  <p>健康成人女性の血漿を用いたin vitroにおけるエキセメスタンの蛋白結合率は 約96%であった。結合蛋白質はヒト血清アルブミン及びα1-酸性糖蛋白質と 考えられた6)。</p>
  </div>"""

* section[=].section[+]
  * title = "16.5 排泄" //
  * code = https://pmda.jp/#13
  * code.text = "16.5 排泄"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"></div>"""
  * emptyReason = https://pmda.jp/#2
  * emptyReason.text = "Section Heading"

* section[=].section[=].section[+]
  * title = "16.5.1" //
  * code = https://pmda.jp/#13
  * code.text = "16.5.1"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
  <p>14C標識したエキセメスタンを閉経後の外国人健康女性に投与後、168時
間までの放射能の尿中及び糞中の累積排泄量はそれぞれ42±3%及び42±6%
であった。尿中に未変化体として排泄された量は、投与量の1%未満であった8)。</p>
  </div>"""

* section[=].section[=].section[+]
  * title = "16.5.2" //
  * code = https://pmda.jp/#13
  * code.text = "16.5.2"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
  <p>分娩後の哺育中ラットに14C-エキセメスタン1mg/kgを経口投与した後 の乳汁中放射能濃度は投与後6時間で最高濃度を示した。同時に測定した血 漿中濃度と比較すると、6時間以降では乳汁中濃度の方が高濃度を示すもの の、同様な推移で減少した5)。</p>
  </div>"""

* section[=].section[+]
  * title = "16.6 特定の背景を有する患者" //
  * code = https://pmda.jp/#13
  * code.text = "16.6 特定の背景を有する患者"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"></div>"""
  * emptyReason = https://pmda.jp/#2
  * emptyReason.text = "Section Heading"

* section[=].section[=].section[+]
  * title = "16.6.1 腎機能障害患者における体内動態" //
  * code = https://pmda.jp/#13
  * code.text = "16.6.1 腎機能障害患者における体内動態"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
  <p>中等度又は重度の腎機能障害患者(欧米人の閉経後女性、クレアチニンクリ アランス&lt;60mL/min/1.73m2)にエキセメスタン25mgを単回経口投与した 後のAUCは、欧米人の閉経後健康女性におけるAUCの約2~3倍であった9)。</p>
  </div>"""

* section[=].section[=].section[+]
  * title = "16.6.2 肝機能障害患者における体内動態" //
  * code = https://pmda.jp/#13
  * code.text = "16.6.2 肝機能障害患者における体内動態"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
  <p>中等度又は重度の肝機能障害患者(欧米人の閉経後女性、Child-Pugh分類で B又はC)にエキセメスタン25mgを単回経口投与した後のAUCは、欧米人の 閉経後健康女性におけるAUCの約2~3倍であった9)。</p>
  </div>"""

* section[+]
  * title = "17. 臨床成績" //
  * code = https://pmda.jp/#17
  * code.text = "17. 臨床成績"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"></div>"""
  * emptyReason = https://pmda.jp/#2
  * emptyReason.text = "Section Heading"

* section[=].section[+]
  * title = "17.1 有効性及び安全性に関する試験" //
  * code = https://pmda.jp/#13
  * code.text = "17.1 有効性及び安全性に関する試験"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"></div>"""
  * emptyReason = https://pmda.jp/#2
  * emptyReason.text = "Section Heading"

* section[=].section[=].section[+]
  * title = "17.1.1 国内臨床試験" //
  * code = https://pmda.jp/#13
  * code.text = "17.1.1 国内臨床試験"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
  <p>第I相試験において、閉経後健康女性(単回14例、反復25例)を対象として、 本剤の0.5~50mg/日までの用量における安全性及び薬力学的作用(血清中エ ストロゲン濃度抑制作用)を検討した結果、用量依存的な血清中エストロゲ ン濃度の低下が認められた。前期第II相試験において、閉経後乳癌患者(10mg、 25mg各36例)を対象として、本剤の有効性及び安全性を検討の上、臨床推奨 用量の設定を試みた。奏効率において有意差はないものの25mgの方が10mg より優っていたことなどから、本剤の臨床推奨用量として25mg/日を選択した。 ホルモン療法耐性例に対する25mg群の奏効率は26.1%(6/23)であった3,4,10)。</p>
  </div>"""

* section[=].section[=].section[+]
  * title = "17.1.2 ブリッジング試験" //
  * code = https://pmda.jp/#13
  * code.text = "17.1.2 ブリッジング試験"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
  <p>後期第II相試験において、抗エストロゲン剤耐性の閉経後乳癌患者33例を対 象として本剤の有効性及び安全性が検討された。なお、本試験は海外にて実 施された同様の試験(No.120002及びNo.010)結果の再現性を確認すること を目的として実施された11~13)。</p>
  <table border="1">
            <tbody>
                <tr>
                    <td style="text-align:center">
                        <p>抗腫瘍効果 </p>
                    </td>
                    <td style="text-align:center">
                        <p>実施国 (試験番号) </p>
                    </td>
                    <td style="text-align:center">
                        <p>日本 <br />(No.042) </p>
                    </td>
                    <td style="text-align:center">
                        <p>米国等<br />(No.120002) </p>
                    </td>
                    <td style="text-align:center">
                        <p>欧州等 <br />(No.010) </p>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center">
                        <p>奏効率 <br />(奏効例/評価例) </p>
                    </td>
                    <td style="text-align:center">
                        <p>24.2% <br />(8/33) </p>
                    </td>
                    <td style="text-align:center">
                        <p>28.1%<br />(36/128) </p>
                    </td>
                    <td style="text-align:center">
                        <p>23.4%<br />(32/137) </p>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center">
                        <p>長期NC注1)を含む有効率 <br />(奏効例+長期NC例/評価例) </p>
                    </td>
                    <td style="text-align:center">
                        <p>39.4% <br />(13/33) </p>
                    </td>
                    <td style="text-align:center">
                        <p>46.9% <br />(60/128) </p>
                    </td>
                    <td style="text-align:center">
                        <p>47.4% <br />(65/137) </p>
                    </td>
                </tr>
            </tbody>
        </table>
  <p>注1)長期NC:24週以上のNC持続</p>
  </div>"""

* section[=].section[=].section[+]
  * title = "17.1.3 海外臨床試験(第III相試験)" //
  * code = https://pmda.jp/#13
  * code.text = "17.1.3 海外臨床試験(第III相試験)"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
  <p>欧米19ヵ国が参加した多施設共同試験において、タモキシフェンに無効と なった閉経後の進行乳癌に対する本剤の抗腫瘍効果及び安全性を、酢酸メゲ ストロール(160mg/日:国内未承認)を対照薬として検討した。抗腫瘍効果 において、奏効率では群間に有意差は認められなかったものの、本剤の奏効 率は15.0%(55/366)であり、酢酸メゲストロール群は12.4%(50/403)であっ た。長期NCを含む有効率はエキセメスタンで37.4%、酢酸メゲストロールで 34.6%であった。さらに本剤の病勢進行までの期間、治療変更等までの期間 及び生存期間は、酢酸メゲストロール群と比較し有意に延長した14) 。</p>
  </div>"""

* section[=].section[=].section[+]
  * title = "17.1.4 海外大規模比較試験(第III相試験 術後補助療法)" //
  * code = https://pmda.jp/#13
  * code.text = "17.1.4 海外大規模比較試験(第III相試験 術後補助療法)"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
  <p>海外37ヵ国が参加した多施設共同二重盲検比較試験において、術後補助療法 としてタモキシフェンを2~3年投与した閉経後乳癌患者(4,724例)を対象 とし、タモキシフェン継続群(2,372例)と、本剤に切り替えた本剤投与群
(2,352例)に割り付け、無病生存率及び安全性を検討した(両群とも術後補 助療法としての投与期間:5年間)。その結果、追跡期間(中央値34.5ヵ月) における再発・対側乳癌・死亡発生数は本剤投与群213例、タモキシフェン継 続群306例であり、無病生存率は本剤投与群90%(95%信頼区間89-92%)、タ モキシフェン継続群86%(95%信頼区間85-88%)であった。また、無病生存 期間のハザード比は0.69(95%信頼区間0.58-0.82、p=0.00003)であり、本 剤投与群はタモキシフェン継続群と比較して乳癌再発リスクを31%低下させ た。対側乳癌の発生リスクのハザード比は0.32(本剤投与群8例、タモキシフェ ン継続群25例、95%信頼区間0.15-0.72、p=0.0034)であり、本剤投与群は 対側乳癌のリスクを68%低下させた15)。</p>
  </div>"""

* section[=].section[=].section[+]
  * title = "17.1.5 海外比較試験(術後補助療法)" //
  * code = https://pmda.jp/#13
  * code.text = "17.1.5 海外比較試験(術後補助療法)"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
  <p>海外で実施した多施設共同二重盲検比較試験において、再発リスクの低い 乳癌又は腺管上皮内癌(147例)を、本剤投与群(73例)とプラセボ群(74 例)に割り付け、骨密度(Bone Mineral Density)に与える影響及び有効 性、安全性を検討した(投与期間:2年間、追跡期間最長:1年間)。投与2 年後の本剤投与群の腰椎・大腿骨頸部における骨密度の年平均変化率はそ れぞれ-2.17%、-2.72%であり、プラセボ群は-1.84%、-1.48%(p=0.568、 p=0.024)であった。試験中に6例が再発し、1例は本剤投与群、5例がプラセ ボ群であった。また、HDL-コレステロールは本剤投与群(6-9%低下)は、 プラセボ群(1-2%増加)に比較し、有意(p&lt;0.01)に低下したが、他の脂 質パラメータ及び凝固系パラメータでは両群間に差は認められなかった16)。</p>
  </div>"""

* section[=].section[=].section[+]
  * title = "17.1.6 非盲検無作為化比較試験(第II/III相試験 転移性乳癌に対する第一次 ホルモン療法)"
  * code = https://pmda.jp/#16
  * code.text = "17.1.6 非盲検無作為化比較試験(第II/III相試験 転移性乳癌に対する第一次 ホルモン療法)"
  * text.status = #additional
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>
<p>日本を含む25ヵ国が参加した多施設共同非盲検無作為化比較試験において、 閉経後の転移性乳癌患者382例を対象とし、本剤投与群(190例)とタモキシ フェン投与群(192例)に割り付け、無増悪生存期間を比較検討した。その 結果、本剤投与群の無増悪生存期間が(中央値9.86ヵ月、95%信頼区間8.74- 11.47)タモキシフェン投与群(中央値5.82ヵ月、95%信頼区間5.32-8.08)に 比べて長かったが、統計的に有意な差は認められなかった(log-rank検定 p=0.1214)。また、全生存期間の中央値は、タモキシフェン群が43.3ヵ月
(95%信頼区間34.00-51.55)、本剤投与群が37.2ヵ月(95%信頼区間29.80- 45.47)であったが、統計的に有意な差は認められなかった(log-rank検定 p=0.9198)。さらに副次的評価項目である安全性プロファイルから本剤の忍 容性が確認された17)。</p>
<p>INSERT IMAGE</p>
</div>"""

* section[+]
  * title = "18. 薬効薬理" // 18. PHARMACOLOGY
  * code = https://pmda.jp/#18
  * code.text = "18. 薬効薬理"
  * text.status = #additional
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'></div>"""
  * emptyReason = https://pmda.jp/#2
  * emptyReason.text = "Section Heading"

* section[=].section[+]
  * title = "18.1 作用機序"
  * code = https://pmda.jp/#17
  * code.text = "18.1 作用機序"
  * text.status = #additional
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'></div>"""
  * emptyReason = https://pmda.jp/#2
  * emptyReason.text = "Section Heading"

* section[=].section[=].section[+]
  * title = "18.1.1 アロマターゼ阻害作用"
  * code = https://pmda.jp/#17
  * code.text = "18.1.1 アロマターゼ阻害作用"
  * text.status = #additional
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>
<p>エキセメスタンはアンドロゲンをエストロゲンに変換する酵素であるアロマ ターゼを非可逆的に阻害することにより、血中エストロゲン濃度を抑制し、 エストロゲン依存性の乳癌の増殖を阻害する。</p>
<p>(1)in vivo試験</p>
<p>妊馬血清ゴナドトロピン刺激ラットにおいて、エキセメスタンの単回経口投与は卵
巣アロマターゼ活性を用量依存的に減少させ、そのED50値は3.7mg/kgであった。</p>
<p>(2)in vitro試験</p>
<p>エキセメスタンは、他のステロイド合成系酵素にはほとんど影響を与えるこ
  となく、アロマターゼを選択的に不活性化した。</p>
</div>"""

* section[=].section[+]
  * title = "18.2 抗腫瘍効果"
  * code = https://pmda.jp/#17
  * code.text = "18.2 抗腫瘍効果"
  * text.status = #additional
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>
<p>DMBA誘発ラット乳癌(閉経後モデル)に対しエキセメスタンを週6日、4週
間経口投与した結果、1mg/kg/日以上の用量で腫瘍の増殖を有意に阻害した。</p>
</div>"""

* section[=].section[+]
  * title = "18.3 エストロゲン抑制作用"
  * code = https://pmda.jp/#17
  * code.text = "18.3 エストロゲン抑制作用"
  * text.status = #additional
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'></div>"""
  * emptyReason = https://pmda.jp/#2
  * emptyReason.text = "Section Heading"

* section[=].section[=].section[+]
  * title = "18.3.1"
  * code = https://pmda.jp/#17
  * code.text = "18.3.1"
  * text.status = #additional
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>
<p>妊馬血清ゴナドトロピン刺激ラットにおいて、エキセメスタンの単回経
口投与により血漿中エストラジオール濃度は用量依存的に低下し、そのED50
値は3.8mg/kgであった。</p>
</div>"""

* section[=].section[=].section[+]
  * title = "18.3.2"
  * code = https://pmda.jp/#17
  * code.text = "18.3.2"
  * text.status = #additional
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>
<p>閉経後乳癌患者にエキセメスタン25mgを連日経口投与することにより、
血漿又は血清中エストロゲン(エストラジオール、エストロン及びエストロ ンスルフェート)濃度は81~95%低下した。</p>
</div>"""

* section[+]
  * title = "19. 有効成分に関する理化学的知見" //19. PHYSICOCHEMICAL PROPERTIES ****insert image
  * code = https://pmda.jp/#19
  * code.text = "19. 有効成分に関する理化学的知見"
  * text.status = #additional
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>
<p>一般的名称:エキセメスタン(Exemestane) </p>
<p>化学名:(+)-6-methyleneandrosta-1,4-diene-3,17-dione </p>
<p>分子式:C20H24O2</p>
<p>分子量:296.40</p>
<p>性状:白色~黄白色の粉末である。N ,N -ジメチルホルムアミド及びテトラヒ ドロフランに溶けやすく、メタノール及びエタノール(95)にやや溶けやすく、 アセトニトリルにやや溶けにくく、水にほとんど溶けない。</p>
<p>化学構造式:</p>
<p>
    <img src="figure3-exemestane-chemical-structure.png"/>
</p>
</div>"""

* section[+]
  * title = "20. 取扱い上の注意" //20. PRECAUTIONS FOR HANDLING
  * code = https://pmda.jp/#9
  * code.text = "20. 取扱い上の注意"
  * text.status = #additional
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'></div>"""
  * emptyReason = https://pmda.jp/#1
  * emptyReason.text = "Not Applicable"

* section[+]
  * title = "21. 承認条件" //21. APPROVAL CONDITIONS
  * code = https://pmda.jp/#9
  * code.text = "21. 承認条件"
  * text.status = #additional
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'></div>"""
  * emptyReason = https://pmda.jp/#1
  * emptyReason.text = "Not Applicable"

* section[+]
  * title = "22. 包装" //22. PACKAGING
  * code = https://pmda.jp/#22
  * code.text = "22. 包装"
  * text.status = #additional
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>
<p>28錠[14錠(PTP)×2] </p>
<p>140錠[14錠(PTP)×10]</p>
</div>"""

* section[+]
  * title = "23. 主要文献" //23. REFERENCES
  * code = https://pmda.jp/#23
  * code.text = "23. 主要文献"
  * text.status = #additional
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>
        <ol>
            <li>社内資料:マウスにおける発癌性試験    [L20050107111]</li>
            <li>社内資料:閉経後乳癌患者における薬物動態(2002年7月5日承認、申請資 料概要ヘ.3.1.2、ヘ.3.2.1.iv)  [L20070831006]</li>
            <li>三浦 重人ほか:癌と化学療法.2002;29(7):1179-1187</li>
            <li>三浦 重人ほか:癌と化学療法.2002;29(7):1189-1197</li>
            <li>社内資料:臓器・組織内濃度(単回投与)(2002年7月5日承認、申請資料 概要ヘ.2.2.1.i、ヘ.2.2.3.i、ヘ.2.4.4) [L20070831010]</li>
            <li>社内資料:蛋白結合率(2002年7月5日承認、申請資料概要ヘ.2.2.4) [L20070831009]</li>
            <li>社内資料:代謝(2002年7月5日承認、申請資料概要ヘ.2.3、ヘ.3.2.1.vi、ヘ.4) [L20070831007]</li>
            <li>社内資料:健康人における薬物動態(海外データ)(2002年7月5日承認、申 請資料概要ヘ.3.2.1.i) [L20070831008]</li>
            <li>Jannuzzo Maria Gabriella et al.:Cancer Chemother Pharmacol.2004; 53(6):475-481</li>
            <li>田部井 敏夫ほか:癌と化学療法.2002;29(7):1199-1209</li>
            <li>渡辺 亨ほか:癌と化学療法.2002;29(7):1211-1221 </li>
            <li>社内資料:第二次療法における第II相試験(海外データ)(2002年7月5日 承認、申請資料概要ト.1.3) [L20070831011] </li>
            <li>Kvinnaland, S. et al.:Eur J Cancer.2000;36(8):976-982</li>
            <li>Kaufmann, M. et al.:J Clin Oncol.2000;18(7):1399-1411 </li>
            <li>社内資料:術後補助療法としてタモキシフェンを2から3年間投与された閉 経後原発乳癌患者を対象にエキセメスタン療法への切り替えとタモキシ フェン療法継続とを比較する無作為化二重盲検試験 [L20041214003] </li>
            <li>Lonning, P. E. et al.:J Clin Oncol.2005;23(22):5126-5137 </li>
            <li>社内資料:閉経後患者における転移性乳癌に対する第一次ホルモン療法と してのエキセメスタンおよびタモキシフェンを比較する無作為化第II-III 相試験 [L20060111037]</li>
        </ol>
</div>"""

* section[+]
  * title = "24. 文献請求先及び問い合わせ先" //24. REFERENCE REQUEST AND CONTACT INFORMATION
  * code = https://pmda.jp/#24
  * code.text = "24. 文献請求先及び問い合わせ先"
  * text.status = #additional
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>
<p>ファイザー株式会社 製品情報センター</p>
<p>〒151-8589 東京都渋谷区代々木3-22-7</p>
<p>学術情報ダイヤル 0120-664-467</p>
<p>FAX 03-3379-3053</p>
</div>"""

* section[+]
  * title = "25. 保険給付上の注意" //25. PRECAUTION FOR HEALTH INSURANCE BENEFITS
  * code = https://pmda.jp/#9
  * code.text = "25. 保険給付上の注意"
  * text.status = #additional
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'></div>"""
  * emptyReason = https://pmda.jp/#1
  * emptyReason.text = "Not Applicable"

* section[+]
  * title = "26. 製造販売業者等" // insert image
  * code = https://pmda.jp/#26
  * code.text = "26. 製造販売業者等"
  * text.status = #additional
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'></div>"""
  * emptyReason = https://pmda.jp/#2
  * emptyReason.text = "Section Heading"

* section[+]
  * title = "26.1 製造販売元" // insert image
  * code = https://pmda.jp/#26
  * code.text = "26.1 製造販売元"
  * text.status = #additional
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>
<p>ファイザー株式会社 </p>
<p>東京都渋谷区代々木3-22-7</p>
<p><img src="figure4-pfizer-logo-small.png"/></p>
</div>"""