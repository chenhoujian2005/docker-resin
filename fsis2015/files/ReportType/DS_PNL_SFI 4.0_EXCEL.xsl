<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <xsl:variable name="name920001">งบกำไรขาดทุน(กรณีธนาคารพาณิชย์/บริษัทเงินทุน/บริษัทเครดิตฟองซิเอร์)
            </xsl:variable>

            <xsl:variable name="name920002">&#160;&#160; 1. รายได้ดอกเบี้ยและเงินปันผล</xsl:variable>

            <xsl:variable name="name920003">&#160;&#160;&#160;&#160; 1.1 เงินให้สินเชื่อ</xsl:variable>

            <xsl:variable name="name920004">&#160;&#160;&#160;&#160;&#160;&#160; 1.1.1 เงินให้กู้ยืม</xsl:variable>

            <xsl:variable name="name920005">&#160;&#160;&#160;&#160;&#160;&#160; 1.1.2 เงินเบิกเกินบัญชี</xsl:variable>

            <xsl:variable name="name920006">&#160;&#160;&#160;&#160;&#160;&#160; 1.1.3 ตั๋วเงิน</xsl:variable>

            <xsl:variable name="name920007">&#160;&#160;&#160;&#160; 1.2 รายการระหว่างธนาคารและตลาดเงิน</xsl:variable>

            <xsl:variable name="name920008">&#160;&#160;&#160;&#160;&#160;&#160; 1.2.1 เงินฝาก</xsl:variable>

            <xsl:variable name="name920009">&#160;&#160;&#160;&#160;&#160;&#160; 1.2.2 เงินให้สินเชื่อ</xsl:variable>

            <xsl:variable name="name920010">&#160;&#160;&#160;&#160;&#160;&#160; 1.2.3 หลักทรัพย์ซื้อโดยมีสัญญาขายคืน
            </xsl:variable>

            <xsl:variable name="name920011">&#160;&#160;&#160;&#160; 1.3 การให้เช่าซื้อและสัญญาเช่าการเงิน
            </xsl:variable>

            <xsl:variable name="name920012">&#160;&#160;&#160;&#160; 1.4 การรับซื้อฝาก</xsl:variable>

            <xsl:variable name="name920013">&#160;&#160;&#160;&#160; 1.5 เงินลงทุน</xsl:variable>

            <xsl:variable name="name920014">&#160;&#160; 2. ค่าใช้จ่ายดอกเบี้ย</xsl:variable>

            <xsl:variable name="name920015">&#160;&#160;&#160;&#160; 2.1 เงินรับฝาก</xsl:variable>

            <xsl:variable name="name920016">&#160;&#160;&#160;&#160;&#160;&#160; 2.1.1 กระแสรายวัน</xsl:variable>

            <xsl:variable name="name920017">&#160;&#160;&#160;&#160;&#160;&#160; 2.1.2 ออมทรัพย์</xsl:variable>

            <xsl:variable name="name920018">&#160;&#160;&#160;&#160;&#160;&#160; 2.1.3 จ่ายคืนเมื่อสิ้นระยะเวลา
            </xsl:variable>

            <xsl:variable name="name920019">&#160;&#160;&#160;&#160;&#160;&#160; 2.1.4 ตั๋วสัญญาใช้เงิน / ตั๋วแลกเงิน
            </xsl:variable>

            <xsl:variable name="name920020">&#160;&#160;&#160;&#160;&#160;&#160; 2.1.5 บัตรเงินฝาก</xsl:variable>

            <xsl:variable name="name920021">&#160;&#160;&#160;&#160; 2.2 รายการระหว่างธนาคารและตลาดเงิน</xsl:variable>

            <xsl:variable name="name920022">&#160;&#160;&#160;&#160;&#160;&#160; 2.2.1 เงินรับฝาก</xsl:variable>

            <xsl:variable name="name920023">&#160;&#160;&#160;&#160;&#160;&#160; 2.2.2 เงินกู้ยืม</xsl:variable>

            <xsl:variable name="name920024">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 2.2.2.1 ในประเทศ
            </xsl:variable>

            <xsl:variable name="name920025">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 2.2.2.2 ต่างประเทศ
            </xsl:variable>

            <xsl:variable name="name920026">&#160;&#160;&#160;&#160;&#160;&#160; 2.2.3 หลักทรัพย์ขายโดยมีสัญญาซื้อคืน
            </xsl:variable>

            <xsl:variable name="name920027">&#160;&#160;&#160;&#160; 2.3 เงินกู้ยืม</xsl:variable>

            <xsl:variable name="name920028">&#160;&#160;&#160;&#160;&#160;&#160; 2.3.1 ระยะสั้น</xsl:variable>

            <xsl:variable name="name920029">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 2.3.1.1 ในประเทศ
            </xsl:variable>

            <xsl:variable name="name920030">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 2.3.1.2 ต่างประเทศ
            </xsl:variable>

            <xsl:variable name="name920031">&#160;&#160;&#160;&#160;&#160;&#160; 2.3.2 ระยะยาว</xsl:variable>

            <xsl:variable name="name920032">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 2.3.2.1 ในประเทศ
            </xsl:variable>

            <xsl:variable name="name920033">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 2.3.2.2 ต่างประเทศ
            </xsl:variable>

            <xsl:variable name="name920034">&#160;&#160;&#160;&#160; 2.4 ค่าธรรมเนียมในการกู้ยืมเงิน</xsl:variable>

            <xsl:variable name="name920035">&#160;&#160; 3. หนี้สูญและหนี้สงสัยจะสูญ</xsl:variable>

            <xsl:variable name="name920036">&#160;&#160;&#160;&#160; 3.1 หนี้สูญ</xsl:variable>

            <xsl:variable name="name920037">&#160;&#160;&#160;&#160; 3.2 หนี้สงสัยจะสูญ</xsl:variable>

            <xsl:variable name="name920038">&#160;&#160; 4. ขาดทุนจากการปรับโครงสร้างหนี้</xsl:variable>

            <xsl:variable name="name920039">&#160;&#160; 5. รายได้ที่มิใช่ดอกเบี้ย</xsl:variable>

            <xsl:variable name="name920040">&#160;&#160;&#160;&#160; 5.1 กำไร (ขาดทุน) จากเงินลงทุน</xsl:variable>

            <xsl:variable name="name920134">&#160;&#160;&#160;&#160;&#160;&#160; 5.1.1 เงินลงทุนในบัญชีเพื่อการค้า
                (Trading Book)
            </xsl:variable>

            <xsl:variable name="name920182">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 5.1.1.1 กำไร (ขาดทุน)
                จากการขายเงินลงทุนในหลักทรัพย์
            </xsl:variable>

            <xsl:variable name="name920217">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 5.1.1.1.1
                ตราสารหนี้
            </xsl:variable>

            <xsl:variable name="name920218">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
                5.1.1.1.1.1 หลักทรัพย์รัฐบาลและรัฐวิสาหกิจ
            </xsl:variable>

            <xsl:variable name="name920219">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
                5.1.1.1.1.2 ตราสารหนี้ภาคเอกชน
            </xsl:variable>

            <xsl:variable name="name920220">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
                5.1.1.1.1.3 ตราสารหนี้ต่างประเทศ
            </xsl:variable>

            <xsl:variable name="name920221">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
                5.1.1.1.1.4 ตราสารหนี้อื่น
            </xsl:variable>

            <xsl:variable name="name920222">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 5.1.1.1.2
                ตราสารทุน
            </xsl:variable>

            <xsl:variable name="name920223">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
                5.1.1.1.2.1 หลักทรัพย์จดทะเบียน
            </xsl:variable>

            <xsl:variable name="name920224">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
                5.1.1.1.2.2 หลักทรัพย์ต่างประเทศ
            </xsl:variable>

            <xsl:variable name="name920225">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
                5.1.1.1.2.3 หลักทรัพย์อื่น
            </xsl:variable>

            <xsl:variable name="name920226">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 5.1.1.1.3
                เงินลงทุนในลูกหนี้ที่รับโอนมา
            </xsl:variable>

            <xsl:variable name="name920227">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 5.1.1.2 กำไร (ขาดทุน)
                จากการตีราคาเงินลงทุน
            </xsl:variable>

            <xsl:variable name="name920228">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 5.1.1.3 กำไร (ขาดทุน)
                จากการโอนเปลี่ยนประเภทเงินลงทุน
            </xsl:variable>

            <xsl:variable name="name920247">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 5.1.1.4 กำไร (ขาดทุน)
                จากการคืนทุนของตราสารทุน หรือจากการไถ่ถอนตราสารหนี้
            </xsl:variable>

            <xsl:variable name="name920229">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 5.1.1.5 หัก
                ขาดทุนจากการด้อยค่าของเงินลงทุน
            </xsl:variable>

            <xsl:variable name="name920230">&#160;&#160;&#160;&#160;&#160;&#160; 5.1.2 เงินลงทุนในบัญชีเพื่อการธนาคาร
                (Banking Book)
            </xsl:variable>

            <xsl:variable name="name920231">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 5.1.2.1 กำไร (ขาดทุน)
                จากการขายเงินลงทุนในหลักทรัพย์
            </xsl:variable>

            <xsl:variable name="name920232">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 5.1.2.1.1
                ตราสารหนี้
            </xsl:variable>

            <xsl:variable name="name920233">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
                5.1.2.1.1.1 หลักทรัพย์รัฐบาลและรัฐวิสาหกิจ
            </xsl:variable>

            <xsl:variable name="name920234">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
                5.1.2.1.1.2 ตราสารหนี้ภาคเอกชน
            </xsl:variable>

            <xsl:variable name="name920235">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
                5.1.2.1.1.3 ตราสารหนี้ต่างประเทศ
            </xsl:variable>

            <xsl:variable name="name920236">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
                5.1.2.1.1.4 ตราสารหนี้อื่น
            </xsl:variable>

            <xsl:variable name="name920237">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 5.1.2.1.2
                ตราสารทุน
            </xsl:variable>

            <xsl:variable name="name920238">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
                5.1.2.1.2.1 หลักทรัพย์จดทะเบียน
            </xsl:variable>

            <xsl:variable name="name920239">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
                5.1.2.1.2.2 หลักทรัพย์ต่างประเทศ
            </xsl:variable>

            <xsl:variable name="name920240">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
                5.1.2.1.2.3 หลักทรัพย์อื่น
            </xsl:variable>

            <xsl:variable name="name920241">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 5.1.2.1.3
                เงินลงทุนในลูกหนี้ที่รับโอนมา
            </xsl:variable>

            <xsl:variable name="name920242">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 5.1.2.2 กำไร (ขาดทุน)
                จากการตีราคาเงินลงทุน
            </xsl:variable>

            <xsl:variable name="name920243">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 5.1.2.3 กำไร (ขาดทุน)
                จากการโอนเปลี่ยนประเภทเงินลงทุน
            </xsl:variable>

            <xsl:variable name="name920248">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 5.1.2.4 กำไร (ขาดทุน)
                จากการคืนทุนของตราสารทุน หรือจากการไถ่ถอนตราสารหนี้
            </xsl:variable>

            <xsl:variable name="name920244">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 5.1.2.5 หัก
                ขาดทุนจากการด้อยค่าของเงินลงทุน
            </xsl:variable>

            <xsl:variable name="name920055">&#160;&#160;&#160;&#160; 5.2 ส่วนแบ่งกำไร (ขาดทุน) จากเงินลงทุนตามวิธี
                ส่วนได้เสีย
            </xsl:variable>

            <xsl:variable name="name920056">&#160;&#160;&#160;&#160; 5.3 ค่าธรรมเนียมและบริการ</xsl:variable>

            <xsl:variable name="name920057">&#160;&#160;&#160;&#160;&#160;&#160; 5.3.1 การรับรอง รับอาวัล และค้ำประกัน
            </xsl:variable>

            <xsl:variable name="name920058">&#160;&#160;&#160;&#160;&#160;&#160; 5.3.2 บัตรเครดิต</xsl:variable>

            <xsl:variable name="name920059">&#160;&#160;&#160;&#160;&#160;&#160; 5.3.3 บริการบัตร ATM
                และบริการธนาคารอิเล็กทรอนิกส์อื่น ๆ
            </xsl:variable>

            <xsl:variable name="name920060">&#160;&#160;&#160;&#160;&#160;&#160; 5.3.4 บริการโอนเงินและเรียกเก็บเงิน
            </xsl:variable>

            <xsl:variable name="name920061">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 5.3.4.1 Bahtnet
            </xsl:variable>

            <xsl:variable name="name920062">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 5.3.4.2 Media Clearing
            </xsl:variable>

            <xsl:variable name="name920063">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 5.3.4.3 อื่นๆ
            </xsl:variable>

            <xsl:variable name="name920064">&#160;&#160;&#160;&#160;&#160;&#160; 5.3.5 บริการที่ปรึกษา</xsl:variable>

            <xsl:variable name="name920065">&#160;&#160;&#160;&#160;&#160;&#160; 5.3.6 ค่าธรรมเนียมจัดการ</xsl:variable>

            <xsl:variable name="name920066">&#160;&#160;&#160;&#160;&#160;&#160; 5.3.7 การจัดการออก
                การจัดจำหน่ายหลักทรัพย์ และการค้า ตราสารแห่งหนี้
            </xsl:variable>

            <xsl:variable name="name920067">&#160;&#160;&#160;&#160;&#160;&#160; 5.3.8
                การดูแลและเก็บรักษาหลักทรัพย์ของลูกค้า
            </xsl:variable>

            <xsl:variable name="name920068">&#160;&#160;&#160;&#160;&#160;&#160; 5.3.9 ค่าธรรมเนียมเกี่ยวกับเช็ค
            </xsl:variable>

            <xsl:variable name="name920069">&#160;&#160;&#160;&#160;&#160;&#160; 5.3.10
                ค่าธรรมเนียมการออกเล็ตเตอร์ออฟเครคิต
            </xsl:variable>

            <xsl:variable name="name920070">&#160;&#160;&#160;&#160;&#160;&#160; 5.3.11 ค่านายหน้า</xsl:variable>

            <xsl:variable name="name920071">&#160;&#160;&#160;&#160;&#160;&#160; 5.3.12 ค่าธรรมเนียมและบริการอื่น ๆ
            </xsl:variable>

            <xsl:variable name="name920072">&#160;&#160;&#160;&#160; 5.4 กำไร (ขาดทุน) จากการปริวรรต</xsl:variable>

            <xsl:variable name="name920245">&#160;&#160;&#160;&#160;&#160;&#160; 5.4.1 กำไร (ขาดทุน) จากการซื้อขาย
                แลกเปลี่ยนเงินตราต่างประเทศ
            </xsl:variable>

            <xsl:variable name="name920246">&#160;&#160;&#160;&#160;&#160;&#160; 5.4.2 กำไร (ขาดทุน)
                จากการแปลงค่าสินทรัพย์และหนี้สินที่เป็นเงินตราต่างประเทศ
            </xsl:variable>

            <xsl:variable name="name920073">&#160;&#160;&#160;&#160; 5.5 รายได้อื่น</xsl:variable>

            <xsl:variable name="name920074">&#160;&#160;&#160;&#160;&#160;&#160; 5.5.1
                กำไรจากการขายทรัพย์สินรอการขายและทรัพย์สินอื่น
            </xsl:variable>

            <xsl:variable name="name920075">&#160;&#160;&#160;&#160;&#160;&#160; 5.5.2 หนี้สูญได้รับคืน</xsl:variable>

            <xsl:variable name="name920249">เงินชดเชยโครงการนโยบายรัฐ (ต้นทุนเงินและค่าบริการ) [เฉพาะ SFI]
            </xsl:variable>

            <xsl:variable name="name920076">&#160;&#160;&#160;&#160;&#160;&#160; 5.5.3 อื่นๆ</xsl:variable>

            <xsl:variable name="name920077">&#160;&#160; 6. ค่าใช้จ่ายที่มิใช่ดอกเบี้ย</xsl:variable>

            <xsl:variable name="name920078">&#160;&#160;&#160;&#160; 6.1 ค่าใช้จ่ายเกี่ยวกับพนักงาน</xsl:variable>

            <xsl:variable name="name920079">&#160;&#160;&#160;&#160; 6.2 ค่าใช้จ่ายเกี่ยวกับอาคาร สถานที่ และอุปกรณ์
            </xsl:variable>

            <xsl:variable name="name920080">&#160;&#160;&#160;&#160;&#160;&#160; 6.2.1 ค่าเสื่อมราคาและการด้อยค่า
            </xsl:variable>

            <xsl:variable name="name920081">&#160;&#160;&#160;&#160;&#160;&#160; 6.2.2 ค่าบำรุงรักษาและซ่อมแซม
            </xsl:variable>

            <xsl:variable name="name920082">&#160;&#160;&#160;&#160;&#160;&#160; 6.2.3 ค่าเช่า</xsl:variable>

            <xsl:variable name="name920083">&#160;&#160;&#160;&#160;&#160;&#160; 6.2.4 ค่าภาษี</xsl:variable>

            <xsl:variable name="name920084">&#160;&#160;&#160;&#160;&#160;&#160; 6.2.5 อื่น ๆ</xsl:variable>

            <xsl:variable name="name920085">&#160;&#160;&#160;&#160; 6.3 ค่าภาษีอากร</xsl:variable>

            <xsl:variable name="name920086">&#160;&#160;&#160;&#160; 6.4 ค่าธรรมเนียมและบริการ</xsl:variable>

            <xsl:variable name="name920087">&#160;&#160;&#160;&#160; 6.5 ค่าตอบแทนกรรมการ</xsl:variable>

            <xsl:variable name="name920088">&#160;&#160;&#160;&#160; 6.6 ค่าใช้จ่ายอื่น</xsl:variable>

            <xsl:variable name="name920089">&#160;&#160;&#160;&#160;&#160;&#160; 6.6.1 ค่ารับรอง</xsl:variable>

            <xsl:variable name="name920090">&#160;&#160;&#160;&#160;&#160;&#160; 6.6.2
                เงินนำส่งเข้ากองทุนเพื่อการฟื้นฟูฯ / สถาบันประกันเงินฝาก
            </xsl:variable>

            <xsl:variable name="name920091">&#160;&#160;&#160;&#160;&#160;&#160; 6.6.3
                ขาดทุนจากการขายทรัพย์สินรอการขายและทรัพย์สินอื่น
            </xsl:variable>

            <xsl:variable name="name920092">&#160;&#160;&#160;&#160;&#160;&#160; 6.6.4
                ขาดทุนจากการด้อยค่าทรัพย์สินรอการขายและทรัพย์สินอื่น
            </xsl:variable>

            <xsl:variable name="name920093">&#160;&#160;&#160;&#160;&#160;&#160; 6.6.5 อื่นๆ</xsl:variable>

            <xsl:variable name="name920094">&#160;&#160; 7. กำไร (ขาดทุน) ก่อนภาษีเงินได้และก่อนรายการพิเศษ
            </xsl:variable>

            <xsl:variable name="name920095">&#160;&#160; 8. ภาษีเงินได้</xsl:variable>

            <xsl:variable name="name920096">&#160;&#160; 9. กำไร (ขาดทุน) ก่อนรายการพิเศษ</xsl:variable>

            <xsl:variable name="name920097">&#160;&#160; 10. รายการพิเศษ</xsl:variable>

            <xsl:variable name="name920098">&#160;&#160; 11. กำไร (ขาดทุน) สุทธิ</xsl:variable>

            <xsl:variable name="name920099">&#160;&#160; 12. กำไร (ขาดทุน) ต่อหุ้นขั้นพื้นฐาน</xsl:variable>

            <xsl:variable name="name920100">&#160;&#160;&#160;&#160; 12.1 กำไร (ขาดทุน) ก่อนรายการพิเศษ</xsl:variable>

            <xsl:variable name="name920101">&#160;&#160;&#160;&#160; 12.2 รายการพิเศษ</xsl:variable>

            <xsl:variable name="name920102">&#160;&#160;&#160;&#160; 12.3 กำไร (ขาดทุน) สุทธิ</xsl:variable>

            <xsl:variable name="name920103">&#160;&#160; 13. กำไร (ขาดทุน) ต่อหุ้นปรับลด</xsl:variable>

            <xsl:variable name="name920104">&#160;&#160;&#160;&#160; 13.1 กำไร (ขาดทุน) ก่อนรายการพิเศษ</xsl:variable>

            <xsl:variable name="name920105">&#160;&#160;&#160;&#160; 13.2 รายการพิเศษ</xsl:variable>

            <xsl:variable name="name920106">&#160;&#160;&#160;&#160; 13.3 กำไร (ขาดทุน) สุทธิ</xsl:variable>

            <xsl:variable name="name920107">&#160;&#160; 14. จำนวนพนักงาน (คน)</xsl:variable>

            <xsl:variable name="name920108">&#160;&#160; 15. จำนวนกรรมการ (คน)</xsl:variable>

            <xsl:variable name="name920109">&#160;&#160; 16. ภาษีเงินได้ของรายการพิเศษ</xsl:variable>

            <xsl:variable name="name920110">&#160;&#160; 17. รายได้และค่าใช้จ่ายระหว่างกัน
                (เฉพาะธนาคารพาณิชย์จดทะเบียนในประเทศที่มีสาขาในต่างประเทศ)
            </xsl:variable>

            <xsl:variable name="name920111">&#160;&#160;&#160;&#160; 17.1 รายได้</xsl:variable>

            <xsl:variable name="name920112">&#160;&#160;&#160;&#160;&#160;&#160; 17.1.1 ดอกเบี้ยรับ</xsl:variable>

            <xsl:variable name="name920113">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 17.1.1.1
                เงินให้กู้ยืมแก่สำนักงานใหญ่
            </xsl:variable>

            <xsl:variable name="name920114">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 17.1.1.2
                เงินฝากที่สำนักงานใหญ่
            </xsl:variable>

            <xsl:variable name="name920115">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 17.1.1.3
                เงินให้กู้ยืมแก่สาขาอื่น
            </xsl:variable>

            <xsl:variable name="name920116">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 17.1.1.4
                เงินฝากที่สาขาอื่น
            </xsl:variable>

            <xsl:variable name="name920117">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 17.1.1.5 อื่น ๆ
            </xsl:variable>

            <xsl:variable name="name920118">&#160;&#160;&#160;&#160;&#160;&#160; 17.1.2 ค่าธรรมเนียมรับ</xsl:variable>

            <xsl:variable name="name920119">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 17.1.2.1
                ตั๋วเงินค่าสินค้าเข้า
            </xsl:variable>

            <xsl:variable name="name920120">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 17.1.2.2
                ตั๋วเงินค่าสินค้าออก
            </xsl:variable>

            <xsl:variable name="name920121">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 17.1.2.3
                การโอนเงินและเรียกเก็บเงินตามตั๋วเงิน
            </xsl:variable>

            <xsl:variable name="name920122">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 17.1.2.4 อื่น ๆ
            </xsl:variable>

            <xsl:variable name="name920123">&#160;&#160;&#160;&#160; 17.2 ค่าใช้จ่าย</xsl:variable>

            <xsl:variable name="name920124">&#160;&#160;&#160;&#160;&#160;&#160; 17.2.1 ดอกเบี้ยจ่าย</xsl:variable>

            <xsl:variable name="name920125">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 17.2.1.1
                เงินลงทุนของสำนักงานใหญ่ที่สาขาในต่างประเทศ (Fund Allocated)
            </xsl:variable>

            <xsl:variable name="name920126">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 17.2.1.2
                เงินกู้ยืมจากสำนักงานใหญ่
            </xsl:variable>

            <xsl:variable name="name920127">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 17.2.1.3
                เงินรับฝากจากสำนักงานใหญ่
            </xsl:variable>

            <xsl:variable name="name920128">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 17.2.1.4
                เงินกู้ยืมจากสาขาอื่น
            </xsl:variable>

            <xsl:variable name="name920129">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 17.2.1.5
                เงินรับฝากจากสาขาอื่น
            </xsl:variable>

            <xsl:variable name="name920130">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 17.2.1.6 อื่น ๆ
            </xsl:variable>

            <xsl:variable name="name920131">&#160;&#160;&#160;&#160;&#160;&#160; 17.2.2 ค่าธรรมเนียมจ่าย</xsl:variable>

            <xsl:variable name="name920132">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 17.2.2.1 ค่าจัดการ
                (Management Fee)
            </xsl:variable>

            <xsl:variable name="name920133">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 17.2.2.2 อื่น ๆ
            </xsl:variable>


            <xsl:variable name="Amount920004">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920004/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920005">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920005/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920006">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920006/Amount"/>
            </xsl:variable>
            <xsl:variable name="TotalAmount920003">
                <xsl:value-of select="$Amount920004 + $Amount920005 + $Amount920006 "/>
            </xsl:variable>

            <xsl:variable name="Amount920008">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920008/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920009">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920009/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920010">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920010/Amount"/>
            </xsl:variable>
            <xsl:variable name="TotalAmount920007">
                <xsl:value-of select="$Amount920008 + $Amount920009 + $Amount920010 "/>
            </xsl:variable>

            <xsl:variable name="Amount920011">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920011/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920012">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920012/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920013">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920013/Amount"/>
            </xsl:variable>
            <xsl:variable name="TotalAmount920002">
                <xsl:value-of
                        select="$TotalAmount920003 + $TotalAmount920007 + $Amount920011 + $Amount920012 + $Amount920013 "/>
            </xsl:variable>

            <xsl:variable name="Amount920016">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920016/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920017">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920017/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920018">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920018/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920019">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920019/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920020">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920020/Amount"/>
            </xsl:variable>
            <xsl:variable name="TotalAmount920015">
                <xsl:value-of select="$Amount920016 + $Amount920017 + $Amount920018 + $Amount920019 + $Amount920020 "/>
            </xsl:variable>

            <xsl:variable name="Amount920022">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920022/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920024">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920024/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920025">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920025/Amount"/>
            </xsl:variable>
            <xsl:variable name="TotalAmount920023">
                <xsl:value-of select="$Amount920024 + $Amount920025"/>
            </xsl:variable>
            <xsl:variable name="Amount920026">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920026/Amount"/>
            </xsl:variable>
            <xsl:variable name="TotalAmount920021">
                <xsl:value-of select="$Amount920022 + $TotalAmount920023 + $Amount920026"/>
            </xsl:variable>


            <xsl:variable name="Amount920029">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920029/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920030">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920030/Amount"/>
            </xsl:variable>
            <xsl:variable name="TotalAmount920028">
                <xsl:value-of select="$Amount920029 + $Amount920030"/>
            </xsl:variable>
            <xsl:variable name="Amount920032">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920032/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920033">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920033/Amount"/>
            </xsl:variable>
            <xsl:variable name="TotalAmount920031">
                <xsl:value-of select="$Amount920032 + $Amount920033"/>
            </xsl:variable>
            <xsl:variable name="TotalAmount920027">
                <xsl:value-of select="$TotalAmount920028 + $TotalAmount920031"/>
            </xsl:variable>
            <xsl:variable name="Amount920034">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920034/Amount"/>
            </xsl:variable>
            <xsl:variable name="TotalAmount920014">
                <xsl:value-of select="$TotalAmount920015 + $TotalAmount920021 + $TotalAmount920027 + $Amount920034"/>
            </xsl:variable>

            <xsl:variable name="Amount920036">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920036/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920037">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920037/Amount"/>
            </xsl:variable>
            <xsl:variable name="TotalAmount920035">
                <xsl:value-of select="$Amount920036 + $Amount920037"/>
            </xsl:variable>
            <xsl:variable name="Amount920038">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920038/Amount"/>
            </xsl:variable>


            <xsl:variable name="Amount920218">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920218/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920219">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920219/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920220">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920220/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920221">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920221/Amount"/>
            </xsl:variable>
            <xsl:variable name="TotalAmount920217">
                <xsl:value-of select="$Amount920218 + $Amount920219 + $Amount920220 + $Amount920221"/>
            </xsl:variable>

            <xsl:variable name="Amount920223">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920223/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920224">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920224/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920225">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920225/Amount"/>
            </xsl:variable>
            <xsl:variable name="TotalAmount920222">
                <xsl:value-of select="$Amount920223 + $Amount920224 + $Amount920225"/>
            </xsl:variable>

            <xsl:variable name="Amount920226">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920226/Amount"/>
            </xsl:variable>

            <xsl:variable name="TotalAmount920182">
                <xsl:value-of select="$TotalAmount920217 + $TotalAmount920222 + $Amount920226"/>
            </xsl:variable>

            <xsl:variable name="Amount920227">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920227/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920228">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920228/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920247">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920247/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920229">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920229/Amount"/>
            </xsl:variable>

            <xsl:variable name="TotalAmount920134">
                <xsl:value-of
                        select="$TotalAmount920182 + $Amount920227 + $Amount920228 + $Amount920247 - $Amount920229 "/>
            </xsl:variable>

            <xsl:variable name="Amount920233">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920233/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920234">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920234/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920235">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920235/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920236">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920236/Amount"/>
            </xsl:variable>

            <xsl:variable name="TotalAmount920232">
                <xsl:value-of select="$Amount920233 + $Amount920234 + $Amount920235 + $Amount920236"/>
            </xsl:variable>

            <xsl:variable name="Amount920238">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920238/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920239">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920239/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920240">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920240/Amount"/>
            </xsl:variable>
            <xsl:variable name="TotalAmount920237">
                <xsl:value-of select="$Amount920238 + $Amount920239 + $Amount920240"/>
            </xsl:variable>

            <xsl:variable name="Amount920241">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920241/Amount"/>
            </xsl:variable>

            <xsl:variable name="TotalAmount920231">
                <xsl:value-of select="$TotalAmount920232 + $TotalAmount920237 + $Amount920241"/>
            </xsl:variable>

            <xsl:variable name="Amount920242">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920242/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920243">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920243/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920248">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920248/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920244">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920244/Amount"/>
            </xsl:variable>


            <xsl:variable name="TotalAmount920230">
                <xsl:value-of
                        select="$TotalAmount920231 + $Amount920242+ $Amount920243+ $Amount920248 - $Amount920244"/>
            </xsl:variable>

            <xsl:variable name="TotalAmount920040">
                <xsl:value-of select="$TotalAmount920134 + $TotalAmount920230"/>
            </xsl:variable>

            <xsl:variable name="Amount920055">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920055/Amount"/>
            </xsl:variable>

            <xsl:variable name="Amount920061">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920061/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920062">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920062/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920063">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920063/Amount"/>
            </xsl:variable>
            <xsl:variable name="TotalAmount920060">
                <xsl:value-of select="$Amount920061 + $Amount920062 + $Amount920063"/>
            </xsl:variable>

            <xsl:variable name="Amount920057">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920057/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920058">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920058/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920059">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920059/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920064">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920064/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920065">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920065/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920066">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920066/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920067">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920067/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920068">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920068/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920069">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920069/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920070">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920070/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920071">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920071/Amount"/>
            </xsl:variable>
            <xsl:variable name="TotalAmount920056">
                <xsl:value-of
                        select="$Amount920057 + $Amount920058 + $Amount920059 + $TotalAmount920060 + $Amount920064 + $Amount920065 + $Amount920066 + $Amount920067 + $Amount920068 + $Amount920069 + $Amount920070 + $Amount920071 "/>
            </xsl:variable>

            <xsl:variable name="Amount920245">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920245/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920246">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920246/Amount"/>
            </xsl:variable>
            <xsl:variable name="TotalAmount920072">
                <xsl:value-of select="$Amount920245 + $Amount920246"/>
            </xsl:variable>

            <xsl:variable name="Amount920074">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920074/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920075">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920075/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920249">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920249/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920076">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920076/Amount"/>
            </xsl:variable>

            <xsl:variable name="TotalAmount920073">
                <xsl:value-of select="$Amount920074 + $Amount920075 + $Amount920249 + $Amount920076"/>
            </xsl:variable>

            <xsl:variable name="TotalAmount920039">
                <xsl:value-of
                        select="$TotalAmount920040 + $Amount920055 + $TotalAmount920056 + $TotalAmount920072 + $TotalAmount920073"/>
            </xsl:variable>

            <xsl:variable name="Amount920080">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920080/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920081">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920081/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920082">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920082/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920083">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920083/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920084">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920084/Amount"/>
            </xsl:variable>

            <xsl:variable name="TotalAmount920079">
                <xsl:value-of select="$Amount920080 + $Amount920081 + $Amount920082 + $Amount920083 + $Amount920084"/>
            </xsl:variable>

            <xsl:variable name="Amount920089">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920089/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920090">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920090/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920091">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920091/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920092">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920092/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920093">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920093/Amount"/>
            </xsl:variable>
            <xsl:variable name="TotalAmount920088">
                <xsl:value-of select="$Amount920089 + $Amount920090 + $Amount920091 + $Amount920092 + $Amount920093"/>
            </xsl:variable>

            <xsl:variable name="Amount920078">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920078/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920085">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920085/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920086">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920086/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920087">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920087/Amount"/>
            </xsl:variable>

            <xsl:variable name="TotalAmount920077">
                <xsl:value-of
                        select="$Amount920078 + $TotalAmount920079 + $Amount920085 + $Amount920086 + $Amount920087 + $TotalAmount920088"/>
            </xsl:variable>

            <xsl:variable name="Amount920094">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920094/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920095">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920095/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920096">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920096/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920097">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920097/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920098">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920098/Amount"/>
            </xsl:variable>

            <xsl:variable name="Amount920100">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920100/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920101">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920101/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920102">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920102/Amount"/>
            </xsl:variable>
            <xsl:variable name="TotalAmount920099">
                <xsl:value-of select="$Amount920100 + $Amount920101 + $Amount920102"/>
            </xsl:variable>

            <xsl:variable name="Amount920104">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920104/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920105">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920105/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920106">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920106/Amount"/>
            </xsl:variable>
            <xsl:variable name="TotalAmount920103">
                <xsl:value-of select="$Amount920104 + $Amount920105 + $Amount920106"/>
            </xsl:variable>

            <xsl:variable name="Amount920107">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920107/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920108">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920108/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920109">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920109/Amount"/>
            </xsl:variable>

            <xsl:variable name="Amount920113">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920113/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920114">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920114/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920115">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920115/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920116">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920116/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920117">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920117/Amount"/>
            </xsl:variable>
            <xsl:variable name="TotalAmount920112">
                <xsl:value-of select="$Amount920113 + $Amount920114 + $Amount920115 + $Amount920116 + $Amount920117"/>
            </xsl:variable>

            <xsl:variable name="Amount920119">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920119/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920120">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920120/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920121">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920121/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920122">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920122/Amount"/>
            </xsl:variable>
            <xsl:variable name="TotalAmount920118">
                <xsl:value-of select="$Amount920119 + $Amount920120 + $Amount920121 + $Amount920122"/>
            </xsl:variable>

            <xsl:variable name="Amount920125">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920125/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920126">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920126/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920127">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920127/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920128">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920128/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920129">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920129/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920130">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920130/Amount"/>
            </xsl:variable>
            <xsl:variable name="TotalAmount920124">
                <xsl:value-of
                        select="$Amount920125 + $Amount920126 + $Amount920127 + $Amount920128 + $Amount920129 + $Amount920130"/>
            </xsl:variable>

            <xsl:variable name="Amount920132">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920132/Amount"/>
            </xsl:variable>
            <xsl:variable name="Amount920133">
                <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920133/Amount"/>
            </xsl:variable>
            <xsl:variable name="TotalAmount920131">
                <xsl:value-of select="$Amount920132 + $Amount920133"/>
            </xsl:variable>
            <xsl:variable name="TotalAmount920123">
                <xsl:value-of select="$TotalAmount920124 + $TotalAmount920131"/>
            </xsl:variable>

            <xsl:variable name="TotalAmount920111">
                <xsl:value-of select="$TotalAmount920112 + $TotalAmount920118"/>
            </xsl:variable>
            <xsl:variable name="TotalAmount920110">
                <xsl:value-of select="$TotalAmount920111 + $TotalAmount920123"/>
            </xsl:variable>
            <head>
                <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            </head>
            <body>
                <table class="displayTable" width="50%" border="1">
                    <tr>
                        <td class="bgGreen">Organization ID:</td>
                        <td width="80%" colspan="3">
                            <xsl:value-of select="DS_PNL/CommonHeader/OrganizationId"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="bgGreen">FI Reporting Group ID:</td>
                        <td width="80%" colspan="3">
                            116003 - ชุดรวมทุกสำนักงานในประเทศ
                        </td>
                    </tr>
                    <tr>
                        <td class="bgGreen">Data Set Type :</td>
                        <td width="80%" colspan="3">
                            <xsl:value-of select="DS_PNL/@name"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="bgGreen">Data Set Period Month :</td>
                        <td width="80%" colspan="3">
                            <xsl:value-of select="DS_PNL/DS_PNL_Header/DataSetPeriodMonth"/>
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
                            <xsl:value-of select="substring-after(substring-before(DataSetDate,'-'),'-')"/>
                        </xsl:variable>
                        <xsl:for-each select="DS_PNL/CommonHeader">
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
                                    <xsl:when test="$mo = '9' or $mo = '09'">September</xsl:when>
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

                <!--******* data in table ******** -->

                <table width="100%" class="displayTable" border="1">
                    <tr class="headTableXsl">
                        <td colspan="3">Profit and Loss</td>
                        <!--align="center"-->
                    </tr>
                    <tr class="headTableXsl">
                        <td colspan="2" width="80%">Profit and Loss Item</td>
                        <td width="20%">Amount</td>
                    </tr>
                    <tr>
                        <td width="10%" align="center">920001</td>
                        <td width="80%" align="left" class="labelXsl">
                            <xsl:value-of select="$name920001"/>
                        </td>
                        <td width="10%" class="labelXsl" align="right"></td>
                    </tr>
                    <tr>
                        <td width="10%" align="center">920002</td>
                        <td width="80%" align="left" class="paddingSub labelXsl">
                            <xsl:value-of select="$name920002"/>
                        </td>
                        <td width="10%" class="labelXsl" align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select='format-number($TotalAmount920002,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td width="10%" class="labelXsl" align="center">920003</td>
                        <td width="80%" align="left" class="subOne labelXsl">
                            <xsl:value-of select="$name920003"/>
                        </td>
                        <td width="10%" class="labelXsl" align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select='format-number($TotalAmount920003,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920004</td>
                        <td width="80%" align="left" class="subTwo labelXsl">
                            <xsl:value-of select="$name920004"/>
                        </td>
                        <td width="10%" class="labelXsl" align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of select='format-number($Amount920004,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920005</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920005"/>
                        </td>
                        <td width="10%" class="labelXsl" align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of select='format-number($Amount920005,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920006</td>

                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920006"/>
                        </td>
                        <td width="10%" class="labelXsl" align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of select='format-number($Amount920006,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920007</td>
                        <td width="80%" class="subOne labelXsl" align="left">
                            <xsl:value-of select="$name920007"/>
                        </td>
                        <td width="10%" class="labelXsl" align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select='format-number($TotalAmount920007,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920008</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920008"/>
                        </td>
                        <td width="10%" class="labelXsl" align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of select='format-number($Amount920008,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920009</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920009"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of select='format-number($Amount920009,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920010</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920010"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of select='format-number($Amount920010,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920011</td>
                        <td width="80%" class="subOne labelXsl" align="left">
                            <xsl:value-of select="$name920011"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of select='format-number($Amount920011,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920012</td>
                        <td width="80%" class="subOne labelXsl" align="left">
                            <xsl:value-of select="$name920012"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of select='format-number($Amount920012,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920013</td>
                        <td width="80%" class="subOne labelXsl" align="left">
                            <xsl:value-of select="$name920013"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of select='format-number($Amount920013,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>

                    <tr>
                        <td class="labelXsl" width="10%" align="center">920014</td>
                        <td width="80%" class="paddingSub labelXsl" align="left">
                            <xsl:value-of select="$name920014"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select='format-number($TotalAmount920014,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920015</td>
                        <td width="80%" class="subOne labelXsl" align="left">
                            <xsl:value-of select="$name920015"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select='format-number($TotalAmount920015,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">930016</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920016"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of select='format-number($Amount920016,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">930017</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920017"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of select='format-number($Amount920017,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">930018</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920018"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of select='format-number($Amount920018,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">930019</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920019"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of select='format-number($Amount920019,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920020</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920020"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of select='format-number($Amount920020,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920021</td>
                        <td width="80%" class="subOne labelXsl" align="left">
                            <xsl:value-of select="$name920021"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select='format-number($TotalAmount920021,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920022</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920022"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of select='format-number($Amount920022,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920023</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920023"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select='format-number($TotalAmount920023,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920024</td>
                        <td width="80%" class="subThree labelXsl" align="left">
                            <xsl:value-of select="$name920024"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of select='format-number($Amount920024,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920025</td>
                        <td width="80%" class="subThree labelXsl" align="left">
                            <xsl:value-of select="$name920025"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of select='format-number($Amount920025,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920026</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920026"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of select='format-number($Amount920026,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920027</td>
                        <td width="80%" class="subOne labelXsl" align="left">
                            <xsl:value-of select="$name920027"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select='format-number($TotalAmount920027,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920028</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920028"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select='format-number($TotalAmount920028,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920029</td>
                        <td width="80%" class="subThree labelXsl" align="left">
                            <xsl:value-of select="$name920029"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of select='format-number($Amount920029,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920030</td>
                        <td width="80%" class="subThree labelXsl" align="left">
                            <xsl:value-of select="$name920030"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of select='format-number($Amount920030,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920031</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920031"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select='format-number($TotalAmount920031,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920032</td>
                        <td width="80%" class="subThree labelXsl" align="left">
                            <xsl:value-of select="$name920032"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of select='format-number($Amount920032,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920033</td>
                        <td width="80%" class="subThree labelXsl" align="left">
                            <xsl:value-of select="$name920033"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of select='format-number($Amount920033,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920034</td>
                        <td width="80%" class="subOne labelXsl" align="left">
                            <xsl:value-of select="$name920034"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of select='format-number($Amount920034,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920035</td>
                        <td width="80%" class="paddingSub labelXsl" align="left">
                            <xsl:value-of select="$name920035"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select='format-number($TotalAmount920035,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920036</td>
                        <td width="80%" class="subOne labelXsl" align="left">
                            <xsl:value-of select="$name920036"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of select='format-number($Amount920036,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920037</td>
                        <td width="80%" class="subOne labelXsl" align="left">
                            <xsl:value-of select="$name920037"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of select='format-number($Amount920037,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920038</td>
                        <td width="80%" class="paddingSub labelXsl" align="left">
                            <xsl:value-of select="$name920038"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of select='format-number($Amount920038,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920039</td>
                        <td width="80%" class="paddingSub labelXsl" align="left">
                            <xsl:value-of select="$name920039"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select='format-number($TotalAmount920039,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920040</td>
                        <td width="80%" class="subOne labelXsl" align="left">
                            <xsl:value-of select="$name920040"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select='format-number($TotalAmount920040,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920134</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920134"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select='format-number($TotalAmount920134,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920182</td>
                        <td width="80%" class="subThree labelXsl" align="left">
                            <xsl:value-of select="$name920182"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select='format-number($TotalAmount920182,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920217</td>
                        <td width="80%" class="subFour labelXsl" align="left">
                            <xsl:value-of select="$name920217"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select='format-number($TotalAmount920217,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920218</td>
                        <td width="80%" class="subFive labelXsl" align="left">
                            <xsl:value-of select="$name920218"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920218">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:value-of select='format-number($Amount920218,"#,###,###,###,###,###,##0.00")'/>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920219</td>
                        <td width="80%" class="subFive labelXsl" align="left">
                            <xsl:value-of select="$name920219"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920219">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:value-of select='format-number($Amount920219,"#,###,###,###,###,###,##0.00")'/>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920220</td>
                        <td width="80%" class="subFive labelXsl" align="left">
                            <xsl:value-of select="$name920220"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920220">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:value-of select='format-number($Amount920220,"#,###,###,###,###,###,##0.00")'/>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920221</td>
                        <td width="80%" class="subFive labelXsl" align="left">
                            <xsl:value-of select="$name920221"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920221">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:value-of select='format-number($Amount920221,"#,###,###,###,###,###,##0.00")'/>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920222</td>
                        <td width="80%" class="subFour labelXsl" align="left">
                            <xsl:value-of select="$name920222"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select='format-number($TotalAmount920222,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920223</td>
                        <td width="80%" class="subFive labelXsl" align="left">
                            <xsl:value-of select="$name920223"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920223">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:value-of select='format-number($Amount920223,"#,###,###,###,###,###,##0.00")'/>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920224</td>
                        <td width="80%" class="subFive labelXsl" align="left">
                            <xsl:value-of select="$name920224"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920224">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:value-of select='format-number($Amount920224,"#,###,###,###,###,###,##0.00")'/>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920225</td>
                        <td width="80%" class="subFive labelXsl" align="left">
                            <xsl:value-of select="$name920225"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920225">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:value-of select='format-number($Amount920225,"#,###,###,###,###,###,##0.00")'/>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920226</td>
                        <td width="80%" class="subFour labelXsl" align="left">
                            <xsl:value-of select="$name920226"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920226">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:value-of select='format-number($Amount920226,"#,###,###,###,###,###,##0.00")'/>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920227</td>
                        <td width="80%" class="subThree labelXsl" align="left">
                            <xsl:value-of select="$name920227"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920227">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:value-of select='format-number($Amount920227,"#,###,###,###,###,###,##0.00")'/>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920228</td>
                        <td width="80%" class="subThree labelXsl" align="left">
                            <xsl:value-of select="$name920228"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920228">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:value-of select='format-number($Amount920228,"#,###,###,###,###,###,##0.00")'/>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920247</td>
                        <td width="80%" class="subThree labelXsl" align="left">
                            <xsl:value-of select="$name920247"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920247">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:value-of select='format-number($Amount920247,"#,###,###,###,###,###,##0.00")'/>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920229</td>
                        <td width="80%" class="subThree labelXsl" align="left">
                            <xsl:value-of select="$name920229"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920229">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:value-of select='format-number($Amount920229,"#,###,###,###,###,###,##0.00")'/>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920230</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920230"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select='format-number($TotalAmount920230,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920231</td>
                        <td width="80%" class="subThree labelXsl" align="left">
                            <xsl:value-of select="$name920231"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select='format-number($TotalAmount920231,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920232</td>
                        <td width="80%" class="subFour labelXsl" align="left">
                            <xsl:value-of select="$name920232"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select='format-number($TotalAmount920232,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920233</td>
                        <td width="80%" class="subFive labelXsl" align="left">
                            <xsl:value-of select="$name920233"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920233">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:value-of select='format-number($Amount920233,"#,###,###,###,###,###,##0.00")'/>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920234</td>
                        <td width="80%" class="subFive labelXsl" align="left">
                            <xsl:value-of select="$name920234"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920234">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:value-of select='format-number($Amount920234,"#,###,###,###,###,###,##0.00")'/>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920235</td>
                        <td width="80%" class="subFive labelXsl" align="left">
                            <xsl:value-of select="$name920235"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920235">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:value-of select='format-number($Amount920235,"#,###,###,###,###,###,##0.00")'/>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920236</td>
                        <td width="80%" class="subFive labelXsl" align="left">
                            <xsl:value-of select="$name920236"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920236">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:value-of select='format-number($Amount920236,"#,###,###,###,###,###,##0.00")'/>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920237</td>
                        <td width="80%" class="subFour labelXsl" align="left">
                            <xsl:value-of select="$name920237"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select='format-number($TotalAmount920237,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920238</td>
                        <td width="80%" class="subFive labelXsl" align="left">
                            <xsl:value-of select="$name920238"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920238">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:value-of select='format-number($Amount920238,"#,###,###,###,###,###,##0.00")'/>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920239</td>
                        <td width="80%" class="subFive labelXsl" align="left">
                            <xsl:value-of select="$name920239"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920239">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:value-of select='format-number($Amount920239,"#,###,###,###,###,###,##0.00")'/>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920240</td>
                        <td width="80%" class="subFive labelXsl" align="left">
                            <xsl:value-of select="$name920240"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920240">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:value-of select='format-number($Amount920240,"#,###,###,###,###,###,##0.00")'/>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920241</td>
                        <td width="80%" class="subFour labelXsl" align="left">
                            <xsl:value-of select="$name920241"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920241">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:value-of select='format-number($Amount920241,"#,###,###,###,###,###,##0.00")'/>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920242</td>
                        <td width="80%" class="subThree labelXsl" align="left">
                            <xsl:value-of select="$name920242"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920242">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:value-of select='format-number($Amount920242,"#,###,###,###,###,###,##0.00")'/>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920243</td>
                        <td width="80%" class="subThree labelXsl" align="left">
                            <xsl:value-of select="$name920243"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920243">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:value-of select='format-number($Amount920243,"#,###,###,###,###,###,##0.00")'/>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920248</td>
                        <td width="80%" class="subThree labelXsl" align="left">
                            <xsl:value-of select="$name920248"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920248">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:value-of select='format-number($Amount920248,"#,###,###,###,###,###,##0.00")'/>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920244</td>
                        <td width="80%" class="subThree labelXsl" align="left">
                            <xsl:value-of select="$name920244"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920244">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:value-of select='format-number($Amount920244,"#,###,###,###,###,###,##0.00")'/>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920055</td>
                        <td width="80%" class="subOne labelXsl" align="left">
                            <xsl:value-of select="$name920055"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920055">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920055 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920055,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920056</td>
                        <td width="80%" class="subOne labelXsl" align="left">
                            <xsl:value-of select="$name920056"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select='format-number($TotalAmount920056,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920057</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920057"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920057">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920057 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920057,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920058</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920058"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920058">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920058 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920058,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920059</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920059"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920059">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920059 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920059,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920060</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920060"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select='format-number($TotalAmount920060,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920061</td>
                        <td width="80%" class="subThree labelXsl" align="left">
                            <xsl:value-of select="$name920061"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920061">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920061 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920061,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920062</td>
                        <td width="80%" class="subThree labelXsl" align="left">
                            <xsl:value-of select="$name920062"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920062">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920062 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920062,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920063</td>
                        <td width="80%" class="subThree labelXsl" align="left">
                            <xsl:value-of select="$name920063"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920063">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920063 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920063,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920064</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920064"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920064">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920064 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920064,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920065</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920065"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920065">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920065 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920065,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920066</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920066"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920066">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920066 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920066,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920067</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920067"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920067">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920067 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920067,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920068</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920068"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920068">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920068 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920068,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920069</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920069"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920069">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920069 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920069,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920070</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920070"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920070">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920070 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920070,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920071</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920071"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920071">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920071 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920071,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920072</td>
                        <td width="80%" class="subOne labelXsl" align="left">
                            <xsl:value-of select="$name920072"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select='format-number($TotalAmount920072,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920245</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920245"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920245">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920245 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920245,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920246</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920246"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920246">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920246 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920246,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920073</td>
                        <td width="80%" class="subOne labelXsl" align="left">
                            <xsl:value-of select="$name920073"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select='format-number($TotalAmount920073,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920074</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920074"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920074">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920074 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920074,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920075</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920075"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920075">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920075 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920075,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920249</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920249"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920249">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920249 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920249,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920076</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920076"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920076">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920076 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920076,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920077</td>
                        <td width="80%" class="paddingSub labelXsl" align="left">
                            <xsl:value-of select="$name920077"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select='format-number($TotalAmount920077,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920078</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920078"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920078">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920078 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920078,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920079</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920079"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select='format-number($TotalAmount920079,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920080</td>
                        <td width="80%" class="subThree labelXsl" align="left">
                            <xsl:value-of select="$name920080"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920080">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920080 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920080,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920081</td>
                        <td width="80%" class="subThree labelXsl" align="left">
                            <xsl:value-of select="$name920081"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920081">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920081 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920081,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920082</td>
                        <td width="80%" class="subThree labelXsl" align="left">
                            <xsl:value-of select="$name920082"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920082">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920082 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920082,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920083</td>
                        <td width="80%" class="subThree labelXsl" align="left">
                            <xsl:value-of select="$name920083"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920083">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920083 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920083,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920084</td>
                        <td width="80%" class="subThree labelXsl" align="left">
                            <xsl:value-of select="$name920084"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920084">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920084 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920084,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920085</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920085"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920085">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920085 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920085,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920086</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920086"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920086">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920086 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920086,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920087</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920087"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920087">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920087 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920087,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920088</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920088"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select='format-number($TotalAmount920088,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920089</td>
                        <td width="80%" class="subThree labelXsl" align="left">
                            <xsl:value-of select="$name920089"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920089">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920089 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920089,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920090</td>
                        <td width="80%" class="subThree labelXsl" align="left">
                            <xsl:value-of select="$name920090"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920090">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920090 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920090,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920091</td>
                        <td width="80%" class="subThree labelXsl" align="left">
                            <xsl:value-of select="$name920091"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920091">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920091 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920091,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920092</td>
                        <td width="80%" class="subThree labelXsl" align="left">
                            <xsl:value-of select="$name920092"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920092">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920092 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920092,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920093</td>
                        <td width="80%" class="subThree labelXsl" align="left">
                            <xsl:value-of select="$name920093"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920093">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920093 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920093,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920094</td>
                        <td width="80%" class="paddingSub labelXsl" align="left">
                            <xsl:value-of select="$name920094"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920094">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920094 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920094,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920095</td>
                        <td width="80%" class="paddingSub labelXsl" align="left">
                            <xsl:value-of select="$name920095"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920095">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920095 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920095,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920096</td>
                        <td width="80%" class="paddingSub labelXsl" align="left">
                            <xsl:value-of select="$name920096"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920096">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920096 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920096,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920097</td>
                        <td width="80%" class="paddingSub labelXsl" align="left">
                            <xsl:value-of select="$name920097"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920097">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920097 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920097,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920098</td>
                        <td width="80%" class="paddingSub labelXsl" align="left">
                            <xsl:value-of select="$name920098"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920098">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920098 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920098,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920099</td>
                        <td width="80%" class="paddingSub labelXsl" align="left">
                            <xsl:value-of select="$name920099"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select='format-number($TotalAmount920099,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920100</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920100"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920100">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920100 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920100,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920101</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920101"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920101">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920101 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920101,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920102</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920102"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920102">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920102 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920102,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920103</td>
                        <td width="80%" class="paddingSub labelXsl" align="left">
                            <xsl:value-of select="$name920103"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select='format-number($TotalAmount920103,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920104</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920104"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920104">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920104 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920104,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920105</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920105"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920105">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920105 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920105,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920106</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920106"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920106">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920106 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920106,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920107</td>
                        <td width="80%" class="paddingSub labelXsl" align="left">
                            <xsl:value-of select="$name920107"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920107">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920107 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920107,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920108</td>
                        <td width="80%" class="paddingSub labelXsl" align="left">
                            <xsl:value-of select="$name920108"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920108">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920108 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920108,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920109</td>
                        <td width="80%" class="paddingSub labelXsl" align="left">
                            <xsl:value-of select="$name920109"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920109">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920109 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920109,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920110</td>
                        <td width="80%" class="paddingSub labelXsl" align="left">
                            <xsl:value-of select="$name920110"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select='format-number($TotalAmount920110,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920111</td>
                        <td width="80%" class="subOne labelXsl" align="left">
                            <xsl:value-of select="$name920111"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select='format-number($TotalAmount920111,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920112</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920112"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select='format-number($TotalAmount920112,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920113</td>
                        <td width="80%" class="subThree labelXsl" align="left">
                            <xsl:value-of select="$name920113"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920113">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920113 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920113,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920114</td>
                        <td width="80%" class="subThree labelXsl" align="left">
                            <xsl:value-of select="$name920114"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920114">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920114 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920114,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920115</td>
                        <td width="80%" class="subThree labelXsl" align="left">
                            <xsl:value-of select="$name920115"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920115">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920115 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920115,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920116</td>
                        <td width="80%" class="subThree labelXsl" align="left">
                            <xsl:value-of select="$name920116"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920116">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920116 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920116,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920117</td>
                        <td width="80%" class="subThree labelXsl" align="left">
                            <xsl:value-of select="$name920117"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920117">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920117 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920117,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920118</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920118"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select='format-number($TotalAmount920118,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920119</td>
                        <td width="80%" class="subThree labelXsl" align="left">
                            <xsl:value-of select="$name920119"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920119">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920119 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920119,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920120</td>
                        <td width="80%" class="subThree labelXsl" align="left">
                            <xsl:value-of select="$name920120"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920120">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920120 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920120,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920121</td>
                        <td width="80%" class="subThree labelXsl" align="left">
                            <xsl:value-of select="$name920121"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920121">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920121 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920121,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920122</td>
                        <td width="80%" class="subThree labelXsl" align="left">
                            <xsl:value-of select="$name920122"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920122">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920122 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920122,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920123</td>
                        <td width="80%" class="subOne labelXsl" align="left">
                            <xsl:value-of select="$name920123"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select='format-number($TotalAmount920123,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920124</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920124"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select='format-number($TotalAmount920124,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920125</td>
                        <td width="80%" class="subThree labelXsl" align="left">
                            <xsl:value-of select="$name920125"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920125">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920125 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920125,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920126</td>
                        <td width="80%" class="subThree labelXsl" align="left">
                            <xsl:value-of select="$name920126"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920126">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920126 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920126,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920127</td>
                        <td width="80%" class="subThree labelXsl" align="left">
                            <xsl:value-of select="$name920127"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920127">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920127 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920127,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920128</td>
                        <td width="80%" class="subThree labelXsl" align="left">
                            <xsl:value-of select="$name920128"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920128">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920128 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920128,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920129</td>
                        <td width="80%" class="subThree labelXsl" align="left">
                            <xsl:value-of select="$name920129"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920129">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920129 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920129,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920130</td>
                        <td width="80%" class="subThree labelXsl" align="left">
                            <xsl:value-of select="$name920130"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920130">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920130 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920130,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920131</td>
                        <td width="80%" class="subTwo labelXsl" align="left">
                            <xsl:value-of select="$name920131"/>
                        </td>
                        <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select='format-number($TotalAmount920131,"#,###,###,###,###,###,##0.00")'/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920132</td>
                        <td width="80%" class="subThree labelXsl" align="left">
                            <xsl:value-of select="$name920132"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920132">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920132 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920132,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td class="labelXsl" width="10%" align="center">920133</td>
                        <td width="80%" class="subThree labelXsl" align="left">
                            <xsl:value-of select="$name920133"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920133">
                            <td width="10%" class="labelXsl " align="right" style="mso-number-format:'\#\,\#\#0\.00'">
                                <span style="color:#1500d4">
                                    <xsl:if test="$Amount920133 != 'NaN'">
                                        <xsl:value-of
                                                select='format-number($Amount920133,"#,###,###,###,###,###,##0.00")'/>
                                    </xsl:if>
                                </span>
                            </td>
                        </xsl:for-each>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
