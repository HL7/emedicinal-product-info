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

* section.title = "" //JPI main document header
* section.code = https://pmda.jp/#2
* section.code.text = ""
* section.text.status = #additional
* section.text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>     
<p>アロマターゼ阻害剤/閉経後乳癌治療剤</p>
<p>エキセメスタン錠</p>
</div>"

* section[01].title = "ア. 作成又は改訂年月 " // Date of Preparation or Revision
* section[01].code = https://pmda.jp/#2
* section[01].code.text = "ア. 作成又は改訂年月 "
* section[01].text.status = #additional
* section[01].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
</div>"

* section[02].title = "イ. 日本標準商品分類番号 " // Standard Commodity Classification Number of Japan
* section[02].code = https://pmda.jp/#2
* section[02].code.text = "イ. 日本標準商品分類番号 "
* section[02].text.status = #additional
* section[02].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
</div>"

* section[03].title = "ウ. 承認番号、販売開始年月"   // Approval Number, Date of Initial Marketing in Japan
* section[03].code = https://pmda.jp/#2
* section[03].code.text = "ウ. 承認番号、販売開始年月"
* section[03].text.status = #additional
* section[03].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
</div>"

* section[04].title = "エ． 貯法、有効期間 " // Storage, Shelf Life
* section[04].code = https://pmda.jp/#2
* section[04].code.text = "エ． 貯法、有効期間 "
* section[04].text.status = #additional
* section[04].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
</div>"

* section[05].title = "オ. 薬効分類名" // Therapeutic Category
* section[05].code = https://pmda.jp/#2
* section[05].code.text = "オ. 薬効分類名"
* section[05].text.status = #additional
* section[05].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
</div>"

* section[06].title = "カ. 規制区分 " // Regulatory Classification
* section[06].code = https://pmda.jp/#2
* section[06].code.text = "カ. 規制区分 "
* section[06].text.status = #additional
* section[06].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
</div>"

* section[07].title = "キ. 名称"  // Product name
* section[07].code = https://pmda.jp/#2
* section[07].code.text = "キ. 名称"
* section[07].text.status = #additional
* section[07].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
</div>"


* section[1].title = "1. 警告" //1. WARNINGS
* section[1].code = https://pmda.jp/#2
* section[1].code.text = "1. 警告"
* section[1].text.status = #additional
* section[1].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>empty test</p>
</div>"

* section[1].emptyReason = https://pmda.jp/#1
* section[1].emptyReason.text = "Not Applicable"

* section[2].title = "2. 禁忌(次の患者には投与しないこと)" //2. CONTRAINDICATIONS
* section[2].code = https://pmda.jp/#2
* section[2].code.text = "禁忌(次の患者には投与しないこと)"
* section[2].text.status = #additional
* section[2].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
</div>"
* section[2].emptyReason = https://pmda.jp/#2
* section[2].emptyReason.text = "Major Section Heading"

* section[21].title = "2.1"
* section[21].code = https://pmda.jp/#2
* section[21].code.text = "2.1"
* section[21].text.status = #additional
* section[21].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>妊婦又は妊娠している可能性のある女性[9.5参照] </p>
</div>"

* section[22].title = "2.2"
* section[22].code = https://pmda.jp/#2
* section[22].code.text = "2.2"
* section[22].text.status = #additional
* section[22].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>授乳婦[9.6参照]</p>
</div>"

* section[23].title = "2.3"
* section[23].code = https://pmda.jp/#2
* section[23].code.text = "2.3"
* section[23].text.status = #additional
* section[23].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>本剤の成分に対し過敏症の既往歴のある患者</p>
</div>"

* section[23].emptyReason = https://pmda.jp/#1
* section[23].emptyReason.text = "Not Applicable"

* section[3].title = "3. 組成・性状" //3. COMPOSITION AND PRODUCT DESCRIPTION
* section[3].code = https://pmda.jp/#2
* section[3].code.text = "3. 組成・性状"
* section[3].text.status = #additional
* section[3].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
</div>"
* section[3].emptyReason = https://pmda.jp/#2
* section[3].emptyReason.text = "Major Section Heading"

* section[31].title = "3.1 組成"
* section[31].code = https://pmda.jp/#2
* section[31].code.text = "3.1 組成"
* section[31].text.status = #additional
* section[31].text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>
        <table border="1">
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

* section[32].title = "3.2 製剤の性状"
* section[32].code = https://pmda.jp/#3
* section[32].code.text = "3.2 製剤の性状"
* section[32].text.status = #additional
* section[32].text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
<table border="1">
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
                    <p>image1</p>
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

* section[4].title = "4. 効能又は効果" //4. INDICATIONS
* section[4].code = https://pmda.jp/#4
* section[4].code.text = "効能又は効果"
* section[4].text.status = #additional
* section[4].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
閉経後乳癌
</div>"

* section[5].title = "5. 効能又は効果に関連する注意" //5. PRECAUTIONS CONCERNING INDICATIONS
* section[5].code = https://pmda.jp/#4
* section[5].code.text = "効能又は効果に関連する注意"
* section[5].text.status = #additional
* section[5].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
</div>"
* section[5].emptyReason = https://pmda.jp/#1
* section[5].emptyReason.text = "Not Applicable"

