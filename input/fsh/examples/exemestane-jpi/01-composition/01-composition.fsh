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
</div>"
* section.emptyReason = https://pmda.jp/#2
* section.emptyReason.text = "Major Section Heading"

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


* section[1].title = "1. 警告"
* section[1].code = https://pmda.jp/#2
* section[1].code.text = "1. 警告"
* section[1].text.status = #additional
* section[1].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>empty test</p>
</div>"

* section[1].emptyReason = https://pmda.jp/#1
* section[1].emptyReason.text = "Not Applicable"

* section[2].title = "2. 禁忌(次の患者には投与しないこと)"
* section[2].code = https://pmda.jp/#2
* section[2].code.text = "禁忌(次の患者には投与しないこと)"
* section[2].text.status = #additional
* section[2].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
2.1 妊婦又は妊娠している可能性のある女性[9.5参照] 
2.2 授乳婦[9.6参照]
2.3 本剤の成分に対し過敏症の既往歴のある患者
</div>"

* section[3].title = "3. 組成・性状"
* section[3].code = https://pmda.jp/#2
* section[3].code.text = "3. 組成・性状"
* section[3].text.status = #additional
* section[3].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
2.1 妊婦又は妊娠している可能性のある女性[9.5参照] 
2.2 授乳婦[9.6参照]
2.3 本剤の成分に対し過敏症の既往歴のある患者
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

* section[4].title = "4. 効能又は効果"
* section[4].code = https://pmda.jp/#4
* section[4].code.text = "効能又は効果"
* section[4].text.status = #additional
* section[4].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
閉経後乳癌
</div>"

* section[6].title = "6. 用法及び用量"
* section[6].code = https://pmda.jp/#6
* section[6].code.text = "用法及び用量"
* section[6].text.status = #additional
* section[6].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
通常、成人にはエキセメスタンとして1日1回25mgを食後に経口投 与する。
</div>"

* section[8].title = "8. 重要な基本的注意"
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

* section[9].title = "9. 特定の背景を有する患者に関する注意"
* section[9].code = https://pmda.jp/#9
* section[9].code.text = "特定の背景を有する患者に関する注意"
* section[9].text.status = #additional
* section[9].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
9.2 腎機能障害患者

 本剤の重度の腎障害患者における長期安全性を指標とした臨床試験
は実施していない。
9.3 肝機能障害患者
9.3.1 重度の肝障害のある患者
本剤の重度の肝障害患者における長期安全性を指標とした臨床試験
は実施していない。
9.5 妊婦
妊婦又は妊娠している可能性のある女性には投与しないこと。本剤 は、閉経後の患者を対象とするため、妊婦に対する投与は想定され ていないが、妊婦への投与の安全性については次の知見がある。動 物実験(ラット)で、分娩障害、妊娠期間の延長、吸収胚数の増加 及び生存胎児数の減少が認められている。また動物実験(ウサギ)で、 流産、吸収胚数の増加及び胎児体重の低下が認められている。しか し両種による動物実験で、催奇形性は認められてはいない。本剤の 妊婦又は妊娠している可能性のある女性における臨床使用経験はな い。[2.1参照]
9.6 授乳婦
投与しないこと。本剤は、閉経後の患者を対象とするため、授乳婦に 対する投与は想定されていないが、授乳婦への投与の安全性について は次の知見がある。動物実験(ラット)で乳汁中への移行が認められ ている。本剤の授乳中の女性における臨床使用経験はない。[2.2参照]
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

* section[10].title = "10. 相互作用"
* section[10].code = https://pmda.jp/#10
* section[10].code.text = "10. 相互作用"
* section[10].text.status = #additional
* section[10].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
</div>"

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

* section[11].title = "11. 副作用"
* section[11].code = https://pmda.jp/#11
* section[11].code.text = "11. 副作用"
* section[11].text.status = #additional
* section[11].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
次の副作用があらわれることがあるので、観察を十分に行い、異常
 が認められた場合には投与を中止するなど適切な処置を行うこと。
</div>"

* section[14].title = "14. 適用上の注意"
* section[14].code = https://pmda.jp/#14
* section[14].code.text = "14. 適用上の注意"
* section[14].text.status = #additional
* section[14].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
14.1 薬剤交付時の注意
PTP包装の薬剤はPTPシートから取り出して服用するよう指導するこ と。PTPシートの誤飲により、硬い鋭角部が食道粘膜へ刺入し、更に は穿孔をおこして縦隔洞炎等の重篤な合併症を併発することがある。
</div>"

