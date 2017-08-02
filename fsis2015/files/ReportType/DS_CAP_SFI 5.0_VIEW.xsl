<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
             <xsl:variable name="OrganizationId">OrganizationId</xsl:variable>
            <xsl:variable name="DataSetDate">DataSetDate</xsl:variable>


            <xsl:variable name="name940001">	เงินกองทุน (เฉพาะบริษัทเงินทุน สำหรับบริษัทเครดิตฟองซิเอร์ ใช้เฉพาะเงินกองทุนชั้นที่ 1)</xsl:variable>
            <xsl:variable name="name940002">	  1. เงินกองทุนชั้นที่ 1</xsl:variable>
            <xsl:variable name="name940003">	    1.1 ทุนชำระแล้ว</xsl:variable>
            <xsl:variable name="name940004">	      1.1.1 ตามบัญชี</xsl:variable>
            <xsl:variable name="name940005">	      1.1.2 หัก หุ้นทุนซื้อคืน(ราคาตามมูลค่า)</xsl:variable>
            <xsl:variable name="name940006">	    1.2 ใบสำคัญแสดงสิทธิที่จะซื้อหุ้น</xsl:variable>
            <xsl:variable name="name940007">	    1.3 ส่วนเกิน (ต่ำกว่า) มูลค่าหุ้น (สุทธิ)</xsl:variable>
            <xsl:variable name="name940008">	      1.3.1 ส่วนเกิน (ต่ำกว่า) มูลค่าของหุ้นที่ออกใหม่และใบสำคัญแสดงสิทธิที่จะซื้อหุ้น</xsl:variable>
            <xsl:variable name="name940009">	      1.3.2 ส่วนเกินทุน หุ้นทุนซื้อคืน</xsl:variable>
            <xsl:variable name="name940010">	    1.4 ทุนสำรองตามกฎหมาย</xsl:variable>
            <xsl:variable name="name940011">	    1.5 เงินสำรองที่จัดสรรจากกำไรสุทธิ</xsl:variable>
            <xsl:variable name="name940012">	    1.6 กำไร(ขาดทุน)สะสมคงเหลือจากการจัดสรร</xsl:variable>
            <xsl:variable name="name940038">	    1.7 Hybrid Tier 1 ส่วนที่ ธปท. อนุญาตให้นับเป็นเงินกองทุนชั้นที่ 1</xsl:variable>
            <xsl:variable name="name940062">	    1.8 ส่วนได้เสียที่ไม่มีอำนาจควบคุม</xsl:variable>
            <xsl:variable name="name940013">	    1.9 อื่น ๆ</xsl:variable>
            <xsl:variable name="name940014">	    1.10 รายการหัก</xsl:variable>
            <xsl:variable name="name940015">	      1.10.1 ขาดทุน(สุทธิ)</xsl:variable>
            <xsl:variable name="name940016">	      1.10.2 ค่าความนิยมสุทธิ </xsl:variable>
            <xsl:variable name="name940063">	      1.10.3 สินทรัพย์ภาษีเงินได้รอตัดบัญชี</xsl:variable>
            <xsl:variable name="name940091">	      1.10.4 ผลกำไร (ขาดทุน) ที่เกิดจากการเลือกใช้  Fair Value Option</xsl:variable>
            <xsl:variable name="name940064">	      1.10.5 ส่วนที่ให้หักออกจากเงินกองทุนชั้นที่ 1 และเงินกองทุนชั้นที่ 2 อย่างละร้อยละ 50</xsl:variable>
            <xsl:variable name="name940065">	      1.10.6 ส่วนที่ให้หักออกจากเงินกองทุนชั้นที่ 2 ที่เกินกว่าเงินกองทุน ชั้นที่ 2</xsl:variable>
            <xsl:variable name="name940017">	      1.10.7 อื่น ๆ</xsl:variable>
            <xsl:variable name="name940018">	  2. เงินกองทุนชั้นที่ 2</xsl:variable>
            <xsl:variable name="name940019">	    2.1 เงินสำรองจากการตีราคาที่ดินและอาคาร</xsl:variable>
            <xsl:variable name="name940020">	      2.1.1 มูลค่าเพิ่ม (สุทธิ) จากการตีราคาที่ดิน</xsl:variable>
            <xsl:variable name="name940021">	      2.1.2 มูลค่าเพิ่ม (สุทธิ) จากการตีราคาอาคารและห้องชุดในอาคารชุด</xsl:variable>
            <xsl:variable name="name940022">	    2.2 เงินสำรองสำหรับสินทรัพย์จัดชั้นปกติที่คำนวณตาม Basel I และ Basel II โดยวิธี SA</xsl:variable>
            <xsl:variable name="name940066">	    2.3 เงินสำรองส่วนเกินที่ให้นับเป็นเงินกองทุนชั้นที่ 2 ได้ตามวิธี IRB (EL &lt; Provisions)</xsl:variable>
            <xsl:variable name="name940023">	    2.4 หุ้นบุริมสิทธิชนิดสะสมเงินปันผล</xsl:variable>
            <xsl:variable name="name940024">	    2.5 ส่วนเกินทุน (สุทธิ) จากการตีราคาเงินลงทุนในตราสารทุนประเภทเผื่อขาย</xsl:variable>
            <xsl:variable name="name940025">	    2.6 ตราสารที่มีลักษณะคล้ายทุน</xsl:variable>
            <xsl:variable name="name940026">	    2.7 ตราสารหนี้ด้อยสิทธิระยะยาว</xsl:variable>
            <xsl:variable name="name940067">	    2.8 Hybrid Tier1 ส่วนที่เหลือจากที่ ธปท. อนุญาตให้นับเป็นเงินกองทุนชั้นที่ 1</xsl:variable>
            <xsl:variable name="name940068">	    2.9 ส่วนได้เสียที่ไม่มีอำนาจควบคุม</xsl:variable>
            <xsl:variable name="name940027">	    2.10 อื่น ๆ</xsl:variable>
            <xsl:variable name="name940092">	    2.11 รายการหัก</xsl:variable>
            <xsl:variable name="name940093">	      2.11.1 ส่วนที่ให้หักออกจากเงินกองทุนชั้นที่ 1 และเงินกองทุนชั้นที่ 2 อย่างละร้อยละ 50</xsl:variable>
            <xsl:variable name="name940094">	      2.11.2 อื่น ๆ</xsl:variable>
            <xsl:variable name="name940028">	  3. เงินกองทุนทั้งสิ้นตามกฎหมาย</xsl:variable>
            <xsl:variable name="name940029">	    3.1 เงินกองทุนทั้งสิ้นก่อนรายการหัก</xsl:variable>
            <xsl:variable name="name940030">	    3.2 รายการหัก</xsl:variable>
            <xsl:variable name="name940032">	      3.2.1 ส่วนต่ำกว่าทุน (สุทธิ) จากการตีราคาเงินลงทุนในตราสารทุนประเภทเผื่อขาย</xsl:variable>
            <xsl:variable name="name940070">	        3.2.1.1 ส่วนของสถาบันการเงิน</xsl:variable>
            <xsl:variable name="name940071">	        3.2.1.2 ส่วนได้เสียที่ไม่มีอำนาจควบคุม</xsl:variable>
            <xsl:variable name="name940033">	      3.2.2 อื่น ๆ</xsl:variable>
            <xsl:variable name="name940034">	  4. อัตราส่วนเงินกองทุน</xsl:variable>
            <xsl:variable name="name940035">	    4.1 ตราสารหนี้ด้อยสิทธิระยะยาว : เงินกองทุนชั้นที่ 1</xsl:variable>
            <xsl:variable name="name940073">	    4.2 Hybrid Tier 1 ส่วนที่อนุญาตให้นับเป็นเงินกองทุนชั้นที่ 1 : เงินกองทุนชั้นที่ 1</xsl:variable>
            <xsl:variable name="name940036">	    4.3 เงินกองทุนชั้นที่ 2 : เงินกองทุนชั้นที่ 1</xsl:variable>
            <xsl:variable name="name940074">	    4.4 เงินกองทุนทั้งสิ้น : สินทรัพย์เสี่ยง</xsl:variable>
            <xsl:variable name="name940075">	      4.4.1 Basel I หรือ Basel II ตาม วิธี SA และ IRB ก่อนการพิจารณา Capital Floor</xsl:variable>
            <xsl:variable name="name940076">	      4.4.2 วิธี IRB หลังการพิจารณา Capital Floor ตามเกณฑ์ที่กำหนด</xsl:variable>
            <xsl:variable name="name940079">	รายการที่ให้หักออกจากเงินกองทุนตามหลักเกณฑ์ที่ ธปท. กำหนด</xsl:variable>
            <xsl:variable name="name940097">	  1. เงินลงทุนในตราสารแสดงสิทธิในหนี้ที่นับเป็นเงินกองทุนของสถาบัน การเงินอื่นหรือกลุ่มธุรกิจทางการเงินอื่น </xsl:variable>
            <xsl:variable name="name940098">	  2. มูลค่าของตราสารหนี้หรือตราสารทุนอ้างอิงที่นับเข้าเป็นเงินกองทุนของสถาบันการเงินอื่นหรือกลุ่มธุรกิจทางการเงินอื่น กรณีสถาบันการเงินหรือบริษัทในกลุ่มธุรกิจทางการเงินเป็นผู้ซื้ออนุพันธ์ทางการเงินด้านตราสารหนี้หรือตราสารทุน (Bond or Equity derivative) และกรณีสถาบันการเงินหรือบริษัทในกลุ่มธุรกิจทางการเงินเป็นผู้ขายข้อตกลงรับประกันความเสี่ยงด้านเครดิต (Credit derivative)</xsl:variable>
            <xsl:variable name="name940080">	  3. มูลค่าข้อตกลงรับประกันความเสี่ยง กรณีสถาบันการเงิน หรือบริษัทในกลุ่มธุรกิจทางการเงินเป็นผู้ขายอนุพันธ์ด้านเครดิตประเภท  First-to-default credit derivative ซึ่งผลิตภัณฑ์ทางการเงินที่รองรับความเสี่ยงของกลุ่มสินทรัพย์อ้างอิงเป็นตราสารระยะยาวที่มี Rating เกรด 5</xsl:variable>
            <xsl:variable name="name940081">	  4. มูลค่าข้อตกลงรับประกันความเสี่ยง กรณีสถาบันการเงิน หรือบริษัทในกลุ่มธุรกิจทางการเงินเป็นผู้ขายอนุพันธ์ด้านเครดิตประเภท  First-to-default credit derivative ซึ่งผลิตภัณฑ์ทางการเงินที่รองรับความเสี่ยงของกลุ่มสินทรัพย์อ้างอิงเป็นตราสารระยะสั้นที่มี Rating เกรด 4</xsl:variable>
            <xsl:variable name="name940082">	  5. มูลค่าเงินให้สินเชื่อด้อยสิทธิ์หรือเงินลงทุนในตราสารด้อยสิทธิ์ กรณีที่สถาบันการเงิน หรือบริษัทในกลุ่มธุรกิจทางการเงินเป็นผู้รับประกันส่วนสูญเสียในลำดับแรกให้แก่ผู้ลงทุนในตราสาร Traditional และ Synthetic Securitization (First loss facility provider) หรือลงทุนในตราสารที่ Securitization ไม่มี Rating</xsl:variable>
            <xsl:variable name="name940083">	  6. มูลค่าเงินให้สินเชื่อหรือเงินลงทุนในตราสารหนี้ในส่วนที่ต่ำกว่าความเสียหายขั้นต่ำซึ่งผู้ขายข้อตกลงรับประกันความเสี่ยงจะไม่ชดเชยความเสียหาย</xsl:variable>
            <xsl:variable name="name940099">	  7. ฐานะที่เกี่ยวข้องกับการชำระราคาและการส่งมอบที่ยังไม่เสร็จสิ้น (Unsettled Transactions) กรณีธุรกรรม Non-delivery Versus Payment (Non-DvP)</xsl:variable>
            <xsl:variable name="name940100">	  7.1 มูลค่าของขาแรกที่ได้ส่งมอบไปแล้ว</xsl:variable>
            <xsl:variable name="name940101">	  7.2 ส่วนต่างของมูลค่าธุรกรรมกับมูลค่าตลาดปัจจุบัน (Positive Current Exposure)</xsl:variable>
            <xsl:variable name="name940084">	  8. Expected loss ของฐานะที่เกี่ยวข้องกับตราสารทุนที่คำนวณโดยวิธี PD/LGD</xsl:variable>
            <xsl:variable name="name940085">	  9. เงินสำรองส่วนขาด (EL &gt; เงินสำรองที่กันไว้ทั้งสิ้น)</xsl:variable>
            <xsl:variable name="name940102">	  10. เงินลงทุนในตราสารทุนที่นับเป็นเงินกองทุนของสถาบันการเงินอื่น หรือกลุ่มธุรกิจทางการเงินอื่น [เฉพาะ Conso.]</xsl:variable>
            <xsl:variable name="name940086">	  11. เงินลงทุนในบริษัทจำกัดที่กำหนดให้หักออกจากเงินกองทุน [เฉพาะ Conso.]</xsl:variable>
            <xsl:variable name="name940087">	  12. อื่นๆ</xsl:variable>

           <!--1.-->
           <xsl:variable name="AmountPerBook940004"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940004/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940005"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940005/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="TotalAmountPerBook940003"><xsl:value-of select="$AmountPerBook940004 - $AmountPerBook940005"/></xsl:variable>
           <xsl:variable name="AmountPerBook940006"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940006/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940008"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940008/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940009"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940009/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="TotalAmountPerBook940007"><xsl:value-of select="$AmountPerBook940008 + $AmountPerBook940009"/></xsl:variable>
           <xsl:variable name="AmountPerBook940010"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940010/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940011"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940011/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940012"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940012/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940038"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940038/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940062"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940062/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940013"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940013/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940015"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940015/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940016"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940016/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940063"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940063/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940091"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940091/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940064"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940064/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940065"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940065/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940017"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940017/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="TotalAmountPerBook940014"><xsl:value-of select="$AmountPerBook940015 + $AmountPerBook940016 + $AmountPerBook940063 + $AmountPerBook940091 + $AmountPerBook940064 + $AmountPerBook940065 + $AmountPerBook940017"/></xsl:variable>
           <xsl:variable name="TotalAmountPerBook940002"><xsl:value-of select="$TotalAmountPerBook940003 + $AmountPerBook940006 + $TotalAmountPerBook940007 + $AmountPerBook940010 + $AmountPerBook940011 + $AmountPerBook940012 + $AmountPerBook940038 + $AmountPerBook940062 + $AmountPerBook940013 - $TotalAmountPerBook940014"/></xsl:variable>

           <xsl:variable name="ApplicableCapitalFundAmount940004"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940004/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940005"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940005/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="TotalApplicableCapitalFundAmount940003"><xsl:value-of select="$ApplicableCapitalFundAmount940004 - $ApplicableCapitalFundAmount940005"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940006"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940006/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940008"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940008/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940009"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940009/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="TotalApplicableCapitalFundAmount940007"><xsl:value-of select="$ApplicableCapitalFundAmount940008 + $ApplicableCapitalFundAmount940009"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940010"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940010/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940011"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940011/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940012"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940012/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940038"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940038/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940062"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940062/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940013"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940013/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940015"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940015/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940016"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940016/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940063"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940063/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940091"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940091/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940064"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940064/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940065"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940065/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940017"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940017/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="TotalApplicableCapitalFundAmount940014"><xsl:value-of select="$ApplicableCapitalFundAmount940015 + $ApplicableCapitalFundAmount940016 + $ApplicableCapitalFundAmount940063 + $ApplicableCapitalFundAmount940091 + $ApplicableCapitalFundAmount940064 + $ApplicableCapitalFundAmount940065 + $ApplicableCapitalFundAmount940017"/></xsl:variable>
           <xsl:variable name="TotalApplicableCapitalFundAmount940002"><xsl:value-of select="$TotalApplicableCapitalFundAmount940003 + $ApplicableCapitalFundAmount940006 + $TotalApplicableCapitalFundAmount940007 + $ApplicableCapitalFundAmount940010 + $ApplicableCapitalFundAmount940011 + $ApplicableCapitalFundAmount940012 + $ApplicableCapitalFundAmount940038 + $ApplicableCapitalFundAmount940062 + $ApplicableCapitalFundAmount940013 - $TotalApplicableCapitalFundAmount940014"/></xsl:variable>

           <xsl:variable name="NetCapitalFundAmount940004"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940004/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940005"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940005/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="TotalNetCapitalFundAmount940003"><xsl:value-of select="$NetCapitalFundAmount940004 - $NetCapitalFundAmount940005"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940006"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940006/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940008"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940008/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940009"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940009/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="TotalNetCapitalFundAmount940007"><xsl:value-of select="$NetCapitalFundAmount940008 + $NetCapitalFundAmount940009"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940010"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940010/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940011"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940011/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940012"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940012/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940038"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940038/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940062"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940062/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940013"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940013/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940015"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940015/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940016"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940016/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940063"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940063/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940091"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940091/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940064"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940064/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940065"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940065/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940017"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940017/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="TotalNetCapitalFundAmount940014"><xsl:value-of select="$NetCapitalFundAmount940015 + $NetCapitalFundAmount940016 + $NetCapitalFundAmount940063 + $NetCapitalFundAmount940091 + $NetCapitalFundAmount940064 + $NetCapitalFundAmount940065 + $NetCapitalFundAmount940017"/></xsl:variable>
           <xsl:variable name="TotalNetCapitalFundAmount940002"><xsl:value-of select="$TotalNetCapitalFundAmount940003 + $NetCapitalFundAmount940006 + $TotalNetCapitalFundAmount940007 + $NetCapitalFundAmount940010 + $NetCapitalFundAmount940011 + $NetCapitalFundAmount940012 + $NetCapitalFundAmount940038 + $NetCapitalFundAmount940062 + $NetCapitalFundAmount940013 - $TotalNetCapitalFundAmount940014"/></xsl:variable>

           <!--2.-->
           <xsl:variable name="AmountPerBook940020"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940020/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940021"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940021/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="TotalAmountPerBook940019"><xsl:value-of select="$AmountPerBook940020 + $AmountPerBook940021"/></xsl:variable>
           <xsl:variable name="AmountPerBook940022"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940022/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940066"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940066/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940023"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940023/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940024"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940024/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940025"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940025/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940026"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940026/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940067"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940067/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940068"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940068/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940027"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940027/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940093"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940093/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940094"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940094/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="TotalAmountPerBook940092"><xsl:value-of select="$AmountPerBook940093 + $AmountPerBook940094"/></xsl:variable>
           <xsl:variable name="TotalAmountPerBook940018"><xsl:value-of select="$TotalAmountPerBook940019 + $AmountPerBook940022 + $AmountPerBook940066 + $AmountPerBook940023 + $AmountPerBook940024 + $AmountPerBook940025 + $AmountPerBook940026 + $AmountPerBook940067 + $AmountPerBook940068 + $AmountPerBook940027 - $TotalAmountPerBook940092"/></xsl:variable>

           <xsl:variable name="ApplicableCapitalFundAmount940020"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940020/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940021"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940021/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="TotalApplicableCapitalFundAmount940019"><xsl:value-of select="$ApplicableCapitalFundAmount940020 + $ApplicableCapitalFundAmount940021"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940022"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940022/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940066"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940066/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940023"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940023/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940024"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940024/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940025"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940025/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940026"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940026/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940067"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940067/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940068"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940068/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940027"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940027/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940093"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940093/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940094"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940094/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="TotalApplicableCapitalFundAmount940092"><xsl:value-of select="$ApplicableCapitalFundAmount940093 + $ApplicableCapitalFundAmount940094"/></xsl:variable>
           <xsl:variable name="TotalApplicableCapitalFundAmount940018"><xsl:value-of select="$TotalApplicableCapitalFundAmount940019 + $ApplicableCapitalFundAmount940022 + $ApplicableCapitalFundAmount940066 + $ApplicableCapitalFundAmount940023 + $ApplicableCapitalFundAmount940024 + $ApplicableCapitalFundAmount940025 + $ApplicableCapitalFundAmount940026 + $ApplicableCapitalFundAmount940067 + $ApplicableCapitalFundAmount940068 + $ApplicableCapitalFundAmount940027 - $TotalApplicableCapitalFundAmount940092"/></xsl:variable>

           <xsl:variable name="NetCapitalFundAmount940020"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940020/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940021"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940021/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="TotalNetCapitalFundAmount940019"><xsl:value-of select="$NetCapitalFundAmount940020 + $NetCapitalFundAmount940021"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940022"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940022/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940066"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940066/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940023"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940023/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940024"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940024/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940025"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940025/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940026"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940026/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940067"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940067/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940068"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940068/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940027"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940027/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940093"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940093/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940094"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940094/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="TotalNetCapitalFundAmount940092"><xsl:value-of select="$NetCapitalFundAmount940093 + $NetCapitalFundAmount940094"/></xsl:variable>
           <xsl:variable name="TotalNetCapitalFundAmount940018"><xsl:value-of select="$TotalNetCapitalFundAmount940019 + $NetCapitalFundAmount940022 + $NetCapitalFundAmount940066 + $NetCapitalFundAmount940023 + $NetCapitalFundAmount940024 + $NetCapitalFundAmount940025 + $NetCapitalFundAmount940026 + $NetCapitalFundAmount940067 + $NetCapitalFundAmount940068 + $NetCapitalFundAmount940027 - $TotalNetCapitalFundAmount940092"/></xsl:variable>

           <!--3.-->
           <xsl:variable name="AmountPerBook940029"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940029/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940070"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940070/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940071"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940071/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940033"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940033/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="TotalAmountPerBook940032"><xsl:value-of select="$AmountPerBook940070 + $AmountPerBook940071"/></xsl:variable>
           <xsl:variable name="TotalAmountPerBook940030"><xsl:value-of select="$TotalAmountPerBook940032 + $AmountPerBook940033"/></xsl:variable>
           <xsl:variable name="TotalAmountPerBook940028"><xsl:value-of select="$AmountPerBook940029 - $TotalAmountPerBook940030"/></xsl:variable>

           <xsl:variable name="ApplicableCapitalFundAmount940029"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940029/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940070"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940070/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940071"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940071/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940033"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940033/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="TotalApplicableCapitalFundAmount940032"><xsl:value-of select="$ApplicableCapitalFundAmount940070 + $ApplicableCapitalFundAmount940071 "/></xsl:variable>
           <xsl:variable name="TotalApplicableCapitalFundAmount940030"><xsl:value-of select="$TotalApplicableCapitalFundAmount940032 + $ApplicableCapitalFundAmount940033"/></xsl:variable>
           <xsl:variable name="TotalApplicableCapitalFundAmount940028"><xsl:value-of select="$ApplicableCapitalFundAmount940029 - $TotalApplicableCapitalFundAmount940030"/></xsl:variable>

           <xsl:variable name="NetCapitalFundAmount940029"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940029/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940070"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940070/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940071"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940071/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940033"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940033/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="TotalNetCapitalFundAmount940032"><xsl:value-of select="$NetCapitalFundAmount940070 + $NetCapitalFundAmount940071 "/></xsl:variable>
           <xsl:variable name="TotalNetCapitalFundAmount940030"><xsl:value-of select="$TotalNetCapitalFundAmount940032 + $NetCapitalFundAmount940033"/></xsl:variable>
           <xsl:variable name="TotalNetCapitalFundAmount940028"><xsl:value-of select="$NetCapitalFundAmount940029 - $TotalNetCapitalFundAmount940030"/></xsl:variable>

           <!--4.-->
           <xsl:variable name="AmountPerBook940035"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940035/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940073"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940073/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940036"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940036/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940075"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940075/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940076"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940076/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="TotalAmountPerBook940074"><xsl:value-of select="$AmountPerBook940075 + $AmountPerBook940076"/></xsl:variable>
           <xsl:variable name="TotalAmountPerBook940034"><xsl:value-of select="$AmountPerBook940035 + $AmountPerBook940073 + $AmountPerBook940036 + $TotalAmountPerBook940074"/></xsl:variable>

           <xsl:variable name="ApplicableCapitalFundAmount940035"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940035/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940073"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940073/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940036"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940036/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940075"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940075/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940076"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940076/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="TotalApplicableCapitalFundAmount940074"><xsl:value-of select="$ApplicableCapitalFundAmount940075 + $ApplicableCapitalFundAmount940076"/></xsl:variable>
           <xsl:variable name="TotalApplicableCapitalFundAmount940034"><xsl:value-of select="$ApplicableCapitalFundAmount940035 + $ApplicableCapitalFundAmount940073 + $ApplicableCapitalFundAmount940036 + $TotalApplicableCapitalFundAmount940074"/></xsl:variable>

           <xsl:variable name="NetCapitalFundAmount940035"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940035/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940073"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940073/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940036"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940036/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940075"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940075/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940076"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940076/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="TotalNetCapitalFundAmount940074"><xsl:value-of select="$NetCapitalFundAmount940075 + $NetCapitalFundAmount940076"/></xsl:variable>
           <xsl:variable name="TotalNetCapitalFundAmount940034"><xsl:value-of select="$NetCapitalFundAmount940035 + $NetCapitalFundAmount940073 + $NetCapitalFundAmount940036 + $TotalNetCapitalFundAmount940074"/></xsl:variable>

           <!--940001 เงินกองทุน (เฉพาะบริษัทเงินทุน สำหรับบริษัทเครดิตฟองซิเอร์ ใช้เฉพาะเงินกองทุนชั้นที่ 1) -->
            <xsl:variable name="TotalAmountPerBook940001"><xsl:value-of select="$TotalAmountPerBook940002 + $TotalAmountPerBook940018 + $TotalAmountPerBook940028 + $TotalAmountPerBook940034"/></xsl:variable>

            <xsl:variable name="TotalApplicableCapitalFundAmount940001"><xsl:value-of select="$TotalApplicableCapitalFundAmount940002 + $TotalApplicableCapitalFundAmount940018 + $TotalApplicableCapitalFundAmount940028 + $TotalApplicableCapitalFundAmount940034"/></xsl:variable>

            <xsl:variable name="TotalNetCapitalFundAmount940001"><xsl:value-of select="$TotalNetCapitalFundAmount940002 + $TotalNetCapitalFundAmount940018 + $TotalNetCapitalFundAmount940028 + $TotalNetCapitalFundAmount940034"/></xsl:variable>

           <!--940079 รายการที่ให้หักออกจากเงินกองทุนตามหลักเกณฑ์ที่ ธปท. กำหนด-->
           <xsl:variable name="AmountPerBook940097"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940097/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940098"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940098/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940080"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940080/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940081"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940081/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940082"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940082/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940083"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940083/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940100"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940100/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940101"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940101/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="TotalAmountPerBook940099">
               <xsl:value-of select="$AmountPerBook940100 + $AmountPerBook940101"/></xsl:variable>
           <xsl:variable name="AmountPerBook940084"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940084/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940085"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940085/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940102"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940102/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940086"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940086/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940087"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940087/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="TotalAmountPerBook940079"><xsl:value-of select="$AmountPerBook940097 + $AmountPerBook940098 + $AmountPerBook940080 + $AmountPerBook940081 + $AmountPerBook940082 + $AmountPerBook940083 + $TotalAmountPerBook940099 + $AmountPerBook940084 + $AmountPerBook940085 + $AmountPerBook940102 + $AmountPerBook940086 + $AmountPerBook940087"/></xsl:variable>


           <xsl:variable name="ApplicableCapitalFundAmount940097"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940097/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940098"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940098/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940080"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940080/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940081"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940081/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940082"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940082/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940083"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940083/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940100"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940100/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940101"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940101/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="TotalApplicableCapitalFundAmount940099"><xsl:value-of select="$ApplicableCapitalFundAmount940100 + $ApplicableCapitalFundAmount940101"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940084"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940084/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940085"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940085/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940102"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940102/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940086"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940086/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="ApplicableCapitalFundAmount940087"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940087/ApplicableCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="TotalApplicableCapitalFundAmount940079"><xsl:value-of select="$ApplicableCapitalFundAmount940097 + $ApplicableCapitalFundAmount940098 + $ApplicableCapitalFundAmount940080 + $ApplicableCapitalFundAmount940081 + $ApplicableCapitalFundAmount940082 + $ApplicableCapitalFundAmount940083 + $TotalApplicableCapitalFundAmount940099 + $ApplicableCapitalFundAmount940084 + $ApplicableCapitalFundAmount940085 + $ApplicableCapitalFundAmount940102 + $ApplicableCapitalFundAmount940086 + $ApplicableCapitalFundAmount940087"/></xsl:variable>


           <xsl:variable name="NetCapitalFundAmount940097"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940097/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940098"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940098/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940080"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940080/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940081"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940081/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940082"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940082/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940083"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940083/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940100"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940100/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940101"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940101/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="TotalNetCapitalFundAmount940099"><xsl:value-of select="$NetCapitalFundAmount940100 + $NetCapitalFundAmount940101"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940084"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940084/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940085"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940085/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940102"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940102/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940086"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940086/NetCapitalFundAmount"/></xsl:variable>
           <xsl:variable name="NetCapitalFundAmount940087"><xsl:value-of select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940087/NetCapitalFundAmount"/></xsl:variable>

           <xsl:variable name="TotalNetCapitalFundAmount940079"><xsl:value-of select="$NetCapitalFundAmount940097 + $NetCapitalFundAmount940098 + $NetCapitalFundAmount940080 + $NetCapitalFundAmount940081 + $NetCapitalFundAmount940082 + $NetCapitalFundAmount940083 + $TotalNetCapitalFundAmount940099 + $NetCapitalFundAmount940084 + $NetCapitalFundAmount940085 + $NetCapitalFundAmount940102 + $NetCapitalFundAmount940086 + $NetCapitalFundAmount940087"/></xsl:variable>




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
                                        <img src="../../images/table001.gif" width="43" height="43" />
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
                                        <img src="../../images/table004.gif" width="43" height="37" /></td>
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
                                                        <td class="bgGreen" width="20%">Organization ID :  </td>
                                                        <td width="15%" colspan="3">
                                                          <xsl:for-each select="DS_CAP/CommonHeader">
                                                            <xsl:value-of select="OrganizationId" />
                                                          </xsl:for-each>
                                                        </td>
                                                      </tr>
                                                      <tr>
                                                        <td class="bgGreen">FI Reporting Group ID :  </td>
                                                        <td colspan="3">
						                                 116003 - ชุดรวมทุกสำนักงานในประเทศ
                                                        </td>
                                                      </tr>
                                                      <tr>
                                                        <td class="bgGreen">Data Set Type :</td>
                                                        <td colspan="3">
                                                          <xsl:value-of select="DS_CAP/@name" />
                                                        </td>
                                                      </tr>
                                                      <tr>
                                                        <td class="bgGreen" />
							<td class="bgGreen" align="center">Day</td>
                                                        <td class="bgGreen" align="center">Month</td>
                                                        <td class="bgGreen" align="center">Year</td>
                                                      </tr>
                                                      <tr>
                                                        <td class="bgGreen">Data Set Date :</td>
                                                        <xsl:variable name="month">
                                                          <xsl:value-of select="substring-after(substring-before(DataSetDate,'-'),'-')" />
                                                        </xsl:variable>
                                                        <xsl:for-each select="DS_CAP/CommonHeader">
							<td width="20%" hight="15px" align="center">
                                                            <xsl:value-of select="substring(DataSetDate,9,2)" />
                                                          </td>
                                                          <td width="20%" hight="15px" align="center">
                                                            <xsl:variable name="mo">
                                                              <xsl:value-of select="substring(DataSetDate,6,2)" />
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
                                                                  <xsl:value-of select="$month" />
                                                                </xsl:if>
                                                              </xsl:otherwise>
                                                            </xsl:choose>
                                                          </td>
                                                          <td width="20%" hight="15px" align="center">
                                                            <xsl:value-of select="substring(DataSetDate,1,4)" />
                                                          </td>
                                                        </xsl:for-each>
                                                      </tr>
                                                    </table>
                                               <table class="displayTable" width="100%" >
                                                            <tr  class="headTableXsl" >
                                                                <td width="70%" align="center" colspan="2">Capital Fund Item</td>
                                                                <td width="10%" align="center">Outstanding Amount Per Book</td>
                                                                <td width="10%" align="center">Applicable Capital Fund Amount</td>
                                                                <td width="10%" align="center">Net Capital Fund Amount</td>
                                                            </tr>
                                                            <tr>
                                                                <td width="5%"  class="labelXsl" align="center">940001</td>
                                                                <td width="60%" class="labelXsl"><xsl:value-of select="$name940001"/></td>
                                                                <td class="labelXsl" align="right">
                                                                    <!--<span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmountPerBook940001,'###,###,###,###,###,###,##0.00')"/></span>-->
                                                                </td>
                                                                <td class="labelXsl" align="right">
                                                                    <!--<span style="color:#1500d4"><xsl:value-of select="format-number($TotalApplicableCapitalFundAmount940001,'###,###,###,###,###,###,##0.00')"/></span>-->
                                                                </td>
                                                                <td class="labelXsl" align="right">
                                                                    <!--<span style="color:#1500d4"><xsl:value-of select="format-number($TotalNetCapitalFundAmount940001,'###,###,###,###,###,###,##0.00')"/></span>-->
                                                                </td>
                                                           </tr>

                                                            <tr>
                                                                <td width="5%"  class="labelXsl" align="center">940002</td>
                                                                <td width="60%" class="paddingSub  labelXsl"><xsl:value-of select="$name940002"/></td>
                                                                <td class="labelXsl" align="right">
                                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmountPerBook940002,'###,###,###,###,###,###,##0.00')"/></span>
                                                                </td>
                                                                <td class="labelXsl" align="right">
                                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalApplicableCapitalFundAmount940002,'###,###,###,###,###,###,##0.00')"/></span>
                                                                </td>
                                                                <td class="labelXsl" align="right">
                                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalNetCapitalFundAmount940002,'###,###,###,###,###,###,##0.00')"/></span>
                                                                </td>
                                                           </tr>
                                                            <tr>
                                                                <td width="10%" align="center" class="labelXsl">940003</td>
                                                                <td class="subOne  labelXsl"><xsl:value-of select="$name940003"/></td>
                                                                <td class="labelXsl" align="right">
                                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmountPerBook940003,'###,###,###,###,###,###,##0.00')"/></span>
                                                                </td>
                                                                <td class="labelXsl" align="right">
                                                                   <span style="color:#1500d4"><xsl:value-of select="format-number($TotalApplicableCapitalFundAmount940003,'###,###,###,###,###,###,##0.00')"/></span>
                                                                    </td>
                                                                <td class="labelXsl" align="right">
                                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalNetCapitalFundAmount940003,'###,###,###,###,###,###,##0.00')"/></span>
                                                                </td>

                                                           </tr>
                                                           <tr>
                                                                <td align="center" class="labelXsl">940004</td>
                                                               <td class="subTwo  labelXsl"><xsl:value-of select="$name940004"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940004">
                                                                 <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940004,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940004,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940004,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                               </xsl:for-each>
                                                           </tr>
                                                        <tr>
                                                            <td class="labelXsl" align="center">940005</td>
                                                            <td class="subTwo  labelXsl"><xsl:value-of select="$name940005"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940005">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940005,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940005,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940005,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                               </xsl:for-each>
                                                           </tr>
                                                        <tr>
                                                             <td class="labelXsl" align="center">940006</td>
                                                             <td class="subOne  labelXsl"><xsl:value-of select="$name940006"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940006">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940006,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940006,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940006,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                               </xsl:for-each>
                                                           </tr>
                                                        <tr>
                                                             <td class="labelXsl" align="center">940007</td>
                                                                <td class="subOne  labelXsl"><xsl:value-of select="$name940007"/></td>
                                                               <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmountPerBook940007,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalApplicableCapitalFundAmount940007,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalNetCapitalFundAmount940007,'###,###,###,###,###,###,##0.00')"/></span></td>

                                                           </tr>
                                                        <tr>
                                                              <td class="labelXsl" align="center">940008</td>
                                                             <td class="subTwo  labelXsl"><xsl:value-of select="$name940008"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940008">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940008,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940008,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940008,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                            </tr>
                                                       <tr>
                                                              <td class="labelXsl" align="center">940009</td>
                                                             <td class="subTwo  labelXsl"><xsl:value-of select="$name940009"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940008">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940009,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940009,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940009,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                            </tr>
                                                       <tr>
                                                              <td class="labelXsl" align="center">940010</td>
                                                           <td class="subOne  labelXsl"><xsl:value-of select="$name940010"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940010">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940010,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940010,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940010,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                       <tr>
                                                              <td class="labelXsl" align="center">940011</td>
                                                           <td class="subOne  labelXsl"><xsl:value-of select="$name940011"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940010">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940011,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940011,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940011,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                        <tr>
                                                              <td class="labelXsl" align="center">940012</td>
                                                           <td class="subOne  labelXsl"><xsl:value-of select="$name940012"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940012">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940012,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940012,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940012,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                        <tr>
                                                              <td class="labelXsl" align="center">940038</td>
                                                           <td class="subOne  labelXsl"><xsl:value-of select="$name940038"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940038">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940038,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940038,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940038,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                         <tr>
                                                              <td class="labelXsl" align="center">940062</td>
                                                           <td class="subOne  labelXsl"><xsl:value-of select="$name940062"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940062">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940062,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940062,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940062,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                         <tr>
                                                              <td class="labelXsl" align="center">940013</td>
                                                           <td class="subOne  labelXsl"><xsl:value-of select="$name940013"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940013">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940013,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940013,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940013,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                         <tr>
                                                              <td class="labelXsl" align="center">940014</td>
                                                               <td class="subOne  labelXsl"><xsl:value-of select="$name940014"/></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmountPerBook940014,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalApplicableCapitalFundAmount940014,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalNetCapitalFundAmount940014,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                           </tr>
                                                         <tr>
                                                              <td class="labelXsl" align="center">940015</td>
                                                           <td class="subTwo  labelXsl"><xsl:value-of select="$name940015"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940015">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940015,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940015,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940015,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                          <tr>
                                                              <td class="labelXsl" align="center">940016</td>
                                                           <td class="subTwo  labelXsl"><xsl:value-of select="$name940016"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940016">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940016,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940016,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940016,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                          <tr>
                                                              <td class="labelXsl" align="center">940063</td>
                                                           <td class="subTwo  labelXsl"><xsl:value-of select="$name940063"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940063">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940063,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940063,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940063,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                          <tr>
                                                              <td class="labelXsl" align="center">940091</td>
                                                           <td class="subTwo  labelXsl"><xsl:value-of select="$name940091"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940091">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940091,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940091,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940091,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                          <tr>
                                                              <td class="labelXsl" align="center">940064</td>
                                                           <td class="subTwo  labelXsl"><xsl:value-of select="$name940064"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940064">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940064,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940064,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940064,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                          <tr>
                                                              <td class="labelXsl" align="center">940065</td>
                                                           <td class="subTwo  labelXsl"><xsl:value-of select="$name940065"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940065">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940065,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940065,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940065,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                          <tr>
                                                              <td class="labelXsl" align="center">940017</td>
                                                           <td class="subTwo  labelXsl"><xsl:value-of select="$name940017"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940017">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940017,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940017,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940017,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                          <tr>
                                                              <td class="labelXsl" align="center">940018</td>
                                                                <td class="paddingSub  labelXsl"><xsl:value-of select="$name940018"/></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmountPerBook940018,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalApplicableCapitalFundAmount940018,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalNetCapitalFundAmount940018,'###,###,###,###,###,###,##0.00')"/></span></td>

                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940019</td>
                                                                <td class="subOne  labelXsl"><xsl:value-of select="$name940019"/></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmountPerBook940019,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalApplicableCapitalFundAmount940019,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalNetCapitalFundAmount940019,'###,###,###,###,###,###,##0.00')"/></span></td>

                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940020</td>
                                                           <td class="subTwo  labelXsl"><xsl:value-of select="$name940020"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940020">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940020,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940020,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940020,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940021</td>
                                                           <td class="subTwo  labelXsl"><xsl:value-of select="$name940021"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940021">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940021,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940021,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940021,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940022</td>
                                                           <td class="subOne  labelXsl"><xsl:value-of select="$name940022"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940022">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940022,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940022,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940022,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940066</td>
                                                              <td class="subOne  labelXsl"><xsl:value-of select="$name940066"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940066">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940066,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940066,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940066,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940023</td>
                                                              <td class="subOne  labelXsl"><xsl:value-of select="$name940023"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940023">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940023,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940023,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940023,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940024</td>
                                                              <td class="subOne  labelXsl"><xsl:value-of select="$name940024"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940024">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940024,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940024,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940024,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940025</td>
                                                              <td class="subOne  labelXsl"><xsl:value-of select="$name940025"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940025">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940025,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940025,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940025,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940026</td>
                                                              <td class="subOne  labelXsl"><xsl:value-of select="$name940026"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940026">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940026,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940026,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940026,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940067</td>
                                                              <td class="subOne  labelXsl"><xsl:value-of select="$name940067"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940067">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940067,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940067,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940067,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940068</td>
                                                              <td class="subOne  labelXsl"><xsl:value-of select="$name940068"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940068">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940068,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940068,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940068,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940027</td>
                                                           <td class="subOne  labelXsl"><xsl:value-of select="$name940027"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940027">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940027,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940027,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940027,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940092</td>
                                                                <td class="subOne  labelXsl"><xsl:value-of select="$name940092"/></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmountPerBook940092,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalApplicableCapitalFundAmount940092,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalNetCapitalFundAmount940092,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940093</td>
                                                              <td class="subTwo  labelXsl"><xsl:value-of select="$name940093"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940093">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940093,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940093,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940093,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940094</td>
                                                              <td class="subTwo  labelXsl"><xsl:value-of select="$name940094"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940094">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940094,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940094,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940094,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940028</td>
                                                                <td class="paddingSub  labelXsl"><xsl:value-of select="$name940028"/></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmountPerBook940028,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalApplicableCapitalFundAmount940028,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalNetCapitalFundAmount940028,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940029</td>
                                                              <td class="subOne  labelXsl"><xsl:value-of select="$name940029"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940029">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940029,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940029,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940029,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940030</td>
                                                                <td class="subOne  labelXsl"><xsl:value-of select="$name940030"/></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmountPerBook940030,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalApplicableCapitalFundAmount940030,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalNetCapitalFundAmount940030,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940032</td>
                                                                <td class="subTwo  labelXsl"><xsl:value-of select="$name940032"/></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmountPerBook940032,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalApplicableCapitalFundAmount940032,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalNetCapitalFundAmount940032,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940070</td>
                                                              <td class="subThree  labelXsl"><xsl:value-of select="$name940070"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940070">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940070,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940070,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940070,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940071</td>
                                                              <td class="subThree  labelXsl"><xsl:value-of select="$name940071"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940071">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940071,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940071,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940071,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940033</td>
                                                              <td class="subTwo  labelXsl"><xsl:value-of select="$name940033"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940033">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940033,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940033,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940033,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940034</td>
                                                                <td class="paddingSub  labelXsl"><xsl:value-of select="$name940034"/></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmountPerBook940034,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalApplicableCapitalFundAmount940034,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalNetCapitalFundAmount940034,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940035</td>
                                                              <td class="subOne  labelXsl"><xsl:value-of select="$name940035"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940035">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940035,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940035,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940035,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940073</td>
                                                              <td class="subOne  labelXsl"><xsl:value-of select="$name940073"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940073">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940073,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940073,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940073,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940036</td>
                                                              <td class="subOne  labelXsl"><xsl:value-of select="$name940036"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940036">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940036,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940036,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940036,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940074</td>
                                                                <td class="subOne  labelXsl"><xsl:value-of select="$name940074"/></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmountPerBook940074,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalApplicableCapitalFundAmount940074,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalNetCapitalFundAmount940074,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940075</td>
                                                              <td class="subTwo  labelXsl"><xsl:value-of select="$name940075"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940075">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940075,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940075,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940075,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940076</td>
                                                              <td class="subTwo  labelXsl"><xsl:value-of select="$name940076"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940076">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940076,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940076,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940076,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940079</td>
                                                                <td class="labelXsl"><xsl:value-of select="$name940079"/></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmountPerBook940079,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalApplicableCapitalFundAmount940079,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalNetCapitalFundAmount940079,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940097</td>
                                                              <td class="paddingSub  labelXsl"><xsl:value-of select="$name940097"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940097">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940097,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940097,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940097,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940098</td>
                                                              <td class="paddingSub  labelXsl"><xsl:value-of select="$name940098"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940098">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940098,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940098,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940098,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940080</td>
                                                              <td class="paddingSub  labelXsl"><xsl:value-of select="$name940080"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940080">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940080,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940080,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940080,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940081</td>
                                                              <td class="paddingSub  labelXsl"><xsl:value-of select="$name940081"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940081">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940081,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940081,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940081,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940082</td>
                                                              <td class="paddingSub  labelXsl"><xsl:value-of select="$name940082"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940082">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940082,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940082,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940082,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940083</td>
                                                              <td class="paddingSub  labelXsl"><xsl:value-of select="$name940083"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940083">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940083,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940083,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940083,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940099</td>
                                                                <td class="paddingSub  labelXsl"><xsl:value-of select="$name940099"/></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmountPerBook940099,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalApplicableCapitalFundAmount940099,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalNetCapitalFundAmount940099,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940100</td>
                                                              <td class="subOne  labelXsl"><xsl:value-of select="$name940100"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940100">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940100,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940100,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940100,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940101</td>
                                                              <td class="subOne  labelXsl"><xsl:value-of select="$name940101"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940101">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940101,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940101,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940101,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940084</td>
                                                              <td class="paddingSub  labelXsl"><xsl:value-of select="$name940084"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940084">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940084,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940084,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940084,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940085</td>
                                                              <td class="paddingSub  labelXsl"><xsl:value-of select="$name940085"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940085">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940085,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940085,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940085,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940102</td>
                                                              <td class="paddingSub  labelXsl"><xsl:value-of select="$name940102"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940102">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940102,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940102,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940102,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940086</td>
                                                              <td class="paddingSub  labelXsl"><xsl:value-of select="$name940086"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940086">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940086,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940086,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940086,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940087</td>
                                                              <td class="paddingSub  labelXsl"><xsl:value-of select="$name940087"/></td>
                                                                <xsl:for-each select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940087">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940087,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940087,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940087,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                        </table>
                                    </td>
                                    <td width="28" background="../../images/table005.gif"> <img src="../../images/table005.gif" width="28" height="37" /> </td>
                                </tr>
                                <tr>
                                    <td><img src="../../images/table006.gif" width="43" height="23" alt=""/></td>
                                    <td background="../../images/table007.gif"></td>
                                    <td><img src="../../images/table008.gif" width="28" height="23" alt=""/></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>

            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