* section[6].title = "6. 用法及び用量" //6. DOSAGE AND ADMINISTRATION
* section[6].code = https://pmda.jp/#6
* section[6].code.text = "用法及び用量"
* section[6].text.status = #additional
* section[6].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
通常、成人にはエキセメスタンとして1日1回25mgを食後に経口投 与する。
</div>"

* section[7].title = "7. 用法及び用量に関連する注意" //7. PRECAUTIONS CONCERNING DOSAGE ANDADMINISTRATION
* section[7].code = https://pmda.jp/#4
* section[7].code.text = "7. 用法及び用量に関連する注意"
* section[7].text.status = #additional
* section[7].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
</div>"
* section[7].emptyReason = https://pmda.jp/#1
* section[7].emptyReason.text = "Not Applicable"

* section[8].title = "8. 重要な基本的注意" //8. IMPORTANT PRECAUTIONS
* section[8].code = https://pmda.jp/#8
* section[8].code.text = "重要な基本的注意"
* section[8].text.status = #additional
* section[8].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
</div>"
* section[8].emptyReason = https://pmda.jp/#2
* section[8].emptyReason.text = "Major Section Heading"

* section[81].title = "8.1"
* section[81].code = https://pmda.jp/#8
* section[81].code.text = "8.1"
* section[81].text.status = #additional
* section[81].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
本剤はホルモン療法剤であり、がんに対する薬物療法について十
 分な知識・経験を持つ医師のもとで、本剤による治療が適切と判断
される患者についてのみ使用すること。
</div>"

* section[82].title = "8.2"
* section[82].code = https://pmda.jp/#8
* section[82].code.text = "8.2"
* section[82].text.status = #additional
* section[82].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
本剤は末梢アロマターゼを阻害することにより治療効果を発揮す
るものであり、活発な卵巣機能を有する閉経前の患者ではアロマ ターゼを阻害する効果は不十分であると予想されること、並びに閉 経前の患者では使用経験がないことを考慮して、閉経前患者に対し 使用しないこと。
</div>"

* section[83].title = "8.3"
* section[83].code = https://pmda.jp/#8
* section[83].code.text = "8.3"
* section[83].text.status = #additional
* section[83].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
本剤の投与によって、骨粗鬆症、骨折が起こりやすくなるので、 骨密度等の骨状態を定期的に観察することが望ましい。
</div>"

* section[84].title = "8.4"
* section[84].code = https://pmda.jp/#8
* section[84].code.text = "8.4"
* section[84].text.status = #additional
* section[84].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
本剤の使用による嗜眠、傾眠、無力(症)及びめまいが報告され ており、このような症状がある場合、機械操作や自動車の運転はさ せないよう十分注意すること。
</div>"

* section[9].title = "9. 特定の背景を有する患者に関する注意" // 9. PRECAUTIONS CONCERNING PATIENTS WITH SPECIFIC BACKGROUNDS
* section[9].code = https://pmda.jp/#9
* section[9].code.text = "特定の背景を有する患者に関する注意"
* section[9].text.status = #additional
* section[9].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
</div>"
* section[9].emptyReason = https://pmda.jp/#2
* section[9].emptyReason.text = "Major Section Heading"

* section[92].title = "9.2 腎機能障害患者"
* section[92].code = https://pmda.jp/#9
* section[92].code.text = "9.2 腎機能障害患者"
* section[92].text.status = #additional
* section[92].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
</div>"
* section[92].emptyReason = https://pmda.jp/#2
* section[92].emptyReason.text = "Major Section Heading"

* section[921].title = "9.2.1 重度の腎障害のある患者"
* section[921].code = https://pmda.jp/#9
* section[921].code.text = "9.2.1 重度の腎障害のある患者"
* section[921].text.status = #additional
* section[921].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
本剤の重度の腎障害患者における長期安全性を指標とした臨床試験
は実施していない。
</div>"

* section[93].title = "9.3 肝機能障害患者"
* section[93].code = https://pmda.jp/#9
* section[93].code.text = "9.3 肝機能障害患者"
* section[93].text.status = #additional
* section[93].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
</div>"
* section[93].emptyReason = https://pmda.jp/#2
* section[93].emptyReason.text = "Major Section Heading"

* section[931].title = "9.3.1 重度の肝障害のある患者"
* section[931].code = https://pmda.jp/#9
* section[931].code.text = "9.3.1 重度の肝障害のある患者"
* section[931].text.status = #additional
* section[931].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
本剤の重度の肝障害患者における長期安全性を指標とした臨床試験
は実施していない。
</div>"

* section[94].title = "9.4"
* section[94].code = https://pmda.jp/#9
* section[94].code.text = "9.4"
* section[94].text.status = #additional
* section[94].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
</div>"
* section[94].emptyReason = https://pmda.jp/#1
* section[94].emptyReason.text = "Not Applicable"

