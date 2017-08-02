<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <xsl:variable name="OrganizationId">OrganizationId</xsl:variable>
            <xsl:variable name="DataSetDate">DataSetDate</xsl:variable>
            <xsl:variable name="var940002">1. เงินกองทุนชั้นที่ 1</xsl:variable>
            <xsl:variable name="var940003">1.1 ทุนชำระแล้ว</xsl:variable>
            <xsl:variable name="var940014">1.8 หัก รายการหักต่างๆ</xsl:variable>
            <xsl:variable name="var940007">1.3 ส่วนเกิน (ต่ำกว่า) มูลค่าหุ้น (สุทธิ)</xsl:variable>
            <xsl:variable name="var940018">2. เงินกองทุนชั้นที่ 2</xsl:variable>
            <xsl:variable name="var940019">2.1 เงินสำรองจากการตีราคาที่ดินและอาคาร</xsl:variable>
            <xsl:variable name="var940028">3. เงินกองทุนทั้งสิ้นตามกฎหมาย</xsl:variable>
            <xsl:variable name="var940030">3.2 รายการหัก</xsl:variable>
            <xsl:variable name="var940034">4. อัตราส่วนเงินกองทุน</xsl:variable>
            <xsl:variable name="name940002">1. เงินกองทุนชั้นที่ 1</xsl:variable>

            <xsl:variable name="name940003">1.1 ทุนชำระแล้ว</xsl:variable>

            <xsl:variable name="name940004">1.1.1 ตามบัญชี</xsl:variable>

            <xsl:variable name="name940005">1.1.2 หัก หุ้นทุนซื้อคืน(ราคาตามมูลค่า)</xsl:variable>

            <xsl:variable name="name940006">1.2 ใบสำคัญแสดงสิทธิที่จะซื้อหุ้น</xsl:variable>

            <xsl:variable name="name940007">1.3 ส่วนเกิน (ต่ำกว่า) มูลค่าหุ้น (สุทธิ)</xsl:variable>

            <xsl:variable name="name940008">1.3.1 ส่วนเกิน (ต่ำกว่า)
                มูลค่าของหุ้นที่ออกใหม่และใบสำคัญแสดงสิทธิที่จะซื้อหุ้น
            </xsl:variable>

            <xsl:variable name="name940009">1.3.2 ส่วนเกินทุน หุ้นทุนซื้อคืน</xsl:variable>

            <xsl:variable name="name940010">1.4 ทุนสำรองตามกฎหมาย</xsl:variable>

            <xsl:variable name="name940011">1.5 เงินสำรองที่จัดสรรจากกำไรสุทธิ</xsl:variable>

            <xsl:variable name="name940012">1.6 กำไร(ขาดทุน)สะสมคงเหลือจากการจัดสรร</xsl:variable>

            <xsl:variable name="name940013">1.7 อื่น ๆ</xsl:variable>

            <xsl:variable name="name940014">1.8 หัก รายการหักต่างๆ</xsl:variable>

            <xsl:variable name="name940015">1.8.1 ขาดทุน(สุทธิ)</xsl:variable>

            <xsl:variable name="name940016">1.8.2 ค่าแห่งกู๊ดวิลล์</xsl:variable>

            <xsl:variable name="name940017">1.8.3 อื่น ๆ</xsl:variable>

            <xsl:variable name="name940018">2. เงินกองทุนชั้นที่ 2</xsl:variable>

            <xsl:variable name="name940019">2.1 เงินสำรองจากการตีราคาที่ดินและอาคาร</xsl:variable>

            <xsl:variable name="name940020">2.1.1 มูลค่าเพิ่ม (สุทธิ) จากการตีราคาที่ดิน</xsl:variable>

            <xsl:variable name="name940021">2.1.2 มูลค่าเพิ่ม (สุทธิ) จากการตีราคาอาคารและห้องชุดในอาคารชุด
            </xsl:variable>

            <xsl:variable name="name940022">2.2 เงินสำรองสำหรับสินทรัพย์จัดชั้นปกติ</xsl:variable>

            <xsl:variable name="name940023">2.3 หุ้นบุริมสิทธิชนิดสะสมเงินปันผล</xsl:variable>

            <xsl:variable name="name940024">2.4 ส่วนเกินทุน (สุทธิ) จากการตีราคาเงินลงทุนในตราสารทุนประเภทเผื่อขาย
            </xsl:variable>

            <xsl:variable name="name940025">2.5 ตราสารที่มีลักษณะคล้ายทุน</xsl:variable>

            <xsl:variable name="name940026">2.6 ตราสารหนี้ด้อยสิทธิระยะยาว</xsl:variable>

            <xsl:variable name="name940027">2.7 อื่น ๆ</xsl:variable>

            <xsl:variable name="name940028">3. เงินกองทุนทั้งสิ้นตามกฎหมา ย</xsl:variable>

            <xsl:variable name="name940029">3.1 เงินกองทุนทั้งสิ้นก่อนรายการหัก</xsl:variable>

            <xsl:variable name="name940030">3.2 รายการหัก</xsl:variable>

            <xsl:variable name="name940031">3.2.1 เงินลงทุนในตราสารที่นับเป็นเงินกองทุนชั้นที่ 2 ของสถาบันการเงินอื่น
            </xsl:variable>

            <xsl:variable name="name940032">3.2.2 ส่วนต่ำกว่าทุน (สุทธิ) จากการตีราคาเงินลงทุนในตราสารทุนประเภทเผื่อขาย
            </xsl:variable>

            <xsl:variable name="name940033">3.2.3 อื่น ๆ</xsl:variable>

            <xsl:variable name="name940034">4. อัตราส่วนเงินกองทุน</xsl:variable>

            <xsl:variable name="name940035">4.1 ตราสารหนี้ด้อยสิทธิระยะยาว : เงินกองทุนชั้นที่ 1</xsl:variable>

            <xsl:variable name="name940036">4.2 เงินกองทุนชั้นที่ 2 : เงินกองทุนชั้นที่ 1</xsl:variable>

            <xsl:variable name="AmountPerBook940004">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940004/OutstandingAmountPerBook"/>
            </xsl:variable>
            <xsl:variable name="AmountPerBook940005">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940005/OutstandingAmountPerBook"/>
            </xsl:variable>
            <xsl:variable name="AmountPerBook940006">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940006/OutstandingAmountPerBook"/>
            </xsl:variable>
            <xsl:variable name="TotalAmountPerBook940003">
                <xsl:value-of select="$AmountPerBook940004 - $AmountPerBook940005 + $AmountPerBook940006"/>
            </xsl:variable>
            <xsl:variable name="AmountPerBook940008">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940008/OutstandingAmountPerBook"/>
            </xsl:variable>
            <xsl:variable name="AmountPerBook940009">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940009/OutstandingAmountPerBook"/>
            </xsl:variable>
            <xsl:variable name="TotalAmountPerBook940007">
                <xsl:value-of select="$AmountPerBook940008 + $AmountPerBook940009"/>
            </xsl:variable>
            <xsl:variable name="AmountPerBook940015">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940015/OutstandingAmountPerBook"/>
            </xsl:variable>
            <xsl:variable name="AmountPerBook940016">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940016/OutstandingAmountPerBook"/>
            </xsl:variable>
            <xsl:variable name="AmountPerBook940017">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940017/OutstandingAmountPerBook"/>
            </xsl:variable>
            <xsl:variable name="TotalAmountPerBook940014">
                <xsl:value-of select="$AmountPerBook940015 - $AmountPerBook940016 + $AmountPerBook940017"/>
            </xsl:variable>
            <xsl:variable name="AmountPerBook940010">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940010/OutstandingAmountPerBook"/>
            </xsl:variable>
            <xsl:variable name="AmountPerBook940011">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940011/OutstandingAmountPerBook"/>
            </xsl:variable>
            <xsl:variable name="AmountPerBook940012">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940012/OutstandingAmountPerBook"/>
            </xsl:variable>
            <xsl:variable name="AmountPerBook940013">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940013/OutstandingAmountPerBook"/>
            </xsl:variable>
            <xsl:variable name="TotalAmountPerBook940002">
                <span style="color:#1500d4">
                    <xsl:value-of
                            select="$TotalAmountPerBook940003 + $TotalAmountPerBook940007 + $AmountPerBook940010 + $AmountPerBook940011 + $AmountPerBook940012 + $AmountPerBook940013 - $TotalAmountPerBook940014"/>
                </span>
            </xsl:variable>

            <xsl:variable name="ApplicableCapitalFundAmount940004">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940004/ApplicableCapitalFundAmount"/>
            </xsl:variable>
            <xsl:variable name="ApplicableCapitalFundAmount940005">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940005/ApplicableCapitalFundAmount"/>
            </xsl:variable>
            <xsl:variable name="ApplicableCapitalFundAmount940006">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940006/ApplicableCapitalFundAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalApplicableCapitalFundAmount940003">
                <xsl:value-of
                        select="$ApplicableCapitalFundAmount940004 - $ApplicableCapitalFundAmount940005 + $ApplicableCapitalFundAmount940006"/>
            </xsl:variable>
            <xsl:variable name="ApplicableCapitalFundAmount940008">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940008/ApplicableCapitalFundAmount"/>
            </xsl:variable>
            <xsl:variable name="ApplicableCapitalFundAmount940009">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940009/ApplicableCapitalFundAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalApplicableCapitalFundAmount940007">
                <xsl:value-of select="$ApplicableCapitalFundAmount940008 + $ApplicableCapitalFundAmount940009"/>
            </xsl:variable>
            <xsl:variable name="ApplicableCapitalFundAmount940015">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940015/ApplicableCapitalFundAmount"/>
            </xsl:variable>
            <xsl:variable name="ApplicableCapitalFundAmount940016">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940016/ApplicableCapitalFundAmount"/>
            </xsl:variable>
            <xsl:variable name="ApplicableCapitalFundAmount940017">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940017/ApplicableCapitalFundAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalApplicableCapitalFundAmount940014">
                <xsl:value-of
                        select="$ApplicableCapitalFundAmount940015 - $ApplicableCapitalFundAmount940016 + $ApplicableCapitalFundAmount940017"/>
            </xsl:variable>
            <xsl:variable name="ApplicableCapitalFundAmount940010">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940010/ApplicableCapitalFundAmount"/>
            </xsl:variable>
            <xsl:variable name="ApplicableCapitalFundAmount940011">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940011/ApplicableCapitalFundAmount"/>
            </xsl:variable>
            <xsl:variable name="ApplicableCapitalFundAmount940012">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940012/ApplicableCapitalFundAmount"/>
            </xsl:variable>
            <xsl:variable name="ApplicableCapitalFundAmount940013">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940013/ApplicableCapitalFundAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalApplicableCapitalFundAmount940002">
                <span style="color:#1500d4">
                    <xsl:value-of
                            select="$TotalApplicableCapitalFundAmount940003 + $TotalApplicableCapitalFundAmount940007 + $ApplicableCapitalFundAmount940010 + $ApplicableCapitalFundAmount940011 + $ApplicableCapitalFundAmount940012 + $ApplicableCapitalFundAmount940013 - $TotalApplicableCapitalFundAmount940014"/>
                </span>
            </xsl:variable>

            <xsl:variable name="NetCapitalFundAmount940004">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940004/NetCapitalFundAmount"/>
            </xsl:variable>
            <xsl:variable name="NetCapitalFundAmount940005">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940005/NetCapitalFundAmount"/>
            </xsl:variable>
            <xsl:variable name="NetCapitalFundAmount940006">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940006/NetCapitalFundAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalNetCapitalFundAmount940003">
                <xsl:value-of
                        select="$NetCapitalFundAmount940004 - $NetCapitalFundAmount940005 + $NetCapitalFundAmount940006"/>
            </xsl:variable>
            <xsl:variable name="NetCapitalFundAmount940008">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940008/NetCapitalFundAmount"/>
            </xsl:variable>
            <xsl:variable name="NetCapitalFundAmount940009">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940009/NetCapitalFundAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalNetCapitalFundAmount940007">
                <xsl:value-of select="$NetCapitalFundAmount940008 + $NetCapitalFundAmount940009"/>
            </xsl:variable>
            <xsl:variable name="NetCapitalFundAmount940015">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940015/NetCapitalFundAmount"/>
            </xsl:variable>
            <xsl:variable name="NetCapitalFundAmount940016">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940016/NetCapitalFundAmount"/>
            </xsl:variable>
            <xsl:variable name="NetCapitalFundAmount940017">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940017/NetCapitalFundAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalNetCapitalFundAmount940014">
                <xsl:value-of
                        select="$NetCapitalFundAmount940015 - $NetCapitalFundAmount940016 + $NetCapitalFundAmount940017"/>
            </xsl:variable>
            <xsl:variable name="NetCapitalFundAmount940010">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940010/NetCapitalFundAmount"/>
            </xsl:variable>
            <xsl:variable name="NetCapitalFundAmount940011">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940011/NetCapitalFundAmount"/>
            </xsl:variable>
            <xsl:variable name="NetCapitalFundAmount940012">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940012/NetCapitalFundAmount"/>
            </xsl:variable>
            <xsl:variable name="NetCapitalFundAmount940013">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940013/NetCapitalFundAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalNetCapitalFundAmount940002">
                <span style="color:#1500d4">
                    <xsl:value-of
                            select="$TotalNetCapitalFundAmount940003 + $TotalNetCapitalFundAmount940007 + $NetCapitalFundAmount940010 + $NetCapitalFundAmount940011 + $NetCapitalFundAmount940012 + $NetCapitalFundAmount940013 - $TotalNetCapitalFundAmount940014"/>
                </span>
            </xsl:variable>


            <xsl:variable name="AmountPerBook940020">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940020/OutstandingAmountPerBook"/>
            </xsl:variable>
            <xsl:variable name="AmountPerBook940021">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940021/OutstandingAmountPerBook"/>
            </xsl:variable>
            <xsl:variable name="TotalAmountPerBook940019">
                <xsl:value-of select="$AmountPerBook940020+ $AmountPerBook940021"/>
            </xsl:variable>

            <xsl:variable name="ApplicableCapitalFundAmount940020">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940020/ApplicableCapitalFundAmount"/>
            </xsl:variable>
            <xsl:variable name="ApplicableCapitalFundAmount940021">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940021/ApplicableCapitalFundAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalApplicableCapitalFundAmount940019">
                <xsl:value-of select="$ApplicableCapitalFundAmount940020 + $ApplicableCapitalFundAmount940021"/>
            </xsl:variable>

            <xsl:variable name="NetCapitalFundAmount940020">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940020/NetCapitalFundAmount"/>
            </xsl:variable>
            <xsl:variable name="NetCapitalFundAmount940021">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940021/NetCapitalFundAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalNetCapitalFundAmount940019">
                <xsl:value-of select="$NetCapitalFundAmount940020 + $NetCapitalFundAmount940021"/>
            </xsl:variable>

            <xsl:variable name="AmountPerBook940022">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940022/OutstandingAmountPerBook"/>
            </xsl:variable>
            <xsl:variable name="ApplicableCapitalFundAmount940022">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940022/ApplicableCapitalFundAmount"/>
            </xsl:variable>
            <xsl:variable name="NetCapitalFundAmount940022">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940022/NetCapitalFundAmount"/>
            </xsl:variable>

            <xsl:variable name="AmountPerBook940023">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940023/OutstandingAmountPerBook"/>
            </xsl:variable>
            <xsl:variable name="ApplicableCapitalFundAmount940023">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940023/ApplicableCapitalFundAmount"/>
            </xsl:variable>
            <xsl:variable name="NetCapitalFundAmount940023">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940023/NetCapitalFundAmount"/>
            </xsl:variable>
            <xsl:variable name="AmountPerBook940024">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940024/OutstandingAmountPerBook"/>
            </xsl:variable>
            <xsl:variable name="ApplicableCapitalFundAmount940024">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940024/ApplicableCapitalFundAmount"/>
            </xsl:variable>
            <xsl:variable name="NetCapitalFundAmount940024">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940024/NetCapitalFundAmount"/>
            </xsl:variable>
            <xsl:variable name="AmountPerBook940025">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940025/OutstandingAmountPerBook"/>
            </xsl:variable>
            <xsl:variable name="ApplicableCapitalFundAmount940025">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940025/ApplicableCapitalFundAmount"/>
            </xsl:variable>
            <xsl:variable name="NetCapitalFundAmount940025">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940025/NetCapitalFundAmount"/>
            </xsl:variable>
            <xsl:variable name="AmountPerBook940026">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940026/OutstandingAmountPerBook"/>
            </xsl:variable>
            <xsl:variable name="ApplicableCapitalFundAmount940026">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940026/ApplicableCapitalFundAmount"/>
            </xsl:variable>
            <xsl:variable name="NetCapitalFundAmount940026">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940026/NetCapitalFundAmount"/>
            </xsl:variable>
            <xsl:variable name="AmountPerBook940027">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940027/OutstandingAmountPerBook"/>
            </xsl:variable>
            <xsl:variable name="ApplicableCapitalFundAmount940027">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940027/ApplicableCapitalFundAmount"/>
            </xsl:variable>
            <xsl:variable name="NetCapitalFundAmount940027">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940027/NetCapitalFundAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalAmountPerBook940018">
                <xsl:value-of
                        select="$TotalAmountPerBook940019 + $AmountPerBook940022 + $AmountPerBook940023 + $AmountPerBook940024 + $AmountPerBook940025 + $AmountPerBook940026 + $AmountPerBook940027 "/>
            </xsl:variable>
            <xsl:variable name="TotalApplicableCapitalFundAmount940018">
                <xsl:value-of
                        select="$TotalApplicableCapitalFundAmount940019 + $ApplicableCapitalFundAmount940022 + $ApplicableCapitalFundAmount940023 + $ApplicableCapitalFundAmount940024 + $ApplicableCapitalFundAmount940025 + $ApplicableCapitalFundAmount940026 + $ApplicableCapitalFundAmount940027 "/>
            </xsl:variable>
            <xsl:variable name="TotalNetCapitalFundAmount940018">
                <xsl:value-of
                        select="$TotalNetCapitalFundAmount940019 + $NetCapitalFundAmount940022 + $NetCapitalFundAmount940023 + $NetCapitalFundAmount940024 + $NetCapitalFundAmount940025 + $NetCapitalFundAmount940026 + $NetCapitalFundAmount940027 "/>
            </xsl:variable>

            <xsl:variable name="AmountPerBook940029">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940029/OutstandingAmountPerBook"/>
            </xsl:variable>
            <xsl:variable name="ApplicableCapitalFundAmount940029">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940029/ApplicableCapitalFundAmount"/>
            </xsl:variable>
            <xsl:variable name="NetCapitalFundAmount940029">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940029/NetCapitalFundAmount"/>
            </xsl:variable>

            <xsl:variable name="AmountPerBook940031">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940031/OutstandingAmountPerBook"/>
            </xsl:variable>
            <xsl:variable name="ApplicableCapitalFundAmount940031">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940031/ApplicableCapitalFundAmount"/>
            </xsl:variable>
            <xsl:variable name="NetCapitalFundAmount940031">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940031/NetCapitalFundAmount"/>
            </xsl:variable>

            <xsl:variable name="AmountPerBook940032">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940032/OutstandingAmountPerBook"/>
            </xsl:variable>
            <xsl:variable name="ApplicableCapitalFundAmount940032">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940032/ApplicableCapitalFundAmount"/>
            </xsl:variable>
            <xsl:variable name="NetCapitalFundAmount940032">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940032/NetCapitalFundAmount"/>
            </xsl:variable>

            <xsl:variable name="AmountPerBook940033">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940033/OutstandingAmountPerBook"/>
            </xsl:variable>
            <xsl:variable name="ApplicableCapitalFundAmount940033">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940033/ApplicableCapitalFundAmount"/>
            </xsl:variable>
            <xsl:variable name="NetCapitalFundAmount940033">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940033/NetCapitalFundAmount"/>
            </xsl:variable>
            <xsl:variable name="TotalAmountPerBook940030">
                <xsl:value-of select="$AmountPerBook940031 + $AmountPerBook940032 + $AmountPerBook940033"/>
            </xsl:variable>
            <xsl:variable name="TotalApplicableCapitalFundAmount940030">
                <xsl:value-of
                        select="$ApplicableCapitalFundAmount940031 + $ApplicableCapitalFundAmount940032 + $ApplicableCapitalFundAmount940033"/>
            </xsl:variable>
            <xsl:variable name="TotalNetCapitalFundAmount940030">
                <xsl:value-of
                        select="$NetCapitalFundAmount940031 + $NetCapitalFundAmount940032 + $NetCapitalFundAmount940033"/>
            </xsl:variable>
            <xsl:variable name="TotalAmountPerBook940028">
                <xsl:value-of select="$AmountPerBook940029 - $TotalAmountPerBook940030"/>
            </xsl:variable>
            <xsl:variable name="TotalApplicableCapitalFundAmount940028">
                <xsl:value-of select="$ApplicableCapitalFundAmount940029 - $TotalApplicableCapitalFundAmount940030"/>
            </xsl:variable>
            <xsl:variable name="TotalNetCapitalFundAmount940028">
                <xsl:value-of select="$NetCapitalFundAmount940029 - $TotalNetCapitalFundAmount940030"/>
            </xsl:variable>

            <xsl:variable name="AmountPerBook940036">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940036/OutstandingAmountPerBook"/>
            </xsl:variable>
            <xsl:variable name="ApplicableCapitalFundAmount940036">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940036/ApplicableCapitalFundAmount"/>
            </xsl:variable>
            <xsl:variable name="NetCapitalFundAmount940036">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940036/NetCapitalFundAmount"/>
            </xsl:variable>

            <xsl:variable name="AmountPerBook940035">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940035/OutstandingAmountPerBook"/>
            </xsl:variable>
            <xsl:variable name="ApplicableCapitalFundAmount940035">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940035/ApplicableCapitalFundAmount"/>
            </xsl:variable>
            <xsl:variable name="NetCapitalFundAmount940035">
                <xsl:value-of
                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940035/NetCapitalFundAmount"/>
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
                                                <td class="bgGreen" width="20%">Organization ID :</td>
                                                <td width="15%" colspan="3">
                                                    <xsl:for-each select="DS_CAP/CommonHeader">
                                                        <xsl:value-of select="OrganizationId"/>
                                                    </xsl:for-each>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="bgGreen">FI Reporting Group ID :</td>
                                                <td colspan="3">
                                                    116003 - ชุดรวมทุกสำนักงานในประเทศ
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="bgGreen">Data Set Type :</td>
                                                <td colspan="3">
                                                    <xsl:value-of select="DS_CAP/@name"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="bgGreen"/>
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
                                                <xsl:for-each select="DS_CAP/CommonHeader">
                                                    <td width="20%" hight="15px" align="center">
                                                        <xsl:value-of select="substring(DataSetDate,9,2)"/>
                                                    </td>
                                                    <td width="20%" hight="15px" align="center">
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
                                                    <td width="20%" hight="15px" align="center">
                                                        <xsl:value-of select="substring(DataSetDate,1,4)"/>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                        </table>
                                        <table class="displayTable" width="100%">
                                            <tr class="headTableXsl">
                                                <td width="70%" align="center" colspan="2">Capital Fund Item</td>
                                                <td width="10%" align="center">Outstanding Amount Per Book</td>
                                                <td width="10%" align="center">Applicable Capital Fund Amount</td>
                                                <td width="10%" align="center">Net Capital Fund Amount</td>
                                            </tr>
                                            <tr>
                                                <td width="5%" class="labelXsl" align="center">940002</td>
                                                <td width="60%" class="labelXsl">
                                                    <xsl:value-of select="$name940002"/>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalAmountPerBook940002,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalApplicableCapitalFundAmount940002,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalNetCapitalFundAmount940002,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="10%" align="center" class="labelXsl">940003</td>
                                                <td class="paddingSub  labelXsl">
                                                    <xsl:value-of select="$var940003"/>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalAmountPerBook940003,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalApplicableCapitalFundAmount940003,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalNetCapitalFundAmount940003,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">940004</td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name940004"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940004">
                                                    <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <xsl:value-of
                                                                    select="format-number(OutstandingAmountPerBook,'###,###,###,###,###,###,##0.00')"/>
                                                        </span>
                                                    </td>
                                                    <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <xsl:value-of
                                                                    select="format-number(ApplicableCapitalFundAmount,'###,###,###,###,###,###,##0.00')"/>
                                                        </span>
                                                    </td>
                                                    <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <xsl:value-of
                                                                    select="format-number(NetCapitalFundAmount,'###,###,###,###,###,###,##0.00')"/>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td class="labelXsl" align="center">940005</td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name940005"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940005">
                                                    <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <xsl:value-of
                                                                    select="format-number(OutstandingAmountPerBook,'###,###,###,###,###,###,##0.00')"/>
                                                        </span>
                                                    </td>
                                                    <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <xsl:value-of
                                                                    select="format-number(ApplicableCapitalFundAmount,'###,###,###,###,###,###,##0.00')"/>
                                                        </span>
                                                    </td>
                                                    <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <xsl:value-of
                                                                    select="format-number(NetCapitalFundAmount,'###,###,###,###,###,###,##0.00')"/>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td class="labelXsl" align="center">940006</td>
                                                <td class="paddingSub  labelXsl">
                                                    <xsl:value-of select="$name940006"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940006">
                                                    <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <xsl:value-of
                                                                    select="format-number(OutstandingAmountPerBook,'###,###,###,###,###,###,##0.00')"/>
                                                        </span>
                                                    </td>
                                                    <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <xsl:value-of
                                                                    select="format-number(ApplicableCapitalFundAmount,'###,###,###,###,###,###,##0.00')"/>
                                                        </span>
                                                    </td>
                                                    <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <xsl:value-of
                                                                    select="format-number(NetCapitalFundAmount,'###,###,###,###,###,###,##0.00')"/>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td class="labelXsl" align="center">940007</td>
                                                <td class="paddingSub  labelXsl">
                                                    <xsl:value-of select="$name940007"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940007">
                                                </xsl:for-each>
                                                <!--<td class="labelXsl"><xsl:value-of select="substring(@name,25,60)"/></td>-->
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalAmountPerBook940007,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalApplicableCapitalFundAmount940007,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalNetCapitalFundAmount940007,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td class="labelXsl" align="center">940008</td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name940008"/>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($AmountPerBook940008,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($ApplicableCapitalFundAmount940008,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($NetCapitalFundAmount940008,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="labelXsl" align="center">940009</td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name940009"/>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($AmountPerBook940009,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($ApplicableCapitalFundAmount940009,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($NetCapitalFundAmount940009,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="labelXsl" align="center">940010</td>
                                                <td class="paddingSub  labelXsl">
                                                    <xsl:value-of select="$name940010"/>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($AmountPerBook940010,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($ApplicableCapitalFundAmount940010,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($NetCapitalFundAmount940010,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="labelXsl" align="center">940011</td>
                                                <td class="paddingSub  labelXsl">
                                                    <xsl:value-of select="$name940011"/>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($AmountPerBook940011,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($ApplicableCapitalFundAmount940011,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($NetCapitalFundAmount940011,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="labelXsl" align="center">940012</td>
                                                <td class="paddingSub  labelXsl">
                                                    <xsl:value-of select="$name940012"/>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($AmountPerBook940012,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($ApplicableCapitalFundAmount940012,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($NetCapitalFundAmount940012,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="labelXsl" align="center">940013</td>
                                                <td class="paddingSub  labelXsl">
                                                    <xsl:value-of select="$name940013"/>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($AmountPerBook940013,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($ApplicableCapitalFundAmount940013,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($NetCapitalFundAmount940013,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="labelXsl" align="center">940014</td>
                                                <td class="labelXsl paddingSub">
                                                    <xsl:value-of select="$name940014"/>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalAmountPerBook940014,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalApplicableCapitalFundAmount940014,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalNetCapitalFundAmount940014,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="labelXsl" align="center">940015</td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name940015"/>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($AmountPerBook940015,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($ApplicableCapitalFundAmount940015,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($NetCapitalFundAmount940015,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="labelXsl" align="center">940016</td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name940016"/>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($AmountPerBook940016,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($ApplicableCapitalFundAmount940016,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($NetCapitalFundAmount940016,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="labelXsl" align="center">940017</td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name940017"/>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($AmountPerBook940017,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($ApplicableCapitalFundAmount940017,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($NetCapitalFundAmount940017,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="labelXsl" align="center">940018</td>
                                                <td class="labelXsl">
                                                    <xsl:value-of select="$name940018"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940020">

                                                </xsl:for-each>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalAmountPerBook940018,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalApplicableCapitalFundAmount940018,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalNetCapitalFundAmount940018,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td class="labelXsl" align="center">940019</td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name940019"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940020">

                                                </xsl:for-each>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalAmountPerBook940019,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalApplicableCapitalFundAmount940019,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalNetCapitalFundAmount940019,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="labelXsl" align="center">940020</td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name940020"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CAP/DS_CAP_Content/ContentRecordGroup/CapitalFundItem940020">
                                                    <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <xsl:value-of
                                                                    select="format-number($AmountPerBook940020,'###,###,###,###,###,###,##0.00')"/>
                                                        </span>
                                                    </td>
                                                    <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <xsl:value-of
                                                                    select="format-number($ApplicableCapitalFundAmount940020,'###,###,###,###,###,###,##0.00')"/>
                                                        </span>
                                                    </td>
                                                    <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <xsl:value-of
                                                                    select="format-number($NetCapitalFundAmount940020,'###,###,###,###,###,###,##0.00')"/>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td class="labelXsl" align="center">940021</td>
                                                <td class="subOne  labelXsl">
                                                    <xsl:value-of select="$name940021"/>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($AmountPerBook940021,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($ApplicableCapitalFundAmount940021,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($NetCapitalFundAmount940021,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="labelXsl" align="center">940022</td>
                                                <td class="paddingSub  labelXsl">
                                                    <xsl:value-of select="$name940022"/>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($AmountPerBook940022,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($ApplicableCapitalFundAmount940022,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($NetCapitalFundAmount940022,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="labelXsl" align="center">940023</td>
                                                <td class="paddingSub  labelXsl">
                                                    <xsl:value-of select="$name940023"/>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($AmountPerBook940023,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($ApplicableCapitalFundAmount940023,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($NetCapitalFundAmount940023,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="labelXsl" align="center">940024</td>
                                                <td class="paddingSub  labelXsl">
                                                    <xsl:value-of select="$name940024"/>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($AmountPerBook940024,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($ApplicableCapitalFundAmount940024,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($NetCapitalFundAmount940024,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="labelXsl" align="center">940025</td>
                                                <td class="paddingSub  labelXsl">
                                                    <xsl:value-of select="$name940025"/>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($AmountPerBook940025,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($ApplicableCapitalFundAmount940025,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($NetCapitalFundAmount940025,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="labelXsl" align="center">940026</td>
                                                <td class="paddingSub  labelXsl">
                                                    <xsl:value-of select="$name940026"/>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($AmountPerBook940026,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($ApplicableCapitalFundAmount940026,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($NetCapitalFundAmount940026,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="labelXsl" align="center">940027</td>
                                                <td class="paddingSub  labelXsl">
                                                    <xsl:value-of select="$name940027"/>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($AmountPerBook940027,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($ApplicableCapitalFundAmount940027,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($NetCapitalFundAmount940027,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="labelXsl" align="center">940028</td>
                                                <td class="labelXsl">
                                                    <xsl:value-of select="$name940028"/>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalAmountPerBook940028,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalApplicableCapitalFundAmount940028,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalNetCapitalFundAmount940028,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td class="labelXsl" align="center">940029</td>
                                                <td class="paddingSub  labelXsl">
                                                    <xsl:value-of select="$name940029"/>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($AmountPerBook940029,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($ApplicableCapitalFundAmount940029,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($NetCapitalFundAmount940029,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="labelXsl" align="center">940030</td>
                                                <td class="paddingSub  labelXsl">
                                                    <xsl:value-of select="$name940030"/>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalAmountPerBook940030,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalApplicableCapitalFundAmount940030,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($TotalNetCapitalFundAmount940030,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td class="labelXsl" align="center">940031</td>
                                                <td class="subOne labelXsl">
                                                    <xsl:value-of select="$name940031"/>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($AmountPerBook940031,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($ApplicableCapitalFundAmount940031,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($NetCapitalFundAmount940031,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="labelXsl" align="center">940032</td>
                                                <td class="subOne labelXsl">
                                                    <xsl:value-of select="$name940032"/>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($AmountPerBook940032,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($ApplicableCapitalFundAmount940032,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($NetCapitalFundAmount940032,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="labelXsl" align="center">940033</td>
                                                <td class="subOne labelXsl">
                                                    <xsl:value-of select="$name940033"/>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($AmountPerBook940033,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($ApplicableCapitalFundAmount940033,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($NetCapitalFundAmount940033,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="labelXsl" align="center">940034</td>
                                                <td class="labelXsl">
                                                    <xsl:value-of select="$name940034"/>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4"></span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4"></span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4"></span>
                                                </td>

                                            </tr>


                                            <tr>
                                                <td class="labelXsl" align="center">940035</td>
                                                <td class="paddingSub  labelXsl">
                                                    <xsl:value-of select="$name940035"/>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($AmountPerBook940035,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($ApplicableCapitalFundAmount940035,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($NetCapitalFundAmount940035,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="labelXsl" align="center">940036</td>
                                                <td class="paddingSub  labelXsl">
                                                    <xsl:value-of select="$name940036"/>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($AmountPerBook940036,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($ApplicableCapitalFundAmount940036,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number($NetCapitalFundAmount940036,'###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="28" background="../../images/table005.gif">
                                        <img src="../../images/table005.gif" width="28" height="37"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <img src="../../images/table006.gif" width="43" height="23" alt=""/>
                                    </td>
                                    <td background="../../images/table007.gif"></td>
                                    <td>
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
