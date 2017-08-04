<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
             <xsl:variable name="OrganizationId">OrganizationId</xsl:variable>
            <xsl:variable name="DataSetDate">DataSetDate</xsl:variable>


            <xsl:variable name="name940103">	เงินกองทุน (เฉพาะธนาคารพาณิชย์จดทะเบียนในประเทศ บริษัทเงินทุน และกลุ่มธุรกิจทางการเงิน)</xsl:variable>
            <xsl:variable name="name940104">	  เงินกองทุนชั้นที่ 1 </xsl:variable>
            <xsl:variable name="name940105">	    1. เงินกองทุนชั้นที่ 1 ที่เป็นส่วนของเจ้าของ</xsl:variable>
            <xsl:variable name="name940106">	      1.1 ทุนที่ออกและชำระแล้ว – หุ้นสามัญ </xsl:variable>
            <xsl:variable name="name940107">	        1.1.1 ตามบัญชี </xsl:variable>
            <xsl:variable name="name940108">	        1.1.2 หัก หุ้นทุนซื้อคืน (ราคาตามมูลค่า) </xsl:variable>
            <xsl:variable name="name940109">	      1.2 ใบสำคัญแสดงสิทธิที่จะซื้อหุ้น </xsl:variable>
            <xsl:variable name="name940110">	      1.3 ส่วนเกิน (ต่ำกว่า) มูลค่าหุ้นสุทธิ </xsl:variable>
            <xsl:variable name="name940111">	        1.3.1 ส่วนเกิน (ต่ำกว่า) มูลค่าของหุ้นที่ออกใหม่และใบสำคัญแสดงสิทธิที่จะซื้อหุ้น </xsl:variable>
            <xsl:variable name="name940112">	        1.3.2 ส่วนเกินทุนหุ้นทุนซื้อคืน </xsl:variable>
            <xsl:variable name="name940118">	      1.4 ทุนสำรองตามกฎหมาย</xsl:variable>
            <xsl:variable name="name940117">	      1.5 เงินสำรองที่จัดสรรจากกำไรสุทธิ </xsl:variable>
            <xsl:variable name="name940113">	      1.6 กำไรสุทธิคงเหลือหลังจากการจัดสรร</xsl:variable>
            <xsl:variable name="name940114">	        1.6.1 กำไรสุทธิคงเหลือหลังจากการจัดสรรต้นงวด</xsl:variable>
            <xsl:variable name="name940115">	        1.6.2 กำไรสุทธิคงเหลือหลังจากการจัดสรรของงวดการบัญชี</xsl:variable>
            <xsl:variable name="name940116">	        1.6.3 รายการปรับปรุงกำไรสะสม</xsl:variable>
            <xsl:variable name="name940119">	      1.7. องค์ประกอบอื่นของส่วนของเจ้าของและสำรองอื่น ๆ (Disclosed Reserves)</xsl:variable>
            <xsl:variable name="name940120">	        1.7.1 ส่วนที่ถือเป็นกำไรขาดทุนเบ็ดเสร็จอื่น (Other Comprehensive Income)</xsl:variable>
            <xsl:variable name="name940121">	          1.7.1.1 การเปลี่ยนแปลงในส่วนเกินทุนจากการตีราคาที่ดิน อาคาร หรือห้องชุดในอาคารชุด </xsl:variable>
            <xsl:variable name="name940122">	            1.7.1.1.1 ส่วนเกินทุนจากการตีราคาที่ดิน </xsl:variable>
            <xsl:variable name="name940123">	            1.7.1.1.2 ส่วนเกินทุนจากการตีราคาอาคารและห้องชุดในอาคารชุด </xsl:variable>
            <xsl:variable name="name940124">	          1.7.1.2 ส่วนเกิน (ต่ำกว่า) ทุนจากการเปลี่ยนแปลงมูลค่าเงินลงทุนเผื่อขาย </xsl:variable>
            <xsl:variable name="name940125">	            1.7.1.2.1 ส่วนเกิน (ต่ำกว่า) ทุนจากการเปลี่ยนแปลงมูลค่าของตราสารทุน </xsl:variable>
            <xsl:variable name="name940126">	            1.7.1.2.2 ส่วนเกิน (ต่ำกว่า) ทุนจากการเปลี่ยนแปลงมูลค่าของตราสารหนี้</xsl:variable>
            <xsl:variable name="name940127">	          1.7.1.3 ผลต่างจากการแปลงค่างบการเงินจากการดำเนินงานในต่างประเทศ </xsl:variable>
            <xsl:variable name="name940128">	          1.7.1.4 ส่วนเกิน (ต่ำกว่า) จากการประเมินมูลค่ายุติธรรมตราสารป้องกันความเสี่ยงสำหรับการป้องกันความเสี่ยงในกระแสเงินสด (Cash flow hedge reserve)</xsl:variable>
            <xsl:variable name="name940129">	          1.7.1.5 ส่วนเกิน (ต่ำกว่า) จากการประเมินมูลค่ายุติธรรมตราสารป้องกันความเสี่ยงสำหรับการป้องกันความเสี่ยงในเงินลงทุนสุทธิในหน่วยงานต่างประเทศ (Hedges of a net investment in a foreign operation)</xsl:variable>
            <xsl:variable name="name940130">	        1.7.2 รายการอื่นของการเปลี่ยนแปลงที่เกิดจากผู้เป็นเจ้าของ (Owner Changes)</xsl:variable>
            <xsl:variable name="name940228">	 1.8 รายการของบริษัทลูกที่ประกอบธุรกิจธนาคารพาณิชย์ หรือบริษัทเงินทุน เฉพาะส่วนของผู้ถือหุ้นที่ไม่มีอำนาจควบคุมที่สามารถนับเป็นเงินกองทุนชั้นที่ 1 ที่เป็นส่วนของเจ้าของของกลุ่มธุรกิจทางการเงิน</xsl:variable>
            <xsl:variable name="name940131">	    1.9 อื่น ๆ</xsl:variable>
            <xsl:variable name="name940132">	    1.10 รายการปรับจากเงินกองทุนชั้นที่ 1 ที่เป็นส่วนของเจ้าของ</xsl:variable>
            <xsl:variable name="name940133">	      1.10.1 ผลกำไร (ขาดทุน) ที่เกิดจากการเปลี่ยนแปลงมูลค่ายุติธรรมของตราสารอนุพันธ์สำหรับการป้องกันความเสี่ยงในกระแสเงินสด (Cash flow hedge reserve) </xsl:variable>
            <xsl:variable name="name940229">	        1.10.1.1 ส่วนของธนาคารพาณิชย์ หรือบริษัทเงินทุน หรือบริษัทแม่</xsl:variable>
            <xsl:variable name="name940230">	        1.10.1.2 ส่วนของผู้ถือหุ้นที่ไม่มีอำนาจควบคุม</xsl:variable>
            <xsl:variable name="name940134">	      1.10.2 ผลกำไรที่เกิดจากการเลือกใช้  Fair Value Option </xsl:variable>
            <xsl:variable name="name940135">	        1.10.2.1 ตราสารที่เป็นหนี้สินทางการเงิน</xsl:variable>
            <xsl:variable name="name940136">	        1.10.2.2 เงินให้สินเชื่อหรือตราสารที่เป็นสินทรัพย์ทางการเงิน</xsl:variable>
            <xsl:variable name="name940137">	      1.10.3 ผลขาดทุนที่เกิดจากการเลือกใช้  Fair Value Option </xsl:variable>
            <xsl:variable name="name940138">	        1.10.3.1 ตราสารที่เป็นหนี้สินทางการเงิน</xsl:variable>
            <xsl:variable name="name940139">	        1.10.3.2 เงินให้สินเชื่อหรือตราสารที่เป็นสินทรัพย์ทางการเงิน</xsl:variable>
            <xsl:variable name="name940140">	      1.10.4 อื่น ๆ</xsl:variable>
            <xsl:variable name="name940141">	    1.11 รายการหักจากเงินกองทุนชั้นที่ 1 ที่เป็นส่วนของเจ้าของ </xsl:variable>
            <xsl:variable name="name940142">	      1.11.1 ขาดทุนสุทธิ </xsl:variable>
            <xsl:variable name="name940143">	      1.11.2 ค่าความนิยม </xsl:variable>
            <xsl:variable name="name940144">	      1.11.3 สินทรัพย์ไม่มีตัวตน</xsl:variable>
            <xsl:variable name="name940145">	      1.11.4 สินทรัพย์ภาษีเงินได้รอการตัดบัญชี </xsl:variable>
            <xsl:variable name="name940146">	        1.11.4.1 ขาดทุนทางภาษีที่ยังไม่ได้ใช้ประโยชน์ (Unused Tax Losses Carryforward)</xsl:variable>
            <xsl:variable name="name940147">	  1.11.4.2 ผลแตกต่างชั่วคราวระหว่างมูลค่าตามบัญชีของสินทรัพย์หรือหนี้สินในงบแสดงฐานะการเงินกับฐานภาษี หรือผลแตกต่างชั่วคราวในกำไรทาง</xsl:variable>
            <xsl:variable name="name940148">	        1.11.4.3 เครดิตภาษีที่ยังไม่ได้ใช้ประโยชน์ (Unused Tax Credit Carryforward)</xsl:variable>
            <xsl:variable name="name940149">	      1.11.5 สำรองส่วนขาด (Shortfall of Provisions) </xsl:variable>
            <xsl:variable name="name940150">	      1.11.6 กำไรจากการทำธุรกรรมการแปลงสินทรัพย์เป็นหลักทรัพย์ (Securitization)</xsl:variable>
            <xsl:variable name="name940151">	  1.11.7 การถือหุ้นทุนไขว้กันระหว่างธนาคารพาณิชย์ หรือบริษัทเงินทุน กับบริษัทที่ทำธุรกิจทางการเงินหรือธุรกิจสนับสนุน</xsl:variable>
            <xsl:variable name="name940152">	  1.11.8 เงินลงทุนในตราสารทุนรวมถึงเงินลงทุนในใบสำคัญแสดงสิทธิที่จะซื้อหุ้นของธนาคารพาณิชย์ บริษัทเงินทุนและบริษัทเครดิตฟองซิเอร์</xsl:variable>
            <xsl:variable name="name940231">	  1.11.9 เงินลงทุนในตราสารทุนรวมถึงเงินลงทุนในใบสำคัญแสดงสิทธิที่จะซื้อหุ้นที่นับเป็นเงินกองทุนชั้นที่ 1 ที่เป็นส่วนของเจ้าของของสถาบันการเงินอื่นหรือกลุ่มธุรกิจทางการเงินอื่น นอกจากข้อ 1.11.7 และ 1.11.8</xsl:variable>
            <xsl:variable name="name940232">	  1.11.10 มูลค่าของตราสารทุนอ้างอิงที่นับเข้าเป็นเงินกองทุนชั้นที่ 1 ที่เป็นส่วนของเจ้าของของสถาบันการเงินอื่น หรือกลุ่มธุรกิจทางการเงินอื่น กรณีเป็นผู้ซื้ออนุพันธ์ทางการเงินด้านตราสารทุน (Equity Derivatives)</xsl:variable>
            <xsl:variable name="name940233">	  1.11.11 เงินลงทุนในตราสารทุนรวมถึงเงินลงทุนในใบสำคัญแสดงสิทธิที่จะซื้อหุ้นของบริษัทที่บริษัทที่ประกอบธุรกิจเงินร่วมลงทุนเข้าไปลงทุน</xsl:variable>
            <xsl:variable name="name940153">	  1.11.12 เงินลงทุนในตราสารทุนรวมถึงเงินลงทุนในใบสำคัญแสดงสิทธิที่จะซื้อหุ้นของบริษัท โดยถือหุ้นไม่เกินร้อยละ 10 ของจำนวนหุ้นที่จำหน่ายได้แล้วทั้งหมดของแต่ละบริษัทนั้น</xsl:variable>
            <xsl:variable name="name940154">	  1.11.13 เงินลงทุนในตราสารทุนรวมถึงเงินลงทุนในใบสำคัญแสดงสิทธิที่จะซื้อหุ้นของบริษัท โดยถือหุ้นเกินกว่าร้อยละ 10 ของจำนวนหุ้นที่จำหน่ายได้แล้วทั้งหมดของแต่ละบริษัทนั้น</xsl:variable>
            <xsl:variable name="name940155">	     1.11.14 รายการหักจากเงินกองทุนชั้นที่ 1 ที่เป็นตราสารทางการเงินในส่วนที่เหลือ</xsl:variable>
            <xsl:variable name="name940156">	     1.11.15 อื่น ๆ</xsl:variable>
            <xsl:variable name="name940157">	  2. เงินกองทุนชั้นที่ 1 ที่เป็นตราสารทางการเงิน (Additional Tier 1)</xsl:variable>
            <xsl:variable name="name940158">	    2.1 ทุนที่ออกและชำระแล้ว - หุ้นบุริมสิทธิชนิดไม่สะสมเงินปันผล </xsl:variable>
            <xsl:variable name="name940159">	      2.1.1 ตามบัญชี (Positive Current Exposure)</xsl:variable>
            <xsl:variable name="name940160">	      2.1.2 หัก หุ้นทุนซื้อคืน (ราคาตามมูลค่า) </xsl:variable>
            <xsl:variable name="name940161">	    2.2 ใบสำคัญแสดงสิทธิที่จะซื้อหุ้น</xsl:variable>
            <xsl:variable name="name940162">	    2.3 ส่วนเกิน (ต่ำกว่า) มูลค่าหุ้นสุทธิ </xsl:variable>
            <xsl:variable name="name940163">	      2.3.1 ส่วนเกิน (ต่ำกว่า) มูลค่าของหุ้นที่ออกใหม่และใบสำคัญแสดงสิทธิที่จะซื้อหุ้น </xsl:variable>
            <xsl:variable name="name940164">	      2.3.2 ส่วนเกินทุนหุ้นทุนซื้อคืน </xsl:variable>
			<xsl:variable name="name940165">	 2.4 เงินที่ได้รับจากการออกตราสารแสดงสิทธิในหนี้ที่มีสิทธิด้อยกว่าเจ้าหนี้บุริมสิทธิ    ผู้ฝากเงิน เจ้าหนี้สามัญ และผ้ถือตราสารทางการเงินที่นับเป็นเงินกองทุนชั้นที่ 2 </xsl:variable>
			<xsl:variable name="name940166">	      2.4.1 ตราสารหนี้ที่นับเป็นเงินกองทุนชั้นที่ 1 - ก่อนวันที่ 1 ม.ค. 2556 </xsl:variable>
			<xsl:variable name="name940167">	      2.4.2 ตราสารหนี้ที่นับเป็นเงินกองทุนชั้นที่ 1 - ตั้งแต่วันที่ 1 ม.ค. 2556</xsl:variable>
			<xsl:variable name="name940234">	 2.5 รายการของบริษัทลูกเฉพาะส่วนของผู้ถือหุ้นที่ไม่มีอำนาจควบคุมและบุคคลภายนอกที่สามารถนับเป็นเงินกองทุนชั้นที่ 1 ที่เป็นตราสารทางการเงินของกลุ่มธุรกิจทางการเงิน </xsl:variable>
			<xsl:variable name="name940168">	    2.6 อื่น ๆ</xsl:variable>
			<xsl:variable name="name940169">	    2.7 รายการหักจากเงินกองทุนชั้นที่ 1 ที่เป็นตราสารทางการเงิน</xsl:variable>
			<xsl:variable name="name940170">	      2.7.1 การซื้อคืนตราสารทางการเงินที่นับเป็นเงินกองทุนชั้นที่ 1</xsl:variable>
			<xsl:variable name="name940171">	  2.7.2 การถือตราสารทางการเงินที่นับเป็นเงินกองทุนชั้นที่ 1 ไขว้กันระหว่างธนาคารพาณิชย์ หรือบริษัทเงินทุน กับบริษัทที่ทำธุรกิจทางการเงินหรือธุรกิจสนับสนุน</xsl:variable>
			<xsl:variable name="name940172">	      2.7.3 เงินลงทุนในตราสารทางการเงินที่นับเป็นเงินกองทุนชั้นที่ 1 ของธนาคารพาณิชย์หรือบริษัทเงินทุนอื่น </xsl:variable>
		    <xsl:variable name="name940235">	  2.7.4 เงินลงทุนในตราสารทางการเงินที่นับเป็นเงินกองทุนชั้นที่ 1 ที่เป็นตราสารทางการเงินของสถาบันการเงินอื่น หรือกลุ่มธุรกิจทางการเงินอื่น นอกจากข้อ 2.7.2 และ 2.7.3</xsl:variable>
		    <xsl:variable name="name940236">	  2.7.5 มูลค่าของตราสารทางการเงินอ้างอิงที่นับเข้าเป็นเงินกองทุนชั้นที่ 1 ที่เป็นตราสารทางการเงินของสถาบันการเงินอื่น หรือกลุ่มธุรกิจทางการเงินอื่น กรณีเป็น ผู้ซื้ออนุพันธ์ทางการเงินด้านตราสารหนี้หรือตราสารทุน (Bond / Equity Derivatives) และกรณีเป็นผู้ขายข้อตกลงรับประกันความเสี่ยงด้านเครดิต (Credit Derivatives)</xsl:variable>
			<xsl:variable name="name940173">	  2.7.6 เงินลงทุนในตราสารทางการเงินที่นับเป็นเงินกองทุนชั้นที่ 1 ของบริษัทที่ทำธุรกิจทางการเงินและธุรกิจสนับสนุน โดยถือหุ้นไม่เกินร้อยละ 10 ของจำนวนหุ้นที่จำหน่ายได้แล้วทั้งหมดของแต่ละบริษัทนั้น</xsl:variable>
		    <xsl:variable name="name940174">	  2.7.7 เงินลงทุนในตราสารทางการเงินที่นับเป็นเงินกองทุนชั้นที่ 1 ของบริษัทที่ทำธุรกิจทางการเงินและธุรกิจสนับสนุน โดยถือหุ้นเกินกว่าร้อยละ 10 ของจำนวนหุ้น ที่จำหน่ายได้แล้วทั้งหมดของแต่ละบริษัทนั้น</xsl:variable>
			<xsl:variable name="name940175">	      2.7.8 รายการหักจากเงินกองทุนชั้นที่ 2 ในส่วนที่เหลือ</xsl:variable>
			<xsl:variable name="name940176">	      2.7.9 อื่น ๆ</xsl:variable>
			<xsl:variable name="name940177">        เงินกองทุนชั้นที่ 2 </xsl:variable>
			<xsl:variable name="name940178">              1. ทุนที่ออกและชำระแล้ว - หุ้นบุริมสิทธิชนิดสะสมเงินปันผล </xsl:variable>
			<xsl:variable name="name940179">	   1.1 ตามบัญชี</xsl:variable>
			<xsl:variable name="name940180">	   1.2 หัก หุ้นทุนซื้อคืน (ราคาตามมูลค่า)</xsl:variable>
			<xsl:variable name="name940181">	 2 ใบสำคัญแสดงสิทธิที่จะซื้อหุ้น</xsl:variable>
			<xsl:variable name="name940182">	 3 ส่วนเกิน (ต่ำกว่า) มูลค่าหุ้นสุทธิ</xsl:variable>
			<xsl:variable name="name940183">	    3.1 ส่วนเกิน (ต่ำกว่า) มูลค่าของหุ้นที่ออกใหม่และใบสำคัญแสดงสิทธิที่จะซื้อหุ้น</xsl:variable>
			<xsl:variable name="name940184">	    3.2 ส่วนเกินทุนหุ้นทุนซื้อคืน</xsl:variable>
			<xsl:variable name="name940185">	4. เงินที่ได้รับจากการออกตราสารแสดงสิทธิในหนี้ที่มีสิทธิด้อยกว่าเจ้าหนี้บุริมสิทธิ ผู้ฝากเงินและเจ้าหนี้สามัญ</xsl:variable>
			<xsl:variable name="name940186">	   4.1 ตราสารหนี้ที่นับเป็นเงินกองทุนชั้นที่ 2 - ก่อนวันที่ 1 ม.ค. 2556</xsl:variable>
			<xsl:variable name="name940187">	   4.2 ตราสารหนี้ที่นับเป็นเงินกองทุนชั้นที่ 2 - ตั้งแต่วันที่ 1 ม.ค. 2556</xsl:variable>
		   <xsl:variable name="name940188">	              5. เงินสำรองสำหรับสินทรัพย์จัดชั้นปกติ</xsl:variable>
		   <xsl:variable name="name940189">	              6. เงินสำรองส่วนเกิน (Surplus of Provisions) </xsl:variable>
		   <xsl:variable name="name940237">	    7. รายการของบริษัทลูกเฉพาะส่วนของผู้ถือหุ้นทีไม่มีอำนาจควบคุมและบุคคลภายนอก ที่สามารถนับเป็นเงินกองทุนชั้นที่ 2 ของกลุ่มธุรกิจทางการเงิน</xsl:variable>
		   <xsl:variable name="name940190">	              8. อื่น ๆ</xsl:variable>
		   <xsl:variable name="name940191">	              9. รายการหักจากเงินกองทุนชั้นที่ 2</xsl:variable>
		   <xsl:variable name="name940192">	                9.1 การซื้อคืนตราสารทางการเงินที่นับเป็นเงินกองทุนชั้นที่ 2</xsl:variable>
		   <xsl:variable name="name940193">	     9.2 การถือตราสารทางการเงินที่นับเป็นเงินกองทุนชั้นที่ 2 ไขว้กันระหว่างธนาคารพาณิชย์ หรือบริษัทเงินทุน และบริษัทที่ทำธุรกิจทางการเงินหรือธุรกิจสนับสนุน</xsl:variable>
		   <xsl:variable name="name940194">	                9.3 เงินลงทุนในตราสารทางการเงินที่นับเป็นเงินกองทุนชั้นที่ 2 ของธนาคารพาณิชย์หรือบริษัทเงินทุนอื่น </xsl:variable>
		   <xsl:variable name="name940238">	     9.4 เงินลงทุนในตราสารทางการเงินที่นับเป็นเงินกองทุนชั้นที่ 2 ของสถาบันการเงินอื่น หรือกลุ่มธุรกิจทางการเงินอื่น นอกจาก 9.2 และ 9.3</xsl:variable>
		   <xsl:variable name="name940239">	     9.5 มูลค่าของตราสารทางการเงินอ้างอิงที่นับเข้าเป็นเงินกองทุนชั้นที่ 2 ของสถาบันการเงินอื่น หรือกลุ่มธุรกิจทางการเงินอื่น กรณีเป็นผู้ซื้ออนุพันธ์ทางการเงินด้านตราสารหนี้หรือตราสารทุน (Bond / Equity Derivatives) และกรณีเป็นผู้ขายข้อตกลงรับประกันความเสี่ยงด้านเครดิต (Credit Derivatives)</xsl:variable>
		   <xsl:variable name="name940195">	     9.6 เงินลงทุนในตราสารทางการเงินที่นับเป็นเงินกองทุนชั้นที่ 2 ของบริษัท โดยถือหุ้นไม่เกินร้อยละ 10 ของจำนวนหุ้นที่จำหน่ายได้แล้วทั้งหมดของแต่ละบริษัทนั้น</xsl:variable>
		   <xsl:variable name="name940196">	     9.7 เงินลงทุนในตราสารทางการเงินที่นับเป็นเงินกองทุนชั้นที่ 2 ของบริษัท โดยถือหุ้นเกินกว่าร้อยละ 10 ของจำนวนหุ้นที่จำหน่ายได้แล้วทั้งหมดของแต่ละบริษัทนั้น</xsl:variable>
		   <xsl:variable name="name940197">	                9.8 อื่น ๆ</xsl:variable>
		   <xsl:variable name="name940198">	         เงินกองทุนทั้งสิ้นตามกฎหมาย </xsl:variable>
		   <xsl:variable name="name940199">	         อัตราส่วนเงินกองทุน </xsl:variable>
		   <xsl:variable name="name940200">	            1. เงินกองทุนชั้นที่ 2 : เงินกองทุนชั้นที่ 1 </xsl:variable>
		   <xsl:variable name="name940201">	            2. เงินกองทุนชั้นที่ 1 ที่เป็นส่วนของเจ้าของ (CET1) : สินทรัพย์เสี่ยง</xsl:variable>
		   <xsl:variable name="name940202">	            3. เงินกองทุนชั้นที่ 1 : สินทรัพย์เสี่ยง</xsl:variable>
		   <xsl:variable name="name940203">	            4. เงินกองทุนทั้งสิ้น : สินทรัพย์เสี่ยง </xsl:variable>
		   <xsl:variable name="name940204">	              4.1 วิธี SA และ IRB ก่อนการพิจารณา Capital Floor </xsl:variable>
		   <xsl:variable name="name940205">	              4.2 วิธี IRB หลังการพิจารณา Capital Floor ตามเกณฑ์ที่กำหนด </xsl:variable>
		   <xsl:variable name="name940039">	   เงินกองทุน (เฉพาะสาขาธนาคารพาณิชย์ต่างประเทศ)</xsl:variable>
		   <xsl:variable name="name940040">	      การดำรงสินทรัพย์ตามมาตรา 32</xsl:variable>
		   <xsl:variable name="name940041">	           1. เงินฝากที่ธนาคารแห่งประเทศไทย</xsl:variable>
		   <xsl:variable name="name940042">	           2. หลักทรัพย์รัฐบาลไทย</xsl:variable>
		   <xsl:variable name="name940043">	           3. พันธบัตรธนาคารแห่งประเทศไทย</xsl:variable>
		   <xsl:variable name="name940044">	           4. พันธบัตรกองทุนเพื่อการฟื้นฟูและพัฒนาระบบสถาบันการเงิน</xsl:variable>
		   <xsl:variable name="name940095">	           5. ตราสารแสดงสิทธิในหนี้ของสถาบันคุ้มครองเงินฝาก</xsl:variable>
		   <xsl:variable name="name940045">	          6. หุ้น หุ้นกู้ และตราสารแสดงสิทธิในหนี้ที่ออกโดยธนาคารเพื่อการเกษตรและสหกรณ์การเกษตร</xsl:variable>
		   <xsl:variable name="name940048">	          7. หุ้นกู้ พันธบัตร และตราสารแสดงสิทธิในหนี้ที่ออกโดยกระทรวงการคลัง หรือกระทรวงการคลังค้ำประกันต้นเงินและดอกเบี้ย</xsl:variable>
		   <xsl:variable name="name940050">	          8. หุ้นกู้ พันธบัตร และตราสารแสดงสิทธิในหนี้ที่ออกโดยองค์การของรัฐหรือรัฐวิสาหกิจ</xsl:variable>
		   <xsl:variable name="name940049">	          9. เงินฝากที่องค์กรของรัฐหรือรัฐวิสาหกิจ</xsl:variable>
		   <xsl:variable name="name940051">	         10. อสังหาริมทรัพย์</xsl:variable>
		   <xsl:variable name="name940206">	         11. อื่น ๆ</xsl:variable>
		   <xsl:variable name="name940052">	     การคำนวณเงินทุนที่ใช้ในการดำรงสินทรัพย์ตามมาตรา 32 และยอดสุทธิบัญชีระหว่างกัน</xsl:variable>
		   <xsl:variable name="name940053">	          1 เงินทุนสุทธิเพื่อการดำรงสินทรัพย์ตามมาตรา 32</xsl:variable>
		   <xsl:variable name="name940054">	            1.1 เงินที่นำเข้ามาจากสำนักงานใหญ่และสาขาอื่นในต่างประเทศ</xsl:variable>
		   <xsl:variable name="name940055">	            1.2 มูลค่าที่เพิ่มขึ้น(ลดลง)จากการแปลงค่าเงินที่นำเข้า </xsl:variable>
		   <xsl:variable name="name940056">	            1.3 เงินสำรองที่กันจากกำไรสุทธิ</xsl:variable>
		   <xsl:variable name="name940057">	            1.4 กำไรสุทธิที่ดำรงอยู่ในประเทศไทย</xsl:variable>
		   <xsl:variable name="name940096">	            1.5 ขาดทุนสุทธิที่ได้รับการชดเชยจากสำนักงานใหญ่แล้ว </xsl:variable>
		   <xsl:variable name="name940058">	            1.6 ขาดทุนสุทธิที่ยังมิได้รับการชดเชยจากสำนักงานใหญ่</xsl:variable>
		   <xsl:variable name="name940207">	            1.7 อื่น ๆ</xsl:variable>
		   <xsl:variable name="name940059">	   2. ยอดสุทธิบัญชีระหว่างกันที่สาขาเป็นลูกหนี้ (เจ้าหนี้) สำนักงานใหญ่ สาขาอื่นในต่างประเทศ บริษัทแม่และบริษัทลูกของสำนักงานใหญ่</xsl:variable>
		   <xsl:variable name="name940037">	      เงินกองทุนทั้งสิ้นตามกฎหมาย</xsl:variable>
		   <xsl:variable name="name940077">	          1. เงินกองทุนทั้งสิ้นก่อนรายการหัก</xsl:variable>
		   <xsl:variable name="name940208">	          2 รายการปรับจากเงินกองทุนทั้งสิ้น</xsl:variable>
		   <xsl:variable name="name940209">	            2.1 ผลกำไรที่เกิดจากการเลือกใช้  Fair Value Option </xsl:variable>
		   <xsl:variable name="name940210">	              2.1.1 ตราสารที่เป็นหนี้สินทางการเงิน</xsl:variable>
		   <xsl:variable name="name940211">	              2.1.2 เงินให้สินเชื่อหรือตราสารทางการเงิน</xsl:variable>
		   <xsl:variable name="name940212">	            2.2 ผลขาดทุนที่เกิดจากการเลือกใช้  Fair Value Option</xsl:variable>
		   <xsl:variable name="name940213">	              2.2.1 ตราสารที่เป็นหนี้สินทางการเงิน</xsl:variable>
		   <xsl:variable name="name940214">	              2.2.2 เงินให้สินเชื่อหรือตราสารทางการเงิน</xsl:variable>
		   <xsl:variable name="name940215">	            2.3 สินทรัพย์ภาษีเงินได้รอการตัดบัญชี</xsl:variable>
		   <xsl:variable name="name940216">	              2.3.1 ขาดทุนทางภาษีที่ยังไม่ได้ใช้ประโยชน์ (Unused Tax Losses Carryforward)</xsl:variable>
		   <xsl:variable name="name940217">	    2.3.2 ผลแตกต่างชั่วคราวระหว่างมูลค่าตามบัญชีของสินทรัพย์หรือหนี้สินในงบแสดงฐานะการเงินกับฐานภาษี หรือผลแตกต่างชั่วคราวในกำไรทางบัญชีและกำไรทางภาษี (Temporary Differences)</xsl:variable>
		   <xsl:variable name="name940218">	              2.3.3 เครดิตภาษีที่ยังไม่ได้ใช้ประโยชน์ (Unused Tax Credit Carryforward)</xsl:variable>
		   <xsl:variable name="name940219">	            2.4 อื่น ๆ</xsl:variable>
		   <xsl:variable name="name940220">	         3 รายการหักจากเงินกองทุนทั้งสิ้น</xsl:variable>
		   <xsl:variable name="name940221">	           3.1 ค่าความนิยม</xsl:variable>
		   <xsl:variable name="name940222">	           3.2 สินทรัพย์ไม่มีตัวตน</xsl:variable>
		   <xsl:variable name="name940223">	           3.3 สำรองส่วนขาด (Shortfall of Provisions) </xsl:variable>
		   <xsl:variable name="name940224">	           3.4 กำไรจากการทำธุรกรรมการแปลงสินทรัพย์เป็นหลักทรัพย์ (Securitization) </xsl:variable>
		   <xsl:variable name="name940225">	   3.5 เงินลงทุนในตราสารทุนรวมถึงเงินลงทุนในใบสำคัญแสดงสิทธิที่จะซื้อหุ้นของบริษัทที่สาขาธนาคารพาณิชย์ต่างประเทศถือหุ้นไม่เกินร้อยละ 10 ของจำนวนหุ้นที่จำหน่ายได้แล้วทั้งหมดของแต่ละบริษัทนั้น </xsl:variable>
		   <xsl:variable name="name940226">	   3.6 เงินลงทุนในตราสารทุนรวมถึงเงินลงทุนในใบสำคัญแสดงสิทธิที่จะซื้อหุ้นของบริษัทที่สาขาธนาคารพาณิชย์ต่างประเทศถือหุ้นเกินกว่าร้อยละ 10 ของจำนวนหุ้นที่จำหน่ายได้แล้วทั้งหมดของแต่ละบริษัทนั้น</xsl:variable>
		   <xsl:variable name="name940227">	           3.7 อื่นๆ</xsl:variable>
		   <xsl:variable name="name940088">	    อัตราส่วนเงินกองทุน : สินทรัพย์เสี่ยง</xsl:variable>
		   <xsl:variable name="name940089">	       1. วิธี SA และ IRB ก่อนการพิจารณา Capital Floor</xsl:variable>
		   <xsl:variable name="name940090">	       2. วิธี IRB หลังการพิจารณา Capital Floor ตามเกณฑ์ที่กำหนด</xsl:variable>
		  
	
		   <!--1.-->

           <xsl:variable name="AmountPerBook940107"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940107/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940108"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940108/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="TotalAmountPerBook940106"><xsl:value-of select="$AmountPerBook940107 - $AmountPerBook940108"/></xsl:variable>
		   
		   <xsl:variable name="AmountPerBook940109"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940109/OutstandingAmountPerBook"/></xsl:variable>

           <xsl:variable name="AmountPerBook940111"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940111/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940112"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940112/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="TotalAmountPerBook940110"><xsl:value-of select="$AmountPerBook940111 + $AmountPerBook940112"/></xsl:variable>
        
		   <xsl:variable name="AmountPerBook940114"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940114/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940115"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940115/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940116"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940116/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="TotalAmountPerBook940113"><xsl:value-of select="$AmountPerBook940114 + $AmountPerBook940115 + $AmountPerBook940116"/></xsl:variable>
		   
		   <xsl:variable name="AmountPerBook940118"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940118/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940117"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940117/OutstandingAmountPerBook"/></xsl:variable>

		   <xsl:variable name="AmountPerBook940130"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940130/OutstandingAmountPerBook"/></xsl:variable>
		   <!--<xsl:variable name="TotalAmountPerBook940119"><xsl:value-of select="$TotalAmountPerBook940120 + $AmountPerBook940130"/></xsl:variable> -->
		   
		   <xsl:variable name="AmountPerBook940122"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940122/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940123"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940123/OutstandingAmountPerBook"/></xsl:variable>
		   
		    <xsl:variable name="TotalAmountPerBook940121"><xsl:value-of select="$AmountPerBook940122 + $AmountPerBook940123"/></xsl:variable>
			
		    <xsl:variable name="AmountPerBook940125"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940125/OutstandingAmountPerBook"/></xsl:variable>
            <xsl:variable name="AmountPerBook940126"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940126/OutstandingAmountPerBook"/></xsl:variable>
		   
		    <xsl:variable name="TotalAmountPerBook940124"><xsl:value-of select="$AmountPerBook940125 + $AmountPerBook940126"/></xsl:variable>
			<xsl:variable name="AmountPerBook940127"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940117/OutstandingAmountPerBook"/></xsl:variable>
			<xsl:variable name="AmountPerBook940128"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940117/OutstandingAmountPerBook"/></xsl:variable>
			<xsl:variable name="AmountPerBook940129"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940117/OutstandingAmountPerBook"/></xsl:variable>
		   

		   <xsl:variable name="TotalAmountPerBook940120"><xsl:value-of select="$TotalAmountPerBook940121 + $TotalAmountPerBook940124 + $AmountPerBook940127 + $AmountPerBook940128 + $AmountPerBook940129"/></xsl:variable> 
		   
		   <xsl:variable name="TotalAmountPerBook940119"><xsl:value-of select="$TotalAmountPerBook940120 + $AmountPerBook940130"/></xsl:variable>

		   
		   
		   <!--xsl:variable name="TotalAmountPerBook940121"><xsl:value-of select="$AmountPerBook940122 + $AmountPerBook940123"/></xsl:variable -->
        
		   
		   <!--xsl:variable name="TotalAmountPerBook940124"><xsl:value-of select="$AmountPerBook940125 + $AmountPerBook940126"/></xsl:variable-->
		   
		   <xsl:variable name="AmountPerBook940229"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940229/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940230"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940230/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="TotalAmountPerBook940133"><xsl:value-of select="$AmountPerBook940229 + $AmountPerBook940230"/></xsl:variable>
		   
		   <xsl:variable name="AmountPerBook940135"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940135/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940136"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940136/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="TotalAmountPerBook940134"><xsl:value-of select="$AmountPerBook940135 + $AmountPerBook940136"/></xsl:variable>
		   
		   <xsl:variable name="AmountPerBook940138"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940138/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940139"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940139/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="TotalAmountPerBook940137"><xsl:value-of select="$AmountPerBook940138 + $AmountPerBook940139"/></xsl:variable>
		   
		   <xsl:variable name="AmountPerBook940140"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940140/OutstandingAmountPerBook"/></xsl:variable>
		   
		   <xsl:variable name="AmountPerBook940142"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940142/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940143"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940143/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940144"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940144/OutstandingAmountPerBook"/></xsl:variable>
		   
		   <xsl:variable name="AmountPerBook940146"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940146/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940147"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940147/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940148"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940148/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="TotalAmountPerBook940145"><xsl:value-of select="$AmountPerBook940146 + $AmountPerBook940147 + $AmountPerBook940148"/></xsl:variable>
		   
		   <xsl:variable name="AmountPerBook940149"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940149/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940150"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940150/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940151"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940151/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940152"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940152/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940231"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940231/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940232"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940232/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940233"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940233/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940153"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940153/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940154"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940154/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940155"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940155/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940156"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940156/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940228"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940228/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940131"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940131/OutstandingAmountPerBook"/></xsl:variable>
		   
		   <xsl:variable name="TotalAmountPerBook940132"><xsl:value-of select="$TotalAmountPerBook940133 + $TotalAmountPerBook940134 + $TotalAmountPerBook940137 + $AmountPerBook940140"/></xsl:variable>
		  
		   <xsl:variable name="TotalAmountPerBook940141"><xsl:value-of select="$AmountPerBook940142 + $AmountPerBook940143 + $TotalAmountPerBook940145 + $AmountPerBook940149 +$AmountPerBook940150 +$AmountPerBook940151 +$AmountPerBook940152 +$AmountPerBook940231 +$AmountPerBook940232 +$AmountPerBook940233 +$AmountPerBook940153 +$AmountPerBook940154 +$AmountPerBook940155 +$AmountPerBook940156"/></xsl:variable>
		   <!--sum1.-->
		   <xsl:variable name="TotalAmountPerBook940105"><xsl:value-of select="$TotalAmountPerBook940106 + $AmountPerBook940109  + $TotalAmountPerBook940110 + $AmountPerBook940118 + $AmountPerBook940117 + $TotalAmountPerBook940113  + $TotalAmountPerBook940119 + $AmountPerBook940228 + $AmountPerBook940131 + $TotalAmountPerBook940132 + $TotalAmountPerBook940141"/></xsl:variable>
		
		  <!--End1.-->
		   
		  
		   <!--2.-->
		   <xsl:variable name="AmountPerBook940159"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940159/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940160"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940160/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="TotalAmountPerBook940158"><xsl:value-of select="$AmountPerBook940159 + $AmountPerBook940160"/></xsl:variable>
		   
		   <xsl:variable name="AmountPerBook940161"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940161/OutstandingAmountPerBook"/></xsl:variable>

		   <xsl:variable name="AmountPerBook940163"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940163/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940164"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940164/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="TotalAmountPerBook940162"><xsl:value-of select="$AmountPerBook940163 + $AmountPerBook940164"/></xsl:variable>
		   
		   <xsl:variable name="AmountPerBook940166"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940166/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940167"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940167/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="TotalAmountPerBook940165"><xsl:value-of select="$AmountPerBook940166 + $AmountPerBook940167"/></xsl:variable>
		   
		   <xsl:variable name="AmountPerBook940234"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940234/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940168"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940168/OutstandingAmountPerBook"/></xsl:variable>

		   
		   <xsl:variable name="AmountPerBook940170"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940170/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940171"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940171/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940172"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940172/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940235"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940235/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940236"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940236/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940173"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940173/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940174"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940174/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940175"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940175/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940176"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940176/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="TotalAmountPerBook940169"><xsl:value-of select="$AmountPerBook940170 + $AmountPerBook940171+ $AmountPerBook940172 + $AmountPerBook940235 + $AmountPerBook940236 + $AmountPerBook940173 + $AmountPerBook940174 + $AmountPerBook940175 + $AmountPerBook940176"/></xsl:variable>
		   
		   <xsl:variable name="TotalAmountPerBook940157"><xsl:value-of select="$TotalAmountPerBook940158 + $AmountPerBook940161 + $TotalAmountPerBook940162 + $TotalAmountPerBook940165 + $AmountPerBook940234 + $AmountPerBook940168 + $TotalAmountPerBook940169"/></xsl:variable>
 
		   <!--End 2.-->
		   
		    <!--1+2.[104 = TotalAmountPerBook940105 + TotalAmountPerBook940157]-->		  
	        <xsl:variable name="TotalAmountPerBook940104"><xsl:value-of select="$TotalAmountPerBook940105 + $TotalAmountPerBook940157"/></xsl:variable>
			
			
		    
			<!--End 1+2.-->
			 
		   <!--เงินกองทุนชั้นที่ 2 .-->
		   <xsl:variable name="AmountPerBook940179"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940179/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940180"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940180/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="TotalAmountPerBook940178"><xsl:value-of select="$AmountPerBook940179 + $AmountPerBook940180"/></xsl:variable>
		   
		   <xsl:variable name="AmountPerBook940181"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940181/OutstandingAmountPerBook"/></xsl:variable>
		   
		   <xsl:variable name="AmountPerBook940183"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940183/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940184"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940184/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="TotalAmountPerBook940182"><xsl:value-of select="$AmountPerBook940183 + $AmountPerBook940184"/></xsl:variable>

		   <xsl:variable name="AmountPerBook940186"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940186/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940187"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940187/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="TotalAmountPerBook940185"><xsl:value-of select="$AmountPerBook940183 + $AmountPerBook940184"/></xsl:variable>
		   
		   <xsl:variable name="AmountPerBook940188"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940188/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940189"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940189/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940237"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940237/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940190"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940190/OutstandingAmountPerBook"/></xsl:variable>
		   
		   <xsl:variable name="AmountPerBook940192"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940192/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940193"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940193/OutstandingAmountPerBook"/></xsl:variable>
           <xsl:variable name="AmountPerBook940194"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940194/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940238"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940238/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940239"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940239/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940195"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940195/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940196"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940196/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940197"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940197/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="TotalAmountPerBook940191"><xsl:value-of select="$AmountPerBook940192 + $AmountPerBook940193 + $AmountPerBook940194
		   + $AmountPerBook940238 + $AmountPerBook940239 + $AmountPerBook940195 + $AmountPerBook940196 + $AmountPerBook940197"/></xsl:variable>
			<!--sumเงินกองทุนชั้นที่ 2 .-->
		   <xsl:variable name="TotalAmountPerBook940177"><xsl:value-of select="$TotalAmountPerBook940178 + $AmountPerBook940181 + $TotalAmountPerBook940182 + $TotalAmountPerBook940185 + $AmountPerBook940188 + $AmountPerBook940189 + $AmountPerBook940237 + $AmountPerBook940190 + $TotalAmountPerBook940191"/></xsl:variable>
		   
		   <!--endเงินกองทุนชั้นที่ 2 .-->
		   
		   <xsl:variable name="AmountPerBook940198"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940198/OutstandingAmountPerBook"/></xsl:variable>
           
		   
		    <!--อัตราส่วนเงินกองทุน  .-->
		   <xsl:variable name="AmountPerBook940200"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940200/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940201"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940201/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940202"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940202/OutstandingAmountPerBook"/></xsl:variable>
		   
		   <xsl:variable name="AmountPerBook940204"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940204/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940205"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940205/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="TotalAmountPer940203"><xsl:value-of select="$AmountPerBook940204 + $AmountPerBook940205"/></xsl:variable>
 
 		   <xsl:variable name="TotalAmountPer940199"><xsl:value-of select="$AmountPerBook940200 + $AmountPerBook940201 + $AmountPerBook940202 + $TotalAmountPer940203"/></xsl:variable>
			<!--endอัตราส่วนเงินกองทุน .-->
			
			<!--sumTotalAmountPerBook940103.-->
			<xsl:variable name="TotalAmountPerBook940103"><xsl:value-of select="$TotalAmountPerBook940104 + $TotalAmountPerBook940177 + $AmountPerBook940198 + $TotalAmountPer940199"/></xsl:variable>
		
		  <!--การดำรงสินทรัพย์ตามมาตรา 32.-->
		   <xsl:variable name="AmountPerBook940041"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940041/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940042"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940042/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940043"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940043/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940044"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940044/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940095"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940095/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940045"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940045/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940048"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940048/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940050"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940050/OutstandingAmountPerBook"/></xsl:variable>
 		   <xsl:variable name="AmountPerBook940049"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940049/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940051"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940051/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940206"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940206/OutstandingAmountPerBook"/></xsl:variable>

 		   <xsl:variable name="TotalAmountPer940040"><xsl:value-of select="$AmountPerBook940041 + $AmountPerBook940042 + $AmountPerBook940043 + $AmountPerBook940044 + $AmountPerBook940095 + $AmountPerBook940095 + $AmountPerBook940045 + $AmountPerBook940048 + $AmountPerBook940050 + $AmountPerBook940049 + $AmountPerBook940051 + $AmountPerBook940206"/></xsl:variable>

		   <!--endการดำรงสินทรัพย์ตามมาตรา 32.-->

		   <!--การคำนวณเงินทุนที่ใช้ในการดำรงสินทรัพย์ตามมาตรา 32 .-->
		   <xsl:variable name="AmountPerBook940054"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940054/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940055"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940055/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940056"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940056/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940057"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940057/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940096"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940096/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940058"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940058/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="AmountPerBook940207"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940207/OutstandingAmountPerBook"/></xsl:variable>
           
		   <xsl:variable name="TotalAmountPer940053"><xsl:value-of select="$AmountPerBook940054 + $AmountPerBook940055 + $AmountPerBook940056 + $AmountPerBook940057 + $AmountPerBook940096 + $AmountPerBook940058 + $AmountPerBook940207 "/></xsl:variable>
		  
		   <xsl:variable name="AmountPerBook940059"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940059/OutstandingAmountPerBook"/></xsl:variable>

		   <xsl:variable name="TotalAmountPer940052"><xsl:value-of  select="$TotalAmountPer940053 + $AmountPerBook940059"/></xsl:variable>
		   <!--endการคำนวณเงินทุนที่ใช้ในการดำรงสินทรัพย์ตามมาตรา 32 .-->
		    <!--เงินกองทุนทั้งสิ้นตามกฎหมาย .-->
			<xsl:variable name="AmountPerBook940077"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940077/OutstandingAmountPerBook"/></xsl:variable>

			<xsl:variable name="AmountPerBook940210"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940210/OutstandingAmountPerBook"/></xsl:variable>
			<xsl:variable name="AmountPerBook940211"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940211/OutstandingAmountPerBook"/></xsl:variable>
			<xsl:variable name="TotalAmountPer940209"><xsl:value-of  select="$AmountPerBook940210 + $AmountPerBook940211"/></xsl:variable>
			
			<xsl:variable name="AmountPerBook940213"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940213/OutstandingAmountPerBook"/></xsl:variable>
			<xsl:variable name="AmountPerBook940214"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940214/OutstandingAmountPerBook"/></xsl:variable>
			<xsl:variable name="TotalAmountPer940212"><xsl:value-of  select="$AmountPerBook940213 + $AmountPerBook940214"/></xsl:variable>

			<xsl:variable name="AmountPerBook940216"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940216/OutstandingAmountPerBook"/></xsl:variable>
			<xsl:variable name="AmountPerBook940217"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940217/OutstandingAmountPerBook"/></xsl:variable>
			<xsl:variable name="AmountPerBook940218"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940218/OutstandingAmountPerBook"/></xsl:variable>
            <xsl:variable name="TotalAmountPer940215"><xsl:value-of select="$AmountPerBook940216 + $AmountPerBook940217 + $AmountPerBook940218"/></xsl:variable>
			<xsl:variable name="AmountPerBook940219"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940219/OutstandingAmountPerBook"/></xsl:variable>
			
			<xsl:variable name="TotalAmountPer940208"><xsl:value-of  select="$TotalAmountPer940209 + $TotalAmountPer940212 + $TotalAmountPer940215 + $AmountPerBook940219"/></xsl:variable>

			<xsl:variable name="AmountPerBook940221"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940221/OutstandingAmountPerBook"/></xsl:variable>
			<xsl:variable name="AmountPerBook940222"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940222/OutstandingAmountPerBook"/></xsl:variable>
			<xsl:variable name="AmountPerBook940223"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940223/OutstandingAmountPerBook"/></xsl:variable>
			<xsl:variable name="AmountPerBook940224"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940224/OutstandingAmountPerBook"/></xsl:variable>
			<xsl:variable name="AmountPerBook940225"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940225/OutstandingAmountPerBook"/></xsl:variable>
			<xsl:variable name="AmountPerBook940226"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940226/OutstandingAmountPerBook"/></xsl:variable>
			<xsl:variable name="AmountPerBook940227"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940227/OutstandingAmountPerBook"/></xsl:variable>
			<xsl:variable name="TotalAmountPer940220"><xsl:value-of  select="$AmountPerBook940221 + $AmountPerBook940222 + $AmountPerBook940224 + $AmountPerBook940225 + $AmountPerBook940226 + $AmountPerBook940227"/></xsl:variable>

			<xsl:variable name="TotalAmountPer940037"><xsl:value-of  select="$AmountPerBook940077 + $TotalAmountPer940208 + $TotalAmountPer940220"/></xsl:variable>
		    <!--endเงินกองทุนทั้งสิ้นตามกฎหมาย.-->
			
			<!--อัตราส่วนเงินกองทุน : สินทรัพย์เสี่ยง .-->
			<xsl:variable name="AmountPerBook940089"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940089/OutstandingAmountPerBook"/></xsl:variable>
		    <xsl:variable name="AmountPerBook940090"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940090/OutstandingAmountPerBook"/></xsl:variable>
			<xsl:variable name="TotalAmountPer940088"><xsl:value-of  select="$AmountPerBook940089 + $AmountPerBook940090"/></xsl:variable>
			<!--endอัตราส่วนเงินกองทุน : สินทรัพย์เสี่ยง .-->
			 
			<!--039.-->
			<xsl:variable name="TotalAmountPer940039"><xsl:value-of  select="$TotalAmountPer940088 + $TotalAmountPer940037 + $TotalAmountPer940052 + $TotalAmountPer940040"/></xsl:variable>
			<!--end039 .-->
			 
			 
			<!--ApplicableCapitalFundAmount.-->
			<xsl:variable name="ApplicableCapitalFundAmount940107"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940107/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940108"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940108/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalApplicableCapitalFundAmount940106"><xsl:value-of select="$ApplicableCapitalFundAmount940107 + $ApplicableCapitalFundAmount940108"/></xsl:variable>

			<xsl:variable name="ApplicableCapitalFundAmount940109"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940109/ApplicableCapitalFundAmount"/></xsl:variable>
			
			<xsl:variable name="ApplicableCapitalFundAmount940111"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940111/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940112"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940112/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalApplicableCapitalFundAmount940110"><xsl:value-of select="$ApplicableCapitalFundAmount940111 + $ApplicableCapitalFundAmount940112"/></xsl:variable>

			<xsl:variable name="ApplicableCapitalFundAmount940118"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940118/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940117"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940117/ApplicableCapitalFundAmount"/></xsl:variable>
			
			<xsl:variable name="ApplicableCapitalFundAmount940114"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940114/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940115"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940115/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940116"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940116/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalApplicableCapitalFundAmount940113"><xsl:value-of select="$ApplicableCapitalFundAmount940114 + $ApplicableCapitalFundAmount940115 + $ApplicableCapitalFundAmount940116"/></xsl:variable>

		   

			
			<xsl:variable name="ApplicableCapitalFundAmount940122"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940122/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940123"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940123/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalApplicableCapitalFundAmount940121"><xsl:value-of select="$ApplicableCapitalFundAmount940122 + $ApplicableCapitalFundAmount940123"/></xsl:variable>
			
			<xsl:variable name="ApplicableCapitalFundAmount940125"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940125/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940126"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940126/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalApplicableCapitalFundAmount940124"><xsl:value-of select="$ApplicableCapitalFundAmount940125 + $ApplicableCapitalFundAmount940126"/></xsl:variable>
			
			<xsl:variable name="ApplicableCapitalFundAmount940127"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940127/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940128"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940128/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940129"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940129/ApplicableCapitalFundAmount"/></xsl:variable>
			
			<xsl:variable name="TotalApplicableCapitalFundAmount940120"><xsl:value-of select="$TotalApplicableCapitalFundAmount940121 + $TotalApplicableCapitalFundAmount940124 + $ApplicableCapitalFundAmount940127 + $ApplicableCapitalFundAmount940128 + $ApplicableCapitalFundAmount940129"/></xsl:variable> 
		   <xsl:variable name="ApplicableCapitalFundAmount940130"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940130/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="TotalApplicableCapitalFundAmount940119"><xsl:value-of select="$TotalApplicableCapitalFundAmount940120 + $ApplicableCapitalFundAmount940130"/></xsl:variable> 
			<!--xsl:variable name="TotalApplicableCapitalFundAmount940119"><xsl:value-of select="$TotalApplicableCapitalFundAmount940121 + $TotalApplicableCapitalFundAmount940124 + $ApplicableCapitalFundAmount940127 + $ApplicableCapitalFundAmount940128 + $ApplicableCapitalFundAmount940129"/></xsl:variable -->

			<xsl:variable name="ApplicableCapitalFundAmount940228"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940228/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940131"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940131/ApplicableCapitalFundAmount"/></xsl:variable>

			<xsl:variable name="ApplicableCapitalFundAmount940229"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940229/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940230"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940230/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalApplicableCapitalFundAmount940133"><xsl:value-of select="$ApplicableCapitalFundAmount940229 + $ApplicableCapitalFundAmount940230"/></xsl:variable>
			
			<xsl:variable name="ApplicableCapitalFundAmount940135"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940135/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940136"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940136/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalApplicableCapitalFundAmount940134"><xsl:value-of select="$ApplicableCapitalFundAmount940135 + $ApplicableCapitalFundAmount940136"/></xsl:variable>
			
			<xsl:variable name="ApplicableCapitalFundAmount940138"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940138/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940139"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940139/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalApplicableCapitalFundAmount940137"><xsl:value-of select="$ApplicableCapitalFundAmount940138 + $ApplicableCapitalFundAmount940139"/></xsl:variable>
						
			<xsl:variable name="ApplicableCapitalFundAmount940140"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940140/ApplicableCapitalFundAmount"/></xsl:variable>

			
			<xsl:variable name="TotalApplicableCapitalFundAmount940132"><xsl:value-of select="$TotalApplicableCapitalFundAmount940133 + $TotalApplicableCapitalFundAmount940134 + $TotalApplicableCapitalFundAmount940137 + $ApplicableCapitalFundAmount940140"/></xsl:variable>

			<xsl:variable name="ApplicableCapitalFundAmount940142"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940142/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940143"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940143/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940144"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940144/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940146"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940146/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940147"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940147/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940148"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940148/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalApplicableCapitalFundAmount940145"><xsl:value-of select="$ApplicableCapitalFundAmount940146 + $ApplicableCapitalFundAmount940147 + $ApplicableCapitalFundAmount940148"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940149"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940149/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940150"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940150/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940151"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940151/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940152"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940152/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940231"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940231/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940232"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940232/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940233"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940233/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940153"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940153/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940154"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940154/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940155"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940155/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940156"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940156/ApplicableCapitalFundAmount"/></xsl:variable>
			
			<xsl:variable name="TotalApplicableCapitalFundAmount940141"><xsl:value-of select="$ApplicableCapitalFundAmount940142 + $ApplicableCapitalFundAmount940143 + $ApplicableCapitalFundAmount940144 + $TotalApplicableCapitalFundAmount940145 
			+ $ApplicableCapitalFundAmount940149 + $ApplicableCapitalFundAmount940150 + $ApplicableCapitalFundAmount940151 
			+ $ApplicableCapitalFundAmount940152 + $ApplicableCapitalFundAmount940231
			+ $ApplicableCapitalFundAmount940232 + $ApplicableCapitalFundAmount940233 
			+ $ApplicableCapitalFundAmount940153 + $ApplicableCapitalFundAmount940154 + $ApplicableCapitalFundAmount940155 + $ApplicableCapitalFundAmount940156"/></xsl:variable>

			<!--SUM 1. เงินกองทุนชั้นที่ 1 ที่เป็นส่วนของเจ้าของ -->
			<xsl:variable name="TotalApplicableCapitalFundAmount940105"><xsl:value-of select="$TotalApplicableCapitalFundAmount940106 + $TotalApplicableCapitalFundAmount940110
			+ $ApplicableCapitalFundAmount940118 + $ApplicableCapitalFundAmount940117 
			+ $TotalApplicableCapitalFundAmount940113 + $TotalApplicableCapitalFundAmount940119 + $ApplicableCapitalFundAmount940228 
			+ $ApplicableCapitalFundAmount940131 + $TotalApplicableCapitalFundAmount940132
			+ $TotalApplicableCapitalFundAmount940141 "/></xsl:variable>
			
		
			<xsl:variable name="ApplicableCapitalFundAmount940159"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940159/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940160"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940160/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalApplicableCapitalFundAmount940158"><xsl:value-of select="$ApplicableCapitalFundAmount940159 + $ApplicableCapitalFundAmount940160"/></xsl:variable>
			
			<xsl:variable name="ApplicableCapitalFundAmount940161"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940161/ApplicableCapitalFundAmount"/></xsl:variable>

			<xsl:variable name="ApplicableCapitalFundAmount940163"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940163/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940164"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940164/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalApplicableCapitalFundAmount940162"><xsl:value-of select="$ApplicableCapitalFundAmount940163 + $ApplicableCapitalFundAmount940164"/></xsl:variable>
			
			<xsl:variable name="ApplicableCapitalFundAmount940166"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940166/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940167"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940167/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalApplicableCapitalFundAmount940165"><xsl:value-of select="$ApplicableCapitalFundAmount940166 + $ApplicableCapitalFundAmount940167"/></xsl:variable>
			
			<xsl:variable name="ApplicableCapitalFundAmount940234"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940234/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940168"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940168/ApplicableCapitalFundAmount"/></xsl:variable>

			<xsl:variable name="ApplicableCapitalFundAmount940170"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940170/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940171"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940171/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940172"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940172/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940235"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940235/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940236"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940236/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940173"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940173/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940174"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940174/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940175"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940175/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940176"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940176/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalApplicableCapitalFundAmount940169"><xsl:value-of select="$ApplicableCapitalFundAmount940170
			+ $ApplicableCapitalFundAmount940171 + $ApplicableCapitalFundAmount940172 + $ApplicableCapitalFundAmount940235
			+ $ApplicableCapitalFundAmount940236 + $ApplicableCapitalFundAmount940173 + $ApplicableCapitalFundAmount940174
			+ $ApplicableCapitalFundAmount940175 + $ApplicableCapitalFundAmount940176 "/></xsl:variable>
			
			<!--SUM 2. เงินกองทุนชั้นที่ 1 ที่เป็นตราสารทางการเงิน (Additional Tier 1) -->
			<xsl:variable name="TotalApplicableCapitalFundAmount940157"><xsl:value-of select="$TotalApplicableCapitalFundAmount940158 + $ApplicableCapitalFundAmount940161
			+ $TotalApplicableCapitalFundAmount940162 + $TotalApplicableCapitalFundAmount940165 
			+ $ApplicableCapitalFundAmount940234 + $ApplicableCapitalFundAmount940168 + $TotalApplicableCapitalFundAmount940169"/></xsl:variable>
			
			<!--sumชั้นที่ 1  104= 105+157-->
			<xsl:variable name="TotalApplicableCapitalFundAmount940104"><xsl:value-of select="$TotalApplicableCapitalFundAmount940105 + $TotalApplicableCapitalFundAmount940157"/></xsl:variable>
		
			<!--เงินกองทุนชั้นที่ 2 .-->
			<xsl:variable name="ApplicableCapitalFundAmount940179"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940179/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940180"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940180/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalApplicableCapitalFundAmount940178"><xsl:value-of select="$ApplicableCapitalFundAmount940179 + $ApplicableCapitalFundAmount940180"/></xsl:variable>
						
			<xsl:variable name="ApplicableCapitalFundAmount940181"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940181/ApplicableCapitalFundAmount"/></xsl:variable>

			<xsl:variable name="ApplicableCapitalFundAmount940183"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940183/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940184"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940184/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalApplicableCapitalFundAmount940182"><xsl:value-of select="$ApplicableCapitalFundAmount940183 + $ApplicableCapitalFundAmount940184"/></xsl:variable>
			
			<xsl:variable name="ApplicableCapitalFundAmount940186"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940186/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940187"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940187/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalApplicableCapitalFundAmount940185"><xsl:value-of select="$ApplicableCapitalFundAmount940186 + $ApplicableCapitalFundAmount940187"/></xsl:variable>
			
			<xsl:variable name="ApplicableCapitalFundAmount940188"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940188/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940189"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940189/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940237"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940237/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940190"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940190/ApplicableCapitalFundAmount"/></xsl:variable>
			
			<xsl:variable name="ApplicableCapitalFundAmount940192"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940192/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940193"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940193/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940194"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940194/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940238"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940238/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940239"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940239/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940195"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940195/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940196"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940196/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940197"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940197/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalApplicableCapitalFundAmount940191"><xsl:value-of select="$ApplicableCapitalFundAmount940192 + $ApplicableCapitalFundAmount940193
			+ $ApplicableCapitalFundAmount940194 + $ApplicableCapitalFundAmount940238 + $ApplicableCapitalFundAmount940239
			+ $ApplicableCapitalFundAmount940195 + $ApplicableCapitalFundAmount940196 + $ApplicableCapitalFundAmount940197"/></xsl:variable>

			<!--SUMเงินกองทุนชั้นที่ 2 -->
			<xsl:variable name="TotalApplicableCapitalFundAmount940177"><xsl:value-of select="$TotalApplicableCapitalFundAmount940178
			+ $ApplicableCapitalFundAmount940181
			+ $TotalApplicableCapitalFundAmount940182 + $TotalApplicableCapitalFundAmount940185 
			+ $ApplicableCapitalFundAmount940188 + $ApplicableCapitalFundAmount940189 + $ApplicableCapitalFundAmount940237 +
			$ApplicableCapitalFundAmount940190 + $TotalApplicableCapitalFundAmount940191"/></xsl:variable>
			<!--Endเงินกองทุนชั้นที่ 2 -->
			
			<xsl:variable name="ApplicableCapitalFundAmount940198"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940198/ApplicableCapitalFundAmount"/></xsl:variable>

			<!--อัตราส่วนเงินกองทุน  -->
			<xsl:variable name="ApplicableCapitalFundAmount940200"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940200/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940201"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940201/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940202"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940202/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940204"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940204/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940205"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940205/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalApplicableCapitalFundAmount940203"><xsl:value-of select="$ApplicableCapitalFundAmount940204 + $ApplicableCapitalFundAmount940205"/></xsl:variable>
			
			<xsl:variable name="TotalApplicableCapitalFundAmount940199"><xsl:value-of select="$ApplicableCapitalFundAmount940200 + $ApplicableCapitalFundAmount940201 + $ApplicableCapitalFundAmount940202 + $TotalApplicableCapitalFundAmount940203"/></xsl:variable>
			<!--Endอัตราส่วนเงินกองทุน  -->
			<!--
			<xsl:variable name="TotalApplicableCapitalFundAmount940177"><xsl:value-of select="$TotalApplicableCapitalFundAmount940178 + $ApplicableCapitalFundAmount940181
			+ $TotalApplicableCapitalFundAmount940182 + $TotalApplicableCapitalFundAmount940185 + $ApplicableCapitalFundAmount940188 + $ApplicableCapitalFundAmount940189 + $ApplicableCapitalFundAmount940237 +
			$ApplicableCapitalFundAmount940190 + $TotalApplicableCapitalFundAmount940191"/></xsl:variable> -->
			
			<!--sum103= 104+177+198+199-->
			<xsl:variable name="TotalApplicableCapitalFundAmount940103"><xsl:value-of select="$TotalApplicableCapitalFundAmount940104 + $TotalApplicableCapitalFundAmount940177 + $ApplicableCapitalFundAmount940198 + $TotalApplicableCapitalFundAmount940199"/></xsl:variable>
			
			
			<!--เงินกองทุน (เฉพาะสาขาธนาคารพาณิชย์ต่างประเทศ)-->
			<xsl:variable name="ApplicableCapitalFundAmount940041"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940041/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940042"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940042/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940043"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940043/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940044"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940044/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940095"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940095/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940045"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940045/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940048"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940048/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940050"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940050/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940049"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940049/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940051"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940051/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940206"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940206/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalApplicableCapitalFundAmount940040"><xsl:value-of select="$ApplicableCapitalFundAmount940041 + $ApplicableCapitalFundAmount940042 + $ApplicableCapitalFundAmount940043 + $ApplicableCapitalFundAmount940044
			+ $ApplicableCapitalFundAmount940095 + $ApplicableCapitalFundAmount940045 + $ApplicableCapitalFundAmount940048 + $ApplicableCapitalFundAmount940050
			+ $ApplicableCapitalFundAmount940049 + $ApplicableCapitalFundAmount940051 + $ApplicableCapitalFundAmount940206"/></xsl:variable>

			<xsl:variable name="ApplicableCapitalFundAmount940054"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940054/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940055"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940055/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940056"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940056/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940057"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940057/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940096"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940096/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940058"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940058/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940207"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940207/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalApplicableCapitalFundAmount940053"><xsl:value-of select="$ApplicableCapitalFundAmount940054 + $ApplicableCapitalFundAmount940055 + $ApplicableCapitalFundAmount940056 + $ApplicableCapitalFundAmount940044
			+ $ApplicableCapitalFundAmount940057 + $ApplicableCapitalFundAmount940096 + $ApplicableCapitalFundAmount940058 + $ApplicableCapitalFundAmount940207"/></xsl:variable>

			<xsl:variable name="ApplicableCapitalFundAmount940059"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940059/ApplicableCapitalFundAmount"/></xsl:variable>

			<xsl:variable name="TotalApplicableCapitalFundAmount940052"><xsl:value-of select="$TotalApplicableCapitalFundAmount940053 + $ApplicableCapitalFundAmount940059"/></xsl:variable>

			<xsl:variable name="ApplicableCapitalFundAmount940077"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940077/ApplicableCapitalFundAmount"/></xsl:variable>

			<xsl:variable name="ApplicableCapitalFundAmount940210"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940210/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940211"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940211/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalApplicableCapitalFundAmount940209"><xsl:value-of select="$ApplicableCapitalFundAmount940210 + $ApplicableCapitalFundAmount940211"/></xsl:variable>

			<xsl:variable name="ApplicableCapitalFundAmount940213"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940213/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940214"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940214/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalApplicableCapitalFundAmount940212"><xsl:value-of select="$ApplicableCapitalFundAmount940213 + $ApplicableCapitalFundAmount940214"/></xsl:variable>

			<xsl:variable name="ApplicableCapitalFundAmount940216"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940216/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940217"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940217/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940218"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940218/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalApplicableCapitalFundAmount940215"><xsl:value-of select="$ApplicableCapitalFundAmount940216 + $ApplicableCapitalFundAmount940217 + $ApplicableCapitalFundAmount940218"/></xsl:variable>
		
		    <xsl:variable name="ApplicableCapitalFundAmount940219"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940219/ApplicableCapitalFundAmount"/></xsl:variable>
 
 
			<xsl:variable name="TotalApplicableCapitalFundAmount940208"><xsl:value-of select="$TotalApplicableCapitalFundAmount940209 + $TotalApplicableCapitalFundAmount940212 + $TotalApplicableCapitalFundAmount940215 + $ApplicableCapitalFundAmount940219"/></xsl:variable>
			
			<xsl:variable name="ApplicableCapitalFundAmount940221"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940221/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940222"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940222/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940223"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940223/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940224"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940224/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940225"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940225/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940226"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940226/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940227"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940227/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalApplicableCapitalFundAmount940220"><xsl:value-of select="$ApplicableCapitalFundAmount940221 + $ApplicableCapitalFundAmount940222 + $ApplicableCapitalFundAmount940223 + $ApplicableCapitalFundAmount940224 + $ApplicableCapitalFundAmount940225 + $ApplicableCapitalFundAmount940226 + $ApplicableCapitalFundAmount940227"/></xsl:variable>
		
			<xsl:variable name="TotalApplicableCapitalFundAmount940037"><xsl:value-of select="$ApplicableCapitalFundAmount940077 + $TotalApplicableCapitalFundAmount940208 + $TotalApplicableCapitalFundAmount940220"/></xsl:variable>
		    <!--endเงินกองทุน (เฉพาะสาขาธนาคารพาณิชย์ต่างประเทศ)-->
			<!--อัตราส่วนเงินกองทุน  -->
			<xsl:variable name="ApplicableCapitalFundAmount940089"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940089/ApplicableCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="ApplicableCapitalFundAmount940090"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940090/ApplicableCapitalFundAmount"/></xsl:variable>
		    <xsl:variable name="TotalApplicableCapitalFundAmount940088"><xsl:value-of select="$ApplicableCapitalFundAmount940089 + $ApplicableCapitalFundAmount940090"/></xsl:variable>
			<!--Endอัตราส่วนเงินกองทุน  -->
			<xsl:variable name="TotalApplicableCapitalFundAmount940039"><xsl:value-of select="$TotalApplicableCapitalFundAmount940040 + $TotalApplicableCapitalFundAmount940052 + $TotalApplicableCapitalFundAmount940037 + $TotalApplicableCapitalFundAmount940088"/></xsl:variable>
			<!--EndApplicableCapitalFundAmount.-->
			
			
			<!--Net Capital Fund Amount-->

			<xsl:variable name="NetCapitalFundAmount940107"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940107/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940108"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940108/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalNetCapitalFundAmount940106"><xsl:value-of select="$NetCapitalFundAmount940107 + $NetCapitalFundAmount940108"/></xsl:variable>

			<xsl:variable name="NetCapitalFundAmount940109"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940109/NetCapitalFundAmount"/></xsl:variable>
			
			<xsl:variable name="NetCapitalFundAmount940111"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940111/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940112"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940112/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalNetCapitalFundAmount940110"><xsl:value-of select="$NetCapitalFundAmount940111 + $NetCapitalFundAmount940112"/></xsl:variable>

			<xsl:variable name="NetCapitalFundAmount940118"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940118/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940117"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940117/NetCapitalFundAmount"/></xsl:variable>
			
			<xsl:variable name="NetCapitalFundAmount940114"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940114/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940115"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940115/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940116"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940116/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalNetCapitalFundAmount940113"><xsl:value-of select="$NetCapitalFundAmount940114 + $NetCapitalFundAmount940115 + $NetCapitalFundAmount940116"/></xsl:variable>

		    <xsl:variable name="NetCapitalFundAmount940122"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940122/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940123"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940123/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalNetCapitalFundAmount940121"><xsl:value-of select="$NetCapitalFundAmount940122 + $NetCapitalFundAmount940123"/></xsl:variable>
			
			<xsl:variable name="NetCapitalFundAmount940125"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940125/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940126"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940126/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalNetCapitalFundAmount940124"><xsl:value-of select="$NetCapitalFundAmount940125 + $NetCapitalFundAmount940126"/></xsl:variable>
			
			<xsl:variable name="NetCapitalFundAmount940127"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940127/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940128"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940128/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940129"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940129/NetCapitalFundAmount"/></xsl:variable>
			
		   <xsl:variable name="TotalNetCapitalFundAmount940120"><xsl:value-of select="$TotalNetCapitalFundAmount940121 + $TotalNetCapitalFundAmount940124 + $NetCapitalFundAmount940127 + $NetCapitalFundAmount940128 + $NetCapitalFundAmount940129"/></xsl:variable> 
		   <xsl:variable name="NetCapitalFundAmount940130"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940130/OutstandingAmountPerBook"/></xsl:variable>
		   <xsl:variable name="TotalNetCapitalFundAmount940119"><xsl:value-of select="$TotalNetCapitalFundAmount940120 + $NetCapitalFundAmount940130"/></xsl:variable> 

			
	
			
			<!--<xsl:variable name="TotalNetCapitalFundAmount940119"><xsl:value-of select="$TotalNetCapitalFundAmount940121 + $TotalNetCapitalFundAmount940124 + $NetCapitalFundAmount940127 + $NetCapitalFundAmount940128 + $NetCapitalFundAmount940129"/></xsl:variable>-->

			<xsl:variable name="NetCapitalFundAmount940228"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940228/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940131"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940131/NetCapitalFundAmount"/></xsl:variable>

			<xsl:variable name="NetCapitalFundAmount940229"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940229/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940230"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940230/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalNetCapitalFundAmount940133"><xsl:value-of select="$NetCapitalFundAmount940229 + $NetCapitalFundAmount940230"/></xsl:variable>
			
			<xsl:variable name="NetCapitalFundAmount940135"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940135/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940136"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940136/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalNetCapitalFundAmount940134"><xsl:value-of select="$NetCapitalFundAmount940135 + $NetCapitalFundAmount940136"/></xsl:variable>
			
			<xsl:variable name="NetCapitalFundAmount940138"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940138/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940139"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940139/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalNetCapitalFundAmount940137"><xsl:value-of select="$NetCapitalFundAmount940138 + $NetCapitalFundAmount940139"/></xsl:variable>
						
			<xsl:variable name="NetCapitalFundAmount940140"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940140/NetCapitalFundAmount"/></xsl:variable>

			
			<xsl:variable name="TotalNetCapitalFundAmount940132"><xsl:value-of select="$TotalNetCapitalFundAmount940133 + $TotalNetCapitalFundAmount940134 + $TotalNetCapitalFundAmount940137 + $NetCapitalFundAmount940140"/></xsl:variable>

			<xsl:variable name="NetCapitalFundAmount940142"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940142/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940143"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940143/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940144"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940144/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940146"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940146/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940147"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940147/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940148"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940148/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalNetCapitalFundAmount940145"><xsl:value-of select="$NetCapitalFundAmount940146 + $NetCapitalFundAmount940147 + $NetCapitalFundAmount940148"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940149"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940149/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940150"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940150/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940151"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940151/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940152"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940152/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940231"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940231/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940232"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940232/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940233"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940233/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940153"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940153/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940154"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940154/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940155"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940155/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940156"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940156/NetCapitalFundAmount"/></xsl:variable>
			
			<xsl:variable name="TotalNetCapitalFundAmount940141"><xsl:value-of select="$NetCapitalFundAmount940142 + $NetCapitalFundAmount940143 + $NetCapitalFundAmount940144 + $TotalNetCapitalFundAmount940145 
			+ $NetCapitalFundAmount940149 + $NetCapitalFundAmount940150 + $NetCapitalFundAmount940151 
			+ $NetCapitalFundAmount940152 + $NetCapitalFundAmount940231
			+ $NetCapitalFundAmount940232 + $NetCapitalFundAmount940233 
			+ $NetCapitalFundAmount940153 + $NetCapitalFundAmount940154 + $NetCapitalFundAmount940155 + $NetCapitalFundAmount940156"/></xsl:variable>

			<!--SUM 1. เงินกองทุนชั้นที่ 1 ที่เป็นส่วนของเจ้าของ -->
			<xsl:variable name="TotalNetCapitalFundAmount940105"><xsl:value-of select="$TotalNetCapitalFundAmount940106 + $TotalNetCapitalFundAmount940110
			+ $NetCapitalFundAmount940118 + $NetCapitalFundAmount940117 
			+ $TotalNetCapitalFundAmount940113 + $TotalNetCapitalFundAmount940119 + $NetCapitalFundAmount940228 
			+ $NetCapitalFundAmount940131 + $TotalNetCapitalFundAmount940132
			+ $TotalNetCapitalFundAmount940141 "/></xsl:variable>
			
		
			<xsl:variable name="NetCapitalFundAmount940159"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940159/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940160"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940160/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalNetCapitalFundAmount940158"><xsl:value-of select="$NetCapitalFundAmount940159 + $NetCapitalFundAmount940160"/></xsl:variable>
			
			<xsl:variable name="NetCapitalFundAmount940161"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940161/NetCapitalFundAmount"/></xsl:variable>

			<xsl:variable name="NetCapitalFundAmount940163"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940163/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940164"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940164/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalNetCapitalFundAmount940162"><xsl:value-of select="$NetCapitalFundAmount940163 + $NetCapitalFundAmount940164"/></xsl:variable>
			
			<xsl:variable name="NetCapitalFundAmount940166"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940166/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940167"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940167/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalNetCapitalFundAmount940165"><xsl:value-of select="$NetCapitalFundAmount940166 + $NetCapitalFundAmount940167"/></xsl:variable>
			
			<xsl:variable name="NetCapitalFundAmount940234"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940234/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940168"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940168/NetCapitalFundAmount"/></xsl:variable>

			<xsl:variable name="NetCapitalFundAmount940170"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940170/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940171"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940171/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940172"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940172/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940235"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940235/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940236"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940236/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940173"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940173/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940174"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940174/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940175"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940175/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940176"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940176/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalNetCapitalFundAmount940169"><xsl:value-of select="$NetCapitalFundAmount940170
			+ $NetCapitalFundAmount940171 + $NetCapitalFundAmount940172 + $NetCapitalFundAmount940235
			+ $NetCapitalFundAmount940236 + $NetCapitalFundAmount940173 + $NetCapitalFundAmount940174
			+ $NetCapitalFundAmount940175 + $NetCapitalFundAmount940176 "/></xsl:variable>
			
			<!--SUM 2. เงินกองทุนชั้นที่ 1 ที่เป็นตราสารทางการเงิน (Additional Tier 1) -->
			<xsl:variable name="TotalNetCapitalFundAmount940157"><xsl:value-of select="$TotalNetCapitalFundAmount940158 + $NetCapitalFundAmount940161
			+ $TotalNetCapitalFundAmount940162 + $TotalNetCapitalFundAmount940165 
			+ $NetCapitalFundAmount940234 + $NetCapitalFundAmount940168 + $TotalNetCapitalFundAmount940169"/></xsl:variable>
			
			<!--sumชั้นที่ 1  104= 105+157-->
			<xsl:variable name="TotalNetCapitalFundAmount940104"><xsl:value-of select="$TotalNetCapitalFundAmount940105 + $TotalNetCapitalFundAmount940157"/></xsl:variable>
		
			<!--เงินกองทุนชั้นที่ 2 .-->
			<xsl:variable name="NetCapitalFundAmount940179"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940179/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940180"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940180/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalNetCapitalFundAmount940178"><xsl:value-of select="$NetCapitalFundAmount940179 + $NetCapitalFundAmount940180"/></xsl:variable>
						
			<xsl:variable name="NetCapitalFundAmount940181"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940181/NetCapitalFundAmount"/></xsl:variable>

			<xsl:variable name="NetCapitalFundAmount940183"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940183/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940184"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940184/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalNetCapitalFundAmount940182"><xsl:value-of select="$NetCapitalFundAmount940183 + $NetCapitalFundAmount940184"/></xsl:variable>
			
			<xsl:variable name="NetCapitalFundAmount940186"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940186/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940187"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940187/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalNetCapitalFundAmount940185"><xsl:value-of select="$NetCapitalFundAmount940186 + $NetCapitalFundAmount940187"/></xsl:variable>
			
			<xsl:variable name="NetCapitalFundAmount940188"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940188/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940189"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940189/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940237"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940237/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940190"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940190/NetCapitalFundAmount"/></xsl:variable>
			
			<xsl:variable name="NetCapitalFundAmount940192"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940192/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940193"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940193/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940194"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940194/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940238"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940238/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940239"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940239/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940195"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940195/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940196"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940196/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940197"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940197/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalNetCapitalFundAmount940191"><xsl:value-of select="$NetCapitalFundAmount940192+ $NetCapitalFundAmount940193
			+ $NetCapitalFundAmount940194 + $NetCapitalFundAmount940238 + $NetCapitalFundAmount940239
			+ $NetCapitalFundAmount940195 + $NetCapitalFundAmount940196 + $NetCapitalFundAmount940197"/></xsl:variable>

			<!--SUMเงินกองทุนชั้นที่ 2 -->
			<xsl:variable name="TotalNetCapitalFundAmount940177"><xsl:value-of select="$TotalNetCapitalFundAmount940178
			+ $NetCapitalFundAmount940181
			+ $TotalNetCapitalFundAmount940182 + $TotalNetCapitalFundAmount940185 
			+ $NetCapitalFundAmount940188 + $NetCapitalFundAmount940189 + $NetCapitalFundAmount940237 +
			$NetCapitalFundAmount940190 + $TotalNetCapitalFundAmount940191"/></xsl:variable>
			<!--Endเงินกองทุนชั้นที่ 2 -->
			
			<xsl:variable name="NetCapitalFundAmount940198"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940198/NetCapitalFundAmount"/></xsl:variable>

			<!--อัตราส่วนเงินกองทุน  -->
			<xsl:variable name="NetCapitalFundAmount940200"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940200/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940201"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940201/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940202"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940202/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940204"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940204/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940205"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940205/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalNetCapitalFundAmount940203"><xsl:value-of select="$NetCapitalFundAmount940204 + $NetCapitalFundAmount940205"/></xsl:variable>
			
			<xsl:variable name="TotalNetCapitalFundAmount940199"><xsl:value-of select="$NetCapitalFundAmount940200 + $NetCapitalFundAmount940201 + $NetCapitalFundAmount940202 + $TotalNetCapitalFundAmount940203"/></xsl:variable>
			<!--Endอัตราส่วนเงินกองทุน  -->
			<!--
			<xsl:variable name="TotalNetCapitalFundAmount940177"><xsl:value-of select="$TotalNetCapitalFundAmount940178 + $NetCapitalFundAmount940181
			+ $TotalNetCapitalFundAmount940182 + $TotalNetCapitalFundAmount940185 + $NetCapitalFundAmount940188 + $NetCapitalFundAmount940189 + $NetCapitalFundAmount940237 +
			$NetCapitalFundAmount940190 + $TotalApplicableCapitalFundAmount940191"/></xsl:variable> -->
			
			<!--sum103= 104+177+198+199-->
			<xsl:variable name="TotalNetCapitalFundAmount940103"><xsl:value-of select="$TotalNetCapitalFundAmount940104 + $TotalNetCapitalFundAmount940177 + $NetCapitalFundAmount940198 + $TotalNetCapitalFundAmount940199"/></xsl:variable>
			
			
			<!--เงินกองทุน (เฉพาะสาขาธนาคารพาณิชย์ต่างประเทศ)-->
			<xsl:variable name="NetCapitalFundAmount940041"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940041/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940042"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940042/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940043"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940043/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940044"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940044/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940095"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940095/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940045"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940045/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940048"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940048/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940050"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940050/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940049"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940049/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940051"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940051/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940206"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940206/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalNetCapitalFundAmount940040"><xsl:value-of select="$NetCapitalFundAmount940041 + $NetCapitalFundAmount940042 + $NetCapitalFundAmount940043 + $NetCapitalFundAmount940044
			+ $NetCapitalFundAmount940095 + $NetCapitalFundAmount940045 + $NetCapitalFundAmount940048 + $NetCapitalFundAmount940050
			+ $NetCapitalFundAmount940049 + $NetCapitalFundAmount940051 + $NetCapitalFundAmount940206"/></xsl:variable>

			<xsl:variable name="NetCapitalFundAmount940054"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940054/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940055"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940055/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940056"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940056/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940057"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940057/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940096"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940096/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940058"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940058/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940207"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940207/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalNetCapitalFundAmount940053"><xsl:value-of select="$NetCapitalFundAmount940054 + $NetCapitalFundAmount940055 + $NetCapitalFundAmount940056 + $NetCapitalFundAmount940044
			+ $NetCapitalFundAmount940057 + $NetCapitalFundAmount940096 + $NetCapitalFundAmount940058 + $NetCapitalFundAmount940207"/></xsl:variable>

			<xsl:variable name="NetCapitalFundAmount940059"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940059/NetCapitalFundAmount"/></xsl:variable>

			<xsl:variable name="TotalNetCapitalFundAmount940052"><xsl:value-of select="$TotalNetCapitalFundAmount940053 + $NetCapitalFundAmount940059"/></xsl:variable>

			<xsl:variable name="NetCapitalFundAmount940077"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940077/NetCapitalFundAmount"/></xsl:variable>

			<xsl:variable name="NetCapitalFundAmount940210"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940210/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940211"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940211/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalNetCapitalFundAmount940209"><xsl:value-of select="$NetCapitalFundAmount940210 + $NetCapitalFundAmount940211"/></xsl:variable>

			<xsl:variable name="NetCapitalFundAmount940213"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940213/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940214"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940214/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalNetCapitalFundAmount940212"><xsl:value-of select="$NetCapitalFundAmount940213 + $NetCapitalFundAmount940214"/></xsl:variable>

			<xsl:variable name="NetCapitalFundAmount940216"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940216/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940217"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940217/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940218"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940218/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalNetCapitalFundAmount940215"><xsl:value-of select="$NetCapitalFundAmount940216 + $NetCapitalFundAmount940217 + $NetCapitalFundAmount940218"/></xsl:variable>
		
		    <xsl:variable name="NetCapitalFundAmount940219"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940219/NetCapitalFundAmount"/></xsl:variable>
 
 
			<xsl:variable name="TotalNetCapitalFundAmount940208"><xsl:value-of select="$TotalNetCapitalFundAmount940209 + $TotalNetCapitalFundAmount940212 + $TotalNetCapitalFundAmount940215 + $NetCapitalFundAmount940219"/></xsl:variable>
			
			<xsl:variable name="NetCapitalFundAmount940221"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940221/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940222"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940222/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940223"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940223/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940224"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940224/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940225"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940225/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940226"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940226/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940227"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940227/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="TotalNetCapitalFundAmount940220"><xsl:value-of select="$NetCapitalFundAmount940221 + $NetCapitalFundAmount940222 + $NetCapitalFundAmount940223 + $NetCapitalFundAmount940224 + $NetCapitalFundAmount940225 + $NetCapitalFundAmount940226 + $NetCapitalFundAmount940227"/></xsl:variable>
		
			<xsl:variable name="TotalNetCapitalFundAmount940037"><xsl:value-of select="$ApplicableCapitalFundAmount940077 + $TotalNetCapitalFundAmount940208 + $TotalNetCapitalFundAmount940220"/></xsl:variable>
		    <!--endเงินกองทุน (เฉพาะสาขาธนาคารพาณิชย์ต่างประเทศ)-->
			<!--อัตราส่วนเงินกองทุน  -->
			<xsl:variable name="NetCapitalFundAmount940089"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940089/NetCapitalFundAmount"/></xsl:variable>
			<xsl:variable name="NetCapitalFundAmount940090"><xsl:value-of select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940090/NetCapitalFundAmount"/></xsl:variable>
		    <xsl:variable name="TotalNetCapitalFundAmount940088"><xsl:value-of select="$NetCapitalFundAmount940089 + $NetCapitalFundAmount940090"/></xsl:variable>
			<!--Endอัตราส่วนเงินกองทุน  -->
			<xsl:variable name="TotalNetCapitalFundAmount940039"><xsl:value-of select="$TotalNetCapitalFundAmount940040 + $TotalNetCapitalFundAmount940052 + $TotalNetCapitalFundAmount940037 + $TotalNetCapitalFundAmount940088"/></xsl:variable>
			<!--EndNet Capital Fund Amount-->
			
			
			

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
                                                          <xsl:for-each select="DS_CAPC/CommonHeader">
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
                                                          <xsl:value-of select="DS_CAPC/@name" />
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
                                                        <xsl:for-each select="DS_CAPC/CommonHeader">
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
                                                                <td width="5%"  class="labelXsl" align="center">940103</td>
                                                                <td width="60%" class="labelXsl"><xsl:value-of select="$name940103"/></td>
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
                                                                <td width="5%"  class="labelXsl" align="center">940104</td>
                                                                <td width="60%" class="subOne  labelXsl"><xsl:value-of select="$name940104"/></td>
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
                                                                <td width="5%"  class="labelXsl" align="center">940105</td>
                                                                <td width="60%" class="subTwo  labelXsl"><xsl:value-of select="$name940105"/></td>
                                                                <td class="labelXsl" align="right">
                                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmountPerBook940105,'###,###,###,###,###,###,##0.00')"/></span>
                                                                </td>
                                                                <td class="labelXsl" align="right">                                  
                                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalApplicableCapitalFundAmount940105,'###,###,###,###,###,###,##0.00')"/></span>
                                                                </td>
                                                                <td class="labelXsl" align="right">
                                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalNetCapitalFundAmount940105,'###,###,###,###,###,###,##0.00')"/></span>
                                                                </td>
                                                           </tr>
                                                            <tr>
                                                                <td width="10%" align="center" class="labelXsl">940106</td>
                                                                <td class="subThree  labelXsl"><xsl:value-of select="$name940106"/></td>
                                                                <td class="labelXsl" align="right">										
                                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmountPerBook940106,'###,###,###,###,###,###,##0.00')"/></span>
                                                                </td>
                                                                <td class="labelXsl" align="right">
                                                                   <span style="color:#1500d4"><xsl:value-of select="format-number($TotalApplicableCapitalFundAmount940106,'###,###,###,###,###,###,##0.00')"/></span>
                                                                    </td>
                                                                <td class="labelXsl" align="right">
                                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalNetCapitalFundAmount940106,'###,###,###,###,###,###,##0.00')"/></span>
                                                                </td>

                                                           </tr>
                                                           <tr>
                                                                <td align="center" class="labelXsl">940107</td>
                                                               <td class="subFour  labelXsl"><xsl:value-of select="$name940107"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940107">
                                                                 <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940107,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940107,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940107,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                               </xsl:for-each>
                                                           </tr>
                                                        <tr>
                                                            <td class="labelXsl" align="center">940108</td>
                                                            <td class="subFour labelXsl"><xsl:value-of select="$name940108"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940108">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940108,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940108,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940108,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                               </xsl:for-each>
                                                           </tr>
                                                        <tr>
                                                            <td class="labelXsl" align="center">940109</td>
                                                             <td class="subThree  labelXsl"><xsl:value-of select="$name940109"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940109">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940109,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940109,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940109,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                               </xsl:for-each>
                                                           </tr>
                                                        <tr>
                                                            <td class="labelXsl" align="center">940110</td>
                                                                <td class="subThree  labelXsl"><xsl:value-of select="$name940110"/></td>
                                                               <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmountPerBook940110,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalApplicableCapitalFundAmount940110,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalNetCapitalFundAmount940110,'###,###,###,###,###,###,##0.00')"/></span></td>

                                                           </tr>
                                                        <tr>
                                                             <td class="labelXsl" align="center">940111</td>
                                                             <td class="subFour  labelXsl"><xsl:value-of select="$name940111"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940111">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940111,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940111,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940111,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                            </tr>
                                                       <tr>
                                                             <td class="labelXsl" align="center">940112</td>
                                                             <td class="subFour  labelXsl"><xsl:value-of select="$name940112"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940112">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940112,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940112,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940112,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                            </tr>
                                                       <tr>
                                                           <td class="labelXsl" align="center">940118</td>
                                                           <td class="subThree  labelXsl"><xsl:value-of select="$name940118"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940118">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940118,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940118,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940118,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                       <tr>
                                                           <td class="labelXsl" align="center">940117</td>
                                                           <td class="subThree  labelXsl"><xsl:value-of select="$name940117"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940117">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940117,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940117,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940117,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                        <tr>
                                                            <td class="labelXsl" align="center">940113</td>
																<td class="subThree  labelXsl"><xsl:value-of select="$name940113"/></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmountPerBook940113,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalApplicableCapitalFundAmount940113,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalNetCapitalFundAmount940113,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                               
                                                           </tr>
                                                        <tr>
                                                           <td class="labelXsl" align="center">940114</td>
                                                           <td class="subFour  labelXsl"><xsl:value-of select="$name940114"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940114">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940114,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940114,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940114,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                         <tr>
                                                           <td class="labelXsl" align="center">940115</td>
                                                           <td class="subFour  labelXsl"><xsl:value-of select="$name940115"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940115">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940115,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940115,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940115,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                         <tr>
                                                              <td class="labelXsl" align="center">940116</td>
                                                           <td class="subFour  labelXsl"><xsl:value-of select="$name940116"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940116">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940116,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940116,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940116,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                         <tr>
                                                            <td class="labelXsl" align="center">940119</td>
                                                               <td class="subThree  labelXsl"><xsl:value-of select="$name940119"/></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmountPerBook940119,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalApplicableCapitalFundAmount940119,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalNetCapitalFundAmount940119,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                           </tr>
                                                         <tr>
                                                             <td class="labelXsl" align="center">940120</td>
                                                           <td class="subFour  labelXsl"><xsl:value-of select="$name940120"/></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmountPerBook940120,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalApplicableCapitalFundAmount940120,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalNetCapitalFundAmount940120,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                               
                                                           </tr>
                                                          <tr>
                                                            <td class="labelXsl" align="center">940121</td>
                                                           <td class="subFive  labelXsl"><xsl:value-of select="$name940121"/></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmountPerBook940121,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalApplicableCapitalFundAmount940121,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalNetCapitalFundAmount940121,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                
                                                           </tr>
                                                          <tr>
                                                               <td class="labelXsl" align="center">940122</td>
                                                           <td class="subSix  labelXsl"><xsl:value-of select="$name940122"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940122">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940122,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940122,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940122,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                          <tr>
                                                              <td class="labelXsl" align="center">940123</td>
                                                           <td class="subSix  labelXsl"><xsl:value-of select="$name940123"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940123">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940123,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940123,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940123,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                          <tr>
                                                              <td class="labelXsl" align="center">940124</td>
                                                           <td class="subFive  labelXsl"><xsl:value-of select="$name940124"/></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmountPerBook940124,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalApplicableCapitalFundAmount940124,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalNetCapitalFundAmount940124,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                               
                                                           </tr>
                                                          <tr>
                                                              <td class="labelXsl" align="center">940125</td>
                                                           <td class="subSix  labelXsl"><xsl:value-of select="$name940125"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940125">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940125,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940125,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940125,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                          <tr>
                                                             <td class="labelXsl" align="center">940126</td>
                                                           <td class="subSix  labelXsl"><xsl:value-of select="$name940126"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940126">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940126,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940126,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940126,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
														    <tr>
                                                            <td class="labelXsl" align="center">940127</td>
                                                           <td class="subFive  labelXsl"><xsl:value-of select="$name940127"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940127">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940127,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940127,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940127,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
														    <tr>
                                                             <td class="labelXsl" align="center">940128</td>
                                                           <td class="subFive  labelXsl"><xsl:value-of select="$name940128"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940128">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940128,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940128,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940128,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
														    <tr>
                                                             <td class="labelXsl" align="center">940129</td>
                                                           <td class="subFive  labelXsl"><xsl:value-of select="$name940129"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940129">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940129,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940129,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940129,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                          <tr>
                                                             <td class="labelXsl" align="center">940130</td>
                                                                <td class="subFour  labelXsl"><xsl:value-of select="$name940130"/></td>
																<xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940130">
																<td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940130,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940130,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940130,'###,###,###,###,###,###,##0.00')"/></span></td>
																</xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                             <td class="labelXsl" align="center">940228</td>
                                                                <td class="subThree  labelXsl"><xsl:value-of select="$name940228"/></td>
                                                               	<xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940228">
																<td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940228,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940228,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940228,'###,###,###,###,###,###,##0.00')"/></span></td>
																</xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                             <td class="labelXsl" align="center">940131</td>
                                                           <td class="subThree  labelXsl"><xsl:value-of select="$name940131"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940131">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940131,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940131,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940131,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                               <td class="labelXsl" align="center">940132</td>
                                                           <td class="subThree  labelXsl"><xsl:value-of select="$name940132"/></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmountPerBook940132,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalApplicableCapitalFundAmount940132,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalNetCapitalFundAmount940132,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940133</td>
                                                           <td class="subFour  labelXsl"><xsl:value-of select="$name940133"/></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmountPerBook940133,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalApplicableCapitalFundAmount940133,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalNetCapitalFundAmount940133,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940229</td>
                                                              <td class="subFive  labelXsl"><xsl:value-of select="$name940229"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940229">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940229,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940229,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940229,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                             <td class="labelXsl" align="center">940230</td>
                                                              <td class="subFive  labelXsl"><xsl:value-of select="$name940230"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940230">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940230,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940230,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940230,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940134</td>
                                                              <td class="subFour  labelXsl"><xsl:value-of select="$name940134"/></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmountPerBook940134,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalApplicableCapitalFundAmount940134,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalNetCapitalFundAmount940134,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                               
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940135</td>
                                                              <td class="subFive  labelXsl"><xsl:value-of select="$name940135"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940135">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940135,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940135,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940135,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                               <td class="labelXsl" align="center">940136</td>
                                                              <td class="subFive  labelXsl"><xsl:value-of select="$name940136"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940136">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940136,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940136,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940136,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                             <td class="labelXsl" align="center">940137</td>
                                                              <td class="subFour  labelXsl"><xsl:value-of select="$name940137"/></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmountPerBook940137,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalApplicableCapitalFundAmount940137,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalNetCapitalFundAmount940137,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                           </tr>
                                                           <tr>
                                                               <td class="labelXsl" align="center">940138</td>
                                                              <td class="subOne  labelXsl"><xsl:value-of select="$name940138"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940138">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940138,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940138,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940138,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940139</td>
                                                           <td class="subOne  labelXsl"><xsl:value-of select="$name940139"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940139">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940139,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940139,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940139,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940140</td>
                                                                <td class="subFour  labelXsl"><xsl:value-of select="$name940140"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940140">
																<td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940140,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940140,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940140,'###,###,###,###,###,###,##0.00')"/></span></td>
																</xsl:for-each>
														   </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940141</td>
                                                              <td class="subThree  labelXsl"><xsl:value-of select="$name940141"/></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmountPerBook940141,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalApplicableCapitalFundAmount940141,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalNetCapitalFundAmount940141,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                               
                                                           </tr>
                                                           <tr>
                                                             <td class="labelXsl" align="center">940142</td>
                                                              <td class="subFour  labelXsl"><xsl:value-of select="$name940142"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940142">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940142,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940142,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940142,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                               <td class="labelXsl" align="center">940143</td>
                                                                  <td class="subFour  labelXsl"><xsl:value-of select="$name940143"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940143">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940143,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940143,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940143,'###,###,###,###,###,###,##0.00')"/></span></td>
																</xsl:for-each>
														   </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940144</td>
                                                              <td class="subFour  labelXsl"><xsl:value-of select="$name940144"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940144">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940144,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940144,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940144,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                             <td class="labelXsl" align="center">940145</td>
                                                                <td class="subFour  labelXsl"><xsl:value-of select="$name940145"/></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmountPerBook940145,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalApplicableCapitalFundAmount940145,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalNetCapitalFundAmount940145,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                           </tr>
                                                           <tr>
                                                               <td class="labelXsl" align="center">940146</td>
                                                                <td class="subFive  labelXsl"><xsl:value-of select="$name940146"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940146">
																<td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940146,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940146,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940146,'###,###,###,###,###,###,##0.00')"/></span></td>
																</xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940147</td>
                                                              <td class="subFive  labelXsl"><xsl:value-of select="$name940147"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940147">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940147,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940147,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940147,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940148</td>
                                                              <td class="subFive  labelXsl"><xsl:value-of select="$name940148"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940148">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940148,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940148,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940148,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                             <td class="labelXsl" align="center">940149</td>
                                                              <td class="subFour  labelXsl"><xsl:value-of select="$name940149"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940149">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940149,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940149,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940149,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                               <td class="labelXsl" align="center">940150</td>
                                                                <td class="subFour  labelXsl"><xsl:value-of select="$name940150"/></td>
																<xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940150">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940150,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940150,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940150,'###,###,###,###,###,###,##0.00')"/></span></td>
																</xsl:for-each>
														   </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940151</td>
                                                              <td class="subFour  labelXsl"><xsl:value-of select="$name940151"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940151">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940151,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940151,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940151,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940152</td>
                                                              <td class="subFour  labelXsl"><xsl:value-of select="$name940152"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940152">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940152,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940152,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940152,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940231</td>
                                                              <td class="subFour  labelXsl"><xsl:value-of select="$name940231"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940231">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940231,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940231,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940231,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940232</td>
                                                                <td class="subFour  labelXsl"><xsl:value-of select="$name940232"/></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940232,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940232,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940232,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940233</td>
                                                              <td class="subFour  labelXsl"><xsl:value-of select="$name940233"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940233">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940233,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940233,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940233,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940153</td>
                                                              <td class="subFour labelXsl"><xsl:value-of select="$name940153"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940153">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940153,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940153,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940153,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                             <td class="labelXsl" align="center">940154</td>
                                                                <td class="subF labelXsl"><xsl:value-of select="$name940154"/></td>
																<xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940154">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940154,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940154,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940154,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                           </xsl:for-each>
														   </tr>
                                                           <tr>
                                                               <td class="labelXsl" align="center">940155</td>
                                                              <td class="subFour  labelXsl"><xsl:value-of select="$name940155"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940155">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940155,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940155,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940155,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940156</td>
                                                              <td class="subFour  labelXsl"><xsl:value-of select="$name940156"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940156">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940156,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940156,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940156,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940157</td>
                                                              <td class="subTwo  labelXsl"><xsl:value-of select="$name940157"/></td>
                                                                
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmountPerBook940157,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalApplicableCapitalFundAmount940157,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalNetCapitalFundAmount940157,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                
                                                           </tr>
                                                           <tr>
                                                             <td class="labelXsl" align="center">940158</td>
                                                              <td class="subThree  labelXsl"><xsl:value-of select="$name940158"/></td>
                                                                
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmountPerBook940158,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalApplicableCapitalFundAmount940158,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalNetCapitalFundAmount940158,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940159</td>
                                                              <td class="subFour  labelXsl"><xsl:value-of select="$name940159"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940159">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940159,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940159,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940159,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940160</td>
                                                              <td class="subFour  labelXsl"><xsl:value-of select="$name940160"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940160">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940160,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940160,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940160,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                             <td class="labelXsl" align="center">940161</td>
                                                             <td class="subThree labelXsl"><xsl:value-of select="$name940161"/></td>
                                                               <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940161">
															   <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940161,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                               <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940161,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                               <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940161,'###,###,###,###,###,###,##0.00')"/></span></td>
																</xsl:for-each>
														   </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940162</td>
                                                              <td class="subThree  labelXsl"><xsl:value-of select="$name940162"/></td>
                                                                
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmountPerBook940162,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalApplicableCapitalFundAmount940162,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalNetCapitalFundAmount940162,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940163</td>
                                                              <td class="subFour  labelXsl"><xsl:value-of select="$name940163"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940163">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940163,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940163,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940163,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940164</td>
                                                              <td class="subFour  labelXsl"><xsl:value-of select="$name940164"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940164">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940164,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940164,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940164,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940165</td>
                                                              <td class="subThree  labelXsl"><xsl:value-of select="$name940165"/></td>
                                                               
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmountPerBook940165,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalApplicableCapitalFundAmount940165,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalNetCapitalFundAmount940165,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940166</td>
                                                              <td class="subFour  labelXsl"><xsl:value-of select="$name940166"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940166">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940166,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940166,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940166,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                             <td class="labelXsl" align="center">940167</td>
                                                              <td class="subFour  labelXsl"><xsl:value-of select="$name940167"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940167">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940167,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940167,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940167,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                                           <tr>
                                                              <td class="labelXsl" align="center">940234</td>
                                                              <td class="subThree  labelXsl"><xsl:value-of select="$name940234"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940234">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940234,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940234,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940234,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
														   <tr>
                                                              <td class="labelXsl" align="center">940168</td>
                                                              <td class="subThree  labelXsl"><xsl:value-of select="$name940168"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940168">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940168,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940168,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940168,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
														   <tr>
                                                              <td class="labelXsl" align="center">940169</td>
                                                              <td class="subThree  labelXsl"><xsl:value-of select="$name940169"/></td>
                                                                
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmountPerBook940169,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalApplicableCapitalFundAmount940169,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalNetCapitalFundAmount940169,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                
                                                           </tr>
														   <tr>
                                                              <td class="labelXsl" align="center">940170</td>
                                                              <td class="subFour  labelXsl"><xsl:value-of select="$name940170"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940170">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940170,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940170,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940170,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
														   <tr>
                                                              <td class="labelXsl" align="center">940171</td>
                                                              <td class="subFour  labelXsl"><xsl:value-of select="$name940171"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940171">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940171,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940171,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940171,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
														   <tr>
                                                              <td class="labelXsl" align="center">940172</td>
                                                              <td class="subFour  labelXsl"><xsl:value-of select="$name940172"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940172">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940172,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940172,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940172,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
														   <tr>
                                                              <td class="labelXsl" align="center">940235</td>
                                                              <td class="subFour  labelXsl"><xsl:value-of select="$name940235"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940235">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940235,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940235,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940235,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
														   <tr>
                                                             <td class="labelXsl" align="center">940236</td>
                                                              <td class="subFour  labelXsl"><xsl:value-of select="$name940236"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940236">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940236,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940236,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940236,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
														   <tr>
                                                               <td class="labelXsl" align="center">940173</td>
                                                              <td class="subFour labelXsl"><xsl:value-of select="$name940173"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940173">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940173,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940173,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940173,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
														   <tr>
                                                               <td class="labelXsl" align="center">940174</td>
                                                              <td class="subFour labelXsl"><xsl:value-of select="$name940174"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940174">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940174,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940174,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940174,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
														   <tr>
                                                               <td class="labelXsl" align="center">940175</td>
                                                              <td class="subFour labelXsl"><xsl:value-of select="$name940175"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940175">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940175,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940175,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940175,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
														   <tr>
                                                               <td class="labelXsl" align="center">940176</td>
                                                              <td class="subFour labelXsl"><xsl:value-of select="$name940176"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940176">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940176,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940176,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940176,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr><tr>
                                                               <td class="labelXsl" align="center">940177</td>
                                                              <td class="subOne labelXsl"><xsl:value-of select="$name940177"/></td>
                                                               
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmountPerBook940177,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalApplicableCapitalFundAmount940177,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalNetCapitalFundAmount940177,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                               
                                                           </tr>
														   
														   <tr>
                                                               <td class="labelXsl" align="center">940178</td>
                                                              <td class="subTwo labelXsl"><xsl:value-of select="$name940178"/></td>
                                                               
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmountPerBook940178,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalApplicableCapitalFundAmount940178,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalNetCapitalFundAmount940178,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                
                                                           </tr>
														   <tr>
                                                               <td class="labelXsl" align="center">940179</td>
                                                              <td class="subThree labelXsl"><xsl:value-of select="$name940179"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940179">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940179,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940179,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940179,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
														   <tr>
                                                               <td class="labelXsl" align="center">940180</td>
                                                              <td class="subThree labelXsl"><xsl:value-of select="$name940173"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940173">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940180,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940180,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940180,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
														   <tr>
                                                               <td class="labelXsl" align="center">940181</td>
                                                              <td class="subTwo labelXsl"><xsl:value-of select="$name940181"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940181">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940181,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940181,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940181,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
														   <tr>
                                                               <td class="labelXsl" align="center">940182</td>
                                                              <td class="subTwo labelXsl"><xsl:value-of select="$name940182"/></td>
                                                               
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmountPerBook940182,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalApplicableCapitalFundAmount940182,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalNetCapitalFundAmount940182,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                               
                                                           </tr>
														   <tr>
                                                              <td class="labelXsl" align="center">940183</td>
                                                              <td class="subThree labelXsl"><xsl:value-of select="$name940183"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940183">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940183,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940183,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940183,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
														   <tr>
                                                               <td class="labelXsl" align="center">940184</td>
                                                              <td class="subThree labelXsl"><xsl:value-of select="$name940184"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940184">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940184,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940184,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940184,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
														   <tr>
                                                               <td class="labelXsl" align="center">940185</td>
                                                              <td class="subTwo labelXsl"><xsl:value-of select="$name940185"/></td>
                                                               
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalApplicableCapitalFundAmount940185,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalApplicableCapitalFundAmount940185,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalNetCapitalFundAmount940185,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                               
                                                           </tr>
														    <tr>
                                                               <td class="labelXsl" align="center">940186</td>
                                                              <td class="subThree labelXsl"><xsl:value-of select="$name940186"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940186">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940186,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940186,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940186,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
														    <tr>
                                                              <td class="labelXsl" align="center">940187</td>
                                                              <td class="subThree labelXsl"><xsl:value-of select="$name940187"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940187">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940187,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940187,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940187,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
														    <tr>
                                                               <td class="labelXsl" align="center">940188</td>
                                                              <td class="subTwo labelXsl"><xsl:value-of select="$name940188"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940188">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940188,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940188,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940188,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
														    <tr>
                                                              <td class="labelXsl" align="center">940189</td>
                                                              <td class="subTwo labelXsl"><xsl:value-of select="$name940189"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940189">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940189,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940189,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940189,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
														    <tr>
                                                             <td class="labelXsl" align="center">940237</td>
                                                              <td class="subTwo labelXsl"><xsl:value-of select="$name940237"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940237">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940237,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940237,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940237,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
														    <tr>
                                                                 <td class="labelXsl" align="center">940190</td>
                                                              <td class="subTwo labelXsl"><xsl:value-of select="$name940190"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940190">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940190,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940190,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940190,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
														    <tr>
                                                                <td class="labelXsl" align="center">940191</td>
                                                              <td class="subTwo labelXsl"><xsl:value-of select="$name940191"/></td>
                                                                
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmountPerBook940191,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalApplicableCapitalFundAmount940191,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalNetCapitalFundAmount940191,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                               </tr> 
														    <tr>
                                                              <td class="labelXsl" align="center">940192</td>
                                                              <td class="subThree labelXsl"><xsl:value-of select="$name940192"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940192">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940192,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940192,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940192,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
														    <tr>
                                                              <td class="labelXsl" align="center">940193</td>
                                                              <td class="subThree labelXsl"><xsl:value-of select="$name940193"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940193">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940193,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940193,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940193,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
														    <tr>
                                                               <td class="labelXsl" align="center">940194</td>
                                                              <td class="subThree labelXsl"><xsl:value-of select="$name940194"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940194">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940194,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940194,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940194,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
														    <tr>
                                                               <td class="labelXsl" align="center">940238</td>
                                                              <td class="subThree labelXsl"><xsl:value-of select="$name940238"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940238">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940238,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940238,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940238,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
														    <tr>
                                                             <td class="labelXsl" align="center">940239</td>
                                                              <td class="subThree labelXsl"><xsl:value-of select="$name940239"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940239">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940239,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940239,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940239,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
														    <tr>
                                                              <td class="labelXsl" align="center">940195</td>
                                                              <td class="subThree labelXsl"><xsl:value-of select="$name940195"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940195">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940195,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940195,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940195,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
														    <tr>
                                                               <td class="labelXsl" align="center">940196</td>
                                                              <td class="subThree labelXsl"><xsl:value-of select="$name940196"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940196">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940196,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940196,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940196,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
														    <tr>
                                                             <td class="labelXsl" align="center">940197</td>
                                                              <td class="subThree labelXsl"><xsl:value-of select="$name940197"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940197">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940197,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940197,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940197,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
														    <tr>
                                                              <td class="labelXsl" align="center">940198</td>
                                                              <td class="subOne labelXsl"><xsl:value-of select="$name940198"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940198">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940198,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940198,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940198,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
														    <tr>
                                                               <td class="labelXsl" align="center">940199</td>
                                                              <td class="subOne labelXsl"><xsl:value-of select="$name940199"/></td>
                                                               
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmountPer940199,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalApplicableCapitalFundAmount940199,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalNetCapitalFundAmount940199,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                
                                                           </tr>
														    <tr>
                                                               <td class="labelXsl" align="center">940200</td>
                                                              <td class="subTwo labelXsl"><xsl:value-of select="$name940200"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940200">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940200,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940200,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940200,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
                                      <!--  </table>--> 
															<tr>
                                                             <td class="labelXsl" align="center">940201</td>
                                                              <td class="subTwo labelXsl"><xsl:value-of select="$name940201"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940201">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940201,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940201,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940201,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
														    <tr>
                                                                 <td class="labelXsl" align="center">940202</td>
                                                              <td class="subTwo labelXsl"><xsl:value-of select="$name940202"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940202">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940202,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940202,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940202,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
														    <tr>
                                                               <td class="labelXsl" align="center">940203</td>
                                                              <td class="subTwo labelXsl"><xsl:value-of select="$name940203"/></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmountPer940203,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalApplicableCapitalFundAmount940203,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($TotalNetCapitalFundAmount940203,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                              
                                                           </tr>
														    <tr>
                                                              <td class="labelXsl" align="center">940204</td>
                                                              <td class="subThree labelXsl"><xsl:value-of select="$name940204"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940204">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940204,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940204,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940204,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                </xsl:for-each>
                                                           </tr>
														    <tr>
                                                               <td class="labelXsl" align="center">940205</td>
                                                              <td class="subThree labelXsl"><xsl:value-of select="$name940205"/></td>
                                                                <xsl:for-each select="DS_CAPC/DS_CAPC_Content/ContentRecordGroup/CapitalFundItem940205">
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($AmountPerBook940205,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($ApplicableCapitalFundAmount940205,'###,###,###,###,###,###,##0.00')"/></span></td>
                                                                <td class="labelXsl" align="right"><span style="color:#1500d4"><xsl:value-of select="format-number($NetCapitalFundAmount940205,'###,###,###,###,###,###,##0.00')"/></span></td>
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