* section[95].title = "9.5 妊婦"
* section[95].code = https://pmda.jp/#9
* section[95].code.text = "9.5 妊婦"
* section[95].text.status = #additional
* section[95].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
妊婦又は妊娠している可能性のある女性には投与しないこと。本剤 は、閉経後の患者を対象とするため、妊婦に対する投与は想定され ていないが、妊婦への投与の安全性については次の知見がある。動 物実験(ラット)で、分娩障害、妊娠期間の延長、吸収胚数の増加 及び生存胎児数の減少が認められている。また動物実験(ウサギ)で、 流産、吸収胚数の増加及び胎児体重の低下が認められている。しか し両種による動物実験で、催奇形性は認められてはいない。本剤の 妊婦又は妊娠している可能性のある女性における臨床使用経験はな い。[2.1参照]
</div>"

* section[96].title = "9.6 授乳婦"
* section[96].code = https://pmda.jp/#9
* section[96].code.text = "9.6 授乳婦"
* section[96].text.status = #additional
* section[96].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
投与しないこと。本剤は、閉経後の患者を対象とするため、授乳婦に 対する投与は想定されていないが、授乳婦への投与の安全性について は次の知見がある。動物実験(ラット)で乳汁中への移行が認められ ている。本剤の授乳中の女性における臨床使用経験はない。[2.2参照]
</div>"

* section[10].title = "10. 相互作用" //10. INTERACTIONS
* section[10].code = https://pmda.jp/#10
* section[10].code.text = "10. 相互作用"
* section[10].text.status = #additional
* section[10].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
</div>"
* section[10].emptyReason = https://pmda.jp/#2
* section[10].emptyReason.text = "Major Section Heading"

* section[101].title = "10.1"
* section[101].code = https://pmda.jp/#9
* section[101].code.text = "10.1"
* section[101].text.status = #additional
* section[101].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
</div>"
* section[101].emptyReason = https://pmda.jp/#1
* section[101].emptyReason.text = "Not Applicable"

* section[102].title = "10.2 併用注意(併用に注意すること)"
* section[102].code = https://pmda.jp/#10
* section[102].code.text = "10.2 併用注意(併用に注意すること)"
* section[102].text.status = #additional
* section[102].text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>
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

* section[11].title = "11. 副作用" //11. ADVERSE REACTIONS
* section[11].code = https://pmda.jp/#11
* section[11].code.text = "11. 副作用"
* section[11].text.status = #additional
* section[11].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
次の副作用があらわれることがあるので、観察を十分に行い、異常
 が認められた場合には投与を中止するなど適切な処置を行うこと。
</div>"

* section[111].title = "11.1 重大な副作用"
* section[111].code = https://pmda.jp/#11
* section[111].code.text = "11.1 重大な副作用"
* section[111].text.status = #additional
* section[111].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
</div>"
* section[111].emptyReason = https://pmda.jp/#2
* section[111].emptyReason.text = "Major Section Heading"

* section[1111].title = "11.1.1"
* section[1111].code = https://pmda.jp/#11
* section[1111].code.text = "11.1.1"
* section[1111].text.status = #additional
* section[1111].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
肝炎(頻度不明)、肝機能障害(頻度不明)、黄疸(頻度不明) 肝炎、AST、ALT、Al-P、
γ-GTP等の上昇を伴う肝機能障害、
黄疸があらわれることがある。
</div>"

* section[112].title = "11.1 重大な副作用"
* section[112].code = https://pmda.jp/#11
* section[112].code.text = "11.1 重大な副作用"
* section[112].text.status = #additional
* section[112].text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>
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

* section[12].title = "12. 臨床検査結果に及ぼす影響"
* section[12].code = https://pmda.jp/#9
* section[12].code.text = "12. 臨床検査結果に及ぼす影響"
* section[12].text.status = #additional
* section[12].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'></div>"
* section[12].emptyReason = https://pmda.jp/#1
* section[12].emptyReason.text = "Not Applicable"

* section[13].title = "13. 過量投与" //13. OVERDOSAGE
* section[13].code = https://pmda.jp/#9
* section[13].code.text = "13. 過量投与"
* section[13].text.status = #additional
* section[13].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'></div>"
* section[13].emptyReason = https://pmda.jp/#1
* section[13].emptyReason.text = "Not Applicable"

* section[14].title = "14. 適用上の注意" //14. PRECAUTIONS CONCERNING USE
* section[14].code = https://pmda.jp/#14
* section[14].code.text = "14. 適用上の注意"
* section[14].text.status = #additional
* section[14].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'></div>"
* section[14].emptyReason = https://pmda.jp/#2
* section[14].emptyReason.text = "Major Section Heading"

* section[141].title = "14.1 薬剤交付時の注意"
* section[141].code = https://pmda.jp/#14
* section[141].code.text = "14.1 薬剤交付時の注意"
* section[141].text.status = #additional
* section[141].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
PTP包装の薬剤はPTPシートから取り出して服用するよう指導するこ と。PTPシートの誤飲により、硬い鋭角部が食道粘膜へ刺入し、更に は穿孔をおこして縦隔洞炎等の重篤な合併症を併発することがある。
</div>"
