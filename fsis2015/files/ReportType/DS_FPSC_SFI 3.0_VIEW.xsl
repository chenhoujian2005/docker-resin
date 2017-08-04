<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <xsl:variable name="name950270">    งบแสดงฐานะการเงิน (Financial Position) เฉพาะธนาคารพาณิชย์ บริษัทเงินทุนบริษัทเครดิตฟองซิเอร์ กลุ่มธุรกิจทางการเงิน และ สถาบันการเงินพิเศษของรัฐ</xsl:variable>
            <xsl:variable name="name950271">       สินทรัพย์</xsl:variable>
            <xsl:variable name="name950272">    	    1. เงินสด</xsl:variable>
            <xsl:variable name="name950273">    	       1.1 เงินสดในมือ</xsl:variable>
            <xsl:variable name="name950274">    	          1.1.1 เงินบาท</xsl:variable>
            <xsl:variable name="name950275">    	          1.1.2 เงินตราต่างประเทศ</xsl:variable>
            <xsl:variable name="name950276">    	       1.2 รายการเงินสดระหว่างเรียกเก็บ</xsl:variable>
            <xsl:variable name="name950277">    	    2. รายการระหว่างธนาคารและตลาดเงินสุทธิ</xsl:variable>
            <xsl:variable name="name950278">    	       2.1 ในประเทศ</xsl:variable>
            <xsl:variable name="name950279">    	          2.1.1 เงินฝาก</xsl:variable>
            <xsl:variable name="name950280">    	          2.1.2 เงินให้สินเชื่อ</xsl:variable>
            <xsl:variable name="name950604">    	             2.1.2.1 เงินให้สินเชื่อระหว่างสถาบันการเงิน</xsl:variable>
            <xsl:variable name="name950605">    	             2.1.2.2 เงินให้สินเชื่อตามหลัก Risk &amp; Reward</xsl:variable>
            <xsl:variable name="name950281">    	        2.2 ต่างประเทศ</xsl:variable>
            <xsl:variable name="name950282">    	           2.2.1 เงินฝาก</xsl:variable>
            <xsl:variable name="name950283">    	           2.2.2 เงินให้สินเชื่อ</xsl:variable>
            <xsl:variable name="name950606">    	              2.2.2.1 เงินให้สินเชื่อระหว่างสถาบันการเงิน</xsl:variable>
            <xsl:variable name="name950607">    	              2.2.2.2 เงินให้สินเชื่อตามหลัก Risk &amp; Reward</xsl:variable>
            <xsl:variable name="name950284">    	        2.3 ส่วนปรับมูลค่าจากการป้องกันความเสี่ยง</xsl:variable>
            <xsl:variable name="name950285">    	        2.4 ดอกเบี้ยค้างรับ</xsl:variable>
            <xsl:variable name="name950286">    	        2.5 หัก รายได้รอตัดบัญชี</xsl:variable>
			<xsl:variable name="name950614">    	           2.5.1 เงินให้สินเชื่อระหว่างสถาบันการเงิน</xsl:variable>
			<xsl:variable name="name950615">    	           2.5.2 เงินให้สินเชื่อตามหลัก Risk Reward</xsl:variable>
			
			
            <xsl:variable name="name950287">    	        2.6 หัก ค่าเผื่อหนี้สงสัยจะสูญ</xsl:variable>
            <xsl:variable name="name950288">    	     3. สิทธิในการเรียกคืนหลักทรัพย์</xsl:variable>
            <xsl:variable name="name950289">    	     4. สินทรัพย์ตราสารอนุพันธ์</xsl:variable>
            <xsl:variable name="name950290">    	     5. เงินลงทุนสุทธิ</xsl:variable>
            <xsl:variable name="name950291">    	        5.1 เงินลงทุนชั่วคราวสุทธิ</xsl:variable>
            <xsl:variable name="name950292">    	           5.1.1 หลักทรัพย์เพื่อค้าสุทธิ</xsl:variable>
            <xsl:variable name="name950293">    	              5.1.1.1 ตราสารทุน</xsl:variable>
            <xsl:variable name="name950294">                                      5.1.1.2 ตราสารหนี้</xsl:variable>
            <xsl:variable name="name950295">    	              5.1.1.3 เงินลงทุนในลูกหนี้ที่รับโอนมา</xsl:variable>
            <xsl:variable name="name950296">    	              5.1.1.4 เงินลงทุนในธุรกรรมเงินฝากและเงินกู้ยืมที่มีอนุพันธ์แฝง</xsl:variable>
            <xsl:variable name="name950297">    	                 5.1.1.4.1 เงินฝากที่มีอนุพันธ์แฝง</xsl:variable>
            <xsl:variable name="name950298">    	                 5.1.1.4.2 เงินกู้ยืมที่มีอนุพันธ์แฝง</xsl:variable>
            <xsl:variable name="name950299">    	              5.1.1.5 ค่าเผื่อการปรับมูลค่าของหลักทรัพย์</xsl:variable>
            <xsl:variable name="name950300">    	                 5.1.1.5.1 ส่วนเกินจากการปรับมูลค่า</xsl:variable>
            <xsl:variable name="name950301">    	                 5.1.1.5.2 หัก ส่วนต่ำจากการปรับมูลค่า</xsl:variable>
            <xsl:variable name="name950302">    	           5.1.2 หลักทรัพย์เผื่อขายสุทธิ</xsl:variable>
            <xsl:variable name="name950303">    	              5.1.2.1 ตราสารทุน</xsl:variable>
            <xsl:variable name="name950304">    	              5.1.2.2 ตราสารหนี้</xsl:variable>
            <xsl:variable name="name950305">    	              5.1.2.3 เงินลงทุนในลูกหนี้ที่รับโอนมา</xsl:variable>
            <xsl:variable name="name950306">    	              5.1.2.4 เงินลงทุนในธุรกรรมเงินฝากและเงินกู้ยืมที่มีอนุพันธ์แฝง</xsl:variable>
            <xsl:variable name="name950307">    	                 5.1.2.4.1 เงินฝากที่มีอนุพันธ์แฝง</xsl:variable>
            <xsl:variable name="name950308">    	                 5.1.2.4.2 เงินกู้ยืมที่มีอนุพันธ์แฝง</xsl:variable>
            <xsl:variable name="name950309">    	              5.1.2.5 ค่าเผื่อการปรับมูลค่าของหลักทรัพย์</xsl:variable>
            <xsl:variable name="name950310">    	                 5.1.2.5.1 ส่วนเกินจากการปรับมูลค่า</xsl:variable>
            <xsl:variable name="name950311">    	                 5.1.2.5.2 หัก ส่วนต่ำจากการปรับมูลค่า</xsl:variable>
            <xsl:variable name="name950312">    	              5.1.2.6 หัก ค่าเผื่อการด้อยค่าของหลักทรัพย์</xsl:variable>
            <xsl:variable name="name950313">    	           5.1.3 ตราสารหนี้ที่จะถือจนครบกำหนดสุทธิ</xsl:variable>
            <xsl:variable name="name950314">    	              5.1.3.1 หลักทรัพย์รัฐบาลและรัฐวิสาหกิจ</xsl:variable>
            <xsl:variable name="name950315">    	              5.1.3.2 ตราสารหนี้ภาคเอกชน</xsl:variable>
            <xsl:variable name="name950316">    	              5.1.3.3 ตราสารหนี้ต่างประเทศ</xsl:variable>
            <xsl:variable name="name950317">    	              5.1.3.4 เงินลงทุนในลูกหนี้ที่รับโอนมา</xsl:variable>
            <xsl:variable name="name950318">    	              5.1.3.5 เงินลงทุนในธุรกรรมเงินฝากและเงินกู้ยืมที่มีอนุพันธ์แฝง</xsl:variable>
            <xsl:variable name="name950319">    	                 5.1.3.5.1 เงินฝากที่มีอนุพันธ์แฝง</xsl:variable>
            <xsl:variable name="name950320">    	                 5.1.3.5.2 เงินกู้ยืมที่มีอนุพันธ์แฝง</xsl:variable>
            <xsl:variable name="name950321">    	              5.1.3.6 ตราสารหนี้อื่น</xsl:variable>
            <xsl:variable name="name950322">    	              5.1.3.7 หัก ค่าเผื่อการด้อยค่าของหลักทรัพย์</xsl:variable>
            <xsl:variable name="name950323">    	           5.1.4 เงินลงทุนทั่วไปสุทธิ</xsl:variable>
            <xsl:variable name="name950324">    	              5.1.4.1 หลักทรัพย์จดทะเบียน</xsl:variable>
            <xsl:variable name="name950325">    	              5.1.4.2 หลักทรัพย์ต่างประเทศ</xsl:variable>
            <xsl:variable name="name950326">    	              5.1.4.3 หลักทรัพย์อื่น</xsl:variable>
            <xsl:variable name="name950327">    	              5.1.4.4 หัก ค่าเผื่อการด้อยค่าของหลักทรัพย์</xsl:variable>
            <xsl:variable name="name950328">    	        5.2 เงินลงทุนระยะยาวสุทธิ</xsl:variable>
            <xsl:variable name="name950329">    	           5.2.1 หลักทรัพย์เผื่อขายสุทธิ</xsl:variable>
            <xsl:variable name="name950330">    	              5.2.1.1 ตราสารทุน</xsl:variable>
            <xsl:variable name="name950331">    	                 5.2.1.1.1 หลักทรัพย์จดทะเบียน</xsl:variable>
            <xsl:variable name="name950332">    	                 5.2.1.1.2 หลักทรัพย์ต่างประเทศ</xsl:variable>
            <xsl:variable name="name950333">    	                 5.2.1.1.3 หลักทรัพย์อื่น</xsl:variable>
            <xsl:variable name="name950334">    	              5.2.1.2 ตราสารหนี้</xsl:variable>
            <xsl:variable name="name950335">    	                 5.2.1.2.1 หลักทรัพย์รัฐบาล และ รัฐวิสาหกิจ</xsl:variable>
            <xsl:variable name="name950336">    	                 5.2.1.2.2 ตราสารหนี้ภาคเอกชน</xsl:variable>
            <xsl:variable name="name950337">    	                 5.2.1.2.3 ตราสารหนี้ต่างประเทศ</xsl:variable>
            <xsl:variable name="name950338">    	                 5.2.1.2.4 ตราสารหนี้อื่น</xsl:variable>
            <xsl:variable name="name950339">    	              5.2.1.3 เงินลงทุนในลูกหนี้ที่รับโอนมา</xsl:variable>
            <xsl:variable name="name950340">    	              5.2.1.4 เงินลงทุนในธุรกรรมเงินฝากและเงินกู้ยืมที่มีอนุพันธ์แฝง</xsl:variable>
            <xsl:variable name="name950341">    	                 5.2.1.4.1 เงินฝากที่มีอนุพันธ์แฝง</xsl:variable>
            <xsl:variable name="name950342">    	                 5.2.1.4.2  เงินกู้ยืมที่มีอนุพันธ์แฝง</xsl:variable>
            <xsl:variable name="name950343">    	              5.2.1.5 ค่าเผื่อการปรับมูลค่าของหลักทรัพย์</xsl:variable>
            <xsl:variable name="name950344">    	                 5.2.1.5.1 ส่วนเกินจากการปรับมูลค่า</xsl:variable>
            <xsl:variable name="name950345">    	                 5.2.1.5.2 หัก ส่วนต่ำจากการปรับมูลค่า</xsl:variable>
            <xsl:variable name="name950346">    	              5.2.1.6 หัก ค่าเผื่อการด้อยค่าของหลักทรัพย์</xsl:variable>
            <xsl:variable name="name950347">    	           5.2.2 ตราสารหนี้ที่จะถือจนครบกำหนดสุทธิ</xsl:variable>
            <xsl:variable name="name950348">    	              5.2.2.1 หลักทรัพย์รัฐบาลและรัฐวิสาหกิจ</xsl:variable>
            <xsl:variable name="name950349">    	              5.2.2.2 ตราสารหนี้ภาคเอกชน</xsl:variable>
            <xsl:variable name="name950350">    	              5.2.2.3 ตราสารหนี้ต่างประเทศ</xsl:variable>
            <xsl:variable name="name950351">    	              5.2.2.4 เงินลงทุนในลูกหนี้ที่รับโอนมา</xsl:variable>
            <xsl:variable name="name950352">    	              5.2.2.5 เงินลงทุนในธุรกรรมเงินฝากและเงินกู้ยืมที่มีอนุพันธ์แฝง</xsl:variable>
            <xsl:variable name="name950353">    	                 5.2.2.5.1 เงินฝากที่มีอนุพันธ์แฝง</xsl:variable>
            <xsl:variable name="name950354">    	                 5.2.2.5.2  เงินกู้ยืมที่มีอนุพันธ์แฝง</xsl:variable>
            <xsl:variable name="name950355">    	              5.2.2.6 ตราสารหนี้อื่น</xsl:variable>
            <xsl:variable name="name950356">    	              5.2.2.7 หัก ค่าเผื่อการด้อยค่าของหลักทรัพย์</xsl:variable>
            <xsl:variable name="name950357">    	           5.2.3 เงินลงทุนทั่วไปสุทธิ</xsl:variable>
            <xsl:variable name="name950358">    	              5.2.3.1 หลักทรัพย์จดทะเบียน</xsl:variable>
            <xsl:variable name="name950359">    	              5.2.3.2 หลักทรัพย์ต่างประเทศ</xsl:variable>
            <xsl:variable name="name950360">    	              5.2.3.3 หลักทรัพย์อื่น</xsl:variable>
            <xsl:variable name="name950361">    	              5.2.3.4 หัก ค่าเผื่อการด้อยค่าของหลักทรัพย์</xsl:variable>
            <xsl:variable name="name950362">    	        5.3 ส่วนปรับมูลค่าจากการป้องกันความเสี่ยง</xsl:variable>
            <xsl:variable name="name950363">    	     6. เงินลงทุนในบริษัทย่อยและบริษัทร่วมสุทธิ</xsl:variable>
            <xsl:variable name="name950364">    	        6.1 เงินลงทุนในบริษัทย่อยและบริษัทร่วม</xsl:variable>
            <xsl:variable name="name950365">    	        6.2 หัก ค่าเผื่อการด้อยค่าของเงินลงทุน</xsl:variable>
            <xsl:variable name="name950366">    	     7. เงินให้สินเชื่อแก่ลูกหนี้สุทธิ</xsl:variable>
            <xsl:variable name="name950367">    	        7.1 เงินให้สินเชื่อ</xsl:variable>
            <xsl:variable name="name950368">    	           7.1.1 เงินบาท</xsl:variable>
            <xsl:variable name="name950369">    	           7.1.2 เงินตราต่างประเทศ</xsl:variable>
            <xsl:variable name="name950370">    	        7.2 ส่วนปรับมูลค่าจากการป้องกันความเสี่ยง</xsl:variable>
            <xsl:variable name="name950371">    	        7.3 ดอกเบี้ยค้างรับ</xsl:variable>
            <xsl:variable name="name950372">    	        7.4 หัก รายได้รอตัดบัญชี</xsl:variable>
            <xsl:variable name="name950373">    	        7.5 หัก ค่าเผื่อหนี้สงสัยจะสูญ</xsl:variable>
            <xsl:variable name="name950374">    	           7.5.1 สินเชื่อปกติและกล่าวถึงเป็นพิเศษ</xsl:variable>
            <xsl:variable name="name950375">    	           7.5.2 สินเชื่อด้อยคุณภาพ</xsl:variable>
            <xsl:variable name="name950376">    	        7.6 หัก ค่าเผื่อการปรับมูลค่าจากการปรับโครงสร้างหนี้</xsl:variable>
			
			<xsl:variable name="name950616">    	       เงินให้สินเชื่อแก่ลูกหนี้ตามธุรกรรมนโยบายรัฐและดอกเบี้ยค้างรับสุทธิ [เฉพาะ SFIs]</xsl:variable>
			<xsl:variable name="name950617">    	      เงินให้สินเชื่อแก่ลูกหนี้ตามธุรกรรมนโยบายรัฐ [เฉพาะ SFIs]</xsl:variable>
			<xsl:variable name="name950618">    	      ส่วนที่ไม่มีการชดเชยความเสียหายจากรัฐบาล [เฉพาะ SFIs]</xsl:variable>
			<xsl:variable name="name950619">    	      ส่วนที่มีการชดเชยความเสียหายจากรัฐบาล [เฉพาะ SFIs]</xsl:variable>
			<xsl:variable name="name950620">    	     ดอกเบี้ยค้างรับตามธุรกรรมนโยบายรัฐ [เฉพาะ SFIs]</xsl:variable>
			<xsl:variable name="name950621">    	     ส่วนที่ไม่มีการชดเชยความเสียหายจากรัฐบาล [เฉพาะ SFIs]</xsl:variable>
			<xsl:variable name="name950622">    	    ส่วนที่มีการชดเชยความเสียหายจากรัฐบาล [เฉพาะ SFIs]</xsl:variable>
			<xsl:variable name="name950623">    	   หัก รายได้รอตัดบัญชีจากธุรกรรมนโยบายรัฐ [เฉพาะ SFIs]</xsl:variable>
			<xsl:variable name="name950624">    	  หัก ค่าเผื่อหนี้สงสัยจะสูญตามธุรกรรมนโยบายรัฐ [เฉพาะ SFIs]</xsl:variable>
			<xsl:variable name="name950625">    	  หัก ค่าเผื่อการปรับมูลค่าจากการปรับโครงสร้างหนี้ตามธุรกรรมนโยบายรัฐ [เฉพาะ SFIs]</xsl:variable>
			
			
			
			
            <xsl:variable name="name950608">    	     ลูกหนี้รอการชดเชยจากรัฐบาลตามธุรกรรมนโยบายรัฐ [เฉพาะ SFIs]</xsl:variable>
            <xsl:variable name="name950377">    	     8. ภาระของลูกค้าจากการรับรอง</xsl:variable>
            <xsl:variable name="name950378">    	     9. ทรัพย์สินรอการขายสุทธิ</xsl:variable>
            <xsl:variable name="name950379">    	        9.1 ทรัพย์สินที่ได้จากการชำระหนี้</xsl:variable>
            <xsl:variable name="name950380">    	           9.1.1 อสังหาริมทรัพย์</xsl:variable>
            <xsl:variable name="name950381">    	           9.1.2 สังหาริมทรัพย์</xsl:variable>
            <xsl:variable name="name950382">    	        9.2 อื่น ๆ</xsl:variable>
            <xsl:variable name="name950383">    	        9.3 หัก ค่าเผื่อการลดราคา</xsl:variable>
            <xsl:variable name="name950384">    	        9.4 หัก ค่าเผื่อการด้อยค่า</xsl:variable>
            <xsl:variable name="name950385">    	     10. ที่ดิน อาคาร และอุปกรณ์สุทธิ</xsl:variable>
            <xsl:variable name="name950386">    	        10.1 ที่ดินสุทธิ</xsl:variable>
            <xsl:variable name="name950387">    	           10.1.1 ราคาทุนเดิม</xsl:variable>
            <xsl:variable name="name950388">    	           10.1.2 ส่วนที่ตีราคาเพิ่ม</xsl:variable>
            <xsl:variable name="name950389">    	           10.1.3 หัก ค่าเผื่อการด้อยค่า</xsl:variable>
            <xsl:variable name="name950390">    	        10.2 อาคารสุทธิ</xsl:variable>
            <xsl:variable name="name950391">    	           10.2.1 ราคาทุนเดิม</xsl:variable>
            <xsl:variable name="name950392">    	           10.2.2 ส่วนที่ตีราคาเพิ่ม</xsl:variable>
            <xsl:variable name="name950393">    	           10.2.3 หัก ค่าเสื่อมราคาสะสม</xsl:variable>
            <xsl:variable name="name950394">    	           10.2.4 หัก ค่าเผื่อการด้อยค่า</xsl:variable>
            <xsl:variable name="name950395">    	        10.3 อุปกรณ์ สุทธิ</xsl:variable>
            <xsl:variable name="name950396">    	           10.3.1 ราคาทุนเดิม</xsl:variable>
            <xsl:variable name="name950397">    	           10.3.2 หัก ค่าเสื่อมราคาสะสม</xsl:variable>
            <xsl:variable name="name950398">    	           10.3.3 หัก ค่าเผื่อการด้อยค่า</xsl:variable>
            <xsl:variable name="name950399">    	        10.4 อื่น ๆ สุทธิ</xsl:variable>
            <xsl:variable name="name950400">    	           10.4.1 ราคาทุนเดิม</xsl:variable>
            <xsl:variable name="name950401">    	           10.4.2 หัก ค่าเสื่อมราคาสะสม</xsl:variable>
            <xsl:variable name="name950402">    	           10.4.3 หัก ค่าเผื่อการด้อยค่า</xsl:variable>
            <xsl:variable name="name950403">    	     11. ค่าความนิยมและสินทรัพย์ไม่มีตัวตนอื่นสุทธิ</xsl:variable>
            <xsl:variable name="name950404">    	        11.1 ค่าความนิยมสุทธิ</xsl:variable>
            <xsl:variable name="name950405">    	           11.1.1 ค่าความนิยม</xsl:variable>
            <xsl:variable name="name950406">    	           11.1.2 หัก ค่าเผื่อการด้อยค่า</xsl:variable>
            <xsl:variable name="name950407">    	        11.2 สินทรัพย์ไม่มีตัวตนอื่นสุทธิ</xsl:variable>
            <xsl:variable name="name950408">    	           11.2.1 ราคาทุนเดิม</xsl:variable>
            <xsl:variable name="name950409">    	           11.2.2 ส่วนที่ตีราคาเพิ่ม</xsl:variable>
            <xsl:variable name="name950410">    	           11.2.3 หัก ค่าตัดจำหน่ายสะสม</xsl:variable>
            <xsl:variable name="name950411">    	           11.2.4 หัก ค่าเผื่อการด้อยค่า</xsl:variable>
            <xsl:variable name="name950412">    	     12. สินทรัพย์ภาษีเงินได้รอตัดบัญชี</xsl:variable>
            <xsl:variable name="name950413">    	     13. สินทรัพย์อื่นสุทธิ</xsl:variable>
            <xsl:variable name="name950414">    	        13.1 ค่าใช้จ่ายล่วงหน้าและรายจ่ายรอตัดบัญชี</xsl:variable>
            <xsl:variable name="name950415">    	        13.2 ลูกหนี้มาร์จิ้น</xsl:variable>
            <xsl:variable name="name950416">    	        13.3 รายได้ค้างรับ</xsl:variable>
            <xsl:variable name="name950417">    	        13.4 ผลต่างบัญชีระหว่างกัน</xsl:variable>
            <xsl:variable name="name950418">    	        13.5 ลูกหนี้อื่น</xsl:variable>
            <xsl:variable name="name950419">    	        13.6 สิทธิการเช่าที่ดินและอาคารสุทธิ</xsl:variable>
            <xsl:variable name="name950420">    	        13.7 ลูกหนี้ภาษีมูลค่าเพิ่ม</xsl:variable>
            <xsl:variable name="name950421">    	        13.8 พักลูกหนี้</xsl:variable>
            <xsl:variable name="name950422">    	        13.9 เงินทดรองจ่าย</xsl:variable>
            <xsl:variable name="name950423">    	        13.10 ความเสียหายจากการทุจริตสุทธิ</xsl:variable>
            <xsl:variable name="name950424">    	           13.10.1 ความเสียหายจากการทุจริต</xsl:variable>
            <xsl:variable name="name950425">    	           13.10.2 หัก ค่าเผื่อความเสียหายจากการทุจริต</xsl:variable>
            <xsl:variable name="name950426">    	        13.11. สินทรัพย์สำหรับโครงการผลประโยชน์ของพนักงาน</xsl:variable>
            <xsl:variable name="name950427">    	        13.12 สินทรัพย์อื่น ๆ</xsl:variable>
            <xsl:variable name="name950428">    	        13.13 หัก ค่าเผื่อการด้อยค่า</xsl:variable>
            <xsl:variable name="name950429">    	หนี้สินและส่วนของเจ้าของ / ส่วนของสำนักงานใหญ่ </xsl:variable>
            <xsl:variable name="name950430">    	   หนี้สิน</xsl:variable>
            <xsl:variable name="name950431">    	      14. เงินรับฝาก</xsl:variable>
            <xsl:variable name="name950432">    	         14.1 กระแสรายวัน</xsl:variable>
            <xsl:variable name="name950433">    	         14.2 ออมทรัพย์</xsl:variable>
            <xsl:variable name="name950434">    	         14.3 จ่ายคืนเมื่อสิ้นระยะเวลา (ไม่รวมบัตรเงินฝาก)</xsl:variable>
            <xsl:variable name="name950435">    	         14.4 บัตรเงินฝาก</xsl:variable>
            <xsl:variable name="name950436">    	         14.5 เงินรับฝากที่มีอนุพันธ์แฝง</xsl:variable>
            <xsl:variable name="name950437">    	         14.6 ส่วนปรับมูลค่าจากการป้องกันความเสี่ยง</xsl:variable>
            <xsl:variable name="name950438">    	      15. รายการระหว่างธนาคารและตลาดเงินสุทธิ</xsl:variable>
            <xsl:variable name="name950439">    	         15.1 ในประเทศ</xsl:variable>
            <xsl:variable name="name950440">    	            15.1.1 เงินรับฝาก</xsl:variable>
            <xsl:variable name="name950441">    	               15.1.1.1 เงินรับฝากที่ไม่มีอนุพันธ์แฝง</xsl:variable>
            <xsl:variable name="name950442">    	               15.1.1.2 เงินรับฝากที่มีอนุพันธ์แฝง</xsl:variable>
            <xsl:variable name="name950443">    	            15.1.2 เงินกู้ยืม</xsl:variable>
            <xsl:variable name="name950444">    	               15.1.2.1 เงินกู้ยืมที่ไม่มีอนุพันธ์แฝง</xsl:variable>
            <xsl:variable name="name950445">    	               15.1.2.2 เงินกู้ยืมที่มีอนุพันธ์แฝง</xsl:variable>
            <xsl:variable name="name950446">    	         15.2 ต่างประเทศ</xsl:variable>
            <xsl:variable name="name950447">    	            15.2.1 เงินรับฝาก</xsl:variable>
            <xsl:variable name="name950448">    	               15.2.1.1 เงินรับฝากที่ไม่มีอนุพันธ์แฝง</xsl:variable>
            <xsl:variable name="name950449">    	               15.2.1.2 เงินรับฝากที่มีอนุพันธ์แฝง</xsl:variable>
            <xsl:variable name="name950450">    	            15.2.2 เงินกู้ยืม</xsl:variable>
            <xsl:variable name="name950451">    	               15.2.2.1 เงินกู้ยืมที่ไม่มีอนุพันธ์แฝง</xsl:variable>
            <xsl:variable name="name950452">    	               15.2.2.2 เงินกู้ยืมที่มีอนุพันธ์แฝง</xsl:variable>
            <xsl:variable name="name950453">    	         15.3 ส่วนปรับมูลค่าจากการป้องกันความเสี่ยง</xsl:variable>
            <xsl:variable name="name950454">    	      16. หนี้สินจ่ายคืนเมื่อทวงถาม</xsl:variable>
            <xsl:variable name="name950455">    	         16.1 เช็คธนาคาร</xsl:variable>
            <xsl:variable name="name950456">    	         16.2 ดร๊าฟต์และเงินโอนอื่น</xsl:variable>
            <xsl:variable name="name950457">    	      17. ภาระในการส่งคืนหลักทรัพย์</xsl:variable>
            <xsl:variable name="name950458">    	      18. หนี้สินทางการเงินที่กำหนดให้แสดงด้วยมูลค่ายุติธรรม</xsl:variable>
            <xsl:variable name="name950459">    	         18.1 หนี้สินทางการเงินที่กำหนดให้แสดงด้วยมูลค่ายุติธรรม ของรายการระหว่างธนาคารและตลาดเงิน</xsl:variable>
            <xsl:variable name="name950460">    	            18.1.1 เงินรับฝากที่มีอนุพันธ์แฝง</xsl:variable>
            <xsl:variable name="name950461">    	            18.1.2 เงินกู้ยืมที่มีอนุพันธ์แฝง</xsl:variable>
            <xsl:variable name="name950462">    	         18.2 หนี้สินทางการเงินที่กำหนดให้แสดงด้วยมูลค่ายุติธรรม ที่ไม่ใช่รายการระหว่างธนาคารและตลาดเงิน</xsl:variable>
            <xsl:variable name="name950463">    	            18.2.1 เงินรับฝากที่มีอนุพันธ์แฝง</xsl:variable>
            <xsl:variable name="name950464">    	            18.2.2 ตราสารหนี้ที่ออกและเงินกู้ยืมที่มีอนุพันธ์แฝง</xsl:variable>
            <xsl:variable name="name950465">    	               18.2.2.1 ตั๋วแลกเงิน</xsl:variable>
            <xsl:variable name="name950466">    	               18.2.2.2 หุ้นกู้และตราสารหนี้อื่น</xsl:variable>
            <xsl:variable name="name950467">    	               18.2.2.3 เงินกู้ยืม</xsl:variable>
            <xsl:variable name="name950468">    	         18.3 ส่วนเกิน (ต่ำกว่า) ของหนี้สินทางการเงินที่กำหนดให้แสดงด้วยมูลค่ายุติธรรม</xsl:variable>
            <xsl:variable name="name950469">    	      19. หนี้สินตราสารอนุพันธ์</xsl:variable>
            <xsl:variable name="name950470">    	      20. ตราสารหนี้ที่ออกและเงินกู้ยืม</xsl:variable>
            <xsl:variable name="name950471">    	         20.1 ตราสารหนี้ที่ออกและเงินกู้ยืมที่ไม่มีอนุพันธ์แฝง</xsl:variable>
            <xsl:variable name="name950472">    	            20.1.1 ตั๋วแลกเงิน</xsl:variable>
            <xsl:variable name="name950473">    	            20.1.2 หุ้นกู้และตราสารหนี้อื่น</xsl:variable>
            <xsl:variable name="name950474">    	            20.1.3 เงินกู้ยืม</xsl:variable>
            <xsl:variable name="name950475">    	         20.2 ตราสารหนี้ที่ออกและเงินกู้ยืมที่มีอนุพันธ์แฝง</xsl:variable>
            <xsl:variable name="name950476">    	            20.2.1 ตั๋วแลกเงิน</xsl:variable>
            <xsl:variable name="name950477">    	            20.2.2 หุ้นกู้และตราสารหนี้อื่น</xsl:variable>
            <xsl:variable name="name950478">    	            20.2.3 เงินกู้ยืม</xsl:variable>
            <xsl:variable name="name950479">    	         20.3 ส่วนปรับมูลค่าจากการป้องกันความเสี่ยง</xsl:variable>
            <xsl:variable name="name950480">    	      21. ภาระของสถาบันการเงินจากการรับรอง</xsl:variable>
            <xsl:variable name="name950481">    	      22. ประมาณการหนี้สิน</xsl:variable>
            <xsl:variable name="name950482">    	         22.1 ประมาณการหนี้สินสำหรับโครงการผลประโยชน์ของพนักงาน</xsl:variable>
            <xsl:variable name="name950483">    	         22.2 ประมาณการหนี้สินอื่น</xsl:variable>
            <xsl:variable name="name950484">    	      23. หนี้สินภาษีเงินได้รอตัดบัญชี</xsl:variable>
            <xsl:variable name="name950609">    	    เจ้าหนี้ตามธุรกรรมนโยบายรัฐ [เฉพาะ SFIs]</xsl:variable>
            <xsl:variable name="name950610">    	      เงินอุดหนุนจากรัฐบาลหรือส่วนราชการ รอการรับรู้เป็นรายได้ [เฉพาะ SFI]</xsl:variable>
            <xsl:variable name="name950485">    	      24. หนี้สินอื่น</xsl:variable>
            <xsl:variable name="name950486">    	         24.1 เงินมัดจำและเงินประกัน</xsl:variable>
            <xsl:variable name="name950487">    	         24.2 เจ้าหนี้มาร์จิ้น</xsl:variable>
            <xsl:variable name="name950488">    	         24.3 ค่าใช้จ่ายค้างจ่าย</xsl:variable>
            <xsl:variable name="name950489">    	         24.4 ผลต่างบัญชีระหว่างกัน</xsl:variable>
            <xsl:variable name="name950490">    	         24.5 เจ้าหนี้ภาษีมูลค่าเพิ่ม</xsl:variable>
            <xsl:variable name="name950491">    	         24.6 ภาษีหัก ณ ที่จ่ายที่ยังไม่ได้นำส่ง</xsl:variable>
            <xsl:variable name="name950492">    	         24.7 พักเจ้าหนี้</xsl:variable>
            <xsl:variable name="name950493">    	         24.8 ดอกเบี้ยค้างจ่าย</xsl:variable>
            <xsl:variable name="name950494">    	         24.9 รายได้รอตัดบัญชีจากโปรแกรมสิทธิพิเศษแก่ลูกค้า</xsl:variable>
            <xsl:variable name="name950495">    	         24.10 เจ้าหนี้อื่น</xsl:variable>
            <xsl:variable name="name950496">    	         24.11 หนี้สินอื่น ๆ</xsl:variable>
            <xsl:variable name="name950497">    	      25. ส่วนของเจ้าของ</xsl:variable>
            <xsl:variable name="name950498">    	         25.1 ทุนที่ออกและชำระแล้ว</xsl:variable>
            <xsl:variable name="name950499">    	            25.1.1 หุ้นบุริมสิทธิ</xsl:variable>
            <xsl:variable name="name950500">    	               25.1.1.1 หุ้นบุริมสิทธิชนิดสะสมเงินปันผลที่ชำระแล้ว</xsl:variable>
            <xsl:variable name="name950501">    	               25.1.1.2 หุ้นบุริมสิทธิชนิดไม่สะสมเงินปันผลที่ชำระแล้ว</xsl:variable>
            <xsl:variable name="name950502">    	            25.1.2 หุ้นสามัญ</xsl:variable>
            <xsl:variable name="name950503">    	         25.2 ใบสำคัญแสดงสิทธิที่จะซื้อหุ้น</xsl:variable>
            <xsl:variable name="name950504">    	         25.3 ส่วนเกิน (ต่ำกว่า) มูลค่าหุ้น</xsl:variable>
            <xsl:variable name="name950505">    	            25.3.1 ส่วนเกิน (ต่ำกว่า) มูลค่าหุ้นบุริมสิทธิ</xsl:variable>
            <xsl:variable name="name950506">    	               25.3.1.1 ส่วนเกิน (ต่ำกว่า) มูลค่าหุ้นบุริมสิทธิชนิดสะสมเงินปันผล</xsl:variable>
            <xsl:variable name="name950507">    	               25.3.1.2 ส่วนเกิน (ต่ำกว่า) มูลค่าหุ้นบุริมสิทธิชนิดไม่สะสมเงินปันผล</xsl:variable>
            <xsl:variable name="name950508">    	            25.3.2 ส่วนเกิน (ต่ำกว่า) มูลค่าหุ้นสามัญ</xsl:variable>
            <xsl:variable name="name950509">    	         25.4 ส่วนเกินทุนหุ้นบุริมสิทธิซื้อคืน</xsl:variable>
            <xsl:variable name="name950510">    	         25.5 ส่วนเกินทุนหุ้นสามัญซื้อคืน</xsl:variable>
            <xsl:variable name="name950511">    	         25.6 ส่วนเกินทุนจากการตีราคาสินทรัพย์</xsl:variable>
            <xsl:variable name="name950512">    	            25.6.1 ส่วนเกินจากการตีราคาที่ดิน</xsl:variable>
            <xsl:variable name="name950513">    	            25.6.2 ส่วนเกินจากการตีราคาอาคาร</xsl:variable>
            <xsl:variable name="name950514">    	            25.6.3 ส่วนเกินจากการตีราคาสินทรัพย์อื่น ๆ</xsl:variable>
            <xsl:variable name="name950515">    	         25.7 ส่วนเกิน (ต่ำกว่า) ทุนจากการเปลี่ยนแปลงมูลค่าเงินลงทุน</xsl:variable>
            <xsl:variable name="name950516">    	            25.7.1 ส่วนเกินทุนที่เกิดจากการเปลี่ยนแปลงมูลค่าของเงินลงทุน</xsl:variable>
            <xsl:variable name="name950517">    	               25.7.1.1 ส่วนเกินทุนที่เกิดจากการเปลี่ยนแปลงมูลค่าของตราสารทุน</xsl:variable>
            <xsl:variable name="name950518">    	               25.7.1.2 ส่วนเกินทุนที่เกิดจากการเปลี่ยนแปลงมูลค่าของตราสารหนี้</xsl:variable>
            <xsl:variable name="name950519">    	            25.7.2 หัก ส่วนต่ำกว่าทุนที่เกิดจากการเปลี่ยนแปลงมูลค่าของเงินลงทุน</xsl:variable>
            <xsl:variable name="name950520">    	               25.7.2.1 หัก ส่วนต่ำกว่าทุนที่เกิดจากการเปลี่ยนแปลงมูลค่าของตราสารทุน</xsl:variable>
            <xsl:variable name="name950521">    	               25.7.2.2 หัก ส่วนต่ำกว่าทุนที่เกิดจากการเปลี่ยนแปลงมูลค่าของตราสารหนี้</xsl:variable>
            <xsl:variable name="name950522">    	         25.8 ผลต่างจากการแปลงค่างบการเงิน</xsl:variable>
            <xsl:variable name="name950523">    	         25.9 องค์ประกอบอื่น ๆ ของส่วนของเจ้าของ </xsl:variable>
            <xsl:variable name="name950600">    	            25.9.1 ส่วนเกิน (ต่ำกว่า) ทุนจากการรวมธุรกิจภายใต้การควบคุมเดียวกัน</xsl:variable>
            <xsl:variable name="name950601">    	            25.9.2 ส่วนเกิน (ต่ำกว่า) มูลค่าสุทธิของบริษัทย่อย</xsl:variable>
            <xsl:variable name="name950602">    	            25.9.3 การจ่ายโดยใช้หุ้นเป็นเกณฑ์</xsl:variable>
            <xsl:variable name="name950603">    	            25.9.4 อื่น ๆ</xsl:variable>
            <xsl:variable name="name950524">    	         25.10 ส่วนเกิน (ต่ำกว่า) จากการประเมินมูลค่ายุติธรรมตราสารป้องกันความเสี่ยงสำหรับการป้องกันความเสี่ยงในกระแสเงินสด (ส่วนที่มีประสิทธิผล)</xsl:variable>
            <xsl:variable name="name950525">    	         25.11 ส่วนเกิน (ต่ำกว่า) จากการประเมินมูลค่ายุติธรรมตราสารป้องกันความเสี่ยงสำหรับการป้องกันความเสี่ยงในเงินลงทุนสุทธิในหน่วยงานต่างประเทศ (ส่วนที่มีประสิทธิผล)</xsl:variable>
            <xsl:variable name="name950526">    	         25.12 ส่วนแบ่งกำไรขาดทุนเบ็ดเสร็จอื่นในบริษัทร่วม [เฉพาะ Conso.]</xsl:variable>
            <xsl:variable name="name950527">    	         25.13 กำไร (ขาดทุน) สะสม</xsl:variable>
            <xsl:variable name="name950528">    	            25.13.1 จัดสรรแล้ว</xsl:variable>
            <xsl:variable name="name950529">    	               25.13.1.1 ทุนสำรองตามกฎหมาย</xsl:variable>
            <xsl:variable name="name950530">    	               25.13.1.2 อื่น ๆ</xsl:variable>
            <xsl:variable name="name950531">    	               25.13.1.3 คงเหลือหลังจากการจัดสรร</xsl:variable>
            <xsl:variable name="name950532">    	            25.13.2 ยังไม่ได้จัดสรร</xsl:variable>
            <xsl:variable name="name950533">    	               25.13.2.1 กำไร (ขาดทุน) สุทธิงวดบัญชีก่อนที่ยังไม่ได้จัดสรร</xsl:variable>
            <xsl:variable name="name950534">    	               25.13.2.2 กำไร (ขาดทุน) ระหว่างงวด</xsl:variable>
            <xsl:variable name="name950535">    	               25.13.2.3 อื่น ๆ</xsl:variable>
            <xsl:variable name="name950536">    	         25.14 หัก หุ้นบุริมสิทธิซื้อคืน</xsl:variable>
            <xsl:variable name="name950537">    	         25.15 หัก หุ้นสามัญซื้อคืน </xsl:variable>
            <xsl:variable name="name950538">    	         25.16 ส่วนได้เสียที่ไม่มีอำนาจควบคุม</xsl:variable>
            <xsl:variable name="name950611">    	         ทุนประเดิม หรือเงินทุนรับโอนจากรัฐบาล [เฉพาะ SFI]</xsl:variable>
            <xsl:variable name="name950612">    	         ส่วนเกินทุนจากการบริจาค [เฉพาะ SFI]</xsl:variable>
            <xsl:variable name="name950613">    	         เงินอุดหนุนจากรัฐบาลเพื่อการลงทุน [เฉพาะ SFI]</xsl:variable>
            <xsl:variable name="name950563">    	รายการนอกงบแสดงฐานะการเงิน (ภาระผูกพันทั้งสิ้น)</xsl:variable>
            <xsl:variable name="name950564">    	   26. หนี้สินที่จะเกิดในภายหน้า</xsl:variable>
            <xsl:variable name="name950565">    	      26.1 การรับอาวัลตั๋วเงิน และการค้ำประกันการกู้ยืมเงิน</xsl:variable>
            <xsl:variable name="name950566">    	      26.2 ภาระตามตั๋วเงินค่าสินค้าเข้าที่ยังไม่ครบกำหนด</xsl:variable>
            <xsl:variable name="name950567">    	      26.3 การขายลูกหนี้ตั๋วเงินที่ผู้ซื้อมีสิทธิไล่เบี้ย (Commercial Papers Sold with Recourse)</xsl:variable>
            <xsl:variable name="name950568">    	      26.4 เล็ตเตอร์ออฟเครดิต</xsl:variable>
            <xsl:variable name="name950569">    	      26.5 ภาระผูกพันอื่น</xsl:variable>
            <xsl:variable name="name950570">    	   27. ตราสารอนุพันธ์</xsl:variable>
            <xsl:variable name="name950571">    	      27.1 อนุพันธ์ด้านอัตราแลกเปลี่ยน</xsl:variable>
            <xsl:variable name="name950572">    	      27.2 อนุพันธ์ด้านอัตราดอกเบี้ย</xsl:variable>
            <xsl:variable name="name950573">    	      27.3 อนุพันธ์ด้านตราสารหนี้</xsl:variable>
            <xsl:variable name="name950574">    	      27.4 อนุพันธ์ด้านตราสารทุน</xsl:variable>
            <xsl:variable name="name950575">    	      27.5 อนุพันธ์ด้านสินค้าโภคภัณฑ์</xsl:variable>
            <xsl:variable name="name950576">    	      27.6 อนุพันธ์ด้านเครดิต</xsl:variable>
            <xsl:variable name="name950577">    	รายละเอียดของทุนจดทะเบียน</xsl:variable>
            <xsl:variable name="name950578">    	   28. ทุนจดทะเบียน</xsl:variable>
            <xsl:variable name="name950579">    	      28.1 หุ้นบุริมสิทธิ</xsl:variable>
            <xsl:variable name="name950580">    	         28.1.1 หุ้นบุริมสิทธิชนิดสะสมเงินปันผล</xsl:variable>
            <xsl:variable name="name950581">    	            28.1.1.1 จำนวนหุ้น (หุ้น)</xsl:variable>
            <xsl:variable name="name950582">    	            28.1.1.2 มูลค่าที่ตราไว้ (บาท)</xsl:variable>
            <xsl:variable name="name950583">    	         28.1.2 หุ้นบุริมสิทธิชนิดไม่สะสมเงินปันผล</xsl:variable>
            <xsl:variable name="name950584">    	            28.1.2.1 จำนวนหุ้น (หุ้น)</xsl:variable>
            <xsl:variable name="name950585">    	            28.1.2.2 มูลค่าที่ตราไว้ (บาท)</xsl:variable>
            <xsl:variable name="name950586">    	      28.2 หุ้นสามัญ</xsl:variable>
            <xsl:variable name="name950587">    	         28.2.1 จำนวนหุ้น (หุ้น)</xsl:variable>
            <xsl:variable name="name950588">    	         28.2.2 มูลค่าที่ตราไว้ (บาท)</xsl:variable>
            <xsl:variable name="name950589">    	   29. ทุนที่ออกและชำระแล้ว</xsl:variable>
            <xsl:variable name="name950590">    	      29.1 หุ้นบุริมสิทธิ</xsl:variable>
            <xsl:variable name="name950591">    	         29.1.1 หุ้นบุริมสิทธิชนิดสะสมเงินปันผล</xsl:variable>
            <xsl:variable name="name950592">    	            29.1.1.1 จำนวนหุ้น (หุ้น)</xsl:variable>
            <xsl:variable name="name950593">    	            29.1.1.2 มูลค่าที่ตราไว้ (บาท)</xsl:variable>
            <xsl:variable name="name950594">    	         29.1.2 หุ้นบุริมสิทธิชนิดไม่สะสมเงินปันผล</xsl:variable>
            <xsl:variable name="name950595">    	            29.1.2.1 จำนวนหุ้น (หุ้น)</xsl:variable>
            <xsl:variable name="name950596">    	            29.1.2.2 มูลค่าที่ตราไว้ (บาท)</xsl:variable>
            <xsl:variable name="name950597">    	      29.2 หุ้นสามัญ</xsl:variable>
            <xsl:variable name="name950598">    	         29.2.1 จำนวนหุ้น (หุ้น)</xsl:variable>
            <xsl:variable name="name950599">    	         29.2.2 มูลค่าที่ตราไว้ (บาท)</xsl:variable>



            <!--rowUp-->
                <!--<xsl:for-each select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup">-->
                <!--1.-->
                <xsl:variable name="BalanceSheetItem950274"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950274/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950275"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950275/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950273"><xsl:value-of select="$BalanceSheetItem950274 + $BalanceSheetItem950275"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950276"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950276/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950272"><xsl:value-of select="$TotalBalanceSheetAmount950273 + $BalanceSheetItem950276"/></xsl:variable>
                <!--2.-->
                <xsl:variable name="BalanceSheetItem950279"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950279/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950604"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950604/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950605"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950605/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950280"><xsl:value-of select="$BalanceSheetItem950604 + $BalanceSheetItem950605"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950278"><xsl:value-of select="$BalanceSheetItem950279 + $TotalBalanceSheetAmount950280"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950282"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950282/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950606"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950606/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950607"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950607/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950283"><xsl:value-of select="$BalanceSheetItem950606 + $BalanceSheetItem950607"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950281"><xsl:value-of select="$BalanceSheetItem950282 + $TotalBalanceSheetAmount950283"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950284"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950284/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950285"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950285/BalanceSheetAmount"/></xsl:variable>
				
				<!--2.5-->
				
				<xsl:variable name="BalanceSheetItem950614"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950614/BalanceSheetAmount"/></xsl:variable>
				<xsl:variable name="BalanceSheetItem950615"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950615/BalanceSheetAmount"/></xsl:variable>
			    <xsl:variable name="TotalBalanceSheetAmount950286"><xsl:value-of select="$BalanceSheetItem950614 + $BalanceSheetItem950615"/></xsl:variable>

                <xsl:variable name="BalanceSheetItem950287"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950287/BalanceSheetAmount"/></xsl:variable>
                
				<xsl:variable name="TotalBalanceSheetAmount950277"><xsl:value-of select="$TotalBalanceSheetAmount950278 + $TotalBalanceSheetAmount950281 + $BalanceSheetItem950284 + $BalanceSheetItem950285 - $TotalBalanceSheetAmount950286 - $BalanceSheetItem950287"/></xsl:variable>
                <!--3.-->
                <xsl:variable name="BalanceSheetItem950288"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950288/BalanceSheetAmount"/></xsl:variable>
                <!--4.-->
                <xsl:variable name="BalanceSheetItem950289"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950289/BalanceSheetAmount"/></xsl:variable>
                <!--5.1.1-->
                <xsl:variable name="BalanceSheetItem950293"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950293/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950294"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950294/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950295"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950295/BalanceSheetAmount"/></xsl:variable>                    
                <xsl:variable name="BalanceSheetItem950297"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950297/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950298"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950298/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950296"><xsl:value-of select="$BalanceSheetItem950297 + $BalanceSheetItem950298"/></xsl:variable>  
                <xsl:variable name="BalanceSheetItem950300"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950300/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950301"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950301/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950299"><xsl:value-of select="$BalanceSheetItem950300 - $BalanceSheetItem950301"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950292"><xsl:value-of select="$BalanceSheetItem950293 + $BalanceSheetItem950294 + $BalanceSheetItem950295 + $TotalBalanceSheetAmount950296 + $TotalBalanceSheetAmount950299"/></xsl:variable>
                <!--5.1.2-->
                <xsl:variable name="BalanceSheetItem950303"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950303/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950304"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950304/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950305"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950305/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950307"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950307/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950308"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950308/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950306"><xsl:value-of select="$BalanceSheetItem950307 + $BalanceSheetItem950308"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950310"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950310/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950311"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950311/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950309"><xsl:value-of select="$BalanceSheetItem950310 - $BalanceSheetItem950311"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950312"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950312/BalanceSheetAmount"/></xsl:variable>                
                <xsl:variable name="TotalBalanceSheetAmount950302"><xsl:value-of select="$BalanceSheetItem950303 + $BalanceSheetItem950304 + $BalanceSheetItem950305 + $TotalBalanceSheetAmount950306 + $TotalBalanceSheetAmount950309 - $BalanceSheetItem950312"/></xsl:variable>
                <!--5.1.3-->
                <xsl:variable name="BalanceSheetItem950314"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950314/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950315"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950315/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950316"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950316/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950317"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950317/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950319"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950319/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950320"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950320/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950318"><xsl:value-of select="$BalanceSheetItem950319 + $BalanceSheetItem950320"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950321"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950321/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950322"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950322/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950313"><xsl:value-of select="$BalanceSheetItem950314 + $BalanceSheetItem950315 + $BalanceSheetItem950316 + $BalanceSheetItem950317 + $TotalBalanceSheetAmount950318 + $BalanceSheetItem950321 - $BalanceSheetItem950322"/></xsl:variable>
                <!--5.1.4-->
                <xsl:variable name="BalanceSheetItem950324"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950324/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950325"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950325/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950326"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950326/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950327"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950327/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950323"><xsl:value-of select="$BalanceSheetItem950324 + $BalanceSheetItem950325 + $BalanceSheetItem950326 - $BalanceSheetItem950327"/></xsl:variable>
                <!--5.1-->          
                <xsl:variable name="TotalBalanceSheetAmount950291"><xsl:value-of select="$TotalBalanceSheetAmount950292 + $TotalBalanceSheetAmount950302 + $TotalBalanceSheetAmount950313 + $TotalBalanceSheetAmount950323"/></xsl:variable>
                <!--5.2.1-->
                <xsl:variable name="BalanceSheetItem950331"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950331/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950332"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950332/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950333"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950333/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950330"><xsl:value-of select="$BalanceSheetItem950331 + $BalanceSheetItem950332 + $BalanceSheetItem950333"/></xsl:variable>                
                <xsl:variable name="BalanceSheetItem950335"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950335/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950336"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950336/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950337"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950337/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950338"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950338/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950334"><xsl:value-of select="$BalanceSheetItem950335 + $BalanceSheetItem950336 + $BalanceSheetItem950337 + $BalanceSheetItem950338"/></xsl:variable>                
                <xsl:variable name="BalanceSheetItem950339"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950339/BalanceSheetAmount"/></xsl:variable>                
                <xsl:variable name="BalanceSheetItem950341"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950341/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950342"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950342/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950340"><xsl:value-of select="$BalanceSheetItem950341 + $BalanceSheetItem950342"/></xsl:variable>                
                <xsl:variable name="BalanceSheetItem950344"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950344/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950345"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950345/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950343"><xsl:value-of select="$BalanceSheetItem950344 - $BalanceSheetItem950345"/></xsl:variable>                
                <xsl:variable name="BalanceSheetItem950346"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950346/BalanceSheetAmount"/></xsl:variable>               
                <xsl:variable name="TotalBalanceSheetAmount950329"><xsl:value-of select="$TotalBalanceSheetAmount950330 + $TotalBalanceSheetAmount950334 + $BalanceSheetItem950339 + $TotalBalanceSheetAmount950340 + $TotalBalanceSheetAmount950343 - $BalanceSheetItem950346"/></xsl:variable>
                <!--5.2.2-->    
                <xsl:variable name="BalanceSheetItem950348"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950348/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950349"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950349/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950350"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950350/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950351"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950351/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950353"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950353/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950354"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950354/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950352"><xsl:value-of select="$BalanceSheetItem950353 + $BalanceSheetItem950354"/></xsl:variable>  
                <xsl:variable name="BalanceSheetItem950355"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950355/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950356"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950356/BalanceSheetAmount"/></xsl:variable>                
                <xsl:variable name="TotalBalanceSheetAmount950347"><xsl:value-of select="$BalanceSheetItem950348 + $BalanceSheetItem950349 + $BalanceSheetItem950350 + $BalanceSheetItem950351 + $TotalBalanceSheetAmount950352 + $BalanceSheetItem950355 - $BalanceSheetItem950356"/></xsl:variable>  
                <!--5.2.3--> 
                <xsl:variable name="BalanceSheetItem950358"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950358/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950359"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950359/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950360"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950360/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950361"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950361/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950357"><xsl:value-of select="$BalanceSheetItem950358 + $BalanceSheetItem950359 + $BalanceSheetItem950360 - $BalanceSheetItem950361"/></xsl:variable>  
                <!--5.2-->
                <xsl:variable name="TotalBalanceSheetAmount950328"><xsl:value-of select="$TotalBalanceSheetAmount950329 + $TotalBalanceSheetAmount950347 + $TotalBalanceSheetAmount950357"/></xsl:variable>
                <!--5.3-->
                <xsl:variable name="BalanceSheetItem950362"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950362/BalanceSheetAmount"/></xsl:variable>
                <!--5.-->
                <xsl:variable name="TotalBalanceSheetAmount950290"><xsl:value-of select="$TotalBalanceSheetAmount950291 + $TotalBalanceSheetAmount950328 + $BalanceSheetItem950362"/></xsl:variable>
                <!--6.--> 
                <xsl:variable name="BalanceSheetItem950364"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950364/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950365"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950365/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950363"><xsl:value-of select="$BalanceSheetItem950364 - $BalanceSheetItem950365"/></xsl:variable>
                <!--7.--> 
                <xsl:variable name="BalanceSheetItem950368"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950368/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950369"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950369/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950367"><xsl:value-of select="$BalanceSheetItem950368 + $BalanceSheetItem950369"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950370"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950370/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950371"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950371/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950372"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950372/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950374"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950374/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950375"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950375/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950373"><xsl:value-of select="$BalanceSheetItem950374 + $BalanceSheetItem950375"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950376"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950376/BalanceSheetAmount"/></xsl:variable>
				
				
				<xsl:variable name="BalanceSheetItem950623"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950623/BalanceSheetAmount"/></xsl:variable>
				<xsl:variable name="BalanceSheetItem950624"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950624/BalanceSheetAmount"/></xsl:variable>
				<xsl:variable name="BalanceSheetItem950625"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950625/BalanceSheetAmount"/></xsl:variable>
				
				
				<xsl:variable name="BalanceSheetItem950618"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950618/BalanceSheetAmount"/></xsl:variable>
				<xsl:variable name="BalanceSheetItem950619"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950619/BalanceSheetAmount"/></xsl:variable>
				
				<xsl:variable name="TotalBalanceSheetAmount950617"><xsl:value-of select="$BalanceSheetItem950618 + $BalanceSheetItem950619"/></xsl:variable>
				<xsl:variable name="BalanceSheetItem950621"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950621/BalanceSheetAmount"/></xsl:variable>
				<xsl:variable name="BalanceSheetItem950622"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950622/BalanceSheetAmount"/></xsl:variable>
				
				<xsl:variable name="TotalBalanceSheetAmount950620"><xsl:value-of select="$BalanceSheetItem950621 + $BalanceSheetItem950622"/></xsl:variable>
				
				<xsl:variable name="TotalBalanceSheetAmount950616"><xsl:value-of select="$TotalBalanceSheetAmount950617 + $TotalBalanceSheetAmount950620 + $BalanceSheetItem950623 + $BalanceSheetItem950624 + $BalanceSheetItem950625"/></xsl:variable>
			
				<xsl:variable name="TotalBalanceSheetAmount950366"><xsl:value-of select="$TotalBalanceSheetAmount950367 + $BalanceSheetItem950370 + $BalanceSheetItem950371 - $BalanceSheetItem950372 - $TotalBalanceSheetAmount950373 - $BalanceSheetItem950376"/></xsl:variable>
                <!--950608-->         
                <xsl:variable name="BalanceSheetItem950608"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950608/BalanceSheetAmount"/></xsl:variable>
                <!--8.--> 
                <xsl:variable name="BalanceSheetItem950377"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950377/BalanceSheetAmount"/></xsl:variable>
                <!--9.-->
                <xsl:variable name="BalanceSheetItem950380"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950380/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950381"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950381/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950379"><xsl:value-of select="$BalanceSheetItem950380 + $BalanceSheetItem950381"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950382"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950382/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950383"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950383/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950384"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950384/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950378"><xsl:value-of select="$TotalBalanceSheetAmount950379 + $BalanceSheetItem950382 - $BalanceSheetItem950383 - $BalanceSheetItem950384"/></xsl:variable>
                <!--10.-->
                <!--950386+950390+950395+950399-->
                <xsl:variable name="BalanceSheetItem950387"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950387/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950388"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950388/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950389"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950389/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950386"><xsl:value-of select="$BalanceSheetItem950387 + $BalanceSheetItem950388 - $BalanceSheetItem950389"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950391"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950391/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950392"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950392/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950393"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950393/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950394"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950394/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950390"><xsl:value-of select="$BalanceSheetItem950391 + $BalanceSheetItem950392 - $BalanceSheetItem950393  - $BalanceSheetItem950394"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950396"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950396/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950397"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950397/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950398"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950398/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950395"><xsl:value-of select="$BalanceSheetItem950396 - $BalanceSheetItem950397 - $BalanceSheetItem950398"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950400"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950400/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950401"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950401/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950402"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950402/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950399"><xsl:value-of select="$BalanceSheetItem950400 - $BalanceSheetItem950401 - $BalanceSheetItem950402"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950385"><xsl:value-of select="$TotalBalanceSheetAmount950386 + $TotalBalanceSheetAmount950390 + $TotalBalanceSheetAmount950395 + $TotalBalanceSheetAmount950399"/></xsl:variable>
                <!--11.-->
                <!--950404+950407-->
                <xsl:variable name="BalanceSheetItem950405"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950405/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950406"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950406/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950404"><xsl:value-of select="$BalanceSheetItem950405 - $BalanceSheetItem950406"/></xsl:variable> 
                <xsl:variable name="BalanceSheetItem950408"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950408/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950409"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950409/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950410"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950410/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950411"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950411/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950407"><xsl:value-of select="$BalanceSheetItem950408 + $BalanceSheetItem950409 - $BalanceSheetItem950410 - $BalanceSheetItem950411"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950403"><xsl:value-of select="$TotalBalanceSheetAmount950404 + $TotalBalanceSheetAmount950407"/></xsl:variable>
                <!--12.-->
                <xsl:variable name="BalanceSheetItem950412"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950412/BalanceSheetAmount"/></xsl:variable>
                <!--13.-->
                <xsl:variable name="BalanceSheetItem950414"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950414/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950415"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950415/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950416"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950416/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950417"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950417/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950418"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950418/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950419"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950419/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950420"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950420/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950421"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950421/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950422"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950422/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950424"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950424/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950425"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950425/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950423"><xsl:value-of select="$BalanceSheetItem950424 - $BalanceSheetItem950425"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950426"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950426/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950427"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950427/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950428"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950428/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950413"><xsl:value-of select="$BalanceSheetItem950414 + $BalanceSheetItem950415 + $BalanceSheetItem950416 + $BalanceSheetItem950417 + $BalanceSheetItem950418 + $BalanceSheetItem950419 + $BalanceSheetItem950420 + $BalanceSheetItem950421 + $BalanceSheetItem950422 + $TotalBalanceSheetAmount950423 + $BalanceSheetItem950426 + $BalanceSheetItem950427 - $BalanceSheetItem950428"/></xsl:variable>
                <!--950271 สินทรัพย์ -->
                <!--950272+950277+950288+950289+950290+950363+950366+950608+950377+950378+950385+950403+950412+950413-->
                <xsl:variable name="TotalBalanceSheetAmount950271"><xsl:value-of select="$TotalBalanceSheetAmount950272 + $TotalBalanceSheetAmount950277 + $BalanceSheetItem950288 + $BalanceSheetItem950289 + $TotalBalanceSheetAmount950290 + $TotalBalanceSheetAmount950363 + $TotalBalanceSheetAmount950366 + $BalanceSheetItem950608 + $BalanceSheetItem950377 + $TotalBalanceSheetAmount950378 + $TotalBalanceSheetAmount950385 + $TotalBalanceSheetAmount950403 + $BalanceSheetItem950412 + $TotalBalanceSheetAmount950413"/></xsl:variable>
                <!--950270 งบแสดงฐานะการเงิน (Financial Position) เฉพาะธนาคารพาณิชย์ บริษัทเงินทุนบริษัทเครดิตฟองซิเอร์ กลุ่มธุรกิจทางการเงิน และ สถาบันการเงินพิเศษของรัฐ-->   
                <xsl:variable name="TotalBalanceSheetAmount950270"><xsl:value-of select="$TotalBalanceSheetAmount950271"/></xsl:variable>
                <!--14.-->
                <xsl:variable name="BalanceSheetItem950432"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950432/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950433"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950433/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950434"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950434/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950435"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950435/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950436"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950436/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950437"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950437/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950431"><xsl:value-of select="$BalanceSheetItem950432 + $BalanceSheetItem950433 + $BalanceSheetItem950434 + $BalanceSheetItem950435 + $BalanceSheetItem950436 + $BalanceSheetItem950437"/></xsl:variable>
                <!--15.1--> 
                <xsl:variable name="BalanceSheetItem950441"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950441/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950442"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950442/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950440"><xsl:value-of select="$BalanceSheetItem950441 + $BalanceSheetItem950442"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950444"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950444/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950445"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950445/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950443"><xsl:value-of select="$BalanceSheetItem950444 + $BalanceSheetItem950445"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950439"><xsl:value-of select="$TotalBalanceSheetAmount950440 + $TotalBalanceSheetAmount950443"/></xsl:variable>
                <!--15.2--> 
                <xsl:variable name="BalanceSheetItem950448"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950448/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950449"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950449/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950447"><xsl:value-of select="$BalanceSheetItem950448 + $BalanceSheetItem950449"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950451"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950451/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950452"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950452/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950450"><xsl:value-of select="$BalanceSheetItem950451 + $BalanceSheetItem950452"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950446"><xsl:value-of select="$TotalBalanceSheetAmount950447 + $TotalBalanceSheetAmount950450"/></xsl:variable>
                <!--15.3-->
                <xsl:variable name="BalanceSheetItem950453"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950453/BalanceSheetAmount"/></xsl:variable>
                <!--15.-->
                <xsl:variable name="TotalBalanceSheetAmount950438"><xsl:value-of select="$TotalBalanceSheetAmount950439 + $TotalBalanceSheetAmount950446 + $BalanceSheetItem950453"/></xsl:variable>
                <!--16.-->
                <xsl:variable name="BalanceSheetItem950455"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950455/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950456"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950456/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950454"><xsl:value-of select="$BalanceSheetItem950455 + $BalanceSheetItem950456"/></xsl:variable>
                <!--17.-->
                <xsl:variable name="BalanceSheetItem950457"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950457/BalanceSheetAmount"/></xsl:variable>
                <!--18.-->
                <xsl:variable name="BalanceSheetItem950460"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950460/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950461"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950461/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950459"><xsl:value-of select="$BalanceSheetItem950460 + $BalanceSheetItem950461"/></xsl:variable>               
                <xsl:variable name="BalanceSheetItem950463"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950463/BalanceSheetAmount"/></xsl:variable>                
                <xsl:variable name="BalanceSheetItem950465"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950465/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950466"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950466/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950467"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950467/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950464"><xsl:value-of select="$BalanceSheetItem950465 + $BalanceSheetItem950466 + $BalanceSheetItem950467"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950462"><xsl:value-of select="$BalanceSheetItem950463 + $TotalBalanceSheetAmount950464"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950468"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950468/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950458"><xsl:value-of select="$TotalBalanceSheetAmount950459 + $TotalBalanceSheetAmount950462 + $BalanceSheetItem950468"/></xsl:variable>
                <!--19.-->
                <xsl:variable name="BalanceSheetItem950469"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950469/BalanceSheetAmount"/></xsl:variable>
                <!--20.1-->
                <xsl:variable name="BalanceSheetItem950472"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950472/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950473"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950473/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950474"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950474/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950471"><xsl:value-of select="$BalanceSheetItem950472 + $BalanceSheetItem950473 + $BalanceSheetItem950474"/></xsl:variable>
                <!--20.2-->
                <xsl:variable name="BalanceSheetItem950476"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950476/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950477"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950477/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950478"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950478/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950475"><xsl:value-of select="$BalanceSheetItem950476 + $BalanceSheetItem950477 + $BalanceSheetItem950478"/></xsl:variable>
                <!--20.3-->
                <xsl:variable name="BalanceSheetItem950479"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950479/BalanceSheetAmount"/></xsl:variable>
                <!--20.-->
                <xsl:variable name="TotalBalanceSheetAmount950470"><xsl:value-of select="$TotalBalanceSheetAmount950471 + $TotalBalanceSheetAmount950475 + $BalanceSheetItem950479"/></xsl:variable>
                <!--21.-->
                <xsl:variable name="BalanceSheetItem950480"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950480/BalanceSheetAmount"/></xsl:variable>
                <!--22.-->
                <xsl:variable name="BalanceSheetItem950482"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950482/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950483"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950483/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950481"><xsl:value-of select="$BalanceSheetItem950482 + $BalanceSheetItem950483"/></xsl:variable>
                <!--23.-->
                <xsl:variable name="BalanceSheetItem950484"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950484/BalanceSheetAmount"/></xsl:variable>
                <!--950609,950610-->
                <xsl:variable name="BalanceSheetItem950609"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950609/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950610"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950610/BalanceSheetAmount"/></xsl:variable>
                <!--24.-->
                <xsl:variable name="BalanceSheetItem950486"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950486/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950487"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950487/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950488"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950488/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950489"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950489/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950490"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950490/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950491"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950491/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950492"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950492/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950493"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950493/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950494"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950494/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950495"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950495/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950496"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950496/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950485"><xsl:value-of select="$BalanceSheetItem950486 + $BalanceSheetItem950487 + $BalanceSheetItem950488 + $BalanceSheetItem950489 + $BalanceSheetItem950490 + $BalanceSheetItem950491 + $BalanceSheetItem950492 + $BalanceSheetItem950493 + $BalanceSheetItem950494 + $BalanceSheetItem950495 + $BalanceSheetItem950496"/></xsl:variable>
                <!--25.1-->
                <xsl:variable name="BalanceSheetItem950500"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950500/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950501"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950501/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950499"><xsl:value-of select="$BalanceSheetItem950500 + $BalanceSheetItem950501"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950502"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950502/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950498"><xsl:value-of select="$TotalBalanceSheetAmount950499 + $BalanceSheetItem950502"/></xsl:variable>
                <!--25.2-->
                <xsl:variable name="BalanceSheetItem950503"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950503/BalanceSheetAmount"/></xsl:variable>
                <!--<xsl:variable name="TotalBalanceSheetAmount950503"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950503/BalanceSheetAmount"/></xsl:variable>-->
                <!--25.3-->
                <xsl:variable name="BalanceSheetItem950506"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950506/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950507"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950507/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950505"><xsl:value-of select="$BalanceSheetItem950506 + $BalanceSheetItem950507"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950508"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950508/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950504"><xsl:value-of select="$TotalBalanceSheetAmount950505 + $BalanceSheetItem950508"/></xsl:variable>
                <!--25.4-->
                <xsl:variable name="BalanceSheetItem950509"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950509/BalanceSheetAmount"/></xsl:variable>
                <!--25.5-->
                <xsl:variable name="BalanceSheetItem950510"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950510/BalanceSheetAmount"/></xsl:variable>
                <!--25.6-->
                <xsl:variable name="BalanceSheetItem950512"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950512/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950513"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950513/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950514"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950514/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950511"><xsl:value-of select="$BalanceSheetItem950512 + $BalanceSheetItem950513 + $BalanceSheetItem950514"/></xsl:variable>
                <!--25.7.1-->
                <xsl:variable name="BalanceSheetItem950517"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950517/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950518"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950518/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950516"><xsl:value-of select="$BalanceSheetItem950517 + $BalanceSheetItem950518"/></xsl:variable>
                <!--25.7.2-->
                <xsl:variable name="BalanceSheetItem950520"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950520/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950521"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950521/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950519"><xsl:value-of select="$BalanceSheetItem950520 + $BalanceSheetItem950521"/></xsl:variable>
                <!--25.7-->
                <xsl:variable name="TotalBalanceSheetAmount950515"><xsl:value-of select="$TotalBalanceSheetAmount950516 - $TotalBalanceSheetAmount950519"/></xsl:variable>
                <!--25.8-->
                <xsl:variable name="BalanceSheetItem950522"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950522/BalanceSheetAmount"/></xsl:variable>
                <!--25.9-->
                <xsl:variable name="BalanceSheetItem950600"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950600/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950601"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950601/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950602"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950602/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950603"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950603/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950523"><xsl:value-of select="$BalanceSheetItem950600 + $BalanceSheetItem950601 + $BalanceSheetItem950602 + $BalanceSheetItem950603"/></xsl:variable>
                <!--25.10,25.11,25.12-->
                <xsl:variable name="BalanceSheetItem950524"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950524/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950525"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950525/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950526"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950526/BalanceSheetAmount"/></xsl:variable>
                <!--25.13-->
                <xsl:variable name="BalanceSheetItem950529"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950529/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950530"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950530/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950531"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950531/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950528"><xsl:value-of select="$BalanceSheetItem950529 + $BalanceSheetItem950530 + $BalanceSheetItem950531"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950533"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950533/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950534"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950534/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950535"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950535/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950532"><xsl:value-of select="$BalanceSheetItem950533 + $BalanceSheetItem950534 + $BalanceSheetItem950535"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950527"><xsl:value-of select="$TotalBalanceSheetAmount950528 + $TotalBalanceSheetAmount950532"/></xsl:variable>
                <!--25.14,25.15,25.16-->
                <xsl:variable name="BalanceSheetItem950536"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950536/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950537"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950537/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950538"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950538/BalanceSheetAmount"/></xsl:variable>
                <!--950611,950612,950613-->
                <xsl:variable name="BalanceSheetItem950611"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950611/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950612"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950612/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950613"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950613/BalanceSheetAmount"/></xsl:variable>

                <!--25.-->
                <xsl:variable name="TotalBalanceSheetAmount950497"><xsl:value-of select="$TotalBalanceSheetAmount950498 + $BalanceSheetItem950503 + $TotalBalanceSheetAmount950504 + $BalanceSheetItem950509 + $BalanceSheetItem950510 + $TotalBalanceSheetAmount950511 + $TotalBalanceSheetAmount950515 + $BalanceSheetItem950522 + $TotalBalanceSheetAmount950523 + $BalanceSheetItem950524 + $BalanceSheetItem950525 + $BalanceSheetItem950526 + $TotalBalanceSheetAmount950527 - $BalanceSheetItem950536 - $BalanceSheetItem950537 + $BalanceSheetItem950538 + $BalanceSheetItem950611 + $BalanceSheetItem950612 + $BalanceSheetItem950613 "/></xsl:variable>
                <!--950430-->
                <xsl:variable name="TotalBalanceSheetAmount950430"><xsl:value-of select="$TotalBalanceSheetAmount950431 + $TotalBalanceSheetAmount950438 + $TotalBalanceSheetAmount950454 + $BalanceSheetItem950457 + $TotalBalanceSheetAmount950458 + $BalanceSheetItem950469 + $TotalBalanceSheetAmount950470 + $BalanceSheetItem950480 + $TotalBalanceSheetAmount950481 + $BalanceSheetItem950484 + $BalanceSheetItem950609 + $BalanceSheetItem950610 + $TotalBalanceSheetAmount950485"/></xsl:variable>
                <!--950429-->
                <xsl:variable name="TotalBalanceSheetAmount950429"><xsl:value-of select="$TotalBalanceSheetAmount950430 + $TotalBalanceSheetAmount950497"/></xsl:variable>
                <!--26.-->
                <xsl:variable name="BalanceSheetItem950565"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950565/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950566"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950566/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950567"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950567/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950568"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950568/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950569"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950569/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950564"><xsl:value-of select="$BalanceSheetItem950565 + $BalanceSheetItem950566 + $BalanceSheetItem950567 + $BalanceSheetItem950568 + $BalanceSheetItem950569"/></xsl:variable>
                <!--27.-->
                <xsl:variable name="BalanceSheetItem950571"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950571/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950572"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950572/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950573"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950573/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950574"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950574/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950575"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950575/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950576"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950576/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950570"><xsl:value-of select="$BalanceSheetItem950571 + $BalanceSheetItem950572 + $BalanceSheetItem950573 + $BalanceSheetItem950574 + $BalanceSheetItem950575 + $BalanceSheetItem950576"/></xsl:variable>
                <!--950563 รายการนอกงบแสดงฐานะการเงิน (ภาระผูกพันทั้งสิ้น)-->
                <xsl:variable name="TotalBalanceSheetAmount950563"><xsl:value-of select="$TotalBalanceSheetAmount950564 + $TotalBalanceSheetAmount950570"/></xsl:variable>
                <!--28.1-->
                <xsl:variable name="BalanceSheetItem950581"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950581/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950582"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950582/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950580"><xsl:value-of select="$BalanceSheetItem950581 * $BalanceSheetItem950582"/></xsl:variable>  
                <xsl:variable name="BalanceSheetItem950584"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950584/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950585"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950585/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950583"><xsl:value-of select="$BalanceSheetItem950584 * $BalanceSheetItem950585"/></xsl:variable>    
                <xsl:variable name="TotalBalanceSheetAmount950579"><xsl:value-of select="$TotalBalanceSheetAmount950580 + $TotalBalanceSheetAmount950583"/></xsl:variable>
                <!--28.2-->
                <xsl:variable name="BalanceSheetItem950587"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950587/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950588"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950588/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950586"><xsl:value-of select="$BalanceSheetItem950587 * $BalanceSheetItem950588"/></xsl:variable> 
                <!--28.-->
                <xsl:variable name="TotalBalanceSheetAmount950578"><xsl:value-of select="$TotalBalanceSheetAmount950579 + $TotalBalanceSheetAmount950586"/></xsl:variable>
                <!--29.1-->
                <xsl:variable name="BalanceSheetItem950592"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950592/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950593"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950593/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950591"><xsl:value-of select="$BalanceSheetItem950592 * $BalanceSheetItem950593"/></xsl:variable> 
                <xsl:variable name="BalanceSheetItem950595"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950595/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950596"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950596/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950594"><xsl:value-of select="$BalanceSheetItem950595 * $BalanceSheetItem950596"/></xsl:variable>    
                <xsl:variable name="TotalBalanceSheetAmount950590"><xsl:value-of select="$TotalBalanceSheetAmount950591 + $TotalBalanceSheetAmount950594"/></xsl:variable>
                <!--29.2-->
                <xsl:variable name="BalanceSheetItem950598"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950598/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetItem950599"><xsl:value-of select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950599/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950597"><xsl:value-of select="$BalanceSheetItem950598 * $BalanceSheetItem950599"/></xsl:variable> 
                <!--29.-->
                <xsl:variable name="TotalBalanceSheetAmount950589"><xsl:value-of select="$TotalBalanceSheetAmount950590 + $TotalBalanceSheetAmount950597"/></xsl:variable>
                <!--950577 รายละเอียดของทุนจดทะเบียน -->
                <xsl:variable name="TotalBalanceSheetAmount950577"><xsl:value-of select="$TotalBalanceSheetAmount950578 + $TotalBalanceSheetAmount950589"/></xsl:variable>
          


            <head>
                <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                <link rel="stylesheet" type="text/css" href="../../includes/css/style.css"/>

		 <title>Specialized Financial Institutions Information System</title>
				<xsl:variable name="OrganizationId">OrganizationId</xsl:variable>
                <xsl:variable name="DataSetDate">DataSetDate</xsl:variable>
                <xsl:variable name="FiReportingGroupId">FiReportingGroupId</xsl:variable>
                <xsl:variable name="BalanceSheetAmountType">BalanceSheetAmountType</xsl:variable>
                <xsl:variable name="BalanceSheetAmount">BalanceSheetAmount</xsl:variable>
                <xsl:variable name="BalanceSheetItem950005">BalanceSheetItem950005</xsl:variable>
                <xsl:variable name="BalanceSheetItemID">BalanceSheetItemID</xsl:variable>
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
                                        <table class="displayTable" width="50%" border="0">
                                            <tr>
                                                <td class="bgGreen" width="20%">Organization ID :</td>
                                                <td width="15%%" colspan="3">
                                                    <xsl:for-each select="DS_FPSC/CommonHeader">
                                                        <xsl:value-of select="OrganizationId"/>
                                                    </xsl:for-each>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="bgGreen" width="20%">FI Reporting Group ID :</td>
                                                <td colspan="3">
					                             116003 - ชุดรวมทุกสำนักงานในประเทศ
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="bgGreen" width="20%">Data Set Type :</td>
                                                <td colspan="3">
                                                    <xsl:for-each select="DS_FPSC">
                                                        <xsl:value-of select="@name"/>
                                                    </xsl:for-each>
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

                                                        <xsl:variable name="month"><xsl:value-of select="substring-after(substring-before(DataSetDate,'-'),'-')"/></xsl:variable>
                                                            <xsl:for-each select="DS_FPSC/CommonHeader">
							    <td width="20%" hight="15px" align="center">
                                                                      <xsl:value-of select="substring(DataSetDate,9,2)"/>
                                                                </td>
                                                                <td width="20%" hight="15px" align="center">
                                                                      <xsl:variable name="mo"><xsl:value-of select="substring(DataSetDate,6,2)"/></xsl:variable>
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
                                                                             <xsl:if test="$month != 'NaN'"><xsl:value-of select="$month"/></xsl:if>
                                                                        </xsl:otherwise>
                                                                     </xsl:choose>
                                                                </td>
                                                                <td width="20%" hight="15px" align="center">
                                                                      <xsl:value-of select="substring(DataSetDate,1,4)"/>
                                                                </td>
                                                            </xsl:for-each>
                                            </tr>
                                        </table>
                                        <table class="displayTable" width="100%" border="0">
                                            <tr class="headTableXsl">
                                                <td width="100%" colspan="3" align="center">Balance Sheet</td>
                                            </tr>
                                            <tr class="headTableXsl">
                                                <td width="80%" align="center" colspan="2">Balance Sheet Item</td>
                                                <td align="center">
                                                    <table class="txtWhite" border="0">
                                                        <tr class="headTableXsl">
                                                            <td>BalanceSheetAmount</td>
                                                        </tr>
                                                        <tr class="headTableXsl">
                                                            <td>Net Balance</td>
                                                        </tr>
                                                    </table>
                                                </td>

                                            </tr>
                                           
                                            <tr>
                                                <td align="center" class="labelXsl">950270</td>
                                                    <td class="labelXsl">
                                                        <xsl:value-of select="$name950270"/>

                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950270,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950271</td>
                                                    <td class="subOne labelXsl">
                                                         <xsl:value-of select="$name950271"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950271,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                             <tr>
                                                <td align="center" class="labelXsl">950272</td>
                                                    <td class="subTwo labelXsl">
                                                         <xsl:value-of select="$name950272"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                     <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950272,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl" width="10%">950273</td>
                                                    <td class="subThree labelXsl">
                                                        <xsl:value-of select="$name950273"/>
                                                    </td>
                                                    <td width="10%" align="right" class="labelXsl">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950273,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950274</td>
                                                    <td class="subFour labelXsl">
                                                       <xsl:value-of select="$name950274"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"> <xsl:value-of select="format-number($BalanceSheetItem950274,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950275</td>
                                                    <td class="subFour labelXsl">
                                                        <xsl:value-of select="$name950275"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950275,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950276</td>
                                                <td class="subThree labelXsl">
                                                    <xsl:value-of select="$name950276"/>
                                                     </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                           <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950276,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950277</td>
                                                <td class="subTwo labelXsl">
                                                     <xsl:value-of select="$name950277"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950277,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950278</td>
                                                    <td class="subThree labelXsl">
                                                         <xsl:value-of select="$name950278"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                         <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950278,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950279</td>
                                                    <td class="subFour labelXsl">
                                                        <xsl:value-of select="$name950279"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950279,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950280</td>
                                                    <td class="subFour labelXsl">
                                                        <xsl:value-of select="$name950280"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950280,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950604</td>
                                                    <td class="subFive labelXsl">
                                                        <xsl:value-of select="$name950604"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950604,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950605</td>
                                                    <td class="subFive labelXsl">
                                                      <xsl:value-of select="$name950605"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950605,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950281</td>
                                                    <td class="subThree labelXsl">
                                                        <xsl:value-of select="$name950281"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950281,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950282</td>
                                                    <td class="subFour labelXsl">
                                                        <xsl:value-of select="$name950282"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950282,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950283</td>
                                                    <td class="subFour  labelXsl">
                                                       <xsl:value-of select="$name950283"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950283,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950606</td>
                                                    <td class="subFive labelXsl">
                                                       <xsl:value-of select="$name950606"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950606,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950607</td>
                                                    <td class="subFive labelXsl">
                                                       <xsl:value-of select="$name950607"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950607,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>    
                                            <tr>
                                                <td align="center" class="labelXsl">950284</td>
                                                    <td class="subThree labelXsl">
                                                       <xsl:value-of select="$name950284"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950284,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950285</td>
                                                    <td class="subThree labelXsl">
                                                       <xsl:value-of select="$name950285"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950285,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950286</td>
                                                    <td class="subThree labelXsl">
                                                       <xsl:value-of select="$name950286"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950286,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
											 <tr>
                                                <td align="center" class="labelXsl">950614</td>
                                                    <td class="subFour labelXsl">
                                                       <xsl:value-of select="$name950614"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950614,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
											 <tr>
                                                <td align="center" class="labelXsl">950615</td>
                                                    <td class="subFour labelXsl">
                                                       <xsl:value-of select="$name950615"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950615,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950287</td>
                                                    <td class="subThree labelXsl">
                                                       <xsl:value-of select="$name950287"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950287,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950288</td>
                                                    <td class="subTwo labelXsl">
                                                       <xsl:value-of select="$name950288"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950288,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950289</td>
                                                    <td class="subTwo labelXsl">
                                                       <xsl:value-of select="$name950289"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950289,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950290</td>
                                                    <td class="subTwo  labelXsl">
                                                        <xsl:value-of select="$name950290"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                     <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950290,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950291</td>
                                                     <td class="subThree  labelXsl">
														<xsl:value-of select="$name950291"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950291,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950292</td>
                                                    <td class="subFour labelXsl">
                                                       <xsl:value-of select="$name950292"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950292,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950293</td>
                                                    <td class="subFive labelXsl">
                                                       <xsl:value-of select="$name950293"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950293,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950294</td>
                                                    <td class="subFive labelXsl">
                                                        <xsl:value-of select="$name950294"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950294,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950295</td>
                                                    <td class="subFive labelXsl">
                                                        <xsl:value-of select="$name950295"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950295,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950296</td>
                                                <td class="subFive labelXsl">
                                                    <xsl:value-of select="$name950296"/>
                                                </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950296,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950297</td>
                                                    <td class="subSix labelXsl">
                                                        <xsl:value-of select="$name950297"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950297,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950298</td>
                                                    <td class="subSix labelXsl">
                                                        <xsl:value-of select="$name950298"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950298,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950299</td>
                                                    <td class="subFive labelXsl">
                                                        <xsl:value-of select="$name950299"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                     <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950299,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950300</td>
                                                    <td class="subSix labelXsl">
                                                        <xsl:value-of select="$name950300"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950300,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950301</td>
                                                    <td class="subSix labelXsl">
                                                        <xsl:value-of select="$name950301"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950301,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950302</td>
                                                <td class="subFour  labelXsl">
                                                    <xsl:value-of select="$name950302"/>
                                                </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950302,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950303</td>
                                                    <td class="subFive  labelXsl">
                                                        <xsl:value-of select="$name950303"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950303,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950304</td>
                                                    <td class="subFive  labelXsl">
                                                        <xsl:value-of select="$name950304"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950304,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950305</td>
                                                    <td class="subFive  labelXsl">
                                                        <xsl:value-of select="$name950305"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950305,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>

                                            <tr>
                                                <td align="center" class="labelXsl">950306</td>
                                                    <td class="subFive labelXsl">
                                                        <xsl:value-of select="$name950306"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950306,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950307</td>
                                                    <td class="subSix labelXsl">
                                                        <xsl:value-of select="$name950307"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950307,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950308</td>
                                                    <td class="subSix labelXsl">
                                                        <xsl:value-of select="$name950308"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950308,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950309</td>
                                                    <td class="subFive labelXsl">
                                                        <xsl:value-of select="$name950309"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950309,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950310</td>
                                                    <td class="subSix labelXsl">
                                                        <xsl:value-of select="$name950310"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950310,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950311</td>
                                                    <td class="subSix labelXsl">
                                                        <xsl:value-of select="$name950311"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950311,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950312</td>
                                                    <td class="subFive labelXsl">
                                                         <xsl:value-of select="$name950312"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950312,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950313</td>
                                                    <td class="subFour  labelXsl">
                                                         <xsl:value-of select="$name950313"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950313,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950314</td>
                                                    <td class="subFive labelXsl">
                                                         <xsl:value-of select="$name950314"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950314,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950315</td>
                                                    <td class="subFive  labelXsl">
													 <xsl:value-of select="$name950315"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950315,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950316</td>
                                                    <td class="subFive labelXsl">
                                                         <xsl:value-of select="$name950316"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950316,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950317</td>
                                                    <td class="subFive labelXsl">
                                                         <xsl:value-of select="$name950317"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950317,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950318</td>
                                                    <td class="subFive labelXsl">
                                                         <xsl:value-of select="$name950318"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950318,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950319</td>
                                                    <td class="subSix labelXsl">
                                                         <xsl:value-of select="$name950319"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950319,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950320</td>
                                                    <td class="subSix labelXsl">
                                                         <xsl:value-of select="$name950320"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950320,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950321</td>
                                                    <td class="subFive labelXsl">
                                                         <xsl:value-of select="$name950321"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950321,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950322</td>
                                                    <td class="subFive labelXsl">
                                                         <xsl:value-of select="$name950322"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950322,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950323</td>
                                                    <td class="subFour labelXsl">
                                                         <xsl:value-of select="$name950323"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950323,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td align="center" class="labelXsl">950324</td>
                                                    <td class="subFive labelXsl">
                                                        <xsl:value-of select="$name950324"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950324,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950325</td>
                                                    <td class="subFive labelXsl">
                                                        <xsl:value-of select="$name950325"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950325,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950326</td>
                                                    <td class="subFour labelXsl">
                                                        <xsl:value-of select="$name950326"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950326,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950327</td>
                                                    <td class="subFive labelXsl">
                                                        <xsl:value-of select="$name950327"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950327,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950328</td>
                                                    <td class="subThree  labelXsl">
                                                        <xsl:value-of select="$name950328"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950328,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950329</td>
                                                    <td class="subFour  labelXsl">
                                                        <xsl:value-of select="$name950329"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950329,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950330</td>
                                                    <td class="subFive  labelXsl">
                                                        <xsl:value-of select="$name950330"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950330,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950331</td>
                                                    <td class="subSix  labelXsl">
                                                        <xsl:value-of select="$name950331"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950331,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950332</td>
                                                    <td class="subSix  labelXsl">
                                                        <xsl:value-of select="$name950332"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950332,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950333</td>
                                                    <td class="subSix  labelXsl">
                                                        <xsl:value-of select="$name950333"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950333,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950334</td>
                                                    <td class="subFive  labelXsl">
                                                        <xsl:value-of select="$name950334"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950334,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950335</td>
                                                    <td class="subSix labelXsl">
                                                        <xsl:value-of select="$name950335"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950335,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950336</td>
                                                    <td class="subSix labelXsl">
                                                        <xsl:value-of select="$name950336"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950336,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950337</td>
                                                    <td class="subSix labelXsl">
                                                        <xsl:value-of select="$name950337"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950337,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950338</td>
                                                    <td class="subSix labelXsl">
                                                        <xsl:value-of select="$name950338"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950338,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950339</td>
                                                    <td class="subFive labelXsl">
                                                        <xsl:value-of select="$name950339"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950339,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950340</td>
                                                    <td class="subFive  labelXsl">
                                                        <xsl:value-of select="$name950340"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950340,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950341</td>
                                                    <td class="subSix  labelXsl">
                                                        <xsl:value-of select="$name950341"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950341,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950342</td>
                                                    <td class="subSix labelXsl">
                                                        <xsl:value-of select="$name950342"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950342,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950343</td>
                                                    <td class="subFive labelXsl">
                                                        <xsl:value-of select="$name950343"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950343,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950344</td>
                                                    <td class="subSix labelXsl">
                                                        <xsl:value-of select="$name950344"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950344,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950345</td>
                                                    <td class="subSix labelXsl">
                                                        <xsl:value-of select="$name950345"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950345,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950346</td>
                                                    <td class="subFive labelXsl">
                                                         <xsl:value-of select="$name950346"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950346,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950347</td>
                                                    <td class="subFour labelXsl">
                                                         <xsl:value-of select="$name950347"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950347,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950348</td>
                                                    <td class="subFive  labelXsl">
                                                        <xsl:value-of select="$name950348"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950348,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950349</td>
                                                    <td class="subFive labelXsl">
                                                        <xsl:value-of select="$name950349"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950349,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950350</td>
                                                    <td class="subFive labelXsl">
                                                        <xsl:value-of select="$name950350"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950350,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950351</td>
                                                    <td class="subFive labelXsl">
                                                        <xsl:value-of select="$name950351"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950351,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950352</td>
                                                    <td class="subFive labelXsl">
                                                        <xsl:value-of select="$name950352"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950352,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950353</td>
                                                    <td class="subSix labelXsl">
                                                        <xsl:value-of select="$name950353"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950353,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950354</td>
                                                    <td class="subSix labelXsl">
                                                        <xsl:value-of select="$name950354"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950354,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950355</td>
                                                    <td class="subFive  labelXsl">
                                                        <xsl:value-of select="$name950355"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950355,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950356</td>
                                                    <td class="subFive labelXsl">
                                                        <xsl:value-of select="$name950356"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950356,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950357</td>
                                                    <td class="subFour  labelXsl">
                                                         <xsl:value-of select="$name950357"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950357,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950358</td>
                                                    <td class="subFive labelXsl">
                                                         <xsl:value-of select="$name950358"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950358,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950359</td>
                                                    <td class="subFive labelXsl">
                                                        <xsl:value-of select="$name950359"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950359,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950360</td>
                                                    <td class="subFive labelXsl">
                                                        <xsl:value-of select="$name950360"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950360,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950361</td>
                                                    <td class="subFive labelXsl">
                                                        <xsl:value-of select="$name950361"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950361,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950362</td>
                                                    <td class="subThree labelXsl">
                                                        <xsl:value-of select="$name950362"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950362,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950363</td>
                                                    <td class="subTwo  labelXsl">
                                                        <xsl:value-of select="$name950363"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950363,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950364</td>
                                                    <td class="subThree labelXsl">
                                                         <xsl:value-of select="$name950364"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950364">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950364,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950365</td>
                                                    <td class="subThree  labelXsl">
                                                         <xsl:value-of select="$name950365"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950365">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950365,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950366</td>
                                                    <td class="subTwo  labelXsl">
                                                         <xsl:value-of select="$name950366"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950366,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950367</td>
                                                    <td class="subThree labelXsl">
                                                         <xsl:value-of select="$name950367"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950367,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950368</td>
                                                    <td class="subFour  labelXsl">
                                                         <xsl:value-of select="$name950368"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950368">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950368,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950369</td>
                                                    <td class="subFour  labelXsl">
                                                         <xsl:value-of select="$name950369"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950369">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950369,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950370</td>
                                                    <td class="subThree  labelXsl">
                                                         <xsl:value-of select="$name950370"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950370">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950370,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950371</td>
                                                    <td class="subThree  labelXsl">
                                                         <xsl:value-of select="$name950371"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950371">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                             <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950371,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950372</td>
                                                    <td class="subThree labelXsl">
                                                         <xsl:value-of select="$name950372"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950372">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                             <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950372,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950373</td>
                                                    <td class="subThree labelXsl">
                                                        <xsl:value-of select="$name950373"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950373,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950374</td>
                                                    <td class="subFour  labelXsl">
                                                        <xsl:value-of select="$name950374"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950374">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950374,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950375</td>
                                                    <td class="subFour  labelXsl">
                                                        <xsl:value-of select="$name950375"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950375">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950375,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950376</td>
                                                    <td class="subThree  labelXsl">
                                                        <xsl:value-of select="$name950376"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950376">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950376,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
											 <tr>
                                                <td align="center" class="labelXsl">950616</td>
                                                    <td class="subTwo  labelXsl">
                                                        <xsl:value-of select="$name950616"/>
                                                    </td>
                                                
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950616,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                               
                                            </tr>
											<tr>
                                                <td align="center" class="labelXsl">950617</td>
                                                    <td class="subThree  labelXsl">
                                                        <xsl:value-of select="$name950617"/>
                                                    </td>
                                                
                                                      
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950617,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                              
                                            </tr>
											<tr>
                                                <td align="center" class="labelXsl">950618</td>
                                                    <td class="subFour  labelXsl">
                                                        <xsl:value-of select="$name950618"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950618">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950618,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
											<tr>
                                                <td align="center" class="labelXsl">950619</td>
                                                    <td class="subFour  labelXsl">
                                                        <xsl:value-of select="$name950619"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950619">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950619,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
											<tr>
                                                <td align="center" class="labelXsl">950620</td>
                                                    <td class="subThree labelXsl">
                                                        <xsl:value-of select="$name950620"/>
                                                    </td>
                                               
                                                     
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950620,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                               
                                            </tr>
											<tr>
                                                <td align="center" class="labelXsl">950621</td>
                                                    <td class="subFour  labelXsl">
                                                        <xsl:value-of select="$name950621"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950621">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950621,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
											<tr>
                                                <td align="center" class="labelXsl">950622</td>
                                                    <td class="subFour  labelXsl">
                                                        <xsl:value-of select="$name950622"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950622">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950622,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
											<tr>
                                                <td align="center" class="labelXsl">950623</td>
                                                    <td class="subThree  labelXsl">
                                                        <xsl:value-of select="$name950623"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950623">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950623,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
											<tr>
                                                <td align="center" class="labelXsl">950624</td>
                                                    <td class="subThree  labelXsl">
                                                        <xsl:value-of select="$name950624"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950624">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950624,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
											<tr>
                                                <td align="center" class="labelXsl">950625</td>
                                                    <td class="subThree  labelXsl">
                                                        <xsl:value-of select="$name950625"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950625">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950625,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950608</td>
                                                    <td class="subTwo  labelXsl">
                                                        <xsl:value-of select="$name950608"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950608">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950608,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950377</td>
                                                    <td class="subTwo  labelXsl">
                                                        <xsl:value-of select="$name950377"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950377">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950377,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950378</td>
                                                    <td class="subTwo labelXsl">
                                                         <xsl:value-of select="$name950378"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950378,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950379</td>
                                                    <td class="subThree  labelXsl">
                                                         <xsl:value-of select="$name950379"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950379,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950380</td>
                                                    <td class="subFour  labelXsl">
                                                        <xsl:value-of select="$name950380"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950380">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950380,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950381</td>
                                                    <td class="subFour  labelXsl">
                                                       <xsl:value-of select="$name950381"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950381">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950381,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950382</td>
                                                    <td class="subThree  labelXsl">
                                                       <xsl:value-of select="$name950382"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950382">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950382,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950383</td>
                                                    <td class="subThree  labelXsl">
                                                       <xsl:value-of select="$name950383"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950383">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950383,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950384</td>
                                                    <td class="subThree  labelXsl">
                                                       <xsl:value-of select="$name950384"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950384">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950384,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950385</td>
                                                    <td class="subTwo labelXsl">
                                                        <xsl:value-of select="$name950385"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950385,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950386</td>
                                                    <td class="subThree  labelXsl">
                                                        <xsl:value-of select="$name950386"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950386,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950387</td>
                                                    <td class="subFour labelXsl">
                                                        <xsl:value-of select="$name950387"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950387">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950387,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950388</td>
                                                    <td class="subFour labelXsl">
                                                        <xsl:value-of select="$name950388"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950388">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950388,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950389</td>
                                                    <td class="subFour  labelXsl">
                                                        <xsl:value-of select="$name950389"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950389">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950389,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950390</td>
                                                    <td class="subThree  labelXsl">
                                                        <xsl:value-of select="$name950390"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950390,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950391</td>
                                                    <td class="subFour  labelXsl">
                                                        <xsl:value-of select="$name950391"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950391">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950391,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950392</td>
                                                    <td class="subFour  labelXsl">
                                                        <xsl:value-of select="$name950392"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950392">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950392,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950393</td>
                                                    <td class="subFour  labelXsl">
                                                        <xsl:value-of select="$name950393"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950393">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950393,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950394</td>
                                                    <td class="subFour  labelXsl">
                                                        <xsl:value-of select="$name950394"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950394">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950394,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950395</td>
                                                    <td class="subThree labelXsl">
                                                        <xsl:value-of select="$name950395"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950395,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950396</td>
                                                    <td class="subFour labelXsl">
                                                        <xsl:value-of select="$name950396"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950396">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950396,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950397</td>
                                                    <td class="subFour labelXsl">
                                                        <xsl:value-of select="$name950397"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950397">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950397,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950398</td>
                                                    <td class="subFour labelXsl">
                                                        <xsl:value-of select="$name950398"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950398">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950398,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950399</td>
                                                    <td class="subThree labelXsl">
                                                        <xsl:value-of select="$name950399"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950399,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950400</td>
                                                    <td class="subFour labelXsl">
                                                        <xsl:value-of select="$name950400"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950400">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950400,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950401</td>
                                                    <td class="subFour labelXsl">
                                                        <xsl:value-of select="$name950401"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950401">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950401,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950402</td>
                                                    <td class="subFour  labelXsl">
                                                        <xsl:value-of select="$name950402"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950402">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950402,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950403</td>
                                                    <td class="subTwo  labelXsl">
                                                        <xsl:value-of select="$name950403"/>
                                                    </td>
                                               <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950403,'###,###,###,###,###,###,###,##0.00')"/></span>
                                               </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950404</td>
                                                    <td class="subThree  labelXsl">
                                                        <xsl:value-of select="$name950404"/>
                                                    </td>
                                               <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950404,'###,###,###,###,###,###,###,##0.00')"/></span>
                                               </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950405</td>
                                                    <td class="subFour labelXsl">
                                                        <xsl:value-of select="$name950405"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950405">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950405,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>

                                            <tr>
                                                <td align="center" class="labelXsl">950406</td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950406">
                                                    <td class="subFour labelXsl">
                                                        <xsl:value-of select="$name950406"/>
                                                    </td>
                                                </xsl:for-each>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950406">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950406,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950407</td>
                                                    <td class="subThree labelXsl">
                                                         <xsl:value-of select="$name950407"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950407,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950408</td>
                                                    <td class="subFour labelXsl">
                                                        <xsl:value-of select="$name950408"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950408">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950408,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950409</td>
                                                    <td class="subFour labelXsl">
                                                       <xsl:value-of select="$name950409"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950409">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950409,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950410</td>
                                                    <td class="subFour labelXsl">
                                                         <xsl:value-of select="$name950410"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950410">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950410,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950411</td>
                                                    <td class="subFour labelXsl">
                                                        <xsl:value-of select="$name950411"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950411">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950411,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950412</td>
                                                    <td class="subTwo labelXsl">
                                                        <xsl:value-of select="$name950412"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950412">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950412,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950413</td>
                                                    <td class="subTwo labelXsl">
                                                         <xsl:value-of select="$name950413"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950413,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950414</td>
                                                    <td class="subThree labelXsl">
                                                        <xsl:value-of select="$name950414"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950414">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950414,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950415</td>
                                                    <td class="subThree labelXsl">
                                                        <xsl:value-of select="$name950415"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950415">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950415,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950416</td>
                                                    <td class="subThree labelXsl">
                                                        <xsl:value-of select="$name950416"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950416">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950416,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950417</td>
                                                    <td class="subThree labelXsl">
                                                        <xsl:value-of select="$name950417"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950417">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950417,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950418</td>
                                                    <td class="subThree labelXsl">
                                                        <xsl:value-of select="$name950418"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950418">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950418,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950419</td>
                                                    <td class="subThree labelXsl">
                                                        <xsl:value-of select="$name950419"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950419">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950419,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950420</td>
                                                    <td class="subThree labelXsl">
                                                        <xsl:value-of select="$name950420"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950420">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950420,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950421</td>
                                                    <td class="subThree labelXsl">
                                                        <xsl:value-of select="$name950421"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950421">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950421,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950422</td>
                                                    <td class="subThree labelXsl">
                                                        <xsl:value-of select="$name950422"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950422">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950422,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950423</td>
                                                    <td class="subThree labelXsl">
                                                        <xsl:value-of select="$name950423"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                     <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950423,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950424</td>
                                                    <td class="subFour  labelXsl">
                                                        <xsl:value-of select="$name950424"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950424">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950424,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950425</td>
                                                    <td class="subFour labelXsl">
                                                        <xsl:value-of select="$name950425"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950425">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950425,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950426</td>
                                                    <td class="subThree labelXsl">
                                                        <xsl:value-of select="$name950426"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950426">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950426,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950427</td>
                                                    <td class="subThree labelXsl">
                                                        <xsl:value-of select="$name950427"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950427">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950427,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950428</td>
                                                    <td class="subThree labelXsl">
                                                       <xsl:value-of select="$name950428"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950428">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950428,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950429</td>
                                                    <td class="paddingSub labelXsl">
                                                         <xsl:value-of select="$name950429"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950429,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                              <td align="center" class="labelXsl">950430</td>
                                              <td class="subOne labelXsl">
                                                <xsl:value-of select="$name950430"/>
                                              </td>
                                              <td width="20%" class="labelXsl" align="right">
                                                <span style="color:#1500d4">
                                                  <xsl:value-of select="format-number($TotalBalanceSheetAmount950430,'###,###,###,###,###,###,###,##0.00')"/>
                                                </span>
                                              </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950431</td>
                                                <td class="subTwo labelXsl">
                                                    <xsl:value-of select="$name950431"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950431,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950432</td>
                                                    <td class="subThree  labelXsl">
                                                        <xsl:value-of select="$name950432"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950432">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950432,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950433</td>
                                                    <td class="subThree  labelXsl">
                                                        <xsl:value-of select="$name950433"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950433">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950433,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950434</td>
                                                    <td class="subThree  labelXsl">
                                                        <xsl:value-of select="$name950434"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950434">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950434,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950435</td>
                                                    <td class="subThree  labelXsl">
                                                        <xsl:value-of select="$name950435"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950435">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950435,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950436</td>
                                                    <td class="subThree  labelXsl">
                                                        <xsl:value-of select="$name950436"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950436">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950436,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950437</td>
                                                    <td class="subThree  labelXsl">
                                                        <xsl:value-of select="$name950437"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950437">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950437,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950438</td>
                                                    <td class="subTwo  labelXsl">
                                                         <xsl:value-of select="$name950438"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950438,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950439</td>
                                                    <td class="subThree  labelXsl">
                                                         <xsl:value-of select="$name950439"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950439,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950440</td>
                                                    <td class="subFour labelXsl">
                                                         <xsl:value-of select="$name950440"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950440,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950441</td>
                                                    <td class="subFive labelXsl">
                                                        <xsl:value-of select="$name950441"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950441">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950441,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950442</td>
                                            <td class="subFive labelXsl">
                                              <xsl:value-of select="$name950442"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950442">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950442,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950443</td>
                                                    <td class="subFour labelXsl">
                                                         <xsl:value-of select="$name950443"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950443,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                              <td align="center" class="labelXsl">950444</td>
                                              <td class="subFive labelXsl">
                                                <xsl:value-of select="$name950444"/>
                                              </td>
                                              <xsl:for-each
                                                      select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950444">
                                                <td width="20%" class="labelXsl" align="right">
                                                  <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                    <span style="color:#1500d4">
                                                      <xsl:value-of select="format-number($BalanceSheetItem950444,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                  </xsl:if>
                                                </td>
                                              </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950445</td>
                                                    <td class="subFive labelXsl">
                                                        <xsl:value-of select="$name950445"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950445">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950445,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950446</td>
                                                    <td class="subThree labelXsl">
                                                         <xsl:value-of select="$name950446"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950446,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950447</td>
                                                    <td class="subFour labelXsl">
                                                         <xsl:value-of select="$name950447"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950447,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950448</td>
                                                    <td class="subFive labelXsl">
                                                        <xsl:value-of select="$name950448"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950448">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetItem950448,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950449</td>
                                            <td class="subFive labelXsl">
                                              <xsl:value-of select="$name950449"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950449">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950449,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950450</td>
                                                    <td class="subFour labelXsl">
                                                         <xsl:value-of select="$name950450"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950450,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950451</td>
                                                <td class="subFive labelXsl">
                                                    <xsl:value-of select="$name950451"/>
                                                </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950451">
                                                <td width="20%" class="labelXsl" align="right">
                                                    <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                      <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950451,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                  </xsl:if>
                                                </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950452</td>
                                            <td class="subFive labelXsl">
                                              <xsl:value-of select="$name950452"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950452">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950452,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950453</td>
                                            <td class="subThree labelXsl">
                                              <xsl:value-of select="$name950453"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950453">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950453,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950454</td>
                                            <td class="subTwo  labelXsl">
                                              <xsl:value-of select="$name950454"/>
                                            </td>
                                            <td width="20%" class="labelXsl" align="right">
                                              <span style="color:#1500d4">
                                                <xsl:value-of select="format-number($TotalBalanceSheetAmount950454,'###,###,###,###,###,###,###,##0.00')"/>
                                              </span>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950455</td>
                                            <td class="subThree  labelXsl">
                                              <xsl:value-of select="$name950455"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950455">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950455,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950456</td>
                                            <td class="subThree labelXsl">
                                              <xsl:value-of select="$name950456"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950456">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950456,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950457</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950457"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950457">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950457,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950458</td>
                                            <td class="subTwo  labelXsl">
                                              <xsl:value-of select="$name950458"/>
                                            </td>
                                            <td width="20%" class="labelXsl" align="right">
                                              <span style="color:#1500d4">
                                                <xsl:value-of select="format-number($TotalBalanceSheetAmount950458,'###,###,###,###,###,###,###,##0.00')"/>
                                              </span>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950459</td>
                                            <td class="subThree  labelXsl">
                                              <xsl:value-of select="$name950459"/>
                                            </td>
                                            <td width="20%" class="labelXsl" align="right">
                                              <span style="color:#1500d4">
                                                <xsl:value-of select="format-number($TotalBalanceSheetAmount950459,'###,###,###,###,###,###,###,##0.00')"/>
                                              </span>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950460</td>
                                            <td class="subFour  labelXsl">
                                              <xsl:value-of select="$name950460"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950460">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950460,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950461</td>
                                            <td class="subFour  labelXsl">
                                              <xsl:value-of select="$name950461"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950461">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950461,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950462</td>
                                            <td class="subThree labelXsl">
                                              <xsl:value-of select="$name950462"/>
                                            </td>
                                            <td width="20%" class="labelXsl" align="right">
                                              <span style="color:#1500d4">
                                                <xsl:value-of select="format-number($TotalBalanceSheetAmount950462,'###,###,###,###,###,###,###,##0.00')"/>
                                              </span>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950463</td>
                                            <td class="subFour  labelXsl">
                                              <xsl:value-of select="$name950463"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950463">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950463,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950464</td>
                                            <td class="subFour labelXsl">
                                              <xsl:value-of select="$name950464"/>
                                            </td>
                                            <td width="20%" class="labelXsl" align="right">
                                              <span style="color:#1500d4">
                                                <xsl:value-of select="format-number($TotalBalanceSheetAmount950464,'###,###,###,###,###,###,###,##0.00')"/>
                                              </span>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950465</td>
                                            <td class="subFive  labelXsl">
                                              <xsl:value-of select="$name950465"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950465">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950465,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950466</td>
                                            <td class="subFive  labelXsl">
                                              <xsl:value-of select="$name950466"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950466">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950466,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950467</td>
                                            <td class="subFive labelXsl">
                                              <xsl:value-of select="$name950467"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950467">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950467,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950468</td>
                                            <td class="subThree  labelXsl">
                                              <xsl:value-of select="$name950468"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950468">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950468,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950469</td>
                                            <td class="subTwo  labelXsl">
                                              <xsl:value-of select="$name950469"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950469">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950469,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950470</td>
                                            <td class="subTwo  labelXsl">
                                              <xsl:value-of select="$name950470"/>
                                            </td>
                                            <td width="20%" class="labelXsl" align="right">
                                              <span style="color:#1500d4">
                                                <xsl:value-of select="format-number($TotalBalanceSheetAmount950470,'###,###,###,###,###,###,###,##0.00')"/>
                                              </span>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950471</td>
                                            <td class="subThree  labelXsl">
                                              <xsl:value-of select="$name950471"/>
                                            </td>
                                            <td width="20%" class="labelXsl" align="right">
                                              <span style="color:#1500d4">
                                                <xsl:value-of select="format-number($TotalBalanceSheetAmount950471,'###,###,###,###,###,###,###,##0.00')"/>
                                              </span>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950472</td>
                                            <td class="subFour  labelXsl">
                                              <xsl:value-of select="$name950472"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950472">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950472,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950473</td>
                                            <td class="subFour  labelXsl">
                                              <xsl:value-of select="$name950473"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950473">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950473,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950474</td>
                                            <td class="subFour  labelXsl">
                                              <xsl:value-of select="$name950474"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950474">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950474,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950475</td>
                                            <td class="subThree  labelXsl">
                                              <xsl:value-of select="$name950475"/>
                                            </td>
                                            <td width="20%" class="labelXsl" align="right">
                                              <span style="color:#1500d4">
                                                <xsl:value-of select="format-number($TotalBalanceSheetAmount950475,'###,###,###,###,###,###,###,##0.00')"/>
                                              </span>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950476</td>
                                            <td class="subFour  labelXsl">
                                              <xsl:value-of select="$name950476"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950476">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950476,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950477</td>
                                            <td class="subFour  labelXsl">
                                              <xsl:value-of select="$name950477"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950477">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950477,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950478</td>
                                            <td class="subFour  labelXsl">
                                              <xsl:value-of select="$name950478"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950478">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950478,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950479</td>
                                            <td class="subThree  labelXsl">
                                              <xsl:value-of select="$name950479"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950479">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950479,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950480</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950480"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950480">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950480,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950481</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950481"/>
                                            </td>
                                            <td width="20%" class="labelXsl" align="right">
                                              <span style="color:#1500d4">
                                                <xsl:value-of select="format-number($TotalBalanceSheetAmount950481,'###,###,###,###,###,###,###,##0.00')"/>
                                              </span>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950482</td>
                                            <td class="subThree labelXsl">
                                              <xsl:value-of select="$name950482"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950482">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950482,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950483</td>
                                            <td class="subThree labelXsl">
                                              <xsl:value-of select="$name950483"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950483">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950483,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950484</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950484"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950484">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950484,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950609</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950609"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950609">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950609,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950610</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950610"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950610">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950610,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950485</td>
                                            <td class="subTwo  labelXsl">
                                              <xsl:value-of select="$name950485"/>
                                            </td>
                                            <td width="20%" class="labelXsl" align="right">
                                              <span style="color:#1500d4">
                                                <xsl:value-of select="format-number($TotalBalanceSheetAmount950485,'###,###,###,###,###,###,###,##0.00')"/>
                                              </span>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950486</td>
                                            <td class="subThree labelXsl">
                                              <xsl:value-of select="$name950486"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950486">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950486,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950487</td>
                                            <td class="subThree labelXsl">
                                              <xsl:value-of select="$name950487"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950487">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950487,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950488</td>
                                            <td class="subThree labelXsl">
                                              <xsl:value-of select="$name950488"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950488">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950488,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950489</td>
                                            <td class="subThree labelXsl">
                                              <xsl:value-of select="$name950489"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950489">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950489,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950490</td>
                                            <td class="subThree labelXsl">
                                              <xsl:value-of select="$name950490"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950490">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950490,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950491</td>
                                            <td class="subThree labelXsl">
                                              <xsl:value-of select="$name950491"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950491">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950491,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950492</td>
                                            <td class="subThree labelXsl">
                                              <xsl:value-of select="$name950492"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950492">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950492,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950493</td>
                                            <td class="subThree labelXsl">
                                              <xsl:value-of select="$name950493"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950493">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950493,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950494</td>
                                            <td class="subThree labelXsl">
                                              <xsl:value-of select="$name950494"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950494">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950494,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950495</td>
                                            <td class="subThree labelXsl">
                                              <xsl:value-of select="$name950495"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950495">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950495,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950496</td>
                                            <td class="subThree labelXsl">
                                              <xsl:value-of select="$name950496"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950496">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950496,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950497</td>
                                            <td class="subOne  labelXsl">
                                              <xsl:value-of select="$name950497"/>
                                            </td>
                                            <td width="20%" class="labelXsl" align="right">
                                              <span style="color:#1500d4">
                                                <xsl:value-of select="format-number($TotalBalanceSheetAmount950497,'###,###,###,###,###,###,###,##0.00')"/>
                                              </span>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950498</td>
                                            <td class="subTwo  labelXsl">
                                              <xsl:value-of select="$name950498"/>
                                            </td>
                                            <td width="20%" class="labelXsl" align="right">
                                              <span style="color:#1500d4">
                                                <xsl:value-of select="format-number($TotalBalanceSheetAmount950498,'###,###,###,###,###,###,###,##0.00')"/>
                                              </span>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950499</td>
                                            <td class="subThree  labelXsl">
                                              <xsl:value-of select="$name950499"/>
                                            </td>
                                            <td width="20%" class="labelXsl" align="right">
                                              <span style="color:#1500d4">
                                                <xsl:value-of select="format-number($TotalBalanceSheetAmount950499,'###,###,###,###,###,###,###,##0.00')"/>
                                              </span>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950500</td>
                                            <td class="subFour  labelXsl">
                                              <xsl:value-of select="$name950500"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950500">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950500,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950501</td>
                                            <td class="subFour  labelXsl">
                                              <xsl:value-of select="$name950501"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950501">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950501,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950502</td>
                                            <td class="subThree  labelXsl">
                                              <xsl:value-of select="$name950502"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950502">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950502,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950503</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950503"/>
                                            </td>
                                            <td width="20%" class="labelXsl" align="right">
                                              <span style="color:#1500d4">
                                                <xsl:value-of select="format-number($BalanceSheetItem950503,'###,###,###,###,###,###,###,##0.00')"/>
                                              </span>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950504</td>
                                            <td class="subTwo  labelXsl">
                                              <xsl:value-of select="$name950504"/>
                                            </td>
                                            <td width="20%" class="labelXsl" align="right">
                                              <span style="color:#1500d4">
                                                <xsl:value-of select="format-number($TotalBalanceSheetAmount950504,'###,###,###,###,###,###,###,##0.00')"/>
                                              </span>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950505</td>
                                            <td class="subThree  labelXsl">
                                              <xsl:value-of select="$name950505"/>
                                            </td>
                                            <td width="20%" class="labelXsl" align="right">
                                              <span style="color:#1500d4">
                                                <xsl:value-of select="format-number($TotalBalanceSheetAmount950505,'###,###,###,###,###,###,###,##0.00')"/>
                                              </span>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950506</td>
                                            <td class="subFour  labelXsl">
                                              <xsl:value-of select="$name950506"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950506">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950506,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950507</td>
                                            <td class="subFour  labelXsl">
                                              <xsl:value-of select="$name950507"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950507">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950507,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950508</td>
                                            <td class="subThree  labelXsl">
                                              <xsl:value-of select="$name950508"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950508">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950508,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950509</td>
                                            <td class="subTwo  labelXsl">
                                              <xsl:value-of select="$name950509"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950509">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950509,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950510</td>
                                            <td class="subTwo  labelXsl">
                                              <xsl:value-of select="$name950510"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950510">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950510,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950511</td>
                                            <td class="subTwo  labelXsl">
                                              <xsl:value-of select="$name950511"/>
                                            </td>
                                            <td width="20%" class="labelXsl" align="right">
                                              <span style="color:#1500d4">
                                                <xsl:value-of select="format-number($TotalBalanceSheetAmount950511,'###,###,###,###,###,###,###,##0.00')"/>
                                              </span>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950512</td>
                                            <td class="subThree  labelXsl">
                                              <xsl:value-of select="$name950512"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950512">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950512,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950513</td>
                                            <td class="subThree  labelXsl">
                                              <xsl:value-of select="$name950513"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950513">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950513,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950514</td>
                                            <td class="subThree  labelXsl">
                                              <xsl:value-of select="$name950514"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950514">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950514,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950515</td>
                                            <td class="subTwo  labelXsl">
                                              <xsl:value-of select="$name950515"/>
                                            </td>
                                            <td width="20%" class="labelXsl" align="right">
                                              <span style="color:#1500d4">
                                                <xsl:value-of select="format-number($TotalBalanceSheetAmount950515,'###,###,###,###,###,###,###,##0.00')"/>
                                              </span>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950516</td>
                                            <td class="subThree  labelXsl">
                                              <xsl:value-of select="$name950516"/>
                                            </td>
                                            <td width="20%" class="labelXsl" align="right">
                                              <span style="color:#1500d4">
                                                <xsl:value-of select="format-number($TotalBalanceSheetAmount950516,'###,###,###,###,###,###,###,##0.00')"/>
                                              </span>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950517</td>
                                            <td class="subFour  labelXsl">
                                              <xsl:value-of select="$name950517"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950517">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950517,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950518</td>
                                            <td class="subFour  labelXsl">
                                              <xsl:value-of select="$name950518"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950518">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950518,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950519</td>
                                            <td class="subThree  labelXsl">
                                              <xsl:value-of select="$name950519"/>
                                            </td>
                                            <td width="20%" class="labelXsl" align="right">
                                              <span style="color:#1500d4">
                                                <xsl:value-of select="format-number($TotalBalanceSheetAmount950519,'###,###,###,###,###,###,###,##0.00')"/>
                                              </span>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950520</td>
                                            <td class="subFour  labelXsl">
                                              <xsl:value-of select="$name950520"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950520">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950520,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950521</td>
                                            <td class="subFour labelXsl">
                                              <xsl:value-of select="$name950521"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950521">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950521,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950522</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950522"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950522">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950522,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950523</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950523"/>
                                            </td>
                                            <td width="20%" class="labelXsl" align="right">
                                              <span style="color:#1500d4">
                                                <xsl:value-of select="format-number($TotalBalanceSheetAmount950523,'###,###,###,###,###,###,###,##0.00')"/>
                                              </span>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950600</td>
                                            <td class="subThree labelXsl">
                                              <xsl:value-of select="$name950600"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950600">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950600,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950601</td>
                                            <td class="subThree labelXsl">
                                              <xsl:value-of select="$name950601"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950601">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950601,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950602</td>
                                            <td class="subThree labelXsl">
                                              <xsl:value-of select="$name950601"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950602">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950602,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950603</td>
                                            <td class="subThree labelXsl">
                                              <xsl:value-of select="$name950603"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950603">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950603,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950524</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950524"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950524">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950524,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950525</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950525"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950525">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950525,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950526</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950526"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950526">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950526,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950527</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950527"/>
                                            </td>
                                            <td width="20%" class="labelXsl" align="right">
                                              <span style="color:#1500d4">
                                                <xsl:value-of select="format-number($TotalBalanceSheetAmount950527,'###,###,###,###,###,###,###,##0.00')"/>
                                              </span>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950528</td>
                                            <td class="subThree labelXsl">
                                              <xsl:value-of select="$name950528"/>
                                            </td>
                                            <td width="20%" class="labelXsl" align="right">
                                              <span style="color:#1500d4">
                                                <xsl:value-of select="format-number($TotalBalanceSheetAmount950528,'###,###,###,###,###,###,###,##0.00')"/>
                                              </span>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950529</td>
                                            <td class="subFour labelXsl">
                                              <xsl:value-of select="$name950529"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950529">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950529,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950530</td>
                                            <td class="subFour labelXsl">
                                              <xsl:value-of select="$name950530"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950530">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950530,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950531</td>
                                            <td class="subFour labelXsl">
                                              <xsl:value-of select="$name950531"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950531">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950531,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950532</td>
                                            <td class="subThree labelXsl">
                                              <xsl:value-of select="$name950532"/>
                                            </td>
                                            <td width="20%" class="labelXsl" align="right">
                                              <span style="color:#1500d4">
                                                <xsl:value-of select="format-number($TotalBalanceSheetAmount950532,'###,###,###,###,###,###,###,##0.00')"/>
                                              </span>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950533</td>
                                            <td class="subFour labelXsl">
                                              <xsl:value-of select="$name950533"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950533">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950533,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950534</td>
                                            <td class="subFour labelXsl">
                                              <xsl:value-of select="$name950534"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950534">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950534,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950535</td>
                                            <td class="subFour labelXsl">
                                              <xsl:value-of select="$name950535"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950535">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950535,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950536</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950536"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950536">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950536,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950537</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950537"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950537">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950537,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950538</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950538"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950538">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950538,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950611</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950611"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950611">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950611,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950612</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950612"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950612">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950612,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950613</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950613"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950613">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950613,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950563</td>
                                            <td class="paddingSub labelXsl">
                                              <xsl:value-of select="$name950563"/>
                                            </td>
                                            <td width="20%" class="labelXsl" align="right">
                                              <span style="color:#1500d4">
                                                <xsl:value-of select="format-number($TotalBalanceSheetAmount950563,'###,###,###,###,###,###,###,##0.00')"/>
                                              </span>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950564</td>
                                            <td class="subOne labelXsl">
                                              <xsl:value-of select="$name950564"/>
                                            </td>
                                            <td width="20%" class="labelXsl" align="right">
                                              <span style="color:#1500d4">
                                                <xsl:value-of select="format-number($TotalBalanceSheetAmount950564,'###,###,###,###,###,###,###,##0.00')"/>
                                              </span>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950565</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950565"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950565">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950565,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950566</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950566"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950566">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950566,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950567</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950567"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950567">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950567,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950568</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950568"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950568">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950568,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950569</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950569"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950569">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950569,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950570</td>
                                            <td class="subOne labelXsl">
                                              <xsl:value-of select="$name950570"/>
                                            </td>
                                            <td width="20%" class="labelXsl" align="right">
                                              <span style="color:#1500d4">
                                                <xsl:value-of select="format-number($TotalBalanceSheetAmount950570,'###,###,###,###,###,###,###,##0.00')"/>
                                              </span>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950571</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950571"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950571">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950571,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950572</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950572"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950572">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950572,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950573</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950573"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950573">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950573,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950574</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950574"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950574">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950574,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950575</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950575"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950575">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950575,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950576</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950576"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_FPSC/DS_FPSC_Content/ContentRecordGroup/BalanceSheetItem950576">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetItem950576,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
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