<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <xsl:variable name="OrganizationId">OrganizationId</xsl:variable>

            <xsl:variable name="RiskWeightedAssetsItem">Risk Weighted Assets Item</xsl:variable>
            <xsl:variable name="RiskWeightedAssets">Risk Weighted AssetsItem</xsl:variable>
            <xsl:variable name="AssetOutstandingAmount">Asset Outstanding Amount</xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount">Risk Weighted Asset Outstanding Amount
            </xsl:variable>
            <xsl:variable name="name900002">1. เงินสด</xsl:variable>

            <xsl:variable name="name900003">1.1 เงินสด</xsl:variable>

            <xsl:variable name="name900004">1.2 เงินสดระหว่างเรียกเก็บเพื่อประโยชน์ของลูกค้า</xsl:variable>

            <xsl:variable name="name900005">2. รายการระหว่างธนาคารและตลาดเงิน</xsl:variable>

            <xsl:variable name="name900006">2.1 เงินฝากที่ธนาคารแห่งประเทศไทย</xsl:variable>

            <xsl:variable name="name900007">2.2 เงินฝากที่กองทุนเพื่อการฟื้นฟูฯ หรือนิติบุคคลที่กองทุนฯ ถือหุ้นเต็มจำนวน
            </xsl:variable>

            <xsl:variable name="name900177">2.3 เงินฝากที่ธนาคารพาณิชย์</xsl:variable>

            <xsl:variable name="name900199">2.4 เงินฝากที่ธนาคารกลางในกลุ่มประเทศ OECD</xsl:variable>

            <xsl:variable name="name900178">2.5 เงินฝากที่ธนาคารกลางนอกกลุ่มประเทศ OECD โดยเป็นสกุลเงินของประเทศนั้น
                และไม่เกินกว่าหนี้สินที่ธนาคารพาณิชย์หรือบริษัทเงินทุนมีอยู่ในเงินสกุลนั้น
            </xsl:variable>

            <xsl:variable name="name900200">2.6
                เงินให้สินเชื่อที่มีหลักทรัพย์รัฐบาลไทยหรือหลักทรัพย์ที่กระทรวงการคลังค้ำประกันหรือหลักทรัพย์ธนาคารแห่งประเทศไทยเป็นประกัน
            </xsl:variable>

            <xsl:variable name="name900009">2.7 เงินให้สินเชื่อที่กระทรวงการคลังค้ำประกัน</xsl:variable>

            <xsl:variable name="name900201">2.8 เงินให้สินเชื่อที่มีหลักทรัพย์รัฐบาลในกลุ่มประเทศ OECD เป็นประกัน
            </xsl:variable>

            <xsl:variable name="name900010">2.9 เงินให้สินเชื่อแก่ธนาคารกลางในกลุ่มประเทศ OECD</xsl:variable>

            <xsl:variable name="name900011">2.10 เงินให้สินเชื่อแก่ธนาคารกลางนอกกลุ่มประเทศ OECD
                โดยเป็นสกุลเงินของประเทศนั้น และไม่เกินกว่าหนี้สินที่ธนาคารพาณิชย์หรือบริษัทเงินทุนมีอยู่ในเงินสกุลนั้น
            </xsl:variable>

            <xsl:variable name="name900012">2.11
                เงินให้สินเชื่อตามตั๋วสัญญาใช้เงินที่ออกโดยบริษัทเงินทุนหลักทรัพย์กรุงไทยธนกิจ
                หรือบัตรเงินฝากของธนาคารกรุงไทยตามโครงการรับแลกเปลี่ยนตั๋ว
            </xsl:variable>

            <xsl:variable name="name900013">2.12
                เงินให้สินเชื่อโดยมีบุคคลอื่นรับความเสี่ยงด้านเครดิตแทนธนาคารพาณิชย์หรือบริษัทเงินทุนนั้น
            </xsl:variable>

            <xsl:variable name="name900179">2.13 เงินฝากที่บริษัทเงินทุน และบริษัทเครดิตฟองซิเอร์</xsl:variable>

            <xsl:variable name="name900180">2.14 เงินให้สินเชื่อแก่ธนาคารพาณิชย์ บริษัทเงินทุน และบริษัทเครดิตฟองซิเอร์
            </xsl:variable>

            <xsl:variable name="name900015">2.15 เงินฝากที่ธนาคารอาคารสงเคราะห์ ธนาคารออมสิน
                ธนาคารเพื่อการเกษตรและสหกรณ์การเกษตร และธนาคารเพื่อการส่งออกและนำเข้าแห่งประเทศไทย
            </xsl:variable>

            <xsl:variable name="name900016">2.16 เงินฝากที่บรรษัทเงินทุนอุตสาหกรรมแห่งประเทศไทย</xsl:variable>

            <xsl:variable name="name900017">2.17 เงินฝากที่ธนาคารพาณิชย์จดทะเบียนในกลุ่มประเทศ OECD</xsl:variable>

            <xsl:variable name="name900018">2.18 เงินฝากที่ธนาคารพาณิชย์จดทะเบียนนอกกลุ่มประเทศ OECD
                ซึ่งมีระยะเวลาคงเหลือไม่เกิน 1 ปี
            </xsl:variable>

            <xsl:variable name="name900019">2.19 เงินให้สินเชื่อแก่กองทุนเพื่อการฟื้นฟูฯ
                หรือนิติบุคคลที่กองทุนเพื่อการฟื้นฟูฯ ถือหุ้นเต็มจำนวน
            </xsl:variable>

            <xsl:variable name="name900020">2.20 เงินให้สินเชื่อแก่ธนาคารอาคารสงเคราะห์ ธนาคารออมสิน
                ธนาคารเพื่อการเกษตรและสหกรณ์การเกษตร และธนาคารเพื่อการส่งออกและนำเข้าแห่งประเทศไทย
            </xsl:variable>

            <xsl:variable name="name900021">2.21 เงินให้สินเชื่อแก่บรรษัทเงินทุนอุตสาหกรรมแห่งประเทศไทย</xsl:variable>

            <xsl:variable name="name900022">2.22 เงินให้สินเชื่อแก่ธนาคารพาณิชย์จดทะเบียนในกลุ่มประเทศ OECD
            </xsl:variable>

            <xsl:variable name="name900023">2.23 เงินให้สินเชื่อแก่ธนาคารพาณิชย์จดทะเบียนนอกกลุ่มประเทศ OECD
                ซึ่งมีระยะเวลาคงเหลือไม่เกิน 1 ปี
            </xsl:variable>

            <xsl:variable name="name900024">2.24
                เงินให้สินเชื่อที่คณะรัฐมนตรีมีมติให้จัดสรรเงินงบประมาณเพื่อชำระหนี้ที่พ้นระยะเวลากำหนดชำระเกินกว่า 2 ปี
            </xsl:variable>

            <xsl:variable name="name900181">2.25 เงินฝากที่ธนาคารกลางนอกกลุ่มประเทศ OECD ที่มิใช่เงินสกุลของประเทศนั้น
                หรือมีจำนวนเกินกว่าหนี้สินที่ธนาคารพาณิชย์หรือบริษัทเงินทุนมีอยู่ในเงินสกุลนั้น
            </xsl:variable>

            <xsl:variable name="name900025">2.26 เงินฝากที่ธนาคารพาณิชย์จดทะเบียนนอกกลุ่มประเทศ OECD
                ซึ่งมีระยะเวลาคงเหลือเกิน 1 ปี
            </xsl:variable>

            <xsl:variable name="name900026">2.27 เงินให้สินเชื่อแก่ธนาคารพาณิชย์จดทะเบียนนอกกลุ่มประเทศ OECD
                ซึ่งมีระยะเวลาเกิน 1 ปี
            </xsl:variable>

            <xsl:variable name="name900027">2.28 เงินให้สินเชื่อแก่ธนาคารกลางนอกกลุ่มประเทศ OECD
                ที่มิใช่เงินสกุลของประเทศนั้น
                หรือมีจำนวนเกินกว่าหนี้สินที่ธนาคารพาณิชย์หรือบริษัทเงินทุนมีอยู่ในเงินสกุลนั้น
            </xsl:variable>

            <xsl:variable name="name900176">2.29 เงินให้สินเชื่อแก่สถาบันการเงินอื่นในประเทศ</xsl:variable>

            <xsl:variable name="name900028">2.30 หัก รายได้รอการตัดบัญชี</xsl:variable>

            <xsl:variable name="name900029">น้ำหนักความเสี่ยง 0</xsl:variable>

            <xsl:variable name="name900030">น้ำหนักความเสี่ยง 0.2</xsl:variable>

            <xsl:variable name="name900031">น้ำหนักความเสี่ยง 0.5</xsl:variable>

            <xsl:variable name="name900032">น้ำหนักความเสี่ยง 1.0</xsl:variable>

            <xsl:variable name="name900033">2.31 ดอกเบี้ยค้างรับ</xsl:variable>

            <xsl:variable name="name900034">น้ำหนักความเสี่ยง 0</xsl:variable>

            <xsl:variable name="name900035">น้ำหนักความเสี่ยง 0.2</xsl:variable>

            <xsl:variable name="name900036">น้ำหนักความเสี่ยง 0.5</xsl:variable>

            <xsl:variable name="name900037">น้ำหนักความเสี่ยง 1.0</xsl:variable>

            <xsl:variable name="name900038">2.32 หัก ค่าเผื่อหนี้สงสัยจะสูญ</xsl:variable>

            <xsl:variable name="name900039">น้ำหนักความเสี่ยง 0</xsl:variable>

            <xsl:variable name="name900040">น้ำหนักความเสี่ยง 0.2</xsl:variable>

            <xsl:variable name="name900041">น้ำหนักความเสี่ยง 0.5</xsl:variable>

            <xsl:variable name="name900042">น้ำหนักความเสี่ยง 1.0</xsl:variable>

            <xsl:variable name="name900043">3. หลักทรัพย์ซื้อโดยมีสัญญาขายคืน</xsl:variable>

            <xsl:variable name="name900044">4. เงินลงทุนในหลักทรัพย์</xsl:variable>

            <xsl:variable name="name900045">4.1 เงินลงทุนในหลักทรัพย์รัฐบาลไทย</xsl:variable>

            <xsl:variable name="name900046">4.2 หลักทรัพย์ที่กระทรวงการคลังค้ำประกัน</xsl:variable>

            <xsl:variable name="name900047">4.3 เงินลงทุนในหลักทรัพย์ธนาคารแห่งประเทศไทย</xsl:variable>

            <xsl:variable name="name900048">4.4 เงินลงทุนในหลักทรัพย์รัฐบาลหรือธนาคารกลางของประเทศในกลุ่ม OECD
                หรือเงินลงทุนในหลักทรัพย์ที่รัฐบาลหรือธนาคารกลางดังกล่าวค้ำประกัน
            </xsl:variable>

            <xsl:variable name="name900049">4.5 เงินลงทุนในหลักทรัพย์รัฐบาลหรือธนาคารกลางนอกกลุ่มประเทศ OECD
                หรือเงินลงทุนในหลักทรัพย์ดังกล่าวค้ำประกัน โดยเป็นสกุลเงินของประเทศนั้นและไม่เกินกว่าหนี้สินที่ ธพ. หรือ
                บง. มีอยู่ในเงินสกุลนั้น
            </xsl:variable>

            <xsl:variable name="name900050">4.6 เงินลงทุนในหลักทรัพย์กองทุนเพื่อการฟื้นฟูฯ หรือนิติบุคคลที่กองทุนฯ
                ถือหุ้นเต็มจำนวน
            </xsl:variable>

            <xsl:variable name="name900072">4.7 เงินลงทุนในหลักทรัพย์ที่กองทุนเพื่อการฟื้นฟูฯ หรือนิติบุคคลที่กองทุนฯ
                ถือหุ้นเต็มจำนวน รับรอง รับอาวัล หรือค้ำประกัน
            </xsl:variable>

            <xsl:variable name="name900073">4.8
                เงินลงทุนในตราสารแสดงสิทธิในหนี้โดยมีบุคคลอื่นรับความเสี่ยงด้านเครดิตแทนธนาคารพาณิชย์หรือบริษัทเงินทุนนั้น
            </xsl:variable>

            <xsl:variable name="name900202">4.9
                เงินลงทุนในตราสารหนี้ด้อยสิทธิที่สถาบันการเงินผู้ออกนับเป็นเงินกองทุนชั้นที่ 2
            </xsl:variable>

            <xsl:variable name="name900074">4.10 เงินลงทุนในธนาคารพาณิชย์ บริษัทเงินทุน และบริษัทเครดิตฟองซิเอร์
            </xsl:variable>

            <xsl:variable name="name900075">4.11 เงินลงทุนในหลักทรัพย์ที่มีธนาคารพาณิชย์ บริษัทเงินทุน
                และบริษัทเครดิตฟองซิเอร์ รับรอง รับอาวัล หรือค้ำประกัน
            </xsl:variable>

            <xsl:variable name="name900076">4.12 เงินลงทุนในธนาคารอาคารสงเคราะห์ ธนาคารออมสิน
                ธนาคารเพื่อการเกษตรและสหกรณ์การเกษตร และธนาคารเพื่อการส่งออกและนำเข้าแห่งประเทศไทย
            </xsl:variable>

            <xsl:variable name="name900077">4.13 เงินลงทุนในหลักทรัพย์ที่มีธนาคารอาคารสงเคราะห์ ธนาคารออมสิน
                ธนาคารเพื่อการเกษตรและสหกรณ์การเกษตร และธนาคารเพื่อการส่งออกและนำเข้าแห่งประเทศไทย รับรอง รับอาวัล
                หรือค้ำประกัน
            </xsl:variable>

            <xsl:variable name="name900078">4.14 เงินลงทุนในบรรษัทเงินทุนอุตสาหกรรมแห่งประเทศไทย</xsl:variable>

            <xsl:variable name="name900079">4.15 เงินลงทุนในหลักทรัพย์ที่มีบรรษัทเงินทุนอุตสาหกรรมแห่งประเทศไทยรับรอง
                รับอาวัล หรือค้ำประกัน
            </xsl:variable>

            <xsl:variable name="name900080">4.16 เงินลงทุนในองค์การของรัฐ หรือรัฐวิสาหกิจ</xsl:variable>

            <xsl:variable name="name900081">4.17 เงินลงทุนในหลักทรัพย์ที่มีองค์การของรัฐ หรือรัฐวิสาหกิจรับรอง รับอาวัล
                หรือค้ำประกัน
            </xsl:variable>

            <xsl:variable name="name900182">4.18
                เงินลงทุนในหลักทรัพย์หรือหน่วยลงทุนที่กระทรวงการคลังทำสัญญาให้ความคุ้มครองหรือตกลงรับความเสี่ยง
            </xsl:variable>

            <xsl:variable name="name900082">4.19 เงินลงทุนในหลักทรัพย์ของธนาคารพาณิชย์จดทะเบียนในกลุ่มประเทศ OECD
            </xsl:variable>

            <xsl:variable name="name900083">4.20 เงินลงทุนในหลักทรัพย์ที่มีธนาคารพาณิชย์จดทะเบียนในกลุ่มประเทศ OECD
                รับรอง รับอาวัล หรือ ค้ำประกัน
            </xsl:variable>

            <xsl:variable name="name900084">4.21 เงินลงทุนในหลักทรัพย์ขององค์การของรัฐในกลุ่มประเทศ OECD</xsl:variable>

            <xsl:variable name="name900085">4.22 เงินลงทุนในหลักทรัพย์ที่มีองค์การของรัฐในกลุ่มประเทศ OECD รับรอง
                รับอาวัล หรือค้ำประกัน
            </xsl:variable>

            <xsl:variable name="name900086">4.23 เงินลงทุนในหลักทรัพย์ขององค์การระหว่างประเทศ</xsl:variable>

            <xsl:variable name="name900087">4.24 เงินลงทุนในหลักทรัพย์ที่มีองค์การระหว่างประเทศ รับรอง รับอาวัล
                หรือค้ำประกัน
            </xsl:variable>

            <xsl:variable name="name900088">4.25 เงินลงทุนในหลักทรัพย์ของธนาคารพาณิชย์จดทะเบียนนอกกลุ่มประเทศ OECD
                ซึ่งมีระยะเวลาคงเหลือไม่เกิน 1 ปี
            </xsl:variable>

            <xsl:variable name="name900089">4.26 เงินลงทุนในหลักทรัพย์ที่มีธนาคารพาณิชย์จดทะเบียนนอกกลุ่มประเทศ OECD
                รับรอง รับอาวัล หรือค้ำประกัน ไม่เกิน 1 ปี
            </xsl:variable>

            <xsl:variable name="name900090">4.27 เงินลงทุนในหลักทรัพย์ของเทศบาล</xsl:variable>

            <xsl:variable name="name900183">4.28 เงินลงทุนในหลักทรัพย์ที่เทศบาล รับรอง รับอาวัล หรือค้ำประกัน
            </xsl:variable>

            <xsl:variable name="name900092">4.29 เงินลงทุนในหลักทรัพย์ภาคเอกชน</xsl:variable>

            <xsl:variable name="name900093">4.30 เงินลงทุนในหลักทรัพย์ของธนาคารพาณิชย์จดทะเบียนนอกกลุ่มประเทศ OECD
                ซึ่งมีระยะเวลาเกินกว่า 1 ปี
            </xsl:variable>

            <xsl:variable name="name900094">4.31 เงินลงทุนในหลักทรัพย์ที่มีธนาคารพาณิชย์จดทะเบียนนอกกลุ่มประเทศ OECD
                รับรอง รับอาวัล หรือค้ำประกัน ซึ่งมีระยะเวลาเกินกว่า 1 ปี
            </xsl:variable>

            <xsl:variable name="name900095">4.32 เงินลงทุนในหลักทรัพย์ของรัฐบาล หรือธนาคารกลางนอกกลุ่มประเทศ OECD
                ที่มิใช่เงินสกุลของประเทศนั้น หรือมีจำนวนเกินกว่าหนี้สินที่ธนาคารพาณิชย์
                หรือบริษัทเงินทุนมีอยู่ในเงินสกุลนั้น
            </xsl:variable>

            <xsl:variable name="name900096">4.33 ส่วนเกินจากการปรับมูลค่าของหลักทรัพย์</xsl:variable>

            <xsl:variable name="name900097">น้ำหนักความเสี่ยง 0</xsl:variable>

            <xsl:variable name="name900098">น้ำหนักความเสี่ยง 0.2</xsl:variable>

            <xsl:variable name="name900099">น้ำหนักความเสี่ยง 0.5</xsl:variable>

            <xsl:variable name="name900100">น้ำหนักความเสี่ยง 1.0</xsl:variable>

            <xsl:variable name="name900101">4.34 หัก ส่วนต่ำจากการปรับมูลค่าของหลักทรัพย์</xsl:variable>

            <xsl:variable name="name900102">น้ำหนักความเสี่ยง 0</xsl:variable>

            <xsl:variable name="name900103">น้ำหนักความเสี่ยง 0.2</xsl:variable>

            <xsl:variable name="name900104">น้ำหนักความเสี่ยง 0.5</xsl:variable>

            <xsl:variable name="name900105">น้ำหนักความเสี่ยง 1.0</xsl:variable>

            <xsl:variable name="name900106">4.35 หัก ค่าเผื่อการด้อยค่าของหลักทรัพย์</xsl:variable>

            <xsl:variable name="name900107">น้ำหนักความเสี่ยง 0</xsl:variable>

            <xsl:variable name="name900108">น้ำหนักความเสี่ยง 0.2</xsl:variable>

            <xsl:variable name="name900109">น้ำหนักความเสี่ยง 0.5</xsl:variable>

            <xsl:variable name="name900110">น้ำหนักความเสี่ยง 1.0</xsl:variable>

            <xsl:variable name="name900111">5. เงินให้สินเชื่อ</xsl:variable>

            <xsl:variable name="name900203">5.1 เงินให้สินเชื่อแก่รัฐบาลไทย</xsl:variable>

            <xsl:variable name="name900112">5.2 เงินให้สินเชื่อที่มีหลักทรัพย์รัฐบาลไทย
                หรือหลักทรัพย์ที่กระทรวงการคลังค้ำประกัน หรือหลักทรัพย์ที่ธนาคารแห่งประเทศไทยเป็นประกัน
            </xsl:variable>

            <xsl:variable name="name900113">5.3 เงินให้สินเชื่อที่กระทรวงการคลังค้ำประกัน
                หรือที่คณะรัฐมนตรีมีมติให้จัดสรรเงินงบประมาณเพื่อชำระหนี้ให้
            </xsl:variable>

            <xsl:variable name="name900114">5.4 เงินให้สินเชื่อแก่รัฐบาลในกลุ่มประเทศ OECD
                หรือรัฐบาลหรือธนาคารกลางในกลุ่มประเทศดังกล่าวค้ำประกัน
                หรือมีหลักทรัพย์รัฐบาลหรือธนาคารกลางดังกล่าวเป็นประกัน
            </xsl:variable>

            <xsl:variable name="name900115">5.5 เงินให้สินเชื่อแก่รัฐบาลนอกกลุ่มประเทศ OECD
                หรือที่รัฐบาลหรือธนาคารกลางนอกกลุ่มประเทศ OECD ค้ำประกัน
                โดยเป็นสกุลเงินของประเทศนั้นและไม่เกินกว่าหนี้สินที่ธพ.หรือบง. มีอยู่ในเงินสกุลนั้น
            </xsl:variable>

            <xsl:variable name="name900116">5.6 เงินให้สินเชื่อที่กองทุนเพื่อการฟื้นฟูฯ หรือนิติบุคคลที่กองทุนฯ
                ถือหุ้นเต็มจำนวนรับรอง รับอาวัล หรือค้ำประกัน หรือมีตราสารที่ออกโดยสถาบันดังกล่าวเป็นประกัน
            </xsl:variable>

            <xsl:variable name="name900117">5.7
                เงินให้สินเชื่อที่มีสิทธิซึ่งมีตราสารการฝากเงินซึ่งออกโดยธพ.นั้นเป็นประกัน หรือมีตั๋วสัญญาใช้เงิน
                หรือบัตรเงินฝากที่ออกโดยบง.นั้น จำนำเป็นประกัน หรือมีเงินสดซึ่งบง.นั้นถือไว้เป็นประกัน
            </xsl:variable>

            <xsl:variable name="name900118">5.8
                เงินให้สินเชื่อที่มีตั๋วสัญญาใช้เงินของบริษัทเงินทุนกรุงไทยธนกิจหรือบัตรเงินฝากของธนาคารกรุงไทยตามโครงการรับแลกเปลี่ยนตั๋วฯจำนำเป็นประกัน
            </xsl:variable>

            <xsl:variable name="name900119">5.9 เงินให้สินเชื่อที่มีธพ. บง. บค. บรรษัทเงินทุนอุตสาหกรรมแห่งประเทศไทย
                ธอส. ธ.ออมสิน ธกส. และธสน. รับรอง รับอาวัล หรือค้ำประกัน
                หรือมีตราสารที่ออกโดยสถาบันการเงินดังกล่าวเป็นประกัน
            </xsl:variable>

            <xsl:variable name="name900120">5.10
                เงินให้สินเชื่อโดยมีบุคคลอื่นรับความเสี่ยงด้านเครดิตแทนธนาคารพาณิชย์หรือบริษัทเงินทุนนั้น
            </xsl:variable>

            <xsl:variable name="name900121">5.11 เงินให้สินเชื่อแก่องค์การของรัฐ หรือรัฐวิสาหกิจ หรือ
                เงินให้สินเชื่อที่มีสถาบันดังกล่าวรับรอง รับอาวัล หรือ ค้ำประกัน
                หรือมีตราสารซึ่งออกโดยสถาบันดังกล่าวเป็นประกัน
            </xsl:variable>

            <xsl:variable name="name900122">5.12 เงินให้สินเชื่อแก่องค์การของรัฐในกลุ่มประเทศ OECD หรือ
                เงินให้สินเชื่อที่มีสถาบันดังกล่าว รับรอง รับอาวัล หรือค้ำประกัน
                หรือมีตราสารซึ่งออกโดยสถาบันดังกล่าวเป็นประกัน
            </xsl:variable>

            <xsl:variable name="name900123">5.13 เงินให้สินเชื่อแก่องค์การระหว่างประเทศตามที่กำหนดในภาคผนวก 2
                หรือเงินให้สินเชื่อที่มีองค์กรดังกล่าว รับรอง รับอาวัล หรือค้ำประกัน
                หรือมีตราสารซึ่งออกโดยองค์กรดังกล่าวเป็นประกัน
            </xsl:variable>

            <xsl:variable name="name900124">5.14 เงินให้สินเชื่อที่มีธนาคารพาณิชย์จดทะเบียนในกลุ่มประเทศ OECD รับรอง
                อาวัล หรือค้ำประกัน หรือมีตราสารซึ่งออกโดยธนาคารพาณิชย์ดังกล่าวเป็นประกัน
            </xsl:variable>

            <xsl:variable name="name900125">5.15 เงินให้สินเชื่อเพื่อการส่งออกตาม L/C
                หรือตามเอกสารเพื่อการส่งออกประเภทอื่นที่ ธพ. ในต่างประเทศรับผิดชอบ กรณี ธพ. ในต่างประเทศเป็น ธพ.
                จดทะเบียนนอกกลุ่ม OECD มีระยะเวลาคงเหลือในการชำระ ไม่เกิน 1ปี
            </xsl:variable>

            <xsl:variable name="name900126">5.16 เงินให้สินเชื่อที่มีธนาคารพาณิชย์จดทะเบียนนอกกลุ่มประเทศ OECD รับรอง
                รับอาวัล หรือค้ำประกัน หรือมีตราสารซึ่งออกโดยธนาคารพาณิชย์ดังกล่าวเป็นประกัน และมีระยะเวลาคงเหลือไม่เกิน
                1 ปี
            </xsl:variable>

            <xsl:variable name="name900127">5.17 เงินให้สินเชื่อตามมติคณะรัฐมนตรีที่พ้นระยะเวลากำหนดชำระเกินกว่า 2 ปี
            </xsl:variable>

            <xsl:variable name="name900128">5.18
                เงินให้สินเชื่อเพื่อการส่งออกที่ธนาคารเพื่อการส่งออกและนำเข้าแห่งประเทศไทยรับประกัน
                (ส่วนที่โอนสิทธิเรียกร้อง)
            </xsl:variable>

            <xsl:variable name="name900129">5.19 เงินให้สินเชื่อแก่เทศบาล หรือ เงินให้สินเชื่อที่มีเทศบาลรับรอง รับอาวัล
                หรือค้ำประกัน หรือที่มีตราสารซึ่งออกโดยเทศบาลเป็นประกัน
            </xsl:variable>

            <xsl:variable name="name900204">5.20
                เงินให้สินเชื่อเพื่อการจัดหาที่อยู่อาศัยแก่บุคคลธรรมดาที่เข้าหลักเกณฑ์เงินให้สินเชื่อเพื่อรายย่อย
                กรณีมูลค่าหลักประกันคุ้มมูลหนี้
            </xsl:variable>

            <xsl:variable name="name900205">5.21
                เงินให้สินเชื่อเพื่อการจัดหาที่อยู่อาศัยแก่บุคคลธรรมดาที่เข้าหลักเกณฑ์เงินให้สินเชื่อเพื่อรายย่อย
                กรณีมูลค่าหลักประกันคุ้มมูลหนี้ ที่เป็นเงินให้สินเชื่อด้อยคุณภาพ (Non ? Performing Loans)
            </xsl:variable>

            <xsl:variable name="name900130">5.22 เงินให้สินเชื่อเพื่อการจัดหาที่อยู่อาศัยแก่บุคคลธรรมดา
                กรณีมูลค่าหลักประกันคุ้มมูลหนี้
            </xsl:variable>

            <xsl:variable name="name900131">5.23 เงินให้สินเชื่อเพื่อการจัดหาที่อยู่อาศัยแก่บุคคลธรรมดา
                กรณีมูลค่าหลักประกันไม่คุ้มมูลหนี้
            </xsl:variable>

            <xsl:variable name="name900206">5.24 เงินให้สินเชื่อแก่ประชาชนรายย่อย
                และวิสาหกิจขนาดกลางและขนาดย่อมที่เข้าหลักเกณฑ์เงินให้สินเชื่อเพื่อรายย่อย และวิสาหกิจขนาดกลางและขนาดย่อม
            </xsl:variable>

            <xsl:variable name="name900207">5.25 เงินให้สินเชื่อแก่ประชาชนรายย่อย
                และวิสาหกิจขนาดกลางและขนาดย่อมที่เข้าหลักเกณฑ์เงินให้สินเชื่อเพื่อรายย่อย และวิสาหกิจขนาดกลางและขนาดย่อม
                ที่เป็นเงินให้สินเชื่อด้อยคุณภาพ (Non ? Performing Loans)
            </xsl:variable>

            <xsl:variable name="name900132">5.26 เงินให้สินเชื่อแก่ภาคเอกชน</xsl:variable>

            <xsl:variable name="name900133">5.27 เงินให้สินเชื่อที่มีธนาคารพาณิชย์จดทะเบียนนอกกลุ่มประเทศ OECD รับรอง
                รับอาวัล หรือค้ำประกัน หรือที่มีตราสารซึ่งออกโดยธนาคารพาณิชย์ดังกล่าวเป็นประกัน
                ซึ่งมีระยะเวลาคงเหลือเกิน 1 ปี
            </xsl:variable>

            <xsl:variable name="name900134">5.28 เงินให้สินเชื่อแก่รัฐบาลนอกกลุ่ม OECD เงินให้สินเชื่อที่รัฐบาล
                หรือธนาคารกลางนอกกลุ่ม OECD ค้ำประกัน ที่มิใช่เงินสกุลของประเทศนั้น หรือมีจำนวนเกินกว่าหนี้สินที่ ธพ.
                หรือ บง. มีอยู่ในเงินสกุลนั้น
            </xsl:variable>

            <xsl:variable name="name900135">5.29 หัก รายได้รอการตัดบัญชี</xsl:variable>

            <xsl:variable name="name900136">น้ำหนักความเสี่ยง 0</xsl:variable>

            <xsl:variable name="name900137">น้ำหนักความเสี่ยง 0.2</xsl:variable>

            <xsl:variable name="name900213">น้ำหนักความเสี่ยง 0.35</xsl:variable>

            <xsl:variable name="name900138">น้ำหนักความเสี่ยง 0.5</xsl:variable>

            <xsl:variable name="name900214">น้ำหนักความเสี่ยง 0.75</xsl:variable>

            <xsl:variable name="name900139">น้ำหนักความเสี่ยง 1.0</xsl:variable>

            <xsl:variable name="name900215">น้ำหนักความเสี่ยง 1.5</xsl:variable>

            <xsl:variable name="name900140">6. ดอกเบี้ยค้างรับ</xsl:variable>

            <xsl:variable name="name900141">น้ำหนักความเสี่ยง 0</xsl:variable>

            <xsl:variable name="name900142">น้ำหนักความเสี่ยง 0.2</xsl:variable>

            <xsl:variable name="name900216">น้ำหนักความเสี่ยง 0.35</xsl:variable>

            <xsl:variable name="name900143">น้ำหนักความเสี่ยง 0.5</xsl:variable>

            <xsl:variable name="name900217">น้ำหนักความเสี่ยง 0.75</xsl:variable>

            <xsl:variable name="name900144">น้ำหนักความเสี่ยง 1.0</xsl:variable>

            <xsl:variable name="name900218">น้ำหนักความเสี่ยง 1.5</xsl:variable>

            <xsl:variable name="name900145">7. หัก ค่าเผื่อหนี้สงสัยจะสูญ</xsl:variable>

            <xsl:variable name="name900146">น้ำหนักความเสี่ยง 0</xsl:variable>

            <xsl:variable name="name900147">น้ำหนักความเสี่ยง 0.2</xsl:variable>

            <xsl:variable name="name900219">น้ำหนักความเสี่ยง 0.35</xsl:variable>

            <xsl:variable name="name900148">น้ำหนักความเสี่ยง 0.5</xsl:variable>

            <xsl:variable name="name900220">น้ำหนักความเสี่ยง 0.75</xsl:variable>

            <xsl:variable name="name900149">น้ำหนักความเสี่ยง 1.0</xsl:variable>

            <xsl:variable name="name900221">น้ำหนักความเสี่ยง 1.5</xsl:variable>

            <xsl:variable name="name900184">8. ทรัพย์สินรอการขาย (สุทธิ)</xsl:variable>

            <xsl:variable name="name900185">น้ำหนักความเสี่ยง 0</xsl:variable>

            <xsl:variable name="name900186">น้ำหนักความเสี่ยง 0.2</xsl:variable>

            <xsl:variable name="name900187">น้ำหนักความเสี่ยง 0.5</xsl:variable>

            <xsl:variable name="name900188">น้ำหนักความเสี่ยง 1.0</xsl:variable>

            <xsl:variable name="name900151">9. ที่ดิน อาคาร และอุปกรณ์ (สุทธิ)</xsl:variable>

            <xsl:variable name="name900152">10. สินทรัพย์อื่น ๆ</xsl:variable>

            <xsl:variable name="name900153">10.1 ค่าใช้จ่ายล่วงหน้าและรายจ่ายรอการตัดบัญชี</xsl:variable>

            <xsl:variable name="name900154">10.1.1 ค่าใช้จ่ายล่วงหน้า</xsl:variable>

            <xsl:variable name="name900155">10.1.2 รายจ่ายรอการตัดบัญชี</xsl:variable>

            <xsl:variable name="name900156">10.2 รายได้ค้างรับ</xsl:variable>

            <xsl:variable name="name900157">น้ำหนักความเสี่ยง 0</xsl:variable>

            <xsl:variable name="name900158">น้ำหนักความเสี่ยง 0.2</xsl:variable>

            <xsl:variable name="name900159">น้ำหนักความเสี่ยง 0.5</xsl:variable>

            <xsl:variable name="name900160">น้ำหนักความเสี่ยง 1.0</xsl:variable>

            <xsl:variable name="name900161">10.3 ผลต่างบัญชีระหว่างกัน</xsl:variable>

            <xsl:variable name="name900208">10.4 ลูกหนี้อื่น ๆ</xsl:variable>

            <xsl:variable name="name900209">น้ำหนักความเสี่ยง 0</xsl:variable>

            <xsl:variable name="name900210">น้ำหนักความเสี่ยง 0.2</xsl:variable>

            <xsl:variable name="name900211">น้ำหนักความเสี่ยง 0.5</xsl:variable>

            <xsl:variable name="name900212">น้ำหนักความเสี่ยง 1.0</xsl:variable>

            <xsl:variable name="name900174">10.5 ภาษีเงินได้รอตัดบัญชี</xsl:variable>

            <xsl:variable name="name900194">10.6 สินทรัพย์อื่น</xsl:variable>

            <xsl:variable name="name900195">น้ำหนักความเสี่ยง 0</xsl:variable>

            <xsl:variable name="name900196">น้ำหนักความเสี่ยง 0.2</xsl:variable>

            <xsl:variable name="name900197">น้ำหนักความเสี่ยง 0.5</xsl:variable>

            <xsl:variable name="name900198">น้ำหนักความเสี่ยง 1.0</xsl:variable>


            <!--<xsl:variable name="RiskWeightedAssetOutstandingAmount900006" ><xsl:value-of select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900006/RiskWeightedAssetOutstandingAmount"/></xsl:variable>-->
            <!--1.-->
            <xsl:variable name="AssetOutstandingAmount900003">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900003/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900004">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900004/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalAssetOutstandingAmount900002">
                <xsl:value-of select="$AssetOutstandingAmount900003 + $AssetOutstandingAmount900004"/>
            </xsl:variable>
            <!--2.-->
            <xsl:variable name="AssetOutstandingAmount900006">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900006/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900007">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900007/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900177">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900177/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900199">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900199/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900178">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900178/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900200">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900200/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalAssetOutstandingAmount900005tmp1">
                <xsl:value-of
                        select="$AssetOutstandingAmount900006 + $AssetOutstandingAmount900007 + $AssetOutstandingAmount900177 + $AssetOutstandingAmount900199 + $AssetOutstandingAmount900178 + $AssetOutstandingAmount900200"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900009">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900009/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900201">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900201/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900010">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900010/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900011">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900011/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900012">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900012/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900013">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900013/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalAssetOutstandingAmount900005tmp2">
                <xsl:value-of
                        select="$AssetOutstandingAmount900009 + $AssetOutstandingAmount900201 + $AssetOutstandingAmount900010 + $AssetOutstandingAmount900011 + $AssetOutstandingAmount900012 + $AssetOutstandingAmount900013"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900179">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900179/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900180">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900180/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900015">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900015/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900016">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900016/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900017">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900017/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900018">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900018/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalAssetOutstandingAmount900005tmp3">
                <xsl:value-of
                        select="$AssetOutstandingAmount900179 + $AssetOutstandingAmount900180 + $AssetOutstandingAmount900015 + $AssetOutstandingAmount900016 + $AssetOutstandingAmount900017 + $AssetOutstandingAmount900018"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900019">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900019/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900020">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900020/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900021">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900021/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900022">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900022/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900023">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900023/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900024">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900024/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalAssetOutstandingAmount900005tmp4">
                <xsl:value-of
                        select="$AssetOutstandingAmount900019 + $AssetOutstandingAmount900020 + $AssetOutstandingAmount900021 + $AssetOutstandingAmount900022 + $AssetOutstandingAmount900023 + $AssetOutstandingAmount900024"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900181">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900181/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900025">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900025/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900026">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900026/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900027">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900027/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900176">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900176/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalAssetOutstandingAmount900005tmp5">
                <xsl:value-of
                        select="$AssetOutstandingAmount900181 + $AssetOutstandingAmount900025 + $AssetOutstandingAmount900026 + $AssetOutstandingAmount900027 + $AssetOutstandingAmount900176"/>
            </xsl:variable>
            <!--<xsl:variable name="TotalAssetOutstandingAmount900002" ><xsl:value-of select="$AssetOutstandingAmount900003 + $AssetOutstandingAmount900004"/></xsl:variable>-->
            <!--2.30 ลบ-->
            <xsl:variable name="AssetOutstandingAmount900029">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900029/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900030">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900030/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900031">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900031/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900032">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900032/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalAssetOutstandingAmount900028">
                <xsl:value-of
                        select="$AssetOutstandingAmount900029 + $AssetOutstandingAmount900030 + $AssetOutstandingAmount900031 + $AssetOutstandingAmount900032 "/>
            </xsl:variable>
            <!--2.31-->
            <xsl:variable name="AssetOutstandingAmount900034">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900034/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900035">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900035/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900036">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900036/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900037">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900037/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalAssetOutstandingAmount900033">
                <xsl:value-of
                        select="$AssetOutstandingAmount900034 + $AssetOutstandingAmount900035 + $AssetOutstandingAmount900036 + $AssetOutstandingAmount900037 "/>
            </xsl:variable>
            <!--2.32 ลบ-->
            <xsl:variable name="AssetOutstandingAmount900039">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900039/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900040">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900040/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900041">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900041/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900042">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900042/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalAssetOutstandingAmount900038">
                <xsl:value-of
                        select="$AssetOutstandingAmount900039 + $AssetOutstandingAmount900040 + $AssetOutstandingAmount900041 + $AssetOutstandingAmount900042 "/>
            </xsl:variable>
            <xsl:variable name="TotalAssetOutstandingAmount900005">
                <xsl:value-of
                        select="$TotalAssetOutstandingAmount900005tmp1 + $TotalAssetOutstandingAmount900005tmp2 + $TotalAssetOutstandingAmount900005tmp3 + $TotalAssetOutstandingAmount900005tmp4 + $TotalAssetOutstandingAmount900005tmp5 - $TotalAssetOutstandingAmount900028 + $TotalAssetOutstandingAmount900033 - $TotalAssetOutstandingAmount900038 "/>
            </xsl:variable>
            <!--4.-->
            <xsl:variable name="AssetOutstandingAmount900045">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900045/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900046">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900046/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900047">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900047/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900048">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900048/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900049">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900049/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900050">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900050/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalAssetOutstandingAmount900044tmp1">
                <xsl:value-of
                        select="$AssetOutstandingAmount900045 + $AssetOutstandingAmount900046 + $AssetOutstandingAmount900047 + $AssetOutstandingAmount900048 + $AssetOutstandingAmount900049 + $AssetOutstandingAmount900050"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900072">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900072/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900073">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900073/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900202">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900202/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900074">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900074/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900075">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900075/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900076">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900076/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalAssetOutstandingAmount900044tmp2">
                <xsl:value-of
                        select="$AssetOutstandingAmount900072 + $AssetOutstandingAmount900073 + $AssetOutstandingAmount900202 + $AssetOutstandingAmount900074 + $AssetOutstandingAmount900075 + $AssetOutstandingAmount900076"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900077">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900077/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900078">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900078/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900079">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900079/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900080">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900080/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900081">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900081/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900182">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900182/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalAssetOutstandingAmount900044tmp3">
                <xsl:value-of
                        select="$AssetOutstandingAmount900077 + $AssetOutstandingAmount900078 + $AssetOutstandingAmount900079 + $AssetOutstandingAmount900080 + $AssetOutstandingAmount900081 + $AssetOutstandingAmount900182"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900082">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900082/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900083">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900083/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900084">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900084/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900085">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900085/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900086">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900086/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900087">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900087/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900088">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900088/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalAssetOutstandingAmount900044tmp4">
                <xsl:value-of
                        select="$AssetOutstandingAmount900082 + $AssetOutstandingAmount900083 + $AssetOutstandingAmount900084 + $AssetOutstandingAmount900085 + $AssetOutstandingAmount900086 + $AssetOutstandingAmount900087 + $AssetOutstandingAmount900088"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900089">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900089/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900090">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900090/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900183">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900183/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900092">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900092/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900093">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900093/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900094">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900094/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900095">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900095/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalAssetOutstandingAmount900044tmp5">
                <xsl:value-of
                        select="$AssetOutstandingAmount900089 + $AssetOutstandingAmount900090 + $AssetOutstandingAmount900183 + $AssetOutstandingAmount900092 + $AssetOutstandingAmount900093 + $AssetOutstandingAmount900094 + $AssetOutstandingAmount900095"/>
            </xsl:variable>
            <!--900044-->
            <!--4.33 -->
            <xsl:variable name="AssetOutstandingAmount900097">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900097/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900098">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900098/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900099">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900099/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900100">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900100/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalAssetOutstandingAmount900096">
                <xsl:value-of
                        select="$AssetOutstandingAmount900097 + $AssetOutstandingAmount900098 + $AssetOutstandingAmount900099 + $AssetOutstandingAmount900100 "/>
            </xsl:variable>
            <!--4.34 ลบ-->
            <xsl:variable name="AssetOutstandingAmount900102">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900102/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900103">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900103/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900104">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900104/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900105">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900105/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalAssetOutstandingAmount900101">
                <xsl:value-of
                        select="$AssetOutstandingAmount900102 + $AssetOutstandingAmount900103 + $AssetOutstandingAmount900104 + $AssetOutstandingAmount900105 "/>
            </xsl:variable>
            <!--4.35 ลบ-->
            <xsl:variable name="AssetOutstandingAmount900107">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900107/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900108">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900108/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900109">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900109/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900110">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900110/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalAssetOutstandingAmount900106">
                <xsl:value-of
                        select="$AssetOutstandingAmount900107 + $AssetOutstandingAmount900108 + $AssetOutstandingAmount900109 + $AssetOutstandingAmount900110 "/>
            </xsl:variable>
            <xsl:variable name="TotalAssetOutstandingAmount900044">
                <xsl:value-of
                        select="$TotalAssetOutstandingAmount900044tmp1 + $TotalAssetOutstandingAmount900044tmp2 + $TotalAssetOutstandingAmount900044tmp3 + $TotalAssetOutstandingAmount900044tmp4 + $TotalAssetOutstandingAmount900044tmp5 + $TotalAssetOutstandingAmount900096 - $TotalAssetOutstandingAmount900101 - $TotalAssetOutstandingAmount900106 "/>
            </xsl:variable>

            <!--5.-->
            <xsl:variable name="AssetOutstandingAmount900203">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900203/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900112">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900112/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900113">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900113/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900114">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900114/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900115">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900115/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900116">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900116/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900117">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900117/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900118">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900118/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900119">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900119/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900120">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900120/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900121">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900121/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900122">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900122/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900123">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900123/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900124">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900124/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900125">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900125/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900126">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900126/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900127">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900127/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900128">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900128/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900129">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900129/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900204">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900204/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900205">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900205/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900130">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900130/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900131">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900131/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900206">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900206/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900207">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900207/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900132">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900132/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900133">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900133/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900134">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900134/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalAssetOutstandingAmount900111tmp1">
                <xsl:value-of
                        select="$AssetOutstandingAmount900203 + $AssetOutstandingAmount900112 + $AssetOutstandingAmount900113 + $AssetOutstandingAmount900114 +$AssetOutstandingAmount900115 + $AssetOutstandingAmount900116 "/>
            </xsl:variable>
            <xsl:variable name="TotalAssetOutstandingAmount900111tmp2">
                <xsl:value-of
                        select="$AssetOutstandingAmount900117 + $AssetOutstandingAmount900118 + $AssetOutstandingAmount900119 + $AssetOutstandingAmount900120 + $AssetOutstandingAmount900121 + $AssetOutstandingAmount900122 "/>
            </xsl:variable>
            <xsl:variable name="TotalAssetOutstandingAmount900111tmp3">
                <xsl:value-of
                        select="$AssetOutstandingAmount900123 + $AssetOutstandingAmount900124 + $AssetOutstandingAmount900125 + $AssetOutstandingAmount900126 + $AssetOutstandingAmount900127 + $AssetOutstandingAmount900128 "/>
            </xsl:variable>
            <xsl:variable name="TotalAssetOutstandingAmount900111tmp4">
                <xsl:value-of
                        select="$AssetOutstandingAmount900129 + $AssetOutstandingAmount900204 + $AssetOutstandingAmount900205 + $AssetOutstandingAmount900130 + $AssetOutstandingAmount900131 + $AssetOutstandingAmount900206 "/>
            </xsl:variable>
            <xsl:variable name="TotalAssetOutstandingAmount900111tmp5">
                <xsl:value-of
                        select="$AssetOutstandingAmount900207 + $AssetOutstandingAmount900132 + $AssetOutstandingAmount900133 + $AssetOutstandingAmount900134 "/>
            </xsl:variable>


            <xsl:variable name="AssetOutstandingAmount900136">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900136/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900137">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900137/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900213">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900213/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900138">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900138/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900214">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900214/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900139">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900139/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900215">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900215/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalAssetOutstandingAmount900135">
                <xsl:value-of
                        select="$AssetOutstandingAmount900136 + $AssetOutstandingAmount900137 + $AssetOutstandingAmount900213 + $AssetOutstandingAmount900138 + $AssetOutstandingAmount900214 + $AssetOutstandingAmount900139 + $AssetOutstandingAmount900215"/>
            </xsl:variable>

            <xsl:variable name="TotalAssetOutstandingAmount900111">
                <xsl:value-of
                        select="$TotalAssetOutstandingAmount900111tmp1 + $TotalAssetOutstandingAmount900111tmp2 + $TotalAssetOutstandingAmount900111tmp3 + $TotalAssetOutstandingAmount900111tmp4 + $TotalAssetOutstandingAmount900111tmp5 - $TotalAssetOutstandingAmount900135"/>
            </xsl:variable>

            <!--6.-->
            <xsl:variable name="AssetOutstandingAmount900141">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900141/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900142">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900142/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900216">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900216/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900143">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900143/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900217">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900217/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900144">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900144/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900218">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900218/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalAssetOutstandingAmount900140">
                <xsl:value-of
                        select="$AssetOutstandingAmount900141 + $AssetOutstandingAmount900142 + $AssetOutstandingAmount900216 + $AssetOutstandingAmount900143 + $AssetOutstandingAmount900217 + $AssetOutstandingAmount900144 + $AssetOutstandingAmount900218"/>
            </xsl:variable>
            <!--7.-->
            <xsl:variable name="AssetOutstandingAmount900146">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900146/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900147">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900147/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900219">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900219/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900148">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900148/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900220">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900220/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900149">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900149/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900221">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900221/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalAssetOutstandingAmount900145">
                <xsl:value-of
                        select="$AssetOutstandingAmount900146 + $AssetOutstandingAmount900147 + $AssetOutstandingAmount900219 + $AssetOutstandingAmount900148 +$AssetOutstandingAmount900220 + $AssetOutstandingAmount900149 + $AssetOutstandingAmount900221"/>
            </xsl:variable>
            <!--8.-->
            <xsl:variable name="AssetOutstandingAmount900185">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900185/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900186">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900186/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900187">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900187/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900188">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900188/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalAssetOutstandingAmount900184">
                <xsl:value-of
                        select="$AssetOutstandingAmount900185 + $AssetOutstandingAmount900186 + $AssetOutstandingAmount900187 + $AssetOutstandingAmount900188"/>
            </xsl:variable>
            <!--9.-->
            <xsl:variable name="AssetOutstandingAmount900151">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900151/AssetOutstandingAmount"/>
            </xsl:variable>

            <!--10.-->
            <xsl:variable name="AssetOutstandingAmount900154">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900154/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900155">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900155/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalAssetOutstandingAmount900153">
                <xsl:value-of select="$AssetOutstandingAmount900154 + $AssetOutstandingAmount900155"/>
            </xsl:variable>

            <xsl:variable name="AssetOutstandingAmount900157">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900157/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900158">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900158/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900159">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900159/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900160">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900160/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900161">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900161/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalAssetOutstandingAmount900156">
                <xsl:value-of
                        select="$AssetOutstandingAmount900157 + $AssetOutstandingAmount900158 + $AssetOutstandingAmount900159 + $AssetOutstandingAmount900160 "/>
            </xsl:variable>

            <xsl:variable name="AssetOutstandingAmount900209">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900209/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900210">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900210/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900211">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900211/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900212">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900212/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900174">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900174/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalAssetOutstandingAmount900208">
                <xsl:value-of
                        select="$AssetOutstandingAmount900209 + $AssetOutstandingAmount900210 + $AssetOutstandingAmount900211 + $AssetOutstandingAmount900212 + $AssetOutstandingAmount900174"/>
            </xsl:variable>

            <xsl:variable name="AssetOutstandingAmount900195">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900195/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900196">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900196/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900197">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900197/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="AssetOutstandingAmount900198">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900198/AssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalAssetOutstandingAmount900194">
                <xsl:value-of
                        select="$AssetOutstandingAmount900195 + $AssetOutstandingAmount900196 + $AssetOutstandingAmount900197 + $AssetOutstandingAmount900198"/>
            </xsl:variable>
            <xsl:variable name="TotalAssetOutstandingAmount900152">
                <xsl:value-of
                        select="$TotalAssetOutstandingAmount900153 + $TotalAssetOutstandingAmount900156 + $AssetOutstandingAmount900161+ $TotalAssetOutstandingAmount900208 + $AssetOutstandingAmount900174+ $TotalAssetOutstandingAmount900194"/>
            </xsl:variable>


            <xsl:variable name="RiskWeightedAssetOutstandingAmount900003">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900003/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900004">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900004/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalRiskWeightedAssetOutstandingAmount900002">
                <xsl:value-of
                        select="$RiskWeightedAssetOutstandingAmount900003 + $RiskWeightedAssetOutstandingAmount900004"/>
            </xsl:variable>
            <!--2.-->
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900006">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900006/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900007">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900007/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900177">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900177/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900199">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900199/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900178">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900178/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900200">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900200/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalRiskWeightedAssetOutstandingAmount900005tmp1">
                <xsl:value-of
                        select="$RiskWeightedAssetOutstandingAmount900006 + $RiskWeightedAssetOutstandingAmount900007 + $RiskWeightedAssetOutstandingAmount900177 + $RiskWeightedAssetOutstandingAmount900199 + $RiskWeightedAssetOutstandingAmount900178 + $RiskWeightedAssetOutstandingAmount900200"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900009">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900009/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900201">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900201/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900010">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900010/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900011">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900011/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900012">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900012/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900013">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900013/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalRiskWeightedAssetOutstandingAmount900005tmp2">
                <xsl:value-of
                        select="$RiskWeightedAssetOutstandingAmount900009 + $RiskWeightedAssetOutstandingAmount900201 + $RiskWeightedAssetOutstandingAmount900010 + $RiskWeightedAssetOutstandingAmount900011 + $RiskWeightedAssetOutstandingAmount900012 + $RiskWeightedAssetOutstandingAmount900013"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900179">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900179/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900180">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900180/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900015">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900015/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900016">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900016/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900017">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900017/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900018">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900018/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalRiskWeightedAssetOutstandingAmount900005tmp3">
                <xsl:value-of
                        select="$RiskWeightedAssetOutstandingAmount900179 + $RiskWeightedAssetOutstandingAmount900180 + $RiskWeightedAssetOutstandingAmount900015 + $RiskWeightedAssetOutstandingAmount900016 + $RiskWeightedAssetOutstandingAmount900017 + $RiskWeightedAssetOutstandingAmount900018"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900019">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900019/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900020">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900020/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900021">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900021/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900022">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900022/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900023">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900023/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900024">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900024/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalRiskWeightedAssetOutstandingAmount900005tmp4">
                <xsl:value-of
                        select="$RiskWeightedAssetOutstandingAmount900019 + $RiskWeightedAssetOutstandingAmount900020 + $RiskWeightedAssetOutstandingAmount900021 + $RiskWeightedAssetOutstandingAmount900022 + $RiskWeightedAssetOutstandingAmount900023 + $RiskWeightedAssetOutstandingAmount900024"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900181">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900181/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900025">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900025/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900026">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900026/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900027">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900027/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900176">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900176/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalRiskWeightedAssetOutstandingAmount900005tmp5">
                <xsl:value-of
                        select="$RiskWeightedAssetOutstandingAmount900181 + $RiskWeightedAssetOutstandingAmount900025 + $RiskWeightedAssetOutstandingAmount900026 + $RiskWeightedAssetOutstandingAmount900027 + $RiskWeightedAssetOutstandingAmount900176"/>
            </xsl:variable>
            <!--<xsl:variable name="TotalRiskWeightedAssetOutstandingAmount900002" ><xsl:value-of select="$RiskWeightedAssetOutstandingAmount900003 + $RiskWeightedAssetOutstandingAmount900004"/></xsl:variable>-->
            <!--2.30 ลบ-->
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900029">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900029/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900030">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900030/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900031">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900031/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900032">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900032/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalRiskWeightedAssetOutstandingAmount900028">
                <xsl:value-of
                        select="$RiskWeightedAssetOutstandingAmount900029 + $RiskWeightedAssetOutstandingAmount900030 + $RiskWeightedAssetOutstandingAmount900031 + $RiskWeightedAssetOutstandingAmount900032 "/>
            </xsl:variable>
            <!--2.31-->
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900034">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900034/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900035">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900035/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900036">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900036/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900037">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900037/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalRiskWeightedAssetOutstandingAmount900033">
                <xsl:value-of
                        select="$RiskWeightedAssetOutstandingAmount900034 + $RiskWeightedAssetOutstandingAmount900035 + $RiskWeightedAssetOutstandingAmount900036 + $RiskWeightedAssetOutstandingAmount900037 "/>
            </xsl:variable>
            <!--2.32 ลบ-->
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900039">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900039/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900040">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900040/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900041">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900041/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900042">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900042/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalRiskWeightedAssetOutstandingAmount900038">
                <xsl:value-of
                        select="$RiskWeightedAssetOutstandingAmount900039 + $RiskWeightedAssetOutstandingAmount900040 + $RiskWeightedAssetOutstandingAmount900041 + $RiskWeightedAssetOutstandingAmount900042 "/>
            </xsl:variable>
            <xsl:variable name="TotalRiskWeightedAssetOutstandingAmount900005">
                <xsl:value-of
                        select="$TotalRiskWeightedAssetOutstandingAmount900005tmp1 + $TotalRiskWeightedAssetOutstandingAmount900005tmp2 + $TotalRiskWeightedAssetOutstandingAmount900005tmp3 + $TotalRiskWeightedAssetOutstandingAmount900005tmp4 + $TotalRiskWeightedAssetOutstandingAmount900005tmp5 - $TotalRiskWeightedAssetOutstandingAmount900028 + $TotalRiskWeightedAssetOutstandingAmount900033 - $TotalRiskWeightedAssetOutstandingAmount900038 "/>
            </xsl:variable>
            <!--4.-->
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900045">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900045/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900046">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900046/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900047">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900047/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900048">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900048/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900049">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900049/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900050">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900050/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalRiskWeightedAssetOutstandingAmount900044tmp1">
                <xsl:value-of
                        select="$RiskWeightedAssetOutstandingAmount900045 + $RiskWeightedAssetOutstandingAmount900046 + $RiskWeightedAssetOutstandingAmount900047 + $RiskWeightedAssetOutstandingAmount900048 + $RiskWeightedAssetOutstandingAmount900049 + $RiskWeightedAssetOutstandingAmount900050"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900072">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900072/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900073">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900073/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900202">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900202/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900074">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900074/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900075">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900075/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900076">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900076/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalRiskWeightedAssetOutstandingAmount900044tmp2">
                <xsl:value-of
                        select="$RiskWeightedAssetOutstandingAmount900072 + $RiskWeightedAssetOutstandingAmount900073 + $RiskWeightedAssetOutstandingAmount900202 + $RiskWeightedAssetOutstandingAmount900074 + $RiskWeightedAssetOutstandingAmount900075 + $RiskWeightedAssetOutstandingAmount900076"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900077">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900077/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900078">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900078/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900079">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900079/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900080">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900080/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900081">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900081/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900182">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900182/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalRiskWeightedAssetOutstandingAmount900044tmp3">
                <xsl:value-of
                        select="$RiskWeightedAssetOutstandingAmount900077 + $RiskWeightedAssetOutstandingAmount900078 + $RiskWeightedAssetOutstandingAmount900079 + $RiskWeightedAssetOutstandingAmount900080 + $RiskWeightedAssetOutstandingAmount900081 + $RiskWeightedAssetOutstandingAmount900182"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900082">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900082/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900083">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900083/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900084">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900084/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900085">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900085/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900086">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900086/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900087">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900087/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900088">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900088/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalRiskWeightedAssetOutstandingAmount900044tmp4">
                <xsl:value-of
                        select="$RiskWeightedAssetOutstandingAmount900082 + $RiskWeightedAssetOutstandingAmount900083 + $RiskWeightedAssetOutstandingAmount900084 + $RiskWeightedAssetOutstandingAmount900085 + $RiskWeightedAssetOutstandingAmount900086 + $RiskWeightedAssetOutstandingAmount900087 + $RiskWeightedAssetOutstandingAmount900088"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900089">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900089/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900090">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900090/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900183">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900183/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900092">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900092/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900093">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900093/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900094">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900094/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900095">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900095/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalRiskWeightedAssetOutstandingAmount900044tmp5">
                <xsl:value-of
                        select="$RiskWeightedAssetOutstandingAmount900089 + $RiskWeightedAssetOutstandingAmount900090 + $RiskWeightedAssetOutstandingAmount900183 + $RiskWeightedAssetOutstandingAmount900092 + $RiskWeightedAssetOutstandingAmount900093 + $RiskWeightedAssetOutstandingAmount900094 + $RiskWeightedAssetOutstandingAmount900095"/>
            </xsl:variable>
            <!--900044-->
            <!--4.33 -->
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900097">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900097/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900098">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900098/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900099">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900099/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900100">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900100/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalRiskWeightedAssetOutstandingAmount900096">
                <xsl:value-of
                        select="$RiskWeightedAssetOutstandingAmount900097 + $RiskWeightedAssetOutstandingAmount900098 + $RiskWeightedAssetOutstandingAmount900099 + $RiskWeightedAssetOutstandingAmount900100 "/>
            </xsl:variable>
            <!--4.34 ลบ-->
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900102">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900102/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900103">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900103/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900104">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900104/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900105">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900105/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalRiskWeightedAssetOutstandingAmount900101">
                <xsl:value-of
                        select="$RiskWeightedAssetOutstandingAmount900102 + $RiskWeightedAssetOutstandingAmount900103 + $RiskWeightedAssetOutstandingAmount900104 + $RiskWeightedAssetOutstandingAmount900105 "/>
            </xsl:variable>
            <!--4.35 ลบ-->
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900107">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900107/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900108">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900108/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900109">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900109/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900110">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900110/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalRiskWeightedAssetOutstandingAmount900106">
                <xsl:value-of
                        select="$RiskWeightedAssetOutstandingAmount900107 + $RiskWeightedAssetOutstandingAmount900108 + $RiskWeightedAssetOutstandingAmount900109 + $RiskWeightedAssetOutstandingAmount900110 "/>
            </xsl:variable>
            <xsl:variable name="TotalRiskWeightedAssetOutstandingAmount900044">
                <xsl:value-of
                        select="$TotalRiskWeightedAssetOutstandingAmount900044tmp1 + $TotalRiskWeightedAssetOutstandingAmount900044tmp2 + $TotalRiskWeightedAssetOutstandingAmount900044tmp3 + $TotalRiskWeightedAssetOutstandingAmount900044tmp4 + $TotalRiskWeightedAssetOutstandingAmount900044tmp5 + $TotalRiskWeightedAssetOutstandingAmount900096 - $TotalRiskWeightedAssetOutstandingAmount900101 - $TotalRiskWeightedAssetOutstandingAmount900106 "/>
            </xsl:variable>

            <!--5.-->
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900203">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900203/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900112">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900112/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900113">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900113/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900114">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900114/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900115">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900115/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900116">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900116/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900117">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900117/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900118">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900118/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900119">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900119/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900120">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900120/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900121">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900121/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900122">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900122/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900123">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900123/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900124">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900124/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900125">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900125/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900126">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900126/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900127">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900127/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900128">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900128/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900129">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900129/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900204">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900204/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900205">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900205/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900130">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900130/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900131">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900131/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900206">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900206/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900207">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900207/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900132">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900132/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900133">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900133/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900134">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900134/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalRiskWeightedAssetOutstandingAmount900111tmp1">
                <xsl:value-of
                        select="$RiskWeightedAssetOutstandingAmount900203 + $RiskWeightedAssetOutstandingAmount900112 + $RiskWeightedAssetOutstandingAmount900113 + $RiskWeightedAssetOutstandingAmount900114 +$RiskWeightedAssetOutstandingAmount900115 + $RiskWeightedAssetOutstandingAmount900116 "/>
            </xsl:variable>
            <xsl:variable name="TotalRiskWeightedAssetOutstandingAmount900111tmp2">
                <xsl:value-of
                        select="$RiskWeightedAssetOutstandingAmount900117 + $RiskWeightedAssetOutstandingAmount900118 + $RiskWeightedAssetOutstandingAmount900119 + $RiskWeightedAssetOutstandingAmount900120 + $RiskWeightedAssetOutstandingAmount900121 + $RiskWeightedAssetOutstandingAmount900122 "/>
            </xsl:variable>
            <xsl:variable name="TotalRiskWeightedAssetOutstandingAmount900111tmp3">
                <xsl:value-of
                        select="$RiskWeightedAssetOutstandingAmount900123 + $RiskWeightedAssetOutstandingAmount900124 + $RiskWeightedAssetOutstandingAmount900125 + $RiskWeightedAssetOutstandingAmount900126 + $RiskWeightedAssetOutstandingAmount900127 + $RiskWeightedAssetOutstandingAmount900128 "/>
            </xsl:variable>
            <xsl:variable name="TotalRiskWeightedAssetOutstandingAmount900111tmp4">
                <xsl:value-of
                        select="$RiskWeightedAssetOutstandingAmount900129 + $RiskWeightedAssetOutstandingAmount900204 + $RiskWeightedAssetOutstandingAmount900205 + $RiskWeightedAssetOutstandingAmount900130 + $RiskWeightedAssetOutstandingAmount900131 + $RiskWeightedAssetOutstandingAmount900206 "/>
            </xsl:variable>
            <xsl:variable name="TotalRiskWeightedAssetOutstandingAmount900111tmp5">
                <xsl:value-of
                        select="$RiskWeightedAssetOutstandingAmount900207 + $RiskWeightedAssetOutstandingAmount900132 + $RiskWeightedAssetOutstandingAmount900133 + $RiskWeightedAssetOutstandingAmount900134 "/>
            </xsl:variable>


            <xsl:variable name="RiskWeightedAssetOutstandingAmount900136">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900136/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900137">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900137/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900213">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900213/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900138">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900138/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900214">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900214/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900139">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900139/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900215">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900215/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalRiskWeightedAssetOutstandingAmount900135">
                <xsl:value-of
                        select="$RiskWeightedAssetOutstandingAmount900136 + $RiskWeightedAssetOutstandingAmount900137 + $RiskWeightedAssetOutstandingAmount900213 + $RiskWeightedAssetOutstandingAmount900138 + $RiskWeightedAssetOutstandingAmount900214 + $RiskWeightedAssetOutstandingAmount900139 + $RiskWeightedAssetOutstandingAmount900215"/>
            </xsl:variable>

            <xsl:variable name="TotalRiskWeightedAssetOutstandingAmount900111">
                <xsl:value-of
                        select="$TotalRiskWeightedAssetOutstandingAmount900111tmp1 + $TotalRiskWeightedAssetOutstandingAmount900111tmp2 + $TotalRiskWeightedAssetOutstandingAmount900111tmp3 + $TotalRiskWeightedAssetOutstandingAmount900111tmp4 + $TotalRiskWeightedAssetOutstandingAmount900111tmp5 - $TotalRiskWeightedAssetOutstandingAmount900135"/>
            </xsl:variable>

            <!--6.-->
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900141">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900141/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900142">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900142/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900216">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900216/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900143">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900143/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900217">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900217/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900144">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900144/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900218">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900218/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalRiskWeightedAssetOutstandingAmount900140">
                <xsl:value-of
                        select="$RiskWeightedAssetOutstandingAmount900141 + $RiskWeightedAssetOutstandingAmount900142 + $RiskWeightedAssetOutstandingAmount900216 + $RiskWeightedAssetOutstandingAmount900143 + $RiskWeightedAssetOutstandingAmount900217 + $RiskWeightedAssetOutstandingAmount900144 + $RiskWeightedAssetOutstandingAmount900218"/>
            </xsl:variable>
            <!--7.-->
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900146">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900146/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900147">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900147/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900219">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900219/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900148">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900148/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900220">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900220/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900149">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900149/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900221">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900221/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalRiskWeightedAssetOutstandingAmount900145">
                <xsl:value-of
                        select="$RiskWeightedAssetOutstandingAmount900146 + $RiskWeightedAssetOutstandingAmount900147 + $RiskWeightedAssetOutstandingAmount900219 + $RiskWeightedAssetOutstandingAmount900148 +$RiskWeightedAssetOutstandingAmount900220 + $RiskWeightedAssetOutstandingAmount900149 + $RiskWeightedAssetOutstandingAmount900221"/>
            </xsl:variable>
            <!--8.-->
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900185">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900185/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900186">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900186/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900187">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900187/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900188">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900188/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalRiskWeightedAssetOutstandingAmount900184">
                <xsl:value-of
                        select="$RiskWeightedAssetOutstandingAmount900185 + $RiskWeightedAssetOutstandingAmount900186 + $RiskWeightedAssetOutstandingAmount900187 + $RiskWeightedAssetOutstandingAmount900188"/>
            </xsl:variable>
            <!--9.-->
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900151">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900151/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>

            <!--10.-->
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900154">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900154/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900155">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900155/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalRiskWeightedAssetOutstandingAmount900153">
                <xsl:value-of
                        select="$RiskWeightedAssetOutstandingAmount900154 + $RiskWeightedAssetOutstandingAmount900155"/>
            </xsl:variable>

            <xsl:variable name="RiskWeightedAssetOutstandingAmount900157">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900157/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900158">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900158/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900159">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900159/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900160">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900160/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900161">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900161/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalRiskWeightedAssetOutstandingAmount900156">
                <xsl:value-of
                        select="$RiskWeightedAssetOutstandingAmount900157 + $RiskWeightedAssetOutstandingAmount900158 + $RiskWeightedAssetOutstandingAmount900159 + $RiskWeightedAssetOutstandingAmount900160 + $RiskWeightedAssetOutstandingAmount900161"/>
            </xsl:variable>

            <xsl:variable name="RiskWeightedAssetOutstandingAmount900209">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900209/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900210">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900210/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900211">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900211/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900212">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900212/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900174">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900174/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalRiskWeightedAssetOutstandingAmount900208">
                <xsl:value-of
                        select="$RiskWeightedAssetOutstandingAmount900209 + $RiskWeightedAssetOutstandingAmount900210 + $RiskWeightedAssetOutstandingAmount900211 + $RiskWeightedAssetOutstandingAmount900212 + $RiskWeightedAssetOutstandingAmount900174"/>
            </xsl:variable>

            <xsl:variable name="RiskWeightedAssetOutstandingAmount900195">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900195/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900196">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900196/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900197">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900197/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount900198">
                <xsl:value-of
                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900198/RiskWeightedAssetOutstandingAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalRiskWeightedAssetOutstandingAmount900194">
                <xsl:value-of
                        select="$RiskWeightedAssetOutstandingAmount900195 + $RiskWeightedAssetOutstandingAmount900196 + $RiskWeightedAssetOutstandingAmount900197 + $RiskWeightedAssetOutstandingAmount900198"/>
            </xsl:variable>
            <xsl:variable name="TotalRiskWeightedAssetOutstandingAmount900152">
                <xsl:value-of
                         select="$TotalRiskWeightedAssetOutstandingAmount900153 + $TotalRiskWeightedAssetOutstandingAmount900156 + $RiskWeightedAssetOutstandingAmount900161+ $TotalRiskWeightedAssetOutstandingAmount900208 + $RiskWeightedAssetOutstandingAmount900174+ $TotalRiskWeightedAssetOutstandingAmount900194"/>
            </xsl:variable>

            <head>
                <META http-equiv="Content-Type" content="text/html; charset=TIS-620"/>
                <link rel="stylesheet" type="text/css" href="../../includes/css/style.css"/>
		<title>Specialized Financial Institutions Information System</title>
            </head>
            <body>
                <table width="98%" cellspacing="0" cellpadding="0" align="center">
                    <tr>
                        <td>
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="43">
                                        <img src="../../images/table001.gif" width="43" height="43"/>
                                    </td>
                                    <td background="../../images/table002.gif">
                                        <img src="../../images/table002.gif" width="362" height="43"/>
                                    </td>
                                    <td width="173">
                                        <img src="../../images/table003.gif" width="173" height="43"/>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="43" background="../../images/table004.gif">
                                        <img src="../../images/table004.gif" width="43" height="37"/>
                                    </td>
                                    <td width="95%">
	    			        <table>
					    <tr>
						<td align="left">
						    <button onclick="window.print()">Print</button>
						</td>
					    </tr>
					</table>
                                        <table class="displayTable" width="50%">
                                            <tr>
                                                <td class="bgGreen" width="20%">Organization :</td>
                                                <td width="80%" colspan="3">
                                                    <xsl:for-each select="DS_RWA/CommonHeader">
                                                        <xsl:value-of select="OrganizationId"/>
                                                    </xsl:for-each>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="bgGreen" width="20%">FI Reporting Group :</td>
                                                <!-- bgcolor="#9acd32"-->
                                                <td width="80%" colspan="3">
					                              116003 - ชุดรวมทุกสำนักงานในประเทศ
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="bgGreen" width="20%">Data Set Type :</td>
                                                <td width="80%" colspan="3">
                                                    <xsl:value-of select="DS_RWA/@name"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="bgGreen"></td>
						<td class="bgGreen" align="center">Day</td>
                                                <td class="bgGreen" align="center">Month</td>
                                                <td class="bgGreen" align="center">Year</td>
                                            </tr>
                                            <tr>
                                                <td class="bgGreen">Data Set Date :</td>
                                                <xsl:variable name="month">
                                                    <xsl:value-of
                                                            select="substring-after(substring-before(DataSetDate,'-'),'-')"/>
                                                </xsl:variable>
                                                <xsl:for-each select="DS_RWA/CommonHeader">
						<td hight="15px" align="center">
                                                        <xsl:value-of select="substring(DataSetDate,9,2)"/>
                                                    </td>
                                                    <td hight="15px" align="center">
                                                        <xsl:variable name="mo">
                                                            <xsl:value-of select="substring(DataSetDate,6,2)"/>
                                                        </xsl:variable>
                                                        <xsl:choose>
                                                            <xsl:when test="$mo = '1' or $mo = '01'">January</xsl:when>
                                                            <xsl:when test="$mo = '2' or $mo = '02'">February</xsl:when>
                                                            <xsl:when test="$mo = '3' or $mo = '03'">March</xsl:when>
                                                            <xsl:when test="$mo = '4' or $mo = '04'">April</xsl:when>
                                                            <xsl:when test="$mo = '5' or $mo = '05'">May</xsl:when>
                                                            <xsl:when test="$mo = '6' or $mo = '06'">June</xsl:when>
                                                            <xsl:when test="$mo = '7' or $mo = '07'">July</xsl:when>
                                                            <xsl:when test="$mo = '8' or $mo = '08'">August</xsl:when>
                                                            <xsl:when test="$mo = '9' or $mo = '09'">September
                                                            </xsl:when>
                                                            <xsl:when test="$mo = '10'">October</xsl:when>
                                                            <xsl:when test="$mo = '11'">November</xsl:when>
                                                            <xsl:when test="$mo = '12'">December</xsl:when>
                                                            <xsl:otherwise>
                                                                <xsl:if test="$month != 'NaN'">
                                                                    <xsl:value-of select="$month"/>
                                                                </xsl:if>
                                                            </xsl:otherwise>
                                                        </xsl:choose>
                                                    </td>
                                                    <td hight="15px" align="center">
                                                        <xsl:value-of select="substring(DataSetDate,1,4)"/>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>

                                        </table>


                                        <table width="100%" border="0" class="displayTable">
                                            <tr class="headTableXsl">
                                                <td colspan="2" align="center">
                                                    <xsl:value-of select="$RiskWeightedAssetsItem"/>
                                                </td>
                                                <td align="center">
                                                    <xsl:value-of select="$AssetOutstandingAmount"/>
                                                </td>
                                                <td align="center">
                                                    <xsl:value-of select="$RiskWeightedAssetOutstandingAmount"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900002"/>
                                                </td>
                                                <td class="labelXsl">
                                                    <xsl:value-of select="$name900002"/>
                                                </td>
                                                <td align="right" class="labelXsl">
                                                    <span style="color:#1500d4">
                                                        <xsl:if test="not(AssetOutstandingAmount='')">
                                                            <xsl:value-of
                                                                    select="format-number($TotalAssetOutstandingAmount900002,'###,###,###,###,###,###,###,##0.00')"/>
                                                        </xsl:if>
                                                    </span>
                                                </td>
                                                <td align="right" class="labelXsl">
                                                    <span style="color:#1500d4">
                                                        <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                            <xsl:value-of
                                                                    select="format-number($TotalRiskWeightedAssetOutstandingAmount900002,'###,###,###,###,###,###,###,##0.00')"/>
                                                        </xsl:if>
                                                    </span>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900003"/>
                                                </td>
                                                <td class=" paddingSub labelXsl">
                                                    <xsl:value-of select="$name900003"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900003">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900003,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900003,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>

                                            </tr>


                                            <tr>
                                                <td align="center" class="labelXsl">900004</td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900004"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900004">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900004,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900004,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td class="labelXsl" align="center">
                                                    <xsl:value-of select="900005"/>
                                                </td>
                                                <td class="labelXsl">
                                                    <xsl:value-of select="$name900005"/>
                                                </td>
                                                <td align="right" class="labelXsl">
                                                    <span style="color:#1500d4">
                                                        <xsl:if test="not(AssetOutstandingAmount='')">
                                                            <xsl:value-of
                                                                    select="format-number($TotalAssetOutstandingAmount900005,'###,###,###,###,###,###,###,##0.00')"/>
                                                        </xsl:if>
                                                    </span>
                                                </td>
                                                <td align="right" class="labelXsl">
                                                    <span style="color:#1500d4">
                                                        <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                            <xsl:value-of
                                                                    select="format-number($TotalRiskWeightedAssetOutstandingAmount900005,'###,###,###,###,###,###,###,##0.00')"/>
                                                        </xsl:if>
                                                    </span>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    900006
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900006"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900006">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount ='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900006,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900006,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">900007</td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900007"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900007">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:value-of
                                                                    select="format-number($AssetOutstandingAmount900007,'###,###,###,###,###,###,###,##0.00')"/>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900007,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900177"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900177"/>
                                                </td>
                                                <td align="right" class="labelXsl">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($AssetOutstandingAmount900177,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td align="right" class="labelXsl">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($RiskWeightedAssetOutstandingAmount900177,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900199"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900199"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900199">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900199,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900199,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900178"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900178"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900178">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900178,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900178,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900200"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900200"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900200">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900200,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900200,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900009"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900009"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900009">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900009,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900009,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900201"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900201"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900201">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900201,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900201,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900010"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900010"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900010">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900010,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900010,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900011"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900011"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900011">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900011,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900011,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900012"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900012"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900012">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900012,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900012,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900013"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900013"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900013">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900013,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900013,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900179"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900179"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900179">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900179,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900179,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900180"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900180"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900180">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900180,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900180,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900015"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900015"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900015">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900015,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900015,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900016"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900016"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900016">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900016,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900016,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900017"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900017"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900017">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900017,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900017,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900018"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900018"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900018">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900018,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900018,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900019"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900019"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900019">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900019,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900019,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900020"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900020"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900020">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900020,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900020,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900021"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900021"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900021">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900021,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900021,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900022"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900022"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900022">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900022,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900022,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900023"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900023"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900023">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900023,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900023,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900024"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900024"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900024">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900024,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900024,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900181"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900181"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900181">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900181,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900181,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900025"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900025"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900025">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900025,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900025,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900026"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900026"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900026">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900026,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900026,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900027"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900027"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900027">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900027,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900027,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900176"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900176"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900176">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900176,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900176,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900028"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900028"/>
                                                </td>

                                                <td align="right" class="labelXsl">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalAssetOutstandingAmount900028,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td align="right" class="labelXsl">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalRiskWeightedAssetOutstandingAmount900028,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900029"/>
                                                </td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name900029"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900029">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900029,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900029,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900030"/>
                                                </td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name900030"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900030">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900030,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900030,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900031"/>
                                                </td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name900031"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900031">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900031,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900031,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900032"/>
                                                </td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name900032"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900032">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900032,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900032,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900033"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900033"/>
                                                </td>

                                                <td align="right" class="labelXsl">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalAssetOutstandingAmount900033,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td align="right" class="labelXsl">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalRiskWeightedAssetOutstandingAmount900033,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900034"/>
                                                </td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name900034"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900034">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900034,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900034,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900035"/>
                                                </td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name900035"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900035">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900035,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900035,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900036"/>
                                                </td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name900036"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900036">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900036,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900036,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900037"/>
                                                </td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name900037"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900037">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900037,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900037,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900038"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900038"/>
                                                </td>

                                                <td align="right" class="labelXsl">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalAssetOutstandingAmount900038,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td align="right" class="labelXsl">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalRiskWeightedAssetOutstandingAmount900038,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900039"/>
                                                </td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name900039"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900039">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900039,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900039,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900040"/>
                                                </td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name900040"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900040">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900040,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900040,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900041"/>
                                                </td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name900041"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900041">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900041,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900041,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900042"/>
                                                </td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name900042"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900042">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900042,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900042,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900043"/>
                                                </td>
                                                <td class="labelXsl">
                                                    <xsl:value-of select="$name900043"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900043">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number(AssetOutstandingAmount,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number(RiskWeightedAssetOutstandingAmount,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900044"/>
                                                </td>
                                                <td class="labelXsl">
                                                    <xsl:value-of select="$name900044"/>
                                                </td>

                                                <td align="right" class="labelXsl">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalAssetOutstandingAmount900044,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td align="right" class="labelXsl">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalRiskWeightedAssetOutstandingAmount900044,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900045"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900045"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900045">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900045,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900045,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900046"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900046"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900046">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900046,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900046,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900047"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900047"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900047">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900047,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900047,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900048"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900048"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900048">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900048,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900048,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900049"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900049"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900049">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900049,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900049,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900050"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900050"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900050">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900050,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900050,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900072"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900072"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900072">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900072,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900072,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900073"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900073"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900073">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900073,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900073,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900202"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900202"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900202">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900202,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900202,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900074"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900074"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900074">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900074,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900074,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900075"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900075"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900075">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900075,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900075,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900076"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900076"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900076">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900076,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900076,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900077"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900077"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900077">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900077,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900077,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900078"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900078"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900078">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900078,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900078,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900079"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900079"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900079">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900079,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900079,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900080"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900080"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900080">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900080,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900080,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900081"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900081"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900081">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900081,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900081,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900182"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900182"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900182">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900182,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900182,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900082"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900082"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900082">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900082,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900082,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900083"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900083"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900083">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900083,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900083,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900084"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900084"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900084">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900084,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900084,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900085"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900085"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900085">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900085,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900085,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900086"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900086"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900086">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900086,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900086,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900087"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900087"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900087">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900087,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900087,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900088"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900088"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900088">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900088,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900088,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900089"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900089"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900089">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900089,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900089,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900090"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900090"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900090">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900090,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900090,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900183"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900183"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900183">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900183,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900183,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900092"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900092"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900092">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900092,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900092,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900093"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900093"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900093">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900093,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900093,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900094"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900094"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900094">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900094,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900094,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900095"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900095"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900095">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900095,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900095,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900096"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900096"/>
                                                </td>

                                                <td align="right" class="labelXsl">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalAssetOutstandingAmount900096,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td align="right" class="labelXsl">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalRiskWeightedAssetOutstandingAmount900096,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900097"/>
                                                </td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name900097"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900097">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900097,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900097,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900098"/>
                                                </td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name900098"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900098">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900098,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900098,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900099"/>
                                                </td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name900099"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900099">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900099,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900099,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900100"/>
                                                </td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name900100"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900100">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900100,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900100,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900101"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900101"/>
                                                </td>

                                                <td align="right" class="labelXsl">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalAssetOutstandingAmount900101,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td align="right" class="labelXsl">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalRiskWeightedAssetOutstandingAmount900101,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900102"/>
                                                </td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name900102"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900102">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900102,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900102,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900103"/>
                                                </td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name900103"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900103">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900103,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900103,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900104"/>
                                                </td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name900104"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900104">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900104,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900104,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900105"/>
                                                </td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name900105"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900105">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900105,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900105,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="right" class="labelXsl">
                                                    <xsl:value-of select="900106"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900106"/>
                                                </td>

                                                <td align="right" class="labelXsl">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalAssetOutstandingAmount900106,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td align="right" class="labelXsl">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalRiskWeightedAssetOutstandingAmount900106,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900107"/>
                                                </td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name900107"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900107">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900107,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900107,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900108"/>
                                                </td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name900108"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900108">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900108,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900108,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900109"/>
                                                </td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name900109"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900109">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900109,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900109,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900110"/>
                                                </td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name900110"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900110">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900110,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900110,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900111"/>
                                                </td>
                                                <td class="labelXsl">
                                                    <xsl:value-of select="$name900111"/>
                                                </td>

                                                <td align="right" class="labelXsl">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalAssetOutstandingAmount900111,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td align="right" class="labelXsl">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalRiskWeightedAssetOutstandingAmount900111,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900203"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900203"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900203">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900203,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900203,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900112"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900112"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900112">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900112,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900112,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900113"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900113"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900113">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900113,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900113,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900114"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900114"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900114">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900114,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900114,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900115"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900115"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900115">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900115,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900115,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900116"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900116"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900116">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900116,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900116,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900117"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900117"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900117">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900117,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900117,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900118"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900118"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900118">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900118,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900118,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900119"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900119"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900119">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900119,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900119,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900120"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900120"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900120">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900120,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900120,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900121"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900121"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900121">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900121,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900121,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900122"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900122"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900122">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900122,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900122,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900123"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900123"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900123">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900123,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900123,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900124"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900124"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900124">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900124,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900124,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900125"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900125"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900125">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900125,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900125,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900126"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900126"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900126">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900126,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900126,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900127"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900127"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900127">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900127,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900127,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900128"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900128"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900128">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900128,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900128,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900129"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900129"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900129">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900129,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900129,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900204"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900204"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900204">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900204,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900204,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900205"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900205"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900205">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900205,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900205,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900130"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900130"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900130">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900130,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900130,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900131"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900131"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900131">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900131,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900131,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900206"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900206"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900206">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900206,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900206,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900207"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900207"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900207">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900207,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900207,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900132"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900132"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900132">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900132,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900132,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900133"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900133"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900133">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900133,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900133,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900134"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900134"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900134">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900134,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900134,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900135"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900135"/>
                                                </td>

                                                <td align="right" class="labelXsl">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalAssetOutstandingAmount900135,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td align="right" class="labelXsl">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalRiskWeightedAssetOutstandingAmount900135,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900136"/>
                                                </td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name900136"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900136">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900136,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900136,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900137"/>
                                                </td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name900137"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900137">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900137,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900137,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900213"/>
                                                </td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name900213"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900213">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900213,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900213,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900138"/>
                                                </td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name900138"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900138">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900138,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900138,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900214"/>
                                                </td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name900214"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900214">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900214,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900214,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900139"/>
                                                </td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name900139"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900139">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900139,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900139,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900215"/>
                                                </td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name900215"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900215">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900215,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900215,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900140"/>
                                                </td>
                                                <td class="labelXsl">
                                                    <xsl:value-of select="$name900140"/>
                                                </td>

                                                <td align="right" class="labelXsl">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalAssetOutstandingAmount900140,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td align="right" class="labelXsl">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalRiskWeightedAssetOutstandingAmount900140,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900141"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900141"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900141">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900141,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900141,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900142"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900142"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900142">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900142,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900142,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900216"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900216"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900216">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900216,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900216,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900143"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900143"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900143">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900143,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900143,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900217"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900217"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900217">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900217,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900217,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900144"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900144"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900144">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900144,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900144,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900218"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900218"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900218">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900218,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900218,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900145"/>
                                                </td>
                                                <td class="labelXsl">
                                                    <xsl:value-of select="$name900145"/>
                                                </td>

                                                <td align="right" class="labelXsl">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalAssetOutstandingAmount900145,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td align="right" class="labelXsl">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalRiskWeightedAssetOutstandingAmount900145,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900146"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900146"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900146">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900146,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900146,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900147"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900147"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900147">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900147,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900147,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900219"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900219"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900219">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900219,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900219,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900148"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900148"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900148">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900148,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900148,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900220"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900220"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900220">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900220,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900220,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900149"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900149"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900149">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900149,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900149,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900221"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900221"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900221">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900221,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900221,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900184"/>
                                                </td>
                                                <td class="labelXsl">
                                                    <xsl:value-of select="$name900184"/>
                                                </td>

                                                <td align="right" class="labelXsl">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalAssetOutstandingAmount900184,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td align="right" class="labelXsl">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalRiskWeightedAssetOutstandingAmount900184,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900185"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900185"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900185">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900185,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900185,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900186"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900186"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900186">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900186,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900186,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900187"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900187"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900187">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900187,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900187,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900188"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900188"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900188">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900188,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900188,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900151"/>
                                                </td>
                                                <td class="labelXsl">
                                                    <xsl:value-of select="$name900151"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900151">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900151,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900151,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900152"/>
                                                </td>
                                                <td class="labelXsl">
                                                    <xsl:value-of select="$name900152"/>
                                                </td>

                                                <td align="right" class="labelXsl">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalAssetOutstandingAmount900152,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td align="right" class="labelXsl">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalRiskWeightedAssetOutstandingAmount900152,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900153"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900153"/>
                                                </td>

                                                <td align="right" class="labelXsl">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalAssetOutstandingAmount900153,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td align="right" class="labelXsl">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalRiskWeightedAssetOutstandingAmount900153,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900154"/>
                                                </td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name900154"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900154">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900154,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900154,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>

                                            <tr>
                                                <td align="center" class="labelXsl">

                                                    <xsl:value-of select="900155"/>
                                                </td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name900155"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900155">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900155,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900155,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900156"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900156"/>
                                                </td>

                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalAssetOutstandingAmount900156,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td align="right" class="labelXsl">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalRiskWeightedAssetOutstandingAmount900156,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900157"/>
                                                </td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name900157"/>
                                                </td>

                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900157">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900157,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900157,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900158"/>
                                                </td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name900158"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900158">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900158,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900158,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900159"/>
                                                </td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name900159"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900159">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900159,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900159,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900160"/>
                                                </td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name900160"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900160">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900160,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900160,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900161"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900161"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900161">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900161,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900161,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900208"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900208"/>
                                                </td>

                                                <td align="right" class="labelXsl">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalAssetOutstandingAmount900208,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td align="right" class="labelXsl">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalRiskWeightedAssetOutstandingAmount900208,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>

                                            </tr>


                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900209"/>
                                                </td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name900209"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900209">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900209,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900209,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900210"/>
                                                </td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name900210"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900210">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900210,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900210,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900211"/>
                                                </td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name900211"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900211">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900211,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900211,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900212"/>
                                                </td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name900212"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900212">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900212,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900212,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900174"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900174"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900174">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900174,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900174,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900194"/>
                                                </td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name900194"/>
                                                </td>

                                                <td align="right" class="labelXsl">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalAssetOutstandingAmount900194,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td align="right" class="labelXsl">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalRiskWeightedAssetOutstandingAmount900194,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900195"/>
                                                </td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name900195"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900195">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900195,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900195,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900196"/>
                                                </td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name900196"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900196">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900196,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900196,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900197"/>
                                                </td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name900197"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900197">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900197,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900197,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">
                                                    <xsl:value-of select="900198"/>
                                                </td>
                                                <td class="subOne labelXsl">
                                                    <xsl:value-of select="$name900198"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_RWA/DS_RWA_Content/ContentRecordGroup/RiskWeightedAssetsItem900198">
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(AssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($AssetOutstandingAmount900198,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4">
                                                            <xsl:if test="not(RiskWeightedAssetOutstandingAmount='')">
                                                                <xsl:value-of
                                                                        select="format-number($RiskWeightedAssetOutstandingAmount900198,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="28" background="../../images/table005.gif">
                                        <img src="../../images/table005.gif" width="28" height="37"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <img src="../../images/table006.gif" width="43" height="23" alt=""/>
                                    </td>
                                    <td background="../../images/table007.gif"></td>
                                    <td align="right">
                                        <img src="../../images/table008.gif" width="28" height="23" alt=""/>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>

            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