* section[15].title = "15. その他の注意"
* section[15].code = https://pmda.jp/#15
* section[15].code.text = "15. その他の注意"
* section[15].text.status = #additional
* section[15].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
</div>"

* section[10].title = "15.2 非臨床試験に基づく情報"
* section[10].code = https://pmda.jp/#15.2
* section[10].code.text = "15.2 非臨床試験に基づく情報"
* section[10].text.status = #additional
* section[10].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
24ヵ月間のマウスがん原性試験において、中用量(150mg/kg/日)、 高用量(450mg/kg/日)で雌雄において肝細胞腺腫及び肝細胞癌の 発生率の上昇が認められた。また、雄の高用量群で腎腺腫の発生の 上昇がみられた。これらの腫瘍はマウス特有なものである可能性が 高くヒトにおける臨床的な安全性との関連は低いと考えられる1)。
</div>"

* section[16].title = "16. 薬物動態" // insert image
* section[16].code = https://pmda.jp/#16
* section[16].code.text = "16. 薬物動態"
* section[16].text.status = #additional
* section[16].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
16.1 血中濃度
日本人の閉経後進行乳癌患者にエキセメスタン25mgを1日1回反復投与したと き、tmaxは2.01±1.35時間、Cmaxは27.4±16.6ng/mL、AUCは115±76ng・h/mL、 終末相のt1/2は20.2±11.7時間であった。血漿中エキセメスタン濃度推移を下図 に示す。



図 日本人閉経後進行乳癌患者にエキセメスタン25mgを1日1回29日間反復投 与した後の血漿中エキセメスタン濃度推移(n=15~16、平均値±標準偏差)
日本人の閉経後健康成人女性に単回及び反復経口投与(0.5~50mg)後のエ
キセメスタンのCmax及びAUCは用量比例的であった2~4)。
</div>"

* section[17].title = "17. 臨床成績"
* section[17].code = https://pmda.jp/#17
* section[17].code.text = "17. 臨床成績"
* section[17].text.status = #additional
* section[17].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
</div>"

* section[171].title = "17.1 有効性及び安全性に関する試験 "
* section[171].code = https://pmda.jp/#17.1
* section[171].code.text = "17.1 有効性及び安全性に関する試験 "
* section[171].text.status = #additional
* section[171].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
17.1.1 国内臨床試験
第I相試験において、閉経後健康女性(単回14例、反復25例)を対象として、 本剤の0.5~50mg/日までの用量における安全性及び薬力学的作用(血清中エ ストロゲン濃度抑制作用)を検討した結果、用量依存的な血清中エストロゲ ン濃度の低下が認められた。前期第II相試験において、閉経後乳癌患者(10mg、 25mg各36例)を対象として、本剤の有効性及び安全性を検討の上、臨床推奨 用量の設定を試みた。奏効率において有意差はないものの25mgの方が10mg より優っていたことなどから、本剤の臨床推奨用量として25mg/日を選択した。 ホルモン療法耐性例に対する25mg群の奏効率は26.1%(6/23)であった3,4,10)。
17.1.2 ブリッジング試験
後期第II相試験において、抗エストロゲン剤耐性の閉経後乳癌患者33例を対 象として本剤の有効性及び安全性が検討された。なお、本試験は海外にて実 施された同様の試験(No.120002及びNo.010)結果の再現性を確認すること を目的として実施された11~13)。
</div>"

* section[18].title = "18. 薬効薬理"
* section[18].code = https://pmda.jp/#18
* section[18].code.text = "18. 薬効薬理"
* section[18].text.status = #additional
* section[18].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
18.1 作用機序
18.1.1 アロマターゼ阻害作用
エキセメスタンはアンドロゲンをエストロゲンに変換する酵素であるアロマ ターゼを非可逆的に阻害することにより、血中エストロゲン濃度を抑制し、 エストロゲン依存性の乳癌の増殖を阻害する。
(1)in vivo試験
妊馬血清ゴナドトロピン刺激ラットにおいて、エキセメスタンの単回経口投与は卵
巣アロマターゼ活性を用量依存的に減少させ、そのED50値は3.7mg/kgであった。
(2)in vitro試験
エキセメスタンは、他のステロイド合成系酵素にはほとんど影響を与えるこ
  となく、アロマターゼを選択的に不活性化した。
