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
            <xsl:variable name="name950287">    	        2.6 หัก ค่าเผื่อหนี้สงสัยจะสูญ</xsl:variable>
            <xsl:variable name="name950288">    	     3. สิทธิในการเรียกคืนหลักทรัพย์</xsl:variable>
            <xsl:variable name="name950289">    	     4. สินทรัพย์ตราสารอนุพันธ์</xsl:variable>
            <xsl:variable name="name950290">    	     5. เงินลงทุนสุทธิ</xsl:variable>
            <xsl:variable name="name950291">    	        5.1 เงินลงทุนชั่วคราวสุทธิ</xsl:variable>
            <xsl:variable name="name950292">    	           5.1.1 หลักทรัพย์เพื่อค้าสุทธิ</xsl:variable>
            <xsl:variable name="name950293">    	              5.1.1.1 ตราสารทุน</xsl:variable>
            <xsl:variable name="name950294">                    5.1.1.2 ตราสารหนี้</xsl:variable>
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
            <xsl:variable name="name950608">    	     ลูกหนี้รอการชดใช้โครงการนโยบายรัฐ [เฉพาะ SFI ]</xsl:variable>
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
            <xsl:variable name="name950609">    	      เจ้าหนี้โครงการรัฐบาล [เฉพาะ SFI]</xsl:variable>
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
                <!--<xsl:for-each select="DS_BLS/DS_BLS_Content/ContentRecordGroup">-->
                <!--1.-->
                <xsl:variable name="BalanceSheetAmount950274"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950274/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950275"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950275/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950273"><xsl:value-of select="$BalanceSheetAmount950274 + $BalanceSheetAmount950275"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950276"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950276/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950272"><xsl:value-of select="$TotalBalanceSheetAmount950273 + $BalanceSheetAmount950276"/></xsl:variable>
                <!--2.-->
                <xsl:variable name="BalanceSheetAmount950279"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950279/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950604"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950604/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950605"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950605/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950280"><xsl:value-of select="$BalanceSheetAmount950604 + $BalanceSheetAmount950605"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950278"><xsl:value-of select="$BalanceSheetAmount950279 + $TotalBalanceSheetAmount950280"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950282"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950282/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950606"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950606/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950607"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950607/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950283"><xsl:value-of select="$BalanceSheetAmount950606 + $BalanceSheetAmount950607"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950281"><xsl:value-of select="$BalanceSheetAmount950282 + $TotalBalanceSheetAmount950283"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950284"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950284/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950285"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950285/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950286"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950286/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950287"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950287/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950277"><xsl:value-of select="$TotalBalanceSheetAmount950278 + $TotalBalanceSheetAmount950281 + $BalanceSheetAmount950284 + $BalanceSheetAmount950285 - $BalanceSheetAmount950286 - $BalanceSheetAmount950287"/></xsl:variable>
                <!--3.-->
                <xsl:variable name="BalanceSheetAmount950288"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950288/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <!--4.-->
                <xsl:variable name="BalanceSheetAmount950289"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950289/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <!--5.1.1-->
                <xsl:variable name="BalanceSheetAmount950293"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950293/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950294"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950294/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950295"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950295/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>                    
                <xsl:variable name="BalanceSheetAmount950297"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950297/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950298"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950298/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950296"><xsl:value-of select="$BalanceSheetAmount950297 + $BalanceSheetAmount950298"/></xsl:variable>  
                <xsl:variable name="BalanceSheetAmount950300"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950300/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950301"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950301/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950299"><xsl:value-of select="$BalanceSheetAmount950300 - $BalanceSheetAmount950301"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950292"><xsl:value-of select="$BalanceSheetAmount950293 + $BalanceSheetAmount950294 + $BalanceSheetAmount950295 + $TotalBalanceSheetAmount950296 + $TotalBalanceSheetAmount950299"/></xsl:variable>
                <!--5.1.2-->
                <xsl:variable name="BalanceSheetAmount950303"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950303/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950304"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950304/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950305"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950305/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950307"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950307/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950308"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950308/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950306"><xsl:value-of select="$BalanceSheetAmount950307 + $BalanceSheetAmount950308"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950310"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950310/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950311"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950311/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950309"><xsl:value-of select="$BalanceSheetAmount950310 - $BalanceSheetAmount950311"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950312"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950312/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>                
                <xsl:variable name="TotalBalanceSheetAmount950302"><xsl:value-of select="$BalanceSheetAmount950303 + $BalanceSheetAmount950304 + $BalanceSheetAmount950305 + $TotalBalanceSheetAmount950306 + $TotalBalanceSheetAmount950309 - $BalanceSheetAmount950312"/></xsl:variable>
                <!--5.1.3-->
                <xsl:variable name="BalanceSheetAmount950314"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950314/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950315"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950315/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950316"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950316/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950317"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950317/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950319"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950319/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950320"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950320/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950318"><xsl:value-of select="$BalanceSheetAmount950319 + $BalanceSheetAmount950320"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950321"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950321/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950322"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950322/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950313"><xsl:value-of select="$BalanceSheetAmount950314 + $BalanceSheetAmount950315 + $BalanceSheetAmount950316 + $BalanceSheetAmount950317 + $TotalBalanceSheetAmount950318 + $BalanceSheetAmount950321 - $BalanceSheetAmount950322"/></xsl:variable>
                <!--5.1.4-->
                <xsl:variable name="BalanceSheetAmount950324"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950324/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950325"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950325/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950326"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950326/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950327"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950327/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950323"><xsl:value-of select="$BalanceSheetAmount950324 + $BalanceSheetAmount950325 + $BalanceSheetAmount950326 - $BalanceSheetAmount950327"/></xsl:variable>
                <!--5.1-->          
                <xsl:variable name="TotalBalanceSheetAmount950291"><xsl:value-of select="$TotalBalanceSheetAmount950292 + $TotalBalanceSheetAmount950302 + $TotalBalanceSheetAmount950313 + $TotalBalanceSheetAmount950323"/></xsl:variable>
                <!--5.2.1-->
                <xsl:variable name="BalanceSheetAmount950331"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950331/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950332"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950332/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950333"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950333/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950330"><xsl:value-of select="$BalanceSheetAmount950331 + $BalanceSheetAmount950332 + $BalanceSheetAmount950333"/></xsl:variable>                
                <xsl:variable name="BalanceSheetAmount950335"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950335/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950336"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950336/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950337"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950337/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950338"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950338/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950334"><xsl:value-of select="$BalanceSheetAmount950335 + $BalanceSheetAmount950336 + $BalanceSheetAmount950337 + $BalanceSheetAmount950338"/></xsl:variable>                
                <xsl:variable name="BalanceSheetAmount950339"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950339/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>                
                <xsl:variable name="BalanceSheetAmount950341"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950341/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950342"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950342/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950340"><xsl:value-of select="$BalanceSheetAmount950341 + $BalanceSheetAmount950342"/></xsl:variable>                
                <xsl:variable name="BalanceSheetAmount950344"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950344/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950345"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950345/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950343"><xsl:value-of select="$BalanceSheetAmount950344 - $BalanceSheetAmount950345"/></xsl:variable>                
                <xsl:variable name="BalanceSheetAmount950346"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950346/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>               
                <xsl:variable name="TotalBalanceSheetAmount950329"><xsl:value-of select="$TotalBalanceSheetAmount950330 + $TotalBalanceSheetAmount950334 + $BalanceSheetAmount950339 + $TotalBalanceSheetAmount950340 + $TotalBalanceSheetAmount950343 - $BalanceSheetAmount950346"/></xsl:variable>
                <!--5.2.2-->    
                <xsl:variable name="BalanceSheetAmount950348"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950348/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950349"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950349/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950350"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950350/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950351"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950351/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950353"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950353/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950354"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950354/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950352"><xsl:value-of select="$BalanceSheetAmount950353 + $BalanceSheetAmount950354"/></xsl:variable>  
                <xsl:variable name="BalanceSheetAmount950355"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950355/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950356"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950356/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>                
                <xsl:variable name="TotalBalanceSheetAmount950347"><xsl:value-of select="$BalanceSheetAmount950348 + $BalanceSheetAmount950349 + $BalanceSheetAmount950350 + $BalanceSheetAmount950351 + $TotalBalanceSheetAmount950352 + $BalanceSheetAmount950355 - $BalanceSheetAmount950356"/></xsl:variable>  
                <!--5.2.3--> 
                <xsl:variable name="BalanceSheetAmount950358"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950358/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950359"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950359/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950360"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950360/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950361"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950361/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950357"><xsl:value-of select="$BalanceSheetAmount950358 + $BalanceSheetAmount950359 + $BalanceSheetAmount950360 - $BalanceSheetAmount950361"/></xsl:variable>  
                <!--5.2-->
                <xsl:variable name="TotalBalanceSheetAmount950328"><xsl:value-of select="$TotalBalanceSheetAmount950329 + $TotalBalanceSheetAmount950347 + $TotalBalanceSheetAmount950357"/></xsl:variable>
                <!--5.3-->
                <xsl:variable name="BalanceSheetAmount950362"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950362/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <!--5.-->
                <xsl:variable name="TotalBalanceSheetAmount950290"><xsl:value-of select="$TotalBalanceSheetAmount950291 + $TotalBalanceSheetAmount950328 + $BalanceSheetAmount950362"/></xsl:variable>
                <!--6.--> 
                <xsl:variable name="BalanceSheetAmount950364"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950364/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950365"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950365/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950363"><xsl:value-of select="$BalanceSheetAmount950364 - $BalanceSheetAmount950365"/></xsl:variable>
                <!--7.--> 
                <xsl:variable name="BalanceSheetAmount950368"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950368/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950369"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950369/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950367"><xsl:value-of select="$BalanceSheetAmount950368 + $BalanceSheetAmount950369"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950370"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950370/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950371"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950371/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950372"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950372/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950374"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950374/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950375"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950375/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950373"><xsl:value-of select="$BalanceSheetAmount950374 + $BalanceSheetAmount950375"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950376"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950376/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950366"><xsl:value-of select="$TotalBalanceSheetAmount950367 + $BalanceSheetAmount950370 + $BalanceSheetAmount950371 - $BalanceSheetAmount950372 - $TotalBalanceSheetAmount950373 - $BalanceSheetAmount950376"/></xsl:variable>
                <!--950608-->         
                <xsl:variable name="BalanceSheetAmount950608"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950608/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <!--8.--> 
                <xsl:variable name="BalanceSheetAmount950377"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950377/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <!--9.-->
                <xsl:variable name="BalanceSheetAmount950380"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950380/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950381"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950381/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950379"><xsl:value-of select="$BalanceSheetAmount950380 + $BalanceSheetAmount950381"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950382"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950382/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950383"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950383/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950384"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950384/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950378"><xsl:value-of select="$TotalBalanceSheetAmount950379 + $BalanceSheetAmount950382 - $BalanceSheetAmount950383 - $BalanceSheetAmount950384"/></xsl:variable>
                <!--10.-->
                <!--950386+950390+950395+950399-->
                <xsl:variable name="BalanceSheetAmount950387"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950387/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950388"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950388/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950389"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950389/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950386"><xsl:value-of select="$BalanceSheetAmount950387 + $BalanceSheetAmount950388 - $BalanceSheetAmount950389"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950391"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950391/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950392"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950392/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950393"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950393/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950394"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950394/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950390"><xsl:value-of select="$BalanceSheetAmount950391 + $BalanceSheetAmount950392 - $BalanceSheetAmount950393  - $BalanceSheetAmount950394"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950396"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950396/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950397"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950397/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950398"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950398/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950395"><xsl:value-of select="$BalanceSheetAmount950396 - $BalanceSheetAmount950397 - $BalanceSheetAmount950398"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950400"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950400/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950401"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950401/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950402"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950402/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950399"><xsl:value-of select="$BalanceSheetAmount950400 - $BalanceSheetAmount950401 - $BalanceSheetAmount950402"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950385"><xsl:value-of select="$TotalBalanceSheetAmount950386 + $TotalBalanceSheetAmount950390 + $TotalBalanceSheetAmount950395 + $TotalBalanceSheetAmount950399"/></xsl:variable>
                <!--11.-->
                <!--950404+950407-->
                <xsl:variable name="BalanceSheetAmount950405"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950405/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950406"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950406/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950404"><xsl:value-of select="$BalanceSheetAmount950405 - $BalanceSheetAmount950406"/></xsl:variable> 
                <xsl:variable name="BalanceSheetAmount950408"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950408/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950409"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950409/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950410"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950410/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950411"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950411/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950407"><xsl:value-of select="$BalanceSheetAmount950408 + $BalanceSheetAmount950409 - $BalanceSheetAmount950410 - $BalanceSheetAmount950411"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950403"><xsl:value-of select="$TotalBalanceSheetAmount950404 + $TotalBalanceSheetAmount950407"/></xsl:variable>
                <!--12.-->
                <xsl:variable name="BalanceSheetAmount950412"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950412/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <!--13.-->
                <xsl:variable name="BalanceSheetAmount950414"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950414/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950415"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950415/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950416"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950416/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950417"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950417/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950418"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950418/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950419"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950419/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950420"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950420/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950421"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950421/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950422"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950422/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950424"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950424/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950425"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950425/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950423"><xsl:value-of select="$BalanceSheetAmount950424 - $BalanceSheetAmount950425"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950426"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950426/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950427"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950427/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950428"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950428/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950413"><xsl:value-of select="$BalanceSheetAmount950414 + $BalanceSheetAmount950415 + $BalanceSheetAmount950416 + $BalanceSheetAmount950417 + $BalanceSheetAmount950418 + $BalanceSheetAmount950419 + $BalanceSheetAmount950420 + $BalanceSheetAmount950421 + $BalanceSheetAmount950422 + $TotalBalanceSheetAmount950423 + $BalanceSheetAmount950426 + $BalanceSheetAmount950427 - $BalanceSheetAmount950428"/></xsl:variable>
                <!--950271 สินทรัพย์ -->
                <!--950272+950277+950288+950289+950290+950363+950366+950608+950377+950378+950385+950403+950412+950413-->
                <xsl:variable name="TotalBalanceSheetAmount950271"><xsl:value-of select="$TotalBalanceSheetAmount950272 + $TotalBalanceSheetAmount950277 + $BalanceSheetAmount950288 + $BalanceSheetAmount950289 + $TotalBalanceSheetAmount950290 + $TotalBalanceSheetAmount950363 + $TotalBalanceSheetAmount950366 + $BalanceSheetAmount950608 + $BalanceSheetAmount950377 + $TotalBalanceSheetAmount950378 + $TotalBalanceSheetAmount950385 + $TotalBalanceSheetAmount950403 + $BalanceSheetAmount950412 + $TotalBalanceSheetAmount950413"/></xsl:variable>
                <!--950270 งบแสดงฐานะการเงิน (Financial Position) เฉพาะธนาคารพาณิชย์ บริษัทเงินทุนบริษัทเครดิตฟองซิเอร์ กลุ่มธุรกิจทางการเงิน และ สถาบันการเงินพิเศษของรัฐ-->   
                <xsl:variable name="TotalBalanceSheetAmount950270"><xsl:value-of select="$TotalBalanceSheetAmount950271"/></xsl:variable>
                <!--14.-->
                <xsl:variable name="BalanceSheetAmount950432"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950432/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950433"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950433/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950434"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950434/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950435"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950435/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950436"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950436/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950437"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950437/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950431"><xsl:value-of select="$BalanceSheetAmount950432 + $BalanceSheetAmount950433 + $BalanceSheetAmount950434 + $BalanceSheetAmount950435 + $BalanceSheetAmount950436 + $BalanceSheetAmount950437"/></xsl:variable>
                <!--15.1--> 
                <xsl:variable name="BalanceSheetAmount950441"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950441/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950442"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950442/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950440"><xsl:value-of select="$BalanceSheetAmount950441 + $BalanceSheetAmount950442"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950444"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950444/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950445"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950445/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950443"><xsl:value-of select="$BalanceSheetAmount950444 + $BalanceSheetAmount950445"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950439"><xsl:value-of select="$TotalBalanceSheetAmount950440 + $TotalBalanceSheetAmount950443"/></xsl:variable>
                <!--15.2--> 
                <xsl:variable name="BalanceSheetAmount950448"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950448/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950449"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950449/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950447"><xsl:value-of select="$BalanceSheetAmount950448 + $BalanceSheetAmount950449"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950451"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950451/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950452"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950452/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950450"><xsl:value-of select="$BalanceSheetAmount950451 + $BalanceSheetAmount950452"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950446"><xsl:value-of select="$TotalBalanceSheetAmount950447 + $TotalBalanceSheetAmount950450"/></xsl:variable>
                <!--15.3-->
                <xsl:variable name="BalanceSheetAmount950453"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950453/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <!--15.-->
                <xsl:variable name="TotalBalanceSheetAmount950438"><xsl:value-of select="$TotalBalanceSheetAmount950439 + $TotalBalanceSheetAmount950446 + $BalanceSheetAmount950453"/></xsl:variable>
                <!--16.-->
                <xsl:variable name="BalanceSheetAmount950455"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950455/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950456"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950456/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950454"><xsl:value-of select="$BalanceSheetAmount950455 + $BalanceSheetAmount950456"/></xsl:variable>
                <!--17.-->
                <xsl:variable name="BalanceSheetAmount950457"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950457/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <!--18.-->
                <xsl:variable name="BalanceSheetAmount950460"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950460/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950461"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950461/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950459"><xsl:value-of select="$BalanceSheetAmount950460 + $BalanceSheetAmount950461"/></xsl:variable>               
                <xsl:variable name="BalanceSheetAmount950463"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950463/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>                
                <xsl:variable name="BalanceSheetAmount950465"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950465/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950466"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950466/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950467"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950467/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950464"><xsl:value-of select="$BalanceSheetAmount950465 + $BalanceSheetAmount950466 + $BalanceSheetAmount950467"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950462"><xsl:value-of select="$BalanceSheetAmount950463 + $TotalBalanceSheetAmount950464"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950468"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950468/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950458"><xsl:value-of select="$TotalBalanceSheetAmount950459 + $TotalBalanceSheetAmount950462 + $BalanceSheetAmount950468"/></xsl:variable>
                <!--19.-->
                <xsl:variable name="BalanceSheetAmount950469"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950469/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <!--20.1-->
                <xsl:variable name="BalanceSheetAmount950472"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950472/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950473"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950473/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950474"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950474/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950471"><xsl:value-of select="$BalanceSheetAmount950472 + $BalanceSheetAmount950473 + $BalanceSheetAmount950474"/></xsl:variable>
                <!--20.2-->
                <xsl:variable name="BalanceSheetAmount950476"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950476/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950477"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950477/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950478"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950478/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950475"><xsl:value-of select="$BalanceSheetAmount950476 + $BalanceSheetAmount950477 + $BalanceSheetAmount950478"/></xsl:variable>
                <!--20.3-->
                <xsl:variable name="BalanceSheetAmount950479"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950479/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <!--20.-->
                <xsl:variable name="TotalBalanceSheetAmount950470"><xsl:value-of select="$TotalBalanceSheetAmount950471 + $TotalBalanceSheetAmount950475 + $BalanceSheetAmount950479"/></xsl:variable>
                <!--21.-->
                <xsl:variable name="BalanceSheetAmount950480"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950480/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <!--22.-->
                <xsl:variable name="BalanceSheetAmount950482"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950482/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950483"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950483/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950481"><xsl:value-of select="$BalanceSheetAmount950482 + $BalanceSheetAmount950483"/></xsl:variable>
                <!--23.-->
                <xsl:variable name="BalanceSheetAmount950484"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950484/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <!--950609,950610-->
                <xsl:variable name="BalanceSheetAmount950609"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950609/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950610"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950610/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <!--24.-->
                <xsl:variable name="BalanceSheetAmount950486"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950486/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950487"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950487/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950488"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950488/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950489"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950489/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950490"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950490/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950491"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950491/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950492"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950492/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950493"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950493/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950494"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950494/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950495"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950495/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950496"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950496/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950485"><xsl:value-of select="$BalanceSheetAmount950486 + $BalanceSheetAmount950487 + $BalanceSheetAmount950488 + $BalanceSheetAmount950489 + $BalanceSheetAmount950490 + $BalanceSheetAmount950491 + $BalanceSheetAmount950492 + $BalanceSheetAmount950493 + $BalanceSheetAmount950494 + $BalanceSheetAmount950495 + $BalanceSheetAmount950496"/></xsl:variable>
                <!--25.1-->
                <xsl:variable name="BalanceSheetAmount950500"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950500/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950501"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950501/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950499"><xsl:value-of select="$BalanceSheetAmount950500 + $BalanceSheetAmount950501"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950502"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950502/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950498"><xsl:value-of select="$TotalBalanceSheetAmount950499 + $BalanceSheetAmount950502"/></xsl:variable>
                <!--25.2-->
                <xsl:variable name="BalanceSheetAmount950503"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950503/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <!--<xsl:variable name="TotalBalanceSheetAmount950503"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950503/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>-->
                <!--25.3-->
                <xsl:variable name="BalanceSheetAmount950506"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950506/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950507"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950507/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950505"><xsl:value-of select="$BalanceSheetAmount950506 + $BalanceSheetAmount950507"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950508"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950508/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950504"><xsl:value-of select="$TotalBalanceSheetAmount950505 + $BalanceSheetAmount950508"/></xsl:variable>
                <!--25.4-->
                <xsl:variable name="BalanceSheetAmount950509"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950509/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <!--25.5-->
                <xsl:variable name="BalanceSheetAmount950510"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950510/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <!--25.6-->
                <xsl:variable name="BalanceSheetAmount950512"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950512/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950513"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950513/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950514"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950514/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950511"><xsl:value-of select="$BalanceSheetAmount950512 + $BalanceSheetAmount950513 + $BalanceSheetAmount950514"/></xsl:variable>
                <!--25.7.1-->
                <xsl:variable name="BalanceSheetAmount950517"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950517/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950518"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950518/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950516"><xsl:value-of select="$BalanceSheetAmount950517 + $BalanceSheetAmount950518"/></xsl:variable>
                <!--25.7.2-->
                <xsl:variable name="BalanceSheetAmount950520"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950520/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950521"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950521/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950519"><xsl:value-of select="$BalanceSheetAmount950520 + $BalanceSheetAmount950521"/></xsl:variable>
                <!--25.7-->
                <xsl:variable name="TotalBalanceSheetAmount950515"><xsl:value-of select="$TotalBalanceSheetAmount950516 - $TotalBalanceSheetAmount950519"/></xsl:variable>
                <!--25.8-->
                <xsl:variable name="BalanceSheetAmount950522"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950522/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <!--25.9-->
                <xsl:variable name="BalanceSheetAmount950600"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950600/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950601"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950601/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950602"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950602/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950603"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950603/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950523"><xsl:value-of select="$BalanceSheetAmount950600 + $BalanceSheetAmount950601 + $BalanceSheetAmount950602 + $BalanceSheetAmount950603"/></xsl:variable>
                <!--25.10,25.11,25.12-->
                <xsl:variable name="BalanceSheetAmount950524"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950524/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950525"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950525/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950526"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950526/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <!--25.13-->
                <xsl:variable name="BalanceSheetAmount950529"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950529/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950530"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950530/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950531"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950531/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950528"><xsl:value-of select="$BalanceSheetAmount950529 + $BalanceSheetAmount950530 + $BalanceSheetAmount950531"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950533"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950533/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950534"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950534/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950535"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950535/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950532"><xsl:value-of select="$BalanceSheetAmount950533 + $BalanceSheetAmount950534 + $BalanceSheetAmount950535"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950527"><xsl:value-of select="$TotalBalanceSheetAmount950528 + $TotalBalanceSheetAmount950532"/></xsl:variable>
                <!--25.14,25.15,25.16-->
                <xsl:variable name="BalanceSheetAmount950536"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950536/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950537"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950537/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950538"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950538/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <!--950611,950612,950613-->
                <xsl:variable name="BalanceSheetAmount950611"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950611/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950612"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950612/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950613"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950613/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>

                <!--25.-->
                <xsl:variable name="TotalBalanceSheetAmount950497"><xsl:value-of select="$TotalBalanceSheetAmount950498 + $BalanceSheetAmount950503 + $TotalBalanceSheetAmount950504 + $BalanceSheetAmount950509 + $BalanceSheetAmount950510 + $TotalBalanceSheetAmount950511 + $TotalBalanceSheetAmount950515 + $BalanceSheetAmount950522 + $TotalBalanceSheetAmount950523 + $BalanceSheetAmount950524 + $BalanceSheetAmount950525 + $BalanceSheetAmount950526 + $TotalBalanceSheetAmount950527 - $BalanceSheetAmount950536 - $BalanceSheetAmount950537 + $BalanceSheetAmount950538 + $BalanceSheetAmount950611 + $BalanceSheetAmount950612 + $BalanceSheetAmount950613 "/></xsl:variable>
                <!--950430-->
                <xsl:variable name="TotalBalanceSheetAmount950430"><xsl:value-of select="$TotalBalanceSheetAmount950431 + $TotalBalanceSheetAmount950438 + $TotalBalanceSheetAmount950454 + $BalanceSheetAmount950457 + $TotalBalanceSheetAmount950458 + $BalanceSheetAmount950469 + $TotalBalanceSheetAmount950470 + $BalanceSheetAmount950480 + $TotalBalanceSheetAmount950481 + $BalanceSheetAmount950484 + $BalanceSheetAmount950609 + $BalanceSheetAmount950610 + $TotalBalanceSheetAmount950485"/></xsl:variable>
                <!--950429-->
                <xsl:variable name="TotalBalanceSheetAmount950429"><xsl:value-of select="$TotalBalanceSheetAmount950430 + $TotalBalanceSheetAmount950497"/></xsl:variable>
                <!--26.-->
                <xsl:variable name="BalanceSheetAmount950565"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950565/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950566"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950566/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950567"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950567/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950568"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950568/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950569"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950569/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950564"><xsl:value-of select="$BalanceSheetAmount950565 + $BalanceSheetAmount950566 + $BalanceSheetAmount950567 + $BalanceSheetAmount950568 + $BalanceSheetAmount950569"/></xsl:variable>
                <!--27.-->
                <xsl:variable name="BalanceSheetAmount950571"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950571/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950572"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950572/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950573"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950573/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950574"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950574/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950575"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950575/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950576"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950576/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950570"><xsl:value-of select="$BalanceSheetAmount950571 + $BalanceSheetAmount950572 + $BalanceSheetAmount950573 + $BalanceSheetAmount950574 + $BalanceSheetAmount950575 + $BalanceSheetAmount950576"/></xsl:variable>
                <!--950563 รายการนอกงบแสดงฐานะการเงิน (ภาระผูกพันทั้งสิ้น)-->
                <xsl:variable name="TotalBalanceSheetAmount950563"><xsl:value-of select="$TotalBalanceSheetAmount950564 + $TotalBalanceSheetAmount950570"/></xsl:variable>
                <!--28.1-->
                <xsl:variable name="BalanceSheetAmount950581"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950581/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950582"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950582/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950580"><xsl:value-of select="$BalanceSheetAmount950581 * $BalanceSheetAmount950582"/></xsl:variable>  
                <xsl:variable name="BalanceSheetAmount950584"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950584/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950585"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950585/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950583"><xsl:value-of select="$BalanceSheetAmount950584 * $BalanceSheetAmount950585"/></xsl:variable>    
                <xsl:variable name="TotalBalanceSheetAmount950579"><xsl:value-of select="$TotalBalanceSheetAmount950580 + $TotalBalanceSheetAmount950583"/></xsl:variable>
                <!--28.2-->
                <xsl:variable name="BalanceSheetAmount950587"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950587/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950588"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950588/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950586"><xsl:value-of select="$BalanceSheetAmount950587 * $BalanceSheetAmount950588"/></xsl:variable> 
                <!--28.-->
                <xsl:variable name="TotalBalanceSheetAmount950578"><xsl:value-of select="$TotalBalanceSheetAmount950579 + $TotalBalanceSheetAmount950586"/></xsl:variable>
                <!--29.1-->
                <xsl:variable name="BalanceSheetAmount950592"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950592/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950593"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950593/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950591"><xsl:value-of select="$BalanceSheetAmount950592 * $BalanceSheetAmount950593"/></xsl:variable> 
                <xsl:variable name="BalanceSheetAmount950595"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950595/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950596"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950596/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950594"><xsl:value-of select="$BalanceSheetAmount950595 * $BalanceSheetAmount950596"/></xsl:variable>    
                <xsl:variable name="TotalBalanceSheetAmount950590"><xsl:value-of select="$TotalBalanceSheetAmount950591 + $TotalBalanceSheetAmount950594"/></xsl:variable>
                <!--29.2-->
                <xsl:variable name="BalanceSheetAmount950598"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950598/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950599"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950599/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950597"><xsl:value-of select="$BalanceSheetAmount950598 * $BalanceSheetAmount950599"/></xsl:variable> 
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
                                                    <xsl:for-each select="DS_BLS/CommonHeader">
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
                                                    <xsl:for-each select="DS_BLS">
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
                                                            <xsl:for-each select="DS_BLS/CommonHeader">
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
                                                    <td class="paddingSub labelXsl">
                                                         <xsl:value-of select="$name950271"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950271,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                             <tr>
                                                <td align="center" class="labelXsl">950272</td>
                                                    <td class="subOne labelXsl">
                                                         <xsl:value-of select="$name950272"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                     <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950272,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl" width="10%">950273</td>
                                                    <td class="subTwo labelXsl">
                                                        <xsl:value-of select="$name950273"/>
                                                    </td>
                                                    <td width="10%" align="right" class="labelXsl">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950273,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950274</td>
                                                    <td class="subThree labelXsl">
                                                       <xsl:value-of select="$name950274"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"> <xsl:value-of select="format-number($BalanceSheetAmount950274,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950275</td>
                                                    <td class="subThree labelXsl">
                                                        <xsl:value-of select="$name950275"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950275,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950276</td>
                                                <td class="subTwo labelXsl">
                                                    <xsl:value-of select="$name950276"/>
                                                     </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                           <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950276,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950277</td>
                                                <td class="subOne labelXsl">
                                                     <xsl:value-of select="$name950277"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950277,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950278</td>
                                                    <td class="subTwo labelXsl">
                                                         <xsl:value-of select="$name950278"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                         <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950278,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950279</td>
                                                    <td class="subThree labelXsl">
                                                        <xsl:value-of select="$name950279"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950279,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950280</td>
                                                    <td class="subThree labelXsl">
                                                        <xsl:value-of select="$name950280"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950280,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950604</td>
                                                    <td class="subFour labelXsl">
                                                        <xsl:value-of select="$name950604"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950604,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950605</td>
                                                    <td class="subFour labelXsl">
                                                      <xsl:value-of select="$name950605"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950605,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950281</td>
                                                    <td class="subTwo labelXsl">
                                                        <xsl:value-of select="$name950281"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950281,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950282</td>
                                                    <td class="subThree labelXsl">
                                                        <xsl:value-of select="$name950282"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950282,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950283</td>
                                                    <td class="subThree  labelXsl">
                                                       <xsl:value-of select="$name950283"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950283,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950606</td>
                                                    <td class="subFour labelXsl">
                                                       <xsl:value-of select="$name950606"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950606,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950607</td>
                                                    <td class="subFour labelXsl">
                                                       <xsl:value-of select="$name950607"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950607,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>    
                                            <tr>
                                                <td align="center" class="labelXsl">950284</td>
                                                    <td class="subTwo labelXsl">
                                                       <xsl:value-of select="$name950284"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950284,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950285</td>
                                                    <td class="subTwo labelXsl">
                                                       <xsl:value-of select="$name950285"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950285,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950286</td>
                                                    <td class="subTwo labelXsl">
                                                       <xsl:value-of select="$name950286"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950286,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950287</td>
                                                    <td class="subTwo labelXsl">
                                                       <xsl:value-of select="$name950287"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950287,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950288</td>
                                                    <td class="subOne labelXsl">
                                                       <xsl:value-of select="$name950288"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950288,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950289</td>
                                                    <td class="subOne labelXsl">
                                                       <xsl:value-of select="$name950289"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950289,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950290</td>
                                                    <td class="subOne  labelXsl">
                                                        <xsl:value-of select="$name950290"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                     <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950290,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950291</td>
                                                    <td class="subTwo labelXsl">
                                                        <xsl:value-of select="$name950291"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950291,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950292</td>
                                                    <td class="subThree labelXsl">
                                                       <xsl:value-of select="$name950292"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950292,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950293</td>
                                                    <td class="subFour labelXsl">
                                                       <xsl:value-of select="$name950293"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950293,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950294</td>
                                                    <td class="subFour labelXsl">
                                                        <xsl:value-of select="$name950294"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950294,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950295</td>
                                                    <td class="subFour labelXsl">
                                                        <xsl:value-of select="$name950295"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950295,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950296</td>
                                                <td class="subFour labelXsl">
                                                    <xsl:value-of select="$name950296"/>
                                                </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950296,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950297</td>
                                                    <td class="subFive labelXsl">
                                                        <xsl:value-of select="$name950297"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950297,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950298</td>
                                                    <td class="subFive labelXsl">
                                                        <xsl:value-of select="$name950298"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950298,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950299</td>
                                                    <td class="subFour labelXsl">
                                                        <xsl:value-of select="$name950299"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                     <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950299,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950300</td>
                                                    <td class="subFive labelXsl">
                                                        <xsl:value-of select="$name950300"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950300,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950301</td>
                                                    <td class="subFive labelXsl">
                                                        <xsl:value-of select="$name950301"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950301,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950302</td>
                                                <td class="subThree  labelXsl">
                                                    <xsl:value-of select="$name950302"/>
                                                </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950302,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950303</td>
                                                    <td class="subFour  labelXsl">
                                                        <xsl:value-of select="$name950303"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950303,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950304</td>
                                                    <td class="subFour  labelXsl">
                                                        <xsl:value-of select="$name950304"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950304,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950305</td>
                                                    <td class="subFour  labelXsl">
                                                        <xsl:value-of select="$name950305"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950305,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>

                                            <tr>
                                                <td align="center" class="labelXsl">950306</td>
                                                    <td class="subFour labelXsl">
                                                        <xsl:value-of select="$name950306"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950306,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950307</td>
                                                    <td class="subFive labelXsl">
                                                        <xsl:value-of select="$name950307"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950307,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950308</td>
                                                    <td class="subFive labelXsl">
                                                        <xsl:value-of select="$name950308"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950308,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950309</td>
                                                    <td class="subFour labelXsl">
                                                        <xsl:value-of select="$name950309"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950309,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950310</td>
                                                    <td class="subFive labelXsl">
                                                        <xsl:value-of select="$name950310"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950310,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950311</td>
                                                    <td class="subFive labelXsl">
                                                        <xsl:value-of select="$name950311"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950311,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950312</td>
                                                    <td class="subFour labelXsl">
                                                         <xsl:value-of select="$name950312"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950312,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950313</td>
                                                    <td class="subThree  labelXsl">
                                                         <xsl:value-of select="$name950313"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950313,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950314</td>
                                                    <td class="subFour labelXsl">
                                                         <xsl:value-of select="$name950314"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950314,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950315</td>
                                                    <td class="subFour labelXsl">
                                                         <xsl:value-of select="$name950315"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950315,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950316</td>
                                                    <td class="subFour labelXsl">
                                                         <xsl:value-of select="$name950316"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950316,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950317</td>
                                                    <td class="subFour labelXsl">
                                                         <xsl:value-of select="$name950317"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950317,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950318</td>
                                                    <td class="subFour labelXsl">
                                                         <xsl:value-of select="$name950318"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950318,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950319</td>
                                                    <td class="subFive labelXsl">
                                                         <xsl:value-of select="$name950319"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950319,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950320</td>
                                                    <td class="subFive labelXsl">
                                                         <xsl:value-of select="$name950320"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950320,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950321</td>
                                                    <td class="subFour labelXsl">
                                                         <xsl:value-of select="$name950321"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950321,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950322</td>
                                                    <td class="subFour labelXsl">
                                                         <xsl:value-of select="$name950322"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950322,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950323</td>
                                                    <td class="subThree labelXsl">
                                                         <xsl:value-of select="$name950323"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950323,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td align="center" class="labelXsl">950324</td>
                                                    <td class="subFour labelXsl">
                                                        <xsl:value-of select="$name950324"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950324,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950325</td>
                                                    <td class="subFour labelXsl">
                                                        <xsl:value-of select="$name950325"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950325,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950326</td>
                                                    <td class="subFour labelXsl">
                                                        <xsl:value-of select="$name950326"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950326,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950327</td>
                                                    <td class="subFour labelXsl">
                                                        <xsl:value-of select="$name950327"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950327,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950328</td>
                                                    <td class="subTwo  labelXsl">
                                                        <xsl:value-of select="$name950328"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950328,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950329</td>
                                                    <td class="subThree  labelXsl">
                                                        <xsl:value-of select="$name950329"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950329,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950330</td>
                                                    <td class="subFour  labelXsl">
                                                        <xsl:value-of select="$name950330"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950330,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950331</td>
                                                    <td class="subFive  labelXsl">
                                                        <xsl:value-of select="$name950331"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950331,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950332</td>
                                                    <td class="subFive  labelXsl">
                                                        <xsl:value-of select="$name950332"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950332,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950333</td>
                                                    <td class="subFive  labelXsl">
                                                        <xsl:value-of select="$name950333"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950333,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950334</td>
                                                    <td class="subFour  labelXsl">
                                                        <xsl:value-of select="$name950334"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950334,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950335</td>
                                                    <td class="subFive labelXsl">
                                                        <xsl:value-of select="$name950335"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950335,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950336</td>
                                                    <td class="subFive labelXsl">
                                                        <xsl:value-of select="$name950336"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950336,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950337</td>
                                                    <td class="subFive labelXsl">
                                                        <xsl:value-of select="$name950337"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950337,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950338</td>
                                                    <td class="subFive labelXsl">
                                                        <xsl:value-of select="$name950338"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950338,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950339</td>
                                                    <td class="subFour labelXsl">
                                                        <xsl:value-of select="$name950339"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950339,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950340</td>
                                                    <td class="subFour  labelXsl">
                                                        <xsl:value-of select="$name950340"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950340,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950341</td>
                                                    <td class="subFive  labelXsl">
                                                        <xsl:value-of select="$name950341"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950341,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950342</td>
                                                    <td class="subFive labelXsl">
                                                        <xsl:value-of select="$name950342"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950342,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950343</td>
                                                    <td class="subFour labelXsl">
                                                        <xsl:value-of select="$name950343"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950343,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950344</td>
                                                    <td class="subFive labelXsl">
                                                        <xsl:value-of select="$name950344"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950344,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950345</td>
                                                    <td class="subFive labelXsl">
                                                        <xsl:value-of select="$name950345"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950345,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950346</td>
                                                    <td class="subFour labelXsl">
                                                         <xsl:value-of select="$name950346"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950346,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950347</td>
                                                    <td class="subThree labelXsl">
                                                         <xsl:value-of select="$name950347"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950347,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950348</td>
                                                    <td class="subFour  labelXsl">
                                                        <xsl:value-of select="$name950348"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950348,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950349</td>
                                                    <td class="subFour labelXsl">
                                                        <xsl:value-of select="$name950349"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950349,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950350</td>
                                                    <td class="subFour labelXsl">
                                                        <xsl:value-of select="$name950350"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950350,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950351</td>
                                                    <td class="subFour labelXsl">
                                                        <xsl:value-of select="$name950351"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950351,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950352</td>
                                                    <td class="subFour labelXsl">
                                                        <xsl:value-of select="$name950352"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950352,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950353</td>
                                                    <td class="subFive labelXsl">
                                                        <xsl:value-of select="$name950353"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950353,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950354</td>
                                                    <td class="subFive labelXsl">
                                                        <xsl:value-of select="$name950354"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950354,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950355</td>
                                                    <td class="subFour  labelXsl">
                                                        <xsl:value-of select="$name950355"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950355,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950356</td>
                                                    <td class="subFour labelXsl">
                                                        <xsl:value-of select="$name950356"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950356,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950357</td>
                                                    <td class="subThree  labelXsl">
                                                         <xsl:value-of select="$name950357"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950357,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950358</td>
                                                    <td class="subFour labelXsl">
                                                         <xsl:value-of select="$name950358"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950358,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950359</td>
                                                    <td class="subFour labelXsl">
                                                        <xsl:value-of select="$name950359"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950359,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950360</td>
                                                    <td class="subFour labelXsl">
                                                        <xsl:value-of select="$name950360"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950360,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950361</td>
                                                    <td class="subFour labelXsl">
                                                        <xsl:value-of select="$name950361"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950361,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950362</td>
                                                    <td class="subTwo labelXsl">
                                                        <xsl:value-of select="$name950362"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950362,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950363</td>
                                                    <td class="subOne  labelXsl">
                                                        <xsl:value-of select="$name950363"/>
                                                    </td>
                                                    <td width="20%" class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950363,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950364</td>
                                                    <td class="subTwo labelXsl">
                                                         <xsl:value-of select="$name950364"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950364/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950364,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950365</td>
                                                    <td class="subTwo  labelXsl">
                                                         <xsl:value-of select="$name950365"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950365/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950365,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950366</td>
                                                    <td class="subOne  labelXsl">
                                                         <xsl:value-of select="$name950366"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950366,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950367</td>
                                                    <td class="subTwo labelXsl">
                                                         <xsl:value-of select="$name950367"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950367,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950368</td>
                                                    <td class="subThree  labelXsl">
                                                         <xsl:value-of select="$name950368"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950368/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950368,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950369</td>
                                                    <td class="subThree  labelXsl">
                                                         <xsl:value-of select="$name950369"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950369/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950369,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950370</td>
                                                    <td class="subTwo  labelXsl">
                                                         <xsl:value-of select="$name950370"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950370/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950370,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950371</td>
                                                    <td class="subTwo  labelXsl">
                                                         <xsl:value-of select="$name950371"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950371/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                             <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950371,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950372</td>
                                                    <td class="subTwo labelXsl">
                                                         <xsl:value-of select="$name950372"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950372/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                             <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950372,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950373</td>
                                                    <td class="subTwo labelXsl">
                                                        <xsl:value-of select="$name950373"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950373,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950374</td>
                                                    <td class="subThree  labelXsl">
                                                        <xsl:value-of select="$name950374"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950374/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950374,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950375</td>
                                                    <td class="subThree  labelXsl">
                                                        <xsl:value-of select="$name950375"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950375/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950375,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950376</td>
                                                    <td class="subTwo  labelXsl">
                                                        <xsl:value-of select="$name950376"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950376/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950376,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950608</td>
                                                    <td class="subOne  labelXsl">
                                                        <xsl:value-of select="$name950608"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950608/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950608,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950377</td>
                                                    <td class="subOne  labelXsl">
                                                        <xsl:value-of select="$name950377"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950377/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950377,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950378</td>
                                                    <td class="subOne labelXsl">
                                                         <xsl:value-of select="$name950378"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950378,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950379</td>
                                                    <td class="subTwo  labelXsl">
                                                         <xsl:value-of select="$name950379"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950379,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950380</td>
                                                    <td class="subThree  labelXsl">
                                                        <xsl:value-of select="$name950380"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950380/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950380,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950381</td>
                                                    <td class="subThree  labelXsl">
                                                       <xsl:value-of select="$name950381"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950381/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950381,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950382</td>
                                                    <td class="subTwo  labelXsl">
                                                       <xsl:value-of select="$name950382"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950382/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950382,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950383</td>
                                                    <td class="subTwo  labelXsl">
                                                       <xsl:value-of select="$name950383"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950383/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950383,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950384</td>
                                                    <td class="subTwo  labelXsl">
                                                       <xsl:value-of select="$name950384"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950384/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950384,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950385</td>
                                                    <td class="subOne labelXsl">
                                                        <xsl:value-of select="$name950385"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950385,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950386</td>
                                                    <td class="subTwo  labelXsl">
                                                        <xsl:value-of select="$name950386"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950386,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950387</td>
                                                    <td class="subThree  labelXsl">
                                                        <xsl:value-of select="$name950387"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950387/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950387,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950388</td>
                                                    <td class="subThree  labelXsl">
                                                        <xsl:value-of select="$name950388"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950388/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950388,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950389</td>
                                                    <td class="subThree  labelXsl">
                                                        <xsl:value-of select="$name950389"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950389/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950389,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950390</td>
                                                    <td class="subOne  labelXsl">
                                                        <xsl:value-of select="$name950390"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950390,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950391</td>
                                                    <td class="subThree  labelXsl">
                                                        <xsl:value-of select="$name950391"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950391/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950391,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950392</td>
                                                    <td class="subThree  labelXsl">
                                                        <xsl:value-of select="$name950392"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950392/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950392,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950393</td>
                                                    <td class="subThree  labelXsl">
                                                        <xsl:value-of select="$name950393"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950393/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950393,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950394</td>
                                                    <td class="subThree  labelXsl">
                                                        <xsl:value-of select="$name950394"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950394/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950394,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950395</td>
                                                    <td class="subTwo labelXsl">
                                                        <xsl:value-of select="$name950395"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950395,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950396</td>
                                                    <td class="subThree labelXsl">
                                                        <xsl:value-of select="$name950396"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950396/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950396,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950397</td>
                                                    <td class="subThree labelXsl">
                                                        <xsl:value-of select="$name950397"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950397/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950397,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950398</td>
                                                    <td class="subThree labelXsl">
                                                        <xsl:value-of select="$name950398"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950398/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950398,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950399</td>
                                                    <td class="subTwo labelXsl">
                                                        <xsl:value-of select="$name950399"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950399,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950400</td>
                                                    <td class="subThree labelXsl">
                                                        <xsl:value-of select="$name950400"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950400/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950400,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950401</td>
                                                    <td class="subThree labelXsl">
                                                        <xsl:value-of select="$name950401"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950401/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950401,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950402</td>
                                                    <td class="subThree  labelXsl">
                                                        <xsl:value-of select="$name950402"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950402/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950402,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950403</td>
                                                    <td class="subOne  labelXsl">
                                                        <xsl:value-of select="$name950403"/>
                                                    </td>
                                               <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950403,'###,###,###,###,###,###,###,##0.00')"/></span>
                                               </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950404</td>
                                                    <td class="subTwo  labelXsl">
                                                        <xsl:value-of select="$name950404"/>
                                                    </td>
                                               <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950404,'###,###,###,###,###,###,###,##0.00')"/></span>
                                               </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950405</td>
                                                    <td class="subThree labelXsl">
                                                        <xsl:value-of select="$name950405"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950405/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950405,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>

                                            <tr>
                                                <td align="center" class="labelXsl">950406</td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950406">
                                                    <td class="subThree labelXsl">
                                                        <xsl:value-of select="$name950406"/>
                                                    </td>
                                                </xsl:for-each>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950406/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950406,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950407</td>
                                                    <td class="subTwo labelXsl">
                                                         <xsl:value-of select="$name950407"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950407,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950408</td>
                                                    <td class="subThree labelXsl">
                                                        <xsl:value-of select="$name950408"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950408/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950408,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950409</td>
                                                    <td class="subThree labelXsl">
                                                       <xsl:value-of select="$name950409"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950409/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950409,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950410</td>
                                                    <td class="subThree labelXsl">
                                                         <xsl:value-of select="$name950410"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950410/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950410,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950411</td>
                                                    <td class="subThree labelXsl">
                                                        <xsl:value-of select="$name950411"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950411/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950411,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950412</td>
                                                    <td class="subOne labelXsl">
                                                        <xsl:value-of select="$name950412"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950412/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950412,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950413</td>
                                                    <td class="subOne labelXsl">
                                                         <xsl:value-of select="$name950413"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950413,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950414</td>
                                                    <td class="subTwo labelXsl">
                                                        <xsl:value-of select="$name950414"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950414/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950414,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950415</td>
                                                    <td class="subTwo labelXsl">
                                                        <xsl:value-of select="$name950415"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950415/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950415,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950416</td>
                                                    <td class="subTwo labelXsl">
                                                        <xsl:value-of select="$name950416"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950416/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950416,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950417</td>
                                                    <td class="subTwo labelXsl">
                                                        <xsl:value-of select="$name950417"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950417/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950417,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950418</td>
                                                    <td class="subTwo labelXsl">
                                                        <xsl:value-of select="$name950418"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950418/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950418,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950419</td>
                                                    <td class="subTwo labelXsl">
                                                        <xsl:value-of select="$name950419"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950419/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950419,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950420</td>
                                                    <td class="subTwo labelXsl">
                                                        <xsl:value-of select="$name950420"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950420/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950420,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950421</td>
                                                    <td class="subTwo labelXsl">
                                                        <xsl:value-of select="$name950421"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950421/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950421,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950422</td>
                                                    <td class="subTwo labelXsl">
                                                        <xsl:value-of select="$name950422"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950422/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950422,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950423</td>
                                                    <td class="subTwo labelXsl">
                                                        <xsl:value-of select="$name950423"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                     <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950423,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950424</td>
                                                    <td class="subThree  labelXsl">
                                                        <xsl:value-of select="$name950424"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950424/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950424,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950425</td>
                                                    <td class="subThree labelXsl">
                                                        <xsl:value-of select="$name950425"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950425/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950425,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950426</td>
                                                    <td class="subTwo labelXsl">
                                                        <xsl:value-of select="$name950426"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950426/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950426,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950427</td>
                                                    <td class="subTwo labelXsl">
                                                        <xsl:value-of select="$name950427"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950427/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950427,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950428</td>
                                                    <td class="subTwo labelXsl">
                                                       <xsl:value-of select="$name950428"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950428/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950428,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950429</td>
                                                    <td class="labelXsl">
                                                         <xsl:value-of select="$name950429"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950429,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                              <td align="center" class="labelXsl">950430</td>
                                              <td class="paddingSub labelXsl">
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
                                                <td class="subOne labelXsl">
                                                    <xsl:value-of select="$name950431"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950431,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950432</td>
                                                    <td class="subTwo  labelXsl">
                                                        <xsl:value-of select="$name950432"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950432/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950432,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950433</td>
                                                    <td class="subTwo  labelXsl">
                                                        <xsl:value-of select="$name950433"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950433/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950433,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950434</td>
                                                    <td class="subTwo  labelXsl">
                                                        <xsl:value-of select="$name950434"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950434/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950434,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950435</td>
                                                    <td class="subTwo  labelXsl">
                                                        <xsl:value-of select="$name950435"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950435/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950435,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950436</td>
                                                    <td class="subTwo  labelXsl">
                                                        <xsl:value-of select="$name950436"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950436/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950436,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950437</td>
                                                    <td class="subTwo  labelXsl">
                                                        <xsl:value-of select="$name950437"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950437/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950437,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950438</td>
                                                    <td class="subOne  labelXsl">
                                                         <xsl:value-of select="$name950438"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950438,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950439</td>
                                                    <td class="subTwo  labelXsl">
                                                         <xsl:value-of select="$name950439"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950439,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950440</td>
                                                    <td class="subThree labelXsl">
                                                         <xsl:value-of select="$name950440"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950440,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950441</td>
                                                    <td class="subFour labelXsl">
                                                        <xsl:value-of select="$name950441"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950441/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950441,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950442</td>
                                            <td class="subFour labelXsl">
                                              <xsl:value-of select="$name950442"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950442/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950442,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950443</td>
                                                    <td class="subThree labelXsl">
                                                         <xsl:value-of select="$name950443"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950443,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                              <td align="center" class="labelXsl">950444</td>
                                              <td class="subFour labelXsl">
                                                <xsl:value-of select="$name950444"/>
                                              </td>
                                              <xsl:for-each
                                                      select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950444/BalanceSheetItemInfo">
                                                <td width="20%" class="labelXsl" align="right">
                                                  <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                    <span style="color:#1500d4">
                                                      <xsl:value-of select="format-number($BalanceSheetAmount950444,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                  </xsl:if>
                                                </td>
                                              </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950445</td>
                                                    <td class="subFour labelXsl">
                                                        <xsl:value-of select="$name950445"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950445/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950445,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950446</td>
                                                    <td class="subTwo labelXsl">
                                                         <xsl:value-of select="$name950446"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950446,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950447</td>
                                                    <td class="subThree labelXsl">
                                                         <xsl:value-of select="$name950447"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950447,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950448</td>
                                                    <td class="subFour labelXsl">
                                                        <xsl:value-of select="$name950448"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950448/BalanceSheetItemInfo">
                                                    <td width="20%" class="labelXsl" align="right">
                                                        <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($BalanceSheetAmount950448,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950449</td>
                                            <td class="subFour labelXsl">
                                              <xsl:value-of select="$name950449"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950449/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950449,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950450</td>
                                                    <td class="subThree labelXsl">
                                                         <xsl:value-of select="$name950450"/>
                                                    </td>
                                                <td width="20%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalBalanceSheetAmount950450,'###,###,###,###,###,###,###,##0.00')"/></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">950451</td>
                                                <td class="subFour labelXsl">
                                                    <xsl:value-of select="$name950451"/>
                                                </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950451/BalanceSheetItemInfo">
                                                <td width="20%" class="labelXsl" align="right">
                                                    <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                      <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950451,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </span>
                                                  </xsl:if>
                                                </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950452</td>
                                            <td class="subFour labelXsl">
                                              <xsl:value-of select="$name950452"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950452/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950452,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950453</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950453"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950453/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950453,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950454</td>
                                            <td class="subOne  labelXsl">
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
                                            <td class="subTwo  labelXsl">
                                              <xsl:value-of select="$name950455"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950455/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950455,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950456</td>
                                            <td class="subTwo  labelXsl">
                                              <xsl:value-of select="$name950456"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950456/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950456,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950457</td>
                                            <td class="subOne  labelXsl">
                                              <xsl:value-of select="$name950457"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950457/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950457,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950458</td>
                                            <td class="subOne  labelXsl">
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
                                            <td class="subTwo  labelXsl">
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
                                            <td class="subThree  labelXsl">
                                              <xsl:value-of select="$name950460"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950460/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950460,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950461</td>
                                            <td class="subThree  labelXsl">
                                              <xsl:value-of select="$name950461"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950461/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950461,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950462</td>
                                            <td class="subTwo  labelXsl">
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
                                            <td class="subThree  labelXsl">
                                              <xsl:value-of select="$name950463"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950463/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950463,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950464</td>
                                            <td class="subThree  labelXsl">
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
                                            <td class="subFour  labelXsl">
                                              <xsl:value-of select="$name950465"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950465/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950465,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950466</td>
                                            <td class="subFour  labelXsl">
                                              <xsl:value-of select="$name950466"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950466/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950466,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950467</td>
                                            <td class="subFour  labelXsl">
                                              <xsl:value-of select="$name950467"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950467/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950467,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950468</td>
                                            <td class="subTwo  labelXsl">
                                              <xsl:value-of select="$name950468"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950468/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950468,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950469</td>
                                            <td class="subOne  labelXsl">
                                              <xsl:value-of select="$name950469"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950469/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950469,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950470</td>
                                            <td class="subOne  labelXsl">
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
                                            <td class="subTwo  labelXsl">
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
                                            <td class="subThree  labelXsl">
                                              <xsl:value-of select="$name950472"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950472/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950472,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950473</td>
                                            <td class="subThree  labelXsl">
                                              <xsl:value-of select="$name950473"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950473/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950473,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950474</td>
                                            <td class="subThree  labelXsl">
                                              <xsl:value-of select="$name950474"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950474/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950474,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950475</td>
                                            <td class="subTwo  labelXsl">
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
                                            <td class="subThree  labelXsl">
                                              <xsl:value-of select="$name950476"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950476/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950476,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950477</td>
                                            <td class="subThree  labelXsl">
                                              <xsl:value-of select="$name950477"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950477/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950477,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950478</td>
                                            <td class="subThree  labelXsl">
                                              <xsl:value-of select="$name950478"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950478/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950478,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950479</td>
                                            <td class="subTwo  labelXsl">
                                              <xsl:value-of select="$name950479"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950479/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950479,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950480</td>
                                            <td class="subOne labelXsl">
                                              <xsl:value-of select="$name950480"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950480/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950480,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950481</td>
                                            <td class="subOne labelXsl">
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
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950482"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950482/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950482,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950483</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950483"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950483/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950483,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950484</td>
                                            <td class="subOne labelXsl">
                                              <xsl:value-of select="$name950484"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950484/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950484,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950609</td>
                                            <td class="subOne labelXsl">
                                              <xsl:value-of select="$name950609"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950609/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950609,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950610</td>
                                            <td class="subOne labelXsl">
                                              <xsl:value-of select="$name950610"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950610/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950610,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950485</td>
                                            <td class="subOne  labelXsl">
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
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950486"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950486/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950486,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950487</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950487"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950487/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950487,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950488</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950488"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950488/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950488,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950489</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950489"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950489/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950489,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950490</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950490"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950490/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950490,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950491</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950491"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950491/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950491,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950492</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950492"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950492/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950492,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950493</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950493"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950493/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950493,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950494</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950494"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950494/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950494,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950495</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950495"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950495/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950495,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950496</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950496"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950496/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950496,'###,###,###,###,###,###,###,##0.00')"/>
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
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950500/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950500,'###,###,###,###,###,###,###,##0.00')"/>
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
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950501/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950501,'###,###,###,###,###,###,###,##0.00')"/>
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
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950502/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950502,'###,###,###,###,###,###,###,##0.00')"/>
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
                                                <xsl:value-of select="format-number($BalanceSheetAmount950503,'###,###,###,###,###,###,###,##0.00')"/>
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
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950506/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950506,'###,###,###,###,###,###,###,##0.00')"/>
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
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950507/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950507,'###,###,###,###,###,###,###,##0.00')"/>
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
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950508/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950508,'###,###,###,###,###,###,###,##0.00')"/>
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
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950509/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950509,'###,###,###,###,###,###,###,##0.00')"/>
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
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950510/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950510,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950511</td>
                                            <td class="subOne  labelXsl">
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
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950512/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950512,'###,###,###,###,###,###,###,##0.00')"/>
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
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950513/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950513,'###,###,###,###,###,###,###,##0.00')"/>
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
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950514/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950514,'###,###,###,###,###,###,###,##0.00')"/>
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
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950517/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950517,'###,###,###,###,###,###,###,##0.00')"/>
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
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950518/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950518,'###,###,###,###,###,###,###,##0.00')"/>
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
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950520/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950520,'###,###,###,###,###,###,###,##0.00')"/>
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
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950521/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950521,'###,###,###,###,###,###,###,##0.00')"/>
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
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950522/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950522,'###,###,###,###,###,###,###,##0.00')"/>
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
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950600/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950600,'###,###,###,###,###,###,###,##0.00')"/>
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
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950601/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950601,'###,###,###,###,###,###,###,##0.00')"/>
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
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950602/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950602,'###,###,###,###,###,###,###,##0.00')"/>
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
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950603/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950603,'###,###,###,###,###,###,###,##0.00')"/>
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
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950524/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950524,'###,###,###,###,###,###,###,##0.00')"/>
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
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950525/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950525,'###,###,###,###,###,###,###,##0.00')"/>
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
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950526/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950526,'###,###,###,###,###,###,###,##0.00')"/>
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
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950529/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950529,'###,###,###,###,###,###,###,##0.00')"/>
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
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950530/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950530,'###,###,###,###,###,###,###,##0.00')"/>
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
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950531/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950531,'###,###,###,###,###,###,###,##0.00')"/>
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
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950533/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950533,'###,###,###,###,###,###,###,##0.00')"/>
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
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950534/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950534,'###,###,###,###,###,###,###,##0.00')"/>
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
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950535/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950535,'###,###,###,###,###,###,###,##0.00')"/>
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
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950536/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950536,'###,###,###,###,###,###,###,##0.00')"/>
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
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950537/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950537,'###,###,###,###,###,###,###,##0.00')"/>
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
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950538/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950538,'###,###,###,###,###,###,###,##0.00')"/>
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
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950611/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950611,'###,###,###,###,###,###,###,##0.00')"/>
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
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950612/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950612,'###,###,###,###,###,###,###,##0.00')"/>
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
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950613/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950613,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950563</td>
                                            <td class="labelXsl">
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
                                            <td class="paddingSub labelXsl">
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
                                            <td class="subOne labelXsl">
                                              <xsl:value-of select="$name950565"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950565/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950565,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950566</td>
                                            <td class="subOne labelXsl">
                                              <xsl:value-of select="$name950566"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950566/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950566,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950567</td>
                                            <td class="subOne labelXsl">
                                              <xsl:value-of select="$name950567"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950567/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950567,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950568</td>
                                            <td class="subOne labelXsl">
                                              <xsl:value-of select="$name950568"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950568/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950568,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950569</td>
                                            <td class="subOne labelXsl">
                                              <xsl:value-of select="$name950569"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950569/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950569,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950570</td>
                                            <td class="paddingSub labelXsl">
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
                                            <td class="subOne labelXsl">
                                              <xsl:value-of select="$name950571"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950571/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950571,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950572</td>
                                            <td class="subOne labelXsl">
                                              <xsl:value-of select="$name950572"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950572/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950572,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950573</td>
                                            <td class="subOne labelXsl">
                                              <xsl:value-of select="$name950573"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950573/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950573,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950574</td>
                                            <td class="subOne labelXsl">
                                              <xsl:value-of select="$name950574"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950574/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950574,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950575</td>
                                            <td class="subOne labelXsl">
                                              <xsl:value-of select="$name950575"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950575/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950575,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950576</td>
                                            <td class="subOne labelXsl">
                                              <xsl:value-of select="$name950576"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950576/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950576,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950577</td>
                                            <td class="labelXsl">
                                              <xsl:value-of select="$name950577"/>
                                            </td>
                                            <td width="20%" class="labelXsl" align="right">
                                              <span style="color:#1500d4">
                                                <xsl:value-of select="format-number($TotalBalanceSheetAmount950577,'###,###,###,###,###,###,###,##0.00')"/>
                                              </span>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950578</td>
                                            <td class="paddingSub labelXsl">
                                              <xsl:value-of select="$name950578"/>
                                            </td>
                                            <td width="20%" class="labelXsl" align="right">
                                              <span style="color:#1500d4">
                                                <xsl:value-of select="format-number($TotalBalanceSheetAmount950578,'###,###,###,###,###,###,###,##0.00')"/>
                                              </span>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950579</td>
                                            <td class="subOne labelXsl">
                                              <xsl:value-of select="$name950579"/>
                                            </td>
                                            <td width="20%" class="labelXsl" align="right">
                                              <span style="color:#1500d4">
                                                <xsl:value-of select="format-number($TotalBalanceSheetAmount950579,'###,###,###,###,###,###,###,##0.00')"/>
                                              </span>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950580</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950580"/>
                                            </td>
                                            <td width="20%" class="labelXsl" align="right">
                                              <span style="color:#1500d4">
                                                <xsl:value-of select="format-number($TotalBalanceSheetAmount950580,'###,###,###,###,###,###,###,##0.00')"/>
                                              </span>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950581</td>
                                            <td class="subThree labelXsl">
                                              <xsl:value-of select="$name950581"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950581/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950581,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950582</td>
                                            <td class="subThree labelXsl">
                                              <xsl:value-of select="$name950582"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950582/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950582,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950583</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950583"/>
                                            </td>
                                            <td width="20%" class="labelXsl" align="right">
                                              <span style="color:#1500d4">
                                                <xsl:value-of select="format-number($TotalBalanceSheetAmount950583,'###,###,###,###,###,###,###,##0.00')"/>
                                              </span>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950584</td>
                                            <td class="subThree labelXsl">
                                              <xsl:value-of select="$name950584"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950584/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950584,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950585</td>
                                            <td class="subThree labelXsl">
                                              <xsl:value-of select="$name950585"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950585/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950585,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950586</td>
                                            <td class="subOne labelXsl">
                                              <xsl:value-of select="$name950586"/>
                                            </td>
                                            <td width="20%" class="labelXsl" align="right">
                                              <span style="color:#1500d4">
                                                <xsl:value-of select="format-number($TotalBalanceSheetAmount950586,'###,###,###,###,###,###,###,##0.00')"/>
                                              </span>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950587</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950587"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950587/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950587,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950588</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950588"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950588/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950588,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950589</td>
                                            <td class="paddingSub labelXsl">
                                              <xsl:value-of select="$name950589"/>
                                            </td>
                                            <td width="20%" class="labelXsl" align="right">
                                              <span style="color:#1500d4">
                                                <xsl:value-of select="format-number($TotalBalanceSheetAmount950589,'###,###,###,###,###,###,###,##0.00')"/>
                                              </span>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950590</td>
                                            <td class="subOne labelXsl">
                                              <xsl:value-of select="$name950590"/>
                                            </td>
                                            <td width="20%" class="labelXsl" align="right">
                                              <span style="color:#1500d4">
                                                <xsl:value-of select="format-number($TotalBalanceSheetAmount950590,'###,###,###,###,###,###,###,##0.00')"/>
                                              </span>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950591</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950591"/>
                                            </td>
                                            <td width="20%" class="labelXsl" align="right">
                                              <span style="color:#1500d4">
                                                <xsl:value-of select="format-number($TotalBalanceSheetAmount950591,'###,###,###,###,###,###,###,##0.00')"/>
                                              </span>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950592</td>
                                            <td class="subThree labelXsl">
                                              <xsl:value-of select="$name950592"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950592/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950592,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950593</td>
                                            <td class="subThree labelXsl">
                                              <xsl:value-of select="$name950593"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950593/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950593,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950594</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950594"/>
                                            </td>
                                            <td width="20%" class="labelXsl" align="right">
                                              <span style="color:#1500d4">
                                                <xsl:value-of select="format-number($TotalBalanceSheetAmount950594,'###,###,###,###,###,###,###,##0.00')"/>
                                              </span>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950595</td>
                                            <td class="subThree labelXsl">
                                              <xsl:value-of select="$name950595"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950595/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950595,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950596</td>
                                            <td class="subThree labelXsl">
                                              <xsl:value-of select="$name950596"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950596/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950596,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950597</td>
                                            <td class="subTwo labelXsl">
                                              <xsl:value-of select="$name950597"/>
                                            </td>
                                            <td width="20%" class="labelXsl" align="right">
                                              <span style="color:#1500d4">
                                                <xsl:value-of select="format-number($TotalBalanceSheetAmount950597,'###,###,###,###,###,###,###,##0.00')"/>
                                              </span>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950598</td>
                                            <td class="subThree labelXsl">
                                              <xsl:value-of select="$name950598"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950598/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950598,'###,###,###,###,###,###,###,##0.00')"/>
                                                  </span>
                                                </xsl:if>
                                              </td>
                                            </xsl:for-each>
                                          </tr>
                                          <tr>
                                            <td align="center" class="labelXsl">950599</td>
                                            <td class="subThree labelXsl">
                                              <xsl:value-of select="$name950599"/>
                                            </td>
                                            <xsl:for-each
                                                    select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950599/BalanceSheetItemInfo">
                                              <td width="20%" class="labelXsl" align="right">
                                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                                  <span style="color:#1500d4">
                                                    <xsl:value-of select="format-number($BalanceSheetAmount950599,'###,###,###,###,###,###,###,##0.00')"/>
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