18.2 抗腫瘍効果
DMBA誘発ラット乳癌(閉経後モデル)に対しエキセメスタンを週6日、4週
間経口投与した結果、1mg/kg/日以上の用量で腫瘍の増殖を有意に阻害した。
18.3 エストロゲン抑制作用
18.3.1 妊馬血清ゴナドトロピン刺激ラットにおいて、エキセメスタンの単回経
口投与により血漿中エストラジオール濃度は用量依存的に低下し、そのED50
値は3.8mg/kgであった。
18.3.2 閉経後乳癌患者にエキセメスタン25mgを連日経口投与することにより、
血漿又は血清中エストロゲン(エストラジオール、エストロン及びエストロ ンスルフェート)濃度は81~95%低下した。
</div>"


* section[19].title = "19. 有効成分に関する理化学的知見" // insert image
* section[19].code = https://pmda.jp/#19
* section[19].code.text = "19. 有効成分に関する理化学的知見"
* section[19].text.status = #additional
* section[19].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
一般的名称:エキセメスタン(Exemestane) 
化学名:(+)-6-methyleneandrosta-1,4-diene-3,17-dione 
分子式:C20H24O2
分子量:296.40
性状:白色~黄白色の粉末である。N ,N -ジメチルホルムアミド及びテトラヒ ドロフランに溶けやすく、メタノール及びエタノール(95)にやや溶けやすく、 アセトニトリルにやや溶けにくく、水にほとんど溶けない。
化学構造式:
</div>"


* section[22].title = "22. 包装"
* section[22].code = https://pmda.jp/#22
* section[22].code.text = "22. 包装"
* section[22].text.status = #additional
* section[22].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
28錠[14錠(PTP)×2] 
140錠[14錠(PTP)×10]
</div>"


* section[23].title = "23. 主要文献"
* section[23].code = https://pmda.jp/#23
* section[23].code.text = "23. 主要文献"
* section[23].text.status = #additional
* section[23].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
1) 社内資料:マウスにおける発癌性試験    [L20050107111]
2) 社内資料:閉経後乳癌患者における薬物動態(2002年7月5日承認、申請資 料概要ヘ.3.1.2、ヘ.3.2.1.iv)  [L20070831006]
3) 三浦 重人ほか:癌と化学療法.2002;29(7):1179-1187
4) 三浦 重人ほか:癌と化学療法.2002;29(7):1189-1197
5) 社内資料:臓器・組織内濃度(単回投与)(2002年7月5日承認、申請資料
概要ヘ.2.2.1.i、ヘ.2.2.3.i、ヘ.2.4.4) [L20070831010]
6) 社内資料:蛋白結合率(2002年7月5日承認、申請資料概要ヘ.2.2.4)
[L20070831009]
7) 社内資料:代謝(2002年7月5日承認、申請資料概要ヘ.2.3、ヘ.3.2.1.vi、ヘ.4) [L20070831007]
8) 社内資料:健康人における薬物動態(海外データ)(2002年7月5日承認、申 請資料概要ヘ.3.2.1.i) [L20070831008]
9) Jannuzzo Maria Gabriella et al.:Cancer Chemother Pharmacol.2004; 53(6):475-481
10)田部井 敏夫ほか:癌と化学療法.2002;29(7):1199-1209
11)渡辺 亨ほか:癌と化学療法.2002;29(7):1211-1221 12)社内資料:第二次療法における第II相試験(海外データ)(2002年7月5日
承認、申請資料概要ト.1.3) [L20070831011] 13)Kvinnaland, S. et al.:Eur J Cancer.2000;36(8):976-982 14)Kaufmann, M. et al.:J Clin Oncol.2000;18(7):1399-1411 15)社内資料:術後補助療法としてタモキシフェンを2から3年間投与された閉
  経後原発乳癌患者を対象にエキセメスタン療法への切り替えとタモキシ
フェン療法継続とを比較する無作為化二重盲検試験 [L20041214003] 16)Lonning, P. E. et al.:J Clin Oncol.2005;23(22):5126-5137 17)社内資料:閉経後患者における転移性乳癌に対する第一次ホルモン療法と
してのエキセメスタンおよびタモキシフェンを比較する無作為化第II-III 相試験 [L20060111037]

</div>"


* section[24].title = "24. 文献請求先及び問い合わせ先"
* section[24].code = https://pmda.jp/#24
* section[24].code.text = "24. 文献請求先及び問い合わせ先"
* section[24].text.status = #additional
* section[24].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
ファイザー株式会社 製品情報センター 
〒151-8589 東京都渋谷区代々木3-22-7 
学術情報ダイヤル 0120-664-467
FAX 03-3379-3053
</div>"


* section[26].title = "26. 製造販売業者等" // insert image
* section[26].code = https://pmda.jp/#26
* section[26].code.text = "26. 製造販売業者等"
* section[26].text.status = #additional
* section[26].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
ファイザー株式会社 東京都渋谷区代々木3-22-7
</div>"

