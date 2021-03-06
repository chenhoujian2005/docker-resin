﻿<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html"/>
  <xsl:template match="/">
    <html>
      <xsl:variable name="name920250">	งบกำไรขาดทุนเบ็ดเสร็จ (Comprehensive Income Statement) เฉพาะธนาคารพาณิชย์ บริษัทเงินทุน บริษัทเครดิตฟองซิเอร์กลุ่มธุรกิจทางการเงินและสถาบันการเงินพิเศษของรัฐ	</xsl:variable>

      <xsl:variable name="name920251">&#160;&#160;&#160;&#160;	   1. รายได้ดอกเบี้ย 	</xsl:variable>
      <xsl:variable name="name920252">&#160;&#160;&#160;&#160;&#160;&#160;	      1.1 เงินให้สินเชื่อ 	</xsl:variable>
	  <xsl:variable name="name920430">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	            1.1.1 เงินให้สินเชื่อธุรกิจขนาดใหญ่  	</xsl:variable>
	  <xsl:variable name="name920431">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	            1.1.2 เงินให้สินเชื่อธุรกิจขนาดกลาง	</xsl:variable>
	  <xsl:variable name="name920432">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	            1.1.3 เงินให้สินเชื่อธุรกิจขนาดย่อม 	</xsl:variable>
	  <xsl:variable name="name920433">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	            1.1.4 เงินให้สินเชื่อเพื่อซื้อที่อยู่อาศัย	</xsl:variable>
	  <xsl:variable name="name920434">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	            1.1.5 เงินให้สินเชื่อบัตรเครดิต 	</xsl:variable>
	  <xsl:variable name="name920435">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	            1.1.6 เงินให้สินเชื่อเพื่อการอุปโภคบริโภคส่วนบุคคลอื่น 	</xsl:variable>
	  <xsl:variable name="name920436">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	            1.1.7 เงินให้สินเชื่ออื่น	</xsl:variable>
      <xsl:variable name="name920253">&#160;&#160;&#160;&#160;&#160;&#160;	      1.2 รายการระหว่างธนาคารและตลาดเงิน 	</xsl:variable>
      <xsl:variable name="name920254">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	            1.2.1 เงินฝาก 	</xsl:variable>
      <xsl:variable name="name920255">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	            1.2.2 เงินให้สินเชื่อ (ไม่รวมธุรกรรมตลาดซื้อคืน)	</xsl:variable>
      <xsl:variable name="name920421">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	                   1.2.2.1 เงินให้สินเชื่อระหว่างสถาบันการเงิน	</xsl:variable>
      <xsl:variable name="name920422">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	                   1.2.2.2 เงินให้สินเชื่อตามหลัก Risk Reward	</xsl:variable>
      <xsl:variable name="name920256">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	            1.2.3 ธุรกรรมตลาดซื้อคืน      	</xsl:variable>
      <xsl:variable name="name920257">&#160;&#160;&#160;&#160;&#160;&#160;	      1.3 เช่าซื้อและสัญญาเช่าการเงิน 	</xsl:variable>
      <xsl:variable name="name920258">&#160;&#160;&#160;&#160;&#160;&#160;	      1.4 เงินลงทุน 	</xsl:variable>
      <xsl:variable name="name920259">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	            1.4.1 เงินลงทุนเพื่อค้า	</xsl:variable>
      <xsl:variable name="name920260">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	            1.4.2 เงินลงทุนเผื่อขาย	</xsl:variable>
      <xsl:variable name="name920261">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	            1.4.3 เงินลงทุนที่จะถือจนครบกำหนด	</xsl:variable>
      <xsl:variable name="name920262">&#160;&#160;&#160;&#160;&#160;&#160;	     1.5 อื่น ๆ	</xsl:variable>
      <xsl:variable name="name920263">&#160;&#160;&#160;&#160;	   2. ค่าใช้จ่ายดอกเบี้ย 	</xsl:variable>
      <xsl:variable name="name920264">&#160;&#160;&#160;&#160;&#160;&#160;	     2.1 เงินรับฝาก 	</xsl:variable>
      <xsl:variable name="name920265">&#160;&#160;&#160;&#160;&#160;&#160;	     2.2 รายการระหว่างธนาคารและตลาดเงิน 	</xsl:variable>
      <xsl:variable name="name920266">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	           2.2.1 เงินรับฝาก 	</xsl:variable>
      <xsl:variable name="name920267">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	           2.2.2 เงินกู้ยืม(ไม่รวมธุรกรรมตลาดซื้อคืน) 	</xsl:variable>
      <xsl:variable name="name920268">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	           2.2.3 ธุรกรรมตลาดซื้อคืน 	</xsl:variable>
      <xsl:variable name="name920269">&#160;&#160;&#160;&#160;&#160;&#160;	     2.3 ตราสารหนี้ที่ออกและเงินกู้ยืม 	</xsl:variable>
      <xsl:variable name="name920270">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         2.3.1 ตั๋วแลกเงิน	</xsl:variable>
      <xsl:variable name="name920271">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         2.3.2 หุ้นกู้และตราสารหนี้อื่น	</xsl:variable>
      <xsl:variable name="name920272">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         2.3.3 เงินกู้ยืม	</xsl:variable>
      <xsl:variable name="name920273">&#160;&#160;&#160;&#160;&#160;&#160;	     2.4 ค่าธรรมเนียมในการกู้ยืมเงิน 	</xsl:variable>
      <xsl:variable name="name920274">&#160;&#160;&#160;&#160;&#160;&#160;	     2.5 เงินนำส่งสถาบันคุ้มครองเงินฝาก หรือเงินนำส่งกองทุนพัฒนาระบบสถาบันการเงินเฉพาะกิจ 	</xsl:variable>
      <xsl:variable name="name920275">&#160;&#160;&#160;&#160;&#160;&#160;	     2.6  อื่น ๆ	</xsl:variable>
      <xsl:variable name="name920276">&#160;&#160;&#160;&#160;	   3. รายได้ค่าธรรมเนียมและบริการ 	</xsl:variable>
      <xsl:variable name="name920277">&#160;&#160;&#160;&#160;&#160;&#160;	     3.1 การรับรอง รับอาวัล และค้ำประกัน 	</xsl:variable>
      <xsl:variable name="name920278">&#160;&#160;&#160;&#160;&#160;&#160;	     3.2 บัตรเครดิต 	</xsl:variable>
      <xsl:variable name="name920279">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         3.2.1 ค่าธรรมเนียมแรกเข้าและรายปี	</xsl:variable>
      <xsl:variable name="name920280">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         3.2.2 รายได้จากการเป็นผู้ออกบัตร	</xsl:variable>
      <xsl:variable name="name920281">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         3.2.3 รายได้จากการเป็นตัวแทนรับบัตร	</xsl:variable>
      <xsl:variable name="name920282">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         3.2.4 ค่าธรรมเนียมอื่น ๆ 	</xsl:variable>
      <xsl:variable name="name920283">&#160;&#160;&#160;&#160;&#160;&#160;	     3.3 บริการบัตร ATM  บัตรเดบิต  และบริการธนาคารอิเล็กทรอนิกส์อื่น ๆ 	</xsl:variable>
      <xsl:variable name="name920284">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         3.3.1 ค่าธรรมเนียมการทำบัตรและรายปี	</xsl:variable>
      <xsl:variable name="name920285">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         3.3.2 บริการฝากถอนเงินสดผ่าน ATM	</xsl:variable>
      <xsl:variable name="name920286">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;         3.3.3 บริการธนาคารอิเล็กทรอนิกส์อื่น ๆ 	</xsl:variable>
      <xsl:variable name="name920287">&#160;&#160;&#160;&#160;&#160;&#160;	     3.4 บริการโอนเงินและเรียกเก็บเงิน 	</xsl:variable>
      <xsl:variable name="name920288">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         3.4.1 การโอนเงินมูลค่าสูงผ่านระบบ BAHTNET	</xsl:variable>
      <xsl:variable name="name920289">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         3.4.2 การโอนเงินผ่านระบบ ITMX Bulk Payment	</xsl:variable>
      <xsl:variable name="name920290">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         3.4.3 การเรียกเก็บเงินตามเช็คและตั๋วเงิน	</xsl:variable>
	  <xsl:variable name="name920437">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	                  3.4.3.1 ตั๋วเงินสินค้าเข้าและสินค้าออก	</xsl:variable>
	  <xsl:variable name="name920438">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	                  3.4.3.2 เช็คและตั๋วเงินอื่นๆ	</xsl:variable>
      <xsl:variable name="name920291">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         3.4.4 อื่น ๆ	</xsl:variable>
      <xsl:variable name="name920292">&#160;&#160;&#160;&#160;&#160;&#160;	     3.5 บริการที่ปรึกษา	</xsl:variable>
      <xsl:variable name="name920293">&#160;&#160;&#160;&#160;&#160;&#160;	     3.6 ค่าธรรมเนียมจัดการ 	</xsl:variable>
      <xsl:variable name="name920294">&#160;&#160;&#160;&#160;&#160;&#160;	     3.7 การจัดการออก การจัดจำหน่ายหลักทรัพย์ และการค้าตราสารแห่งหนี้	</xsl:variable>
      <xsl:variable name="name920295">&#160;&#160;&#160;&#160;&#160;&#160;	     3.8 การดูแลและเก็บรักษาหลักทรัพย์ของลูกค้า	</xsl:variable>
      <xsl:variable name="name920296">&#160;&#160;&#160;&#160;&#160;&#160;	     3.9 ค่าธรรมเนียมเกี่ยวกับเช็ค 	</xsl:variable>
      <xsl:variable name="name920297">&#160;&#160;&#160;&#160;&#160;&#160;	     3.10 ค่าธรรมเนียมการออกเล็ตเตอร์ออฟเครคิต 	</xsl:variable>
	  <xsl:variable name="name920298">&#160;&#160;&#160;&#160;&#160;&#160;	     3.11 ค่านายหน้า 	</xsl:variable>
	  <xsl:variable name="name920439">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         3.11.1 การขายประกันภัยของบริษัทในกลุ่มธุรกิจทางการเงิน	</xsl:variable>
	  <xsl:variable name="name920440">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         3.11.2 การขายประกันภัยของบริษัทนอกกลุ่มธุรกิจทางการเงิน	</xsl:variable>
	  <xsl:variable name="name920441">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         3.11.3 การซื้อขายหลักทรัพย์ ที่เกี่ยวข้องกับบริษัทในกลุ่มธุรกิจทางการเงิน	</xsl:variable>
	  <xsl:variable name="name920442">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         3.11.4 การซื้อขายหลักทรัพย์ ที่ไม่เกี่ยวข้องกับบริษัทในกลุ่มธุรกิจทางการเงิน	</xsl:variable>
	  <xsl:variable name="name920443">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         3.11.5 อื่นๆ	</xsl:variable>
	  <xsl:variable name="name920444">&#160;&#160;&#160;&#160;&#160;&#160;	         3.12 รายได้ค่าธรรมเนียมในการติดตามทวงถามหนี้ 	</xsl:variable>
	  <xsl:variable name="name920445">&#160;&#160;&#160;&#160;&#160;&#160;	         3.13 รายได้ค่าธรรมเนียมจากการรับชำระค่าสินค้าและบริการ 	</xsl:variable>
      <xsl:variable name="name920299">&#160;&#160;&#160;&#160;&#160;&#160;	         3.14 ค่าธรรมเนียมและบริการอื่น ๆ	</xsl:variable>
      <xsl:variable name="name920300">&#160;&#160;&#160;&#160;	  4. ค่าใช้จ่ายค่าธรรมเนียมและบริการ	</xsl:variable>
      <xsl:variable name="name920301">&#160;&#160;&#160;&#160;&#160;&#160;	      4.1 ค่าธรรมเนียมและบริการจ่าย เกี่ยวกับบัตรเครดิต  บัตร ATM และบัตรอิเล็กทรอนิกส์อื่น	</xsl:variable>
      <xsl:variable name="name920302">&#160;&#160;&#160;&#160;&#160;&#160;	      4.2 การโอนเงินระหว่างสถาบันการเงิน	</xsl:variable>
      <xsl:variable name="name920303">&#160;&#160;&#160;&#160;&#160;&#160;	      4.3 ค่าธรรมเนียมและบริการอื่น ๆ	</xsl:variable>
      <xsl:variable name="name920304">&#160;&#160;&#160;&#160;	  5. กำไร (ขาดทุน) สุทธิจากธุรกรรมเพื่อค้าและการปริวรรตเงินตราต่างประเทศ	</xsl:variable>
      <xsl:variable name="name920305">&#160;&#160;&#160;&#160;&#160;&#160;	      5.1 กำไร (ขาดทุน) จากการประเมินมูลค่ายุติธรรม	</xsl:variable>
      <xsl:variable name="name920306">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         5.1.1 ตราสารหนี้	</xsl:variable>
      <xsl:variable name="name920307">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         5.1.2 ตราสารทุน	</xsl:variable>
      <xsl:variable name="name920308">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         5.1.3 เงินลงทุนในลูกหนี้ที่รับโอนมา	</xsl:variable>
      <xsl:variable name="name920309">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         5.1.4 เงินลงทุนในธุรกรรมเงินฝากและเงินกู้ยืมที่มีอนุพันธ์แฝง	</xsl:variable>
      <xsl:variable name="name920310">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         5.1.5 ตราสารอนุพันธ์	</xsl:variable>
      <xsl:variable name="name920311">&#160;&#160;&#160;&#160;&#160;&#160;	      5.2 กำไร (ขาดทุน) จากการโอนเปลี่ยนประเภทเงินลงทุน 	</xsl:variable>
      <xsl:variable name="name920312">&#160;&#160;&#160;&#160;&#160;&#160;	      5.3 กำไร (ขาดทุน) จากการจำหน่าย	</xsl:variable>
      <xsl:variable name="name920313">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         5.3.1 ตราสารหนี้	</xsl:variable>
      <xsl:variable name="name920314">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         5.3.2 ตราสารทุน	</xsl:variable>
      <xsl:variable name="name920315">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         5.3.3 เงินลงทุนในลูกหนี้ที่รับโอนมา	</xsl:variable>
      <xsl:variable name="name920316">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         5.3.4 เงินลงทุนในธุรกรรมเงินฝากและเงินกู้ยืมที่มีอนุพันธ์แฝง	</xsl:variable>
      <xsl:variable name="name920317">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         5.3.5 ตราสารอนุพันธ์ 	</xsl:variable>
      <xsl:variable name="name920318">&#160;&#160;&#160;&#160;&#160;&#160;	      5.4 กำไร (ขาดทุน) จากการปริวรรตเงินตราต่างประเทศ	</xsl:variable>
      <xsl:variable name="name920319">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         5.4.1 กำไร (ขาดทุน) จากการซื้อขาย แลกเปลี่ยนเงินตราต่างประเทศ	</xsl:variable>
      <xsl:variable name="name920320">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         5.4.2 กำไร (ขาดทุน) จากการแปลงค่าสินทรัพย์และหนี้สินที่เป็นเงินตราต่างประเทศ	</xsl:variable>
      <xsl:variable name="name920321">&#160;&#160;&#160;&#160;&#160;&#160;	      5.5 กำไร (ขาดทุน) จากการป้องกันความเสี่ยง	</xsl:variable>
      <xsl:variable name="name920322">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         5.5.1  กำไร (ขาดทุน) จากการป้องกันความเสี่ยงในมูลค่ายุติธรรม	</xsl:variable>
      <xsl:variable name="name920323">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         5.5.2 กำไร (ขาดทุน) จากการป้องกันความเสี่ยงในกระแสเงินสด	</xsl:variable>
      <xsl:variable name="name920324">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         5.5.3 กำไร (ขาดทุน) จากการป้องกันความเสี่ยงในเงินลงทุนสุทธิในหน่วยงานต่างประเทศ	</xsl:variable>
      <xsl:variable name="name920325">&#160;&#160;&#160;&#160;	   6. กำไร (ขาดทุน) สุทธิจากหนี้สินทางการเงินที่กำหนดให้แสดงด้วยมูลค่ายุติธรรม	</xsl:variable>
      <xsl:variable name="name920326">&#160;&#160;&#160;&#160;&#160;&#160;	      6.1 กำไร (ขาดทุน) สุทธิจากการเปลี่ยนแปลงในมูลค่ายุติธรรมและค่าใช้จ่ายดอกเบี้ย	</xsl:variable>
      <xsl:variable name="name920327">&#160;&#160;&#160;&#160;&#160;&#160;	      6.2 กำไร (ขาดทุน) สุทธิจากการไถ่ถอนหรือโอนเปลี่ยนมือ	</xsl:variable>
      <xsl:variable name="name920328">&#160;&#160;&#160;&#160;	   7. กำไร (ขาดทุน) สุทธิจากเงินลงทุน	</xsl:variable>
      <xsl:variable name="name920329">&#160;&#160;&#160;&#160;&#160;&#160;	      7.1 กำไร (ขาดทุน) จากการขายเงินลงทุน	</xsl:variable>
      <xsl:variable name="name920330">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         7.1.1 กำไร (ขาดทุน) จากการขายเงินลงทุนเผื่อขาย	</xsl:variable>
      <xsl:variable name="name920331">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	            7.1.1.1 ตราสารทุน	</xsl:variable>
      <xsl:variable name="name920332">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	            7.1.1.2 ตราสารหนี้	</xsl:variable>
      <xsl:variable name="name920333">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	            7.1.1.3 เงินลงทุนในลูกหนี้	</xsl:variable>
      <xsl:variable name="name920334">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	            7.1.1.4 เงินลงทุนในธุรกรรมเงินฝากและเงินกู้ยืมที่มีอนุพันธ์แฝง	</xsl:variable>
      <xsl:variable name="name920335">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         7.1.2 กำไร (ขาดทุน) จากการขายเงินลงทุนที่จะถือจนครบกำหนด	</xsl:variable>
      <xsl:variable name="name920336">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	            7.1.2.1 ตราสารหนี้	</xsl:variable>
      <xsl:variable name="name920337">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	            7.1.2.2 เงินลงทุนในลูกหนี้	</xsl:variable>
      <xsl:variable name="name920338">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	            7.1.2.3 เงินลงทุนในธุรกรรมเงินฝากและเงินกู้ยืมที่มีอนุพันธ์แฝง	</xsl:variable>
      <xsl:variable name="name920339">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         7.1.3 กำไร (ขาดทุน) จากการขายเงินลงทุนทั่วไป	</xsl:variable>
      <xsl:variable name="name920340">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         7.1.4 กำไร (ขาดทุน) จากเงินลงทุนในบริษัทย่อยและบริษัทร่วม	</xsl:variable>
      <xsl:variable name="name920341">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	            7.1.4.1 เงินลงทุนในบริษัทย่อย	</xsl:variable>
      <xsl:variable name="name920342">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	            7.1.4.2 เงินลงทุนในบริษัทร่วม	</xsl:variable>
      <xsl:variable name="name920343">&#160;&#160;&#160;&#160;&#160;&#160;	      7.2 ขาดทุนจากการด้อยค่า	</xsl:variable>
      <xsl:variable name="name920344">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         7.2.1 ตราสารทุนประเภทเงินลงทุนเผื่อขาย	</xsl:variable>
      <xsl:variable name="name920345">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         7.2.2 เงินลงทุนทั่วไป	</xsl:variable>
      <xsl:variable name="name920346">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         7.2.3 เงินลงทุนในบริษัทย่อยและบริษัทร่วม	</xsl:variable>
      <xsl:variable name="name920347">&#160;&#160;&#160;&#160;	   8. ส่วนแบ่งกำไร (ขาดทุน) จากเงินลงทุนตามวิธีส่วนได้เสีย[เฉพาะ Conso.]	</xsl:variable>
      <xsl:variable name="name920348">&#160;&#160;&#160;&#160;	   9. รายได้จากการดำเนินงานอื่น	</xsl:variable>
      <xsl:variable name="name920349">&#160;&#160;&#160;&#160;&#160;&#160;	      9.1 กำไรจากการขายทรัพย์สินรอการขายและสินทรัพย์อื่น	</xsl:variable>
      <xsl:variable name="name920350">&#160;&#160;&#160;&#160;&#160;&#160;	      9.2 หนี้สูญรับคืน	</xsl:variable>
      <xsl:variable name="name920351">&#160;&#160;&#160;&#160;&#160;&#160;	      9.3 รายได้จากเงินปันผล	</xsl:variable>
      <xsl:variable name="name920352">&#160;&#160;&#160;&#160;&#160;&#160;	      9.4 รายได้จากการดำเนินงานอื่น ๆ	</xsl:variable>
      <xsl:variable name="name920353">&#160;&#160;&#160;&#160;	   10. ค่าใช้จ่ายในการดำเนินงานอื่น 	</xsl:variable>
      <xsl:variable name="name920354">&#160;&#160;&#160;&#160;&#160;&#160;	      10.1 ค่าใช้จ่ายเกี่ยวกับพนักงาน	</xsl:variable>
      <xsl:variable name="name920355">&#160;&#160;&#160;&#160;&#160;&#160;	      10.2 ค่าตอบแทนกรรมการ	</xsl:variable>
      <xsl:variable name="name920356">&#160;&#160;&#160;&#160;&#160;&#160;	      10.3  ค่าใช้จ่ายเกี่ยวกับอาคารสถานที่และอุปกรณ์	</xsl:variable>
      <xsl:variable name="name920357">&#160;&#160;&#160;&#160;&#160;&#160;	      10.4 ค่าภาษีอากร	</xsl:variable>
      <xsl:variable name="name920358">&#160;&#160;&#160;&#160;&#160;&#160;	      10.5 ค่าใช้จ่ายในการดำเนินงานอื่น ๆ 	</xsl:variable>
      <xsl:variable name="name920359">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         10.5.1 ผลเสียหายจากการทุจริตของพนักงาน	</xsl:variable>
      <xsl:variable name="name920360">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         10.5.2 ขาดทุนจากการขายทรัพย์สินรอการขายและสินทรัพย์อื่น	</xsl:variable>
      <xsl:variable name="name920361">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         10.5.3 ขาดทุนจากการด้อยค่าทรัพย์สินรอการขายและสินทรัพย์อื่น	</xsl:variable>
      <xsl:variable name="name920362">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         10.5.4 ค่าใช้จ่ายจากการกันเงินสำรองรายการนอกงบแสดงฐานะการเงิน	</xsl:variable>
      <xsl:variable name="name920363">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         10.5.5  ค่าใช้จ่ายเกี่ยวกับค่าความนิยมและสินทรัพย์ไม่มีตัวตนอื่น	</xsl:variable>
      <xsl:variable name="name920364">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         10.5.6 ค่าใช้จ่ายในการดำเนินงานอื่น ๆ	</xsl:variable>
	  <xsl:variable name="name920446">	      ค่าใช้จ่ายจากธุรกรรมนโยบายรัฐ [เฉพาะ SFIs]	</xsl:variable>
	  <xsl:variable name="name920447">	         ค่าใช้จ่ายดอกเบี้ยจากธุรกรรมนโยบายรัฐ [เฉพาะ SFIs]	</xsl:variable>
	  <xsl:variable name="name920448">	         ค่าใช้จ่ายดำเนินงานจากธุรกรรมนโยบายรัฐ [เฉพาะ SFIs]	</xsl:variable>
	  <xsl:variable name="name920449">	         ค่าใช้จ่ายอื่น ๆ จากธุรกรรมนโยบายรัฐ [เฉพาะ SFIs]	</xsl:variable>
	  
      <xsl:variable name="name920365">&#160;&#160;&#160;&#160;	   11. หนี้สูญ หนี้สงสัยจะสูญ และขาดทุนจากการด้อยค่า	</xsl:variable>
      <xsl:variable name="name920366">&#160;&#160;&#160;&#160;&#160;&#160;	         11.1 เงินให้สินเชื่อ	</xsl:variable>
      <xsl:variable name="name920367">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	                 11.1.1 หนี้สูญ 	</xsl:variable>
      <xsl:variable name="name920368">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	                 11.1.2 หนี้สงสัยจะสูญ 	</xsl:variable>
      <xsl:variable name="name920369">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	                 11.1.3 ขาดทุนจากการปรับโครงสร้างหนี้ 	</xsl:variable>
      <xsl:variable name="name920370">&#160;&#160;&#160;&#160;&#160;&#160;	         11.2 เงินลงทุน	</xsl:variable>
	  
	  <xsl:variable name="name920450">	      หนี้สูญ หนี้สงสัยจะสูญ และขาดทุนจากการปรับปรุงโครงสร้างหนี้ สำหรับการดำเนินธุรกรรมนโยบายรัฐ [เฉพาะ SFIs]	</xsl:variable>
	  <xsl:variable name="name920451">	            หนี้สูญสำหรับการดำเนินธุรกรรมนโยบายรัฐ [เฉพาะ SFIs]	</xsl:variable>
	  <xsl:variable name="name920452">	            หนี้สงสัยจะสูญสำหรับการดำเนินธุรกรรมนโยบายรัฐ [เฉพาะ SFIs]	</xsl:variable>
	  <xsl:variable name="name920453">	            ขาดทุนจากการปรับโครงสร้างหนี้สำหรับการดำเนินธุรกรรมนโยบายรัฐ [เฉพาะ SFIs]	</xsl:variable>
	  <xsl:variable name="name920454">	            เงินลงทุนสำหรับการดำเนินธุรกรรมนโยบายรัฐ [เฉพาะ SFIs]	</xsl:variable>
      <xsl:variable name="name920423">	            เงินชดเชยโครงการนโยบายรัฐ (ต้นทุนเงินและค่าบริการ) [เฉพาะ SFI]	</xsl:variable>
	  
	  <xsl:variable name="name920455">	รายได้จากธุรกรรมนโยบายรัฐ [เฉพาะ SFIs]	</xsl:variable>
	  <xsl:variable name="name920456">	รายได้ดอกเบี้ยจากธุรกรรมนโยบายรัฐ [เฉพาะ SFIs]	</xsl:variable>
	  <xsl:variable name="name920457">	รายได้ค่าธรรมเนียมและบริการจากลูกหนี้ธุรกรรมนโยบายรัฐ [เฉพาะ SFIs]	</xsl:variable>
	  <xsl:variable name="name920458">	รายได้อื่น ๆ จากลูกหนี้ธุรกรรมนโยบายรัฐ [เฉพาะ SFIs]	</xsl:variable>
	  <xsl:variable name="name920459">	รายได้ชดเชยดอกเบี้ยธุรกรรมนโยบายรัฐจากรัฐบาล [เฉพาะ SFIs]	</xsl:variable>
	  <xsl:variable name="name920460">	รายได้ชดเชยต้นทุนเงินธุรกรรมนโยบายรัฐจากรัฐบาล [เฉพาะ SFIs]	</xsl:variable>
	  <xsl:variable name="name920461">      รายได้ชดเชยค่าใช้จ่ายดำเนินงานหรือค่าบริหารโครงการธุรกรรมนโยบายรัฐจากรัฐบาล [เฉพาะ SFIs]	</xsl:variable>
	  
      <xsl:variable name="name920371">&#160;&#160;&#160;&#160;	   12. กำไร (ขาดทุน)จากการดำเนินงานก่อนภาษีเงินได้	</xsl:variable>
      <xsl:variable name="name920372">&#160;&#160;&#160;&#160;	   13. ภาษีเงินได้	</xsl:variable>
      <xsl:variable name="name920373">&#160;&#160;&#160;&#160;&#160;&#160;	        13.1 ภาษีเงินได้ปัจจุบัน	</xsl:variable>
      <xsl:variable name="name920374">&#160;&#160;&#160;&#160;&#160;&#160;	        13.2 ภาษีเงินได้รอตัดบัญชี	</xsl:variable>
      <xsl:variable name="name920375">&#160;&#160;&#160;&#160;	   14. กำไร (ขาดทุน) สุทธิ	</xsl:variable>
	  
	  
	  <!-- 15 -->

      <xsl:variable name="name920376">&#160;&#160;&#160;&#160;	   15. กำไร (ขาดทุน) เบ็ดเสร็จอื่น	</xsl:variable>

      <xsl:variable name="name920424">&#160;&#160;&#160;&#160;&#160;&#160;	      15.1 การเปลี่ยนแปลงในส่วนเกินทุนจากการ ตีมูลค่าสินทรัพย์	</xsl:variable>
      <xsl:variable name="name920378">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	      15.1.1 กำไร (ขาดทุน) จากการวัดมูลค่าเงินลงทุนเผื่อขาย	</xsl:variable>
      <xsl:variable name="name920379">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	      15.1.2 กำไร (ขาดทุน) จากการแปลงค่างบการเงินจากการดำเนินงานในต่างประเทศ	</xsl:variable>
      <xsl:variable name="name920381">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	      15.1.3 กำไร (ขาดทุน) จากการประเมินมูลค่ายุติธรรมตราสารอนุพันธ์สำหรับการป้องกันความเสี่ยงในกระแสเงินสด	</xsl:variable>
      <xsl:variable name="name920382">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	      15.1.4 กำไร (ขาดทุน) จากการประเมินมูลค่ายุติธรรมตราสารอนุพันธ์สำหรับการป้องกันความเสี่ยงในเงินลงทุนสุทธิในหน่วยงานต่างประเทศ	</xsl:variable>
      <xsl:variable name="name920425">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	      15.1.5 ส่วนแบ่งกำไร (ขาดทุน) เบ็ดเสร็จอื่นในบริษัทร่วมและกิจการร่วมค้า [เฉพาะ Conso.] ภายใต้วิธีส่วนได้เสีย สำหรับรายการที่จัดประเภทรายการใหม่เข้าไปไว้ในกำไรหรือขาดทุนในภายหลัง	</xsl:variable>
      <xsl:variable name="name920426">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	      15.1.6ภาษีเงินได้เกี่ยวกับองค์ประกอบของกำไร (ขาดทุน) เบ็ดเสร็จอื่นสำหรับรายการที่จัดประเภทรายการใหม่เข้าไปไว้ในกำไรหรือขาดทุนในภายหลัง	</xsl:variable>

	 <xsl:variable name="name920427">&#160;&#160;&#160;&#160;&#160;&#160;	      15.2 การเปลี่ยนแปลงในส่วนเกินทุนจากการ ตีมูลค่าสินทรัพย์	</xsl:variable>
	 <xsl:variable name="name920377">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	      15.2.1 การเปลี่ยนแปลงในส่วนเกินทุนจากการ ตีมูลค่าสินทรัพย์	</xsl:variable>
	 <xsl:variable name="name920380">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	      15.2.2 กำไร (ขาดทุน) จากการประมาณการตามหลักคณิตศาสตร์ประกันภัยสำหรับโครงการผลประโยชน์ของพนักงาน</xsl:variable>
	 <xsl:variable name="name920428">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	      15.2.3 ส่วนแบ่งกำไร (ขาดทุน) เบ็ดเสร็จอื่นในบริษัทร่วมและกิจการร่วมค้า [เฉพาะ Conso.] ภายใต้วิธีส่วนได้เสีย สำหรับรายการที่ไม่จัดประเภทรายการใหม่เข้าไปไว้ในกำไรหรือขาดทุนในภายหลัง</xsl:variable>
	 <xsl:variable name="name920429">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	      15.2.4 ภาษีเงินได้เกี่ยวกับองค์ประกอบของกำไร (ขาดทุน) เบ็ดเสร็จอื่นสำหรับรายการที่ไม่จัดประเภทรายการใหม่เข้าไปไว้ในกำไรหรือขาดทุนในภายหลัง</xsl:variable>
	 
	 
	 <!-- -->
		 
      <xsl:variable name="name920385">&#160;&#160;&#160;&#160;	   16. กำไร (ขาดทุน) เบ็ดเสร็จรวม	</xsl:variable>

      <xsl:variable name="name920386">&#160;&#160;&#160;&#160;	   17. การแบ่งปันกำไร (ขาดทุน) สุทธิ [เฉพาะ Conso.]	</xsl:variable>

      <xsl:variable name="name920387">&#160;&#160;&#160;&#160;&#160;&#160;	      17.1 ส่วนที่เป็นของบริษัทใหญ่	</xsl:variable>

      <xsl:variable name="name920388">&#160;&#160;&#160;&#160;&#160;&#160;	      17.2 ส่วนที่เป็นของส่วนได้เสียที่ไม่มีอำนาจควบคุม	</xsl:variable>

      <xsl:variable name="name920389">&#160;&#160;&#160;&#160;	   18. การแบ่งปันกำไร (ขาดทุน) เบ็ดเสร็จรวม [เฉพาะ Conso.]	</xsl:variable>

      <xsl:variable name="name920390">&#160;&#160;&#160;&#160;&#160;&#160;	      18.1 ส่วนที่เป็นของบริษัทใหญ่	</xsl:variable>

      <xsl:variable name="name920391">&#160;&#160;&#160;&#160;&#160;&#160;	      18.2 ส่วนที่เป็นของ ส่วนได้เสียที่ไม่มีอำนาจควบคุม	</xsl:variable>

      <xsl:variable name="name920392">&#160;&#160;&#160;&#160;	   19. กำไร (ขาดทุน) ต่อหุ้น	</xsl:variable>

      <xsl:variable name="name920393">&#160;&#160;&#160;&#160;&#160;&#160;	      19.1 กำไร (ขาดทุน) ต่อหุ้นขั้นพื้นฐาน	</xsl:variable>

      <xsl:variable name="name920394">&#160;&#160;&#160;&#160;&#160;&#160;	      19.2 กำไร (ขาดทุน) ต่อหุ้นปรับลด	</xsl:variable>

      <xsl:variable name="name920395">&#160;&#160;&#160;&#160;	   20. จำนวนพนักงาน (คน)	</xsl:variable>

      <xsl:variable name="name920396">&#160;&#160;&#160;&#160;	   21. จำนวนกรรมการ (คน) 	</xsl:variable>

      <xsl:variable name="name920397">&#160;&#160;&#160;&#160;	   22. รายได้และค่าใช้จ่ายระหว่างกัน (เฉพาะธนาคารพาณิชย์จดทะเบียนในประเทศที่มีสาขาในต่างประเทศ และให้รายงานไว้ในชุดรวมทุกสำนักงานในต่างประเทศ และชุดรายสำนักงานในต่างประเทศ  [FI Reporting Group Id = 116005 และ 116006] เท่านั้น)	</xsl:variable>

      <xsl:variable name="name920398">&#160;&#160;&#160;&#160;&#160;&#160;	      22.1 รายได้	</xsl:variable>

      <xsl:variable name="name920399">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         22.1.1 ดอกเบี้ยรับ	</xsl:variable>

      <xsl:variable name="name920400">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	            22.1.1.1 เงินให้กู้ยืมแก่สำนักงานใหญ่	</xsl:variable>

      <xsl:variable name="name920401">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	            22.1.1.2 เงินฝากที่สำนักงานใหญ่	</xsl:variable>

      <xsl:variable name="name920402">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	            22.1.1.3 เงินให้กู้ยืมแก่สาขาอื่น	</xsl:variable>

      <xsl:variable name="name920403">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	            22.1.1.4 เงินฝากที่สาขาอื่น	</xsl:variable>

      <xsl:variable name="name920404">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	            22.1.1.5 อื่น ๆ	</xsl:variable>

      <xsl:variable name="name920405">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         22.1.2 ค่าธรรมเนียมรับ	</xsl:variable>

      <xsl:variable name="name920406">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	            22.1.2.1 ตั๋วเงินค่าสินค้าเข้า	</xsl:variable>

      <xsl:variable name="name920407">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	            22.1.2.2 ตั๋วเงินค่าสินค้าออก	</xsl:variable>

      <xsl:variable name="name920408">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	            22.1.2.3 การโอนเงินและเรียกเก็บเงินตามตั๋วเงิน	</xsl:variable>

      <xsl:variable name="name920409">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	            22.1.2.4 อื่น ๆ	</xsl:variable>

      <xsl:variable name="name920410">&#160;&#160;&#160;&#160;&#160;&#160;	      22.2 ค่าใช้จ่าย	</xsl:variable>

      <xsl:variable name="name920411">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         22.2.1 ดอกเบี้ยจ่าย	</xsl:variable>

      <xsl:variable name="name920412">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	            22.2.1.1 เงินลงทุนของสำนักงานใหญ่ที่สาขาในต่างประเทศ(Fund Allocated)	</xsl:variable>

      <xsl:variable name="name920413">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	            22.2.1.2 เงินกู้ยืมจากสำนักงานใหญ่	</xsl:variable>

      <xsl:variable name="name920414">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	            22.2.1.3 เงินรับฝากจากสำนักงานใหญ่	</xsl:variable>

      <xsl:variable name="name920415">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	            22.2.1.4 เงินกู้ยืมจากสาขาอื่น	</xsl:variable>

      <xsl:variable name="name920416">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	            22.2.1.5 เงินรับฝากจากสาขาอื่น	</xsl:variable>

      <xsl:variable name="name920417">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	            22.2.1.6 อื่น ๆ	</xsl:variable>

      <xsl:variable name="name920418">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	         22.2.2 ค่าธรรมเนียมจ่าย	</xsl:variable>

      <xsl:variable name="name920419">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	            22.2.2.1 ค่าจัดการ(Management Fee)	</xsl:variable>

      <xsl:variable name="name920420">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;	            22.2.2.2 อื่น ๆ	</xsl:variable>


      <!-- 1 -->
     
	 <xsl:variable name="Amount920430">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920430/Amount"/></xsl:variable>
		<xsl:variable name="Amount920431">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920431/Amount"/></xsl:variable>
		<xsl:variable name="Amount920432">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920432/Amount"/></xsl:variable>
		<xsl:variable name="Amount920433">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920433/Amount"/></xsl:variable>
		<xsl:variable name="Amount920434">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920434/Amount"/></xsl:variable>
		<xsl:variable name="Amount920435">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920435/Amount"/></xsl:variable>
	 	<xsl:variable name="Amount920436">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920436/Amount"/></xsl:variable>
		
	  <xsl:variable name="TotalAmount920252">
		<xsl:value-of select="$Amount920430 + $Amount920431 + $Amount920432 + $Amount920433 + $Amount920434 + $Amount920435 + $Amount920436"/></xsl:variable>
		
      <xsl:variable name="Amount920254">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920254/Amount"/></xsl:variable>
      <xsl:variable name="Amount920421">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920421/Amount"/></xsl:variable>
      <xsl:variable name="Amount920422">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920422/Amount"/></xsl:variable>
      <xsl:variable name="Amount920256">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920256/Amount"/></xsl:variable>
      <xsl:variable name="Amount920257">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920257/Amount"/></xsl:variable>
      <xsl:variable name="Amount920259">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920259/Amount"/></xsl:variable>
      <xsl:variable name="Amount920260">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920260/Amount"/></xsl:variable>
      <xsl:variable name="Amount920261">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920261/Amount"/></xsl:variable>
      <xsl:variable name="Amount920262">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920262/Amount"/></xsl:variable>


      <xsl:variable name="TotalAmount920255">
	  <xsl:value-of select="$Amount920421 + $Amount920422 "/></xsl:variable>
      <xsl:variable name="TotalAmount920258">
	  <xsl:value-of select="$Amount920259 + $Amount920260 + $Amount920261"/></xsl:variable>
      <xsl:variable name="TotalAmount920253">
	  <xsl:value-of select="$Amount920254 + $TotalAmount920255 + $Amount920256 "/></xsl:variable>
      <xsl:variable name="TotalAmount920251">
	  <xsl:value-of select="$TotalAmount920252 + $TotalAmount920253 + $Amount920257 + $TotalAmount920258 + $Amount920262 "/></xsl:variable>

      <!-- 2 -->
      <xsl:variable name="Amount920264">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920264/Amount"/></xsl:variable>
      <xsl:variable name="Amount920266">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920266/Amount"/></xsl:variable>
      <xsl:variable name="Amount920267">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920267/Amount"/></xsl:variable>
      <xsl:variable name="Amount920268">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920268/Amount"/></xsl:variable>
      <xsl:variable name="Amount920270">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920270/Amount"/></xsl:variable>
      <xsl:variable name="Amount920271">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920271/Amount"/></xsl:variable>
      <xsl:variable name="Amount920272">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920272/Amount"/></xsl:variable>
      <xsl:variable name="Amount920273">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920273/Amount"/></xsl:variable>
      <xsl:variable name="Amount920274">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920274/Amount"/></xsl:variable>
      <xsl:variable name="Amount920275">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920275/Amount"/></xsl:variable>

      <xsl:variable name="TotalAmount920265"><xsl:value-of select="$Amount920266 + $Amount920267 + $Amount920268 "/></xsl:variable>
      <xsl:variable name="TotalAmount920269"><xsl:value-of select="$Amount920270 + $Amount920271 + $Amount920272 "/></xsl:variable>
      <xsl:variable name="TotalAmount920263">
            <xsl:value-of select="$Amount920264 + $TotalAmount920265 + $TotalAmount920269 + $Amount920273 + $Amount920274 + $Amount920275  "/>
      </xsl:variable>

      <!-- 3 -->
      <xsl:variable name="Amount920277">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920277/Amount"/></xsl:variable>
      <xsl:variable name="Amount920279">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920279/Amount"/></xsl:variable>
      <xsl:variable name="Amount920280">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920280/Amount"/></xsl:variable>
      <xsl:variable name="Amount920281">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920281/Amount"/></xsl:variable>
      <xsl:variable name="Amount920282">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920282/Amount"/></xsl:variable>
      <xsl:variable name="Amount920284">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920284/Amount"/></xsl:variable>
      <xsl:variable name="Amount920285">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920285/Amount"/></xsl:variable>
      <xsl:variable name="Amount920286">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920286/Amount"/></xsl:variable>
      <xsl:variable name="Amount920288">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920288/Amount"/></xsl:variable>
      <xsl:variable name="Amount920289">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920289/Amount"/></xsl:variable>
      <xsl:variable name="Amount920437">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920437/Amount"/></xsl:variable>
      <xsl:variable name="Amount920438">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920438/Amount"/></xsl:variable>
      
	
	 <xsl:variable name="TotalAmount920290">
        <xsl:value-of select="$Amount920437 + $Amount920438  "/>
      </xsl:variable>
	
	
		
		
		
      <xsl:variable name="Amount920291">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920291/Amount"/></xsl:variable>
      <xsl:variable name="Amount920292">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920292/Amount"/></xsl:variable>
      <xsl:variable name="Amount920293">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920293/Amount"/></xsl:variable>
      <xsl:variable name="Amount920294">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920294/Amount"/></xsl:variable>
      <xsl:variable name="Amount920295">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920295/Amount"/></xsl:variable>
      <xsl:variable name="Amount920296">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920296/Amount"/></xsl:variable>
      <xsl:variable name="Amount920297">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920297/Amount"/></xsl:variable>
	
	  <xsl:variable name="Amount920439">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920439/Amount"/></xsl:variable>
	  <xsl:variable name="Amount920440">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920440/Amount"/></xsl:variable>
	  <xsl:variable name="Amount920441">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920441/Amount"/></xsl:variable>
	  <xsl:variable name="Amount920442">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920442/Amount"/></xsl:variable>
	  <xsl:variable name="Amount920443">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920443/Amount"/></xsl:variable>
      <xsl:variable name="Amount920444">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920444/Amount"/></xsl:variable>
	  <xsl:variable name="Amount920445">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920445/Amount"/></xsl:variable>
	  
	  <xsl:variable name="TotalAmount920298">
        <xsl:value-of select="$Amount920439 + $Amount920440 + $Amount920441 + $Amount920442 + $Amount920443 + $Amount920444 + $Amount920445 "/></xsl:variable>
		
		
	
		
      <xsl:variable name="Amount920299">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920299/Amount"/></xsl:variable>
      <xsl:variable name="TotalAmount920278">
        <xsl:value-of select="$Amount920279 + $Amount920280 + $Amount920281 + $Amount920282 "/></xsl:variable>
      <xsl:variable name="TotalAmount920283">
        <xsl:value-of select="$Amount920284 + $Amount920285 + $Amount920286 "/></xsl:variable>
      <xsl:variable name="TotalAmount920287">
        <xsl:value-of select="$Amount920288 + $Amount920289 + $TotalAmount920290 + $Amount920291"/></xsl:variable>
      <xsl:variable name="TotalAmount920276">
        <xsl:value-of select="$Amount920277 + $TotalAmount920278 + $TotalAmount920283 + $TotalAmount920287 + $Amount920292 + $Amount920293 +$Amount920294 + $Amount920295 + $Amount920296 +$Amount920297 + $TotalAmount920298 + $Amount920299 "/>
      </xsl:variable>

      <!-- 4 -->
      <xsl:variable name="Amount920301">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920301/Amount"/> </xsl:variable>
      <xsl:variable name="Amount920302">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920302/Amount"/> </xsl:variable>
      <xsl:variable name="Amount920303">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920303/Amount"/> </xsl:variable>
      <xsl:variable name="TotalAmount920300">
        <xsl:value-of select="$Amount920301 + $Amount920302 + $Amount920303 "/> </xsl:variable>

      <!-- 5 -->
      <xsl:variable name="Amount920306">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920306/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920307">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920307/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920308">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920308/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920309">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920309/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920310">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920310/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920311">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920311/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920313">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920313/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920314">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920314/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920315">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920315/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920316">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920316/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920317">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920317/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920319">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920319/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920320">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920320/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920322">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920322/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920323">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920323/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920324">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920324/Amount"/>
      </xsl:variable>
      <xsl:variable name="TotalAmount920305">
        <xsl:value-of select="$Amount920306 + $Amount920307 + $Amount920308 + $Amount920309 + $Amount920310 "/>
      </xsl:variable>
      <xsl:variable name="TotalAmount920312">
        <xsl:value-of select="$Amount920313 + $Amount920314 + $Amount920315 + $Amount920316 + $Amount920317 "/>
      </xsl:variable>
      <xsl:variable name="TotalAmount920318">
        <xsl:value-of select="$Amount920319 + $Amount920320 "/>
      </xsl:variable>
      <xsl:variable name="TotalAmount920321">
        <xsl:value-of select="$Amount920322 + $Amount920323 + $Amount920324 "/>
      </xsl:variable>
      <xsl:variable name="TotalAmount920304">
        <xsl:value-of select="$TotalAmount920321 + $TotalAmount920312 + $TotalAmount920305  + $Amount920311 + $TotalAmount920318"/>
      </xsl:variable>

      <!-- 6 -->
      <xsl:variable name="Amount920326">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920326/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920327">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920327/Amount"/>
      </xsl:variable>
      <xsl:variable name="TotalAmount920325"><xsl:value-of select="$Amount920327 + $Amount920326 "/></xsl:variable>

      <!-- 7 -->
      <xsl:variable name="Amount920331">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920331/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920332">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920332/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920333">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920333/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920334">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920334/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920336">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920336/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920337">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920337/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920338">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920338/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920339">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920339/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920341">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920341/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920342">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920342/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920344">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920344/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920345">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920345/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920346">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920346/Amount"/>
      </xsl:variable>

      <xsl:variable name="TotalAmount920340">
        <xsl:value-of select="$Amount920341 + $Amount920342 "/>
      </xsl:variable>
      <xsl:variable name="TotalAmount920335">
        <xsl:value-of select="$Amount920336 + $Amount920337 + $Amount920338 "/>
      </xsl:variable>
      <xsl:variable name="TotalAmount920330">
        <xsl:value-of select="$Amount920331 + $Amount920332 + $Amount920333 + $Amount920334 "/>
      </xsl:variable>
      <xsl:variable name="TotalAmount920329">
        <xsl:value-of select="$TotalAmount920330 + $TotalAmount920335 + $Amount920339 + $TotalAmount920340 "/>
      </xsl:variable>


      <!-- 8 -->
      <xsl:variable name="Amount920347">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920347/Amount"/>
      </xsl:variable>

      <xsl:variable name="TotalAmount920343">
            <xsl:value-of select="$Amount920344 + $Amount920345 + $Amount920346 "/>
      </xsl:variable>
        <xsl:variable name="TotalAmount920328">
            <xsl:value-of select="$TotalAmount920329 - $TotalAmount920343 "/>
        </xsl:variable>

      <!-- 9 -->
      <xsl:variable name="Amount920349">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920349/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920350">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920350/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920351">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920351/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920352">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920352/Amount"/>
      </xsl:variable>
      <xsl:variable name="TotalAmount920348">
        <xsl:value-of select="$Amount920349 + $Amount920350 + $Amount920351 + $Amount920352 "/>
      </xsl:variable>

      <!-- 10 -->
      <xsl:variable name="Amount920354">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920354/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920355">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920355/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920356">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920356/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920357">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920357/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920359">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920359/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920360">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920360/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920361">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920361/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920362">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920362/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920363">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920363/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920364">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920364/Amount"/>
      </xsl:variable>
	  
	  <xsl:variable name="Amount920447">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920447/Amount"/>
      </xsl:variable>
	  
	  <xsl:variable name="Amount920448">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920448/Amount"/>
      </xsl:variable>
	  
	  <xsl:variable name="Amount920449">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920449/Amount"/>
      </xsl:variable>
	  
	  <xsl:variable name="TotalAmount920446">
        <xsl:value-of select="$Amount920447 + $Amount920448 + $Amount920449  "/>
      </xsl:variable>
	  
      <xsl:variable name="TotalAmount920358">
        <xsl:value-of select="$Amount920359 + $Amount920360 + $Amount920361 + $Amount920362 + $Amount920363 + $Amount920364 "/>
      </xsl:variable>
      <xsl:variable name="TotalAmount920353">
        <xsl:value-of select="$Amount920354 + $Amount920355 + $Amount920356 + $Amount920357 + $TotalAmount920358  "/>
      </xsl:variable>

      <!-- 11 -->
      <xsl:variable name="Amount920367">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920367/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920368">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920368/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920369">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920369/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920370">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920370/Amount"/>
      </xsl:variable>
	  
	  <xsl:variable name="Amount920451">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920451/Amount"/>
      </xsl:variable>
	  <xsl:variable name="Amount920452">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920452/Amount"/>
      </xsl:variable>
	  <xsl:variable name="Amount920453">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920453/Amount"/>
      </xsl:variable>
	  <xsl:variable name="Amount920454">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920454/Amount"/>
      </xsl:variable>
	  
	   <xsl:variable name="TotalAmount920450">
        <xsl:value-of select="$Amount920451 + $Amount920452 + $Amount920453+ $Amount920454 "/>
      </xsl:variable>
	  
      <xsl:variable name="TotalAmount920366">
        <xsl:value-of select="$Amount920367 + $Amount920368 + $Amount920369 "/>
      </xsl:variable>
      <xsl:variable name="TotalAmount920365">
        <xsl:value-of select="$TotalAmount920366 + $Amount920370 "/>
      </xsl:variable>

	 <!-- 920423 -->
      <xsl:variable name="Amount920423">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920423/Amount"/>
      </xsl:variable>
	   <xsl:variable name="Amount920456">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920456/Amount"/>
      </xsl:variable>
  <xsl:variable name="Amount920457">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920457/Amount"/>
      </xsl:variable>
  <xsl:variable name="Amount920458">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920458/Amount"/>
      </xsl:variable>
<xsl:variable name="Amount920459">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920459/Amount"/>
      </xsl:variable>
  <xsl:variable name="Amount920460">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920460/Amount"/>
      </xsl:variable>
  <xsl:variable name="Amount920461">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920461/Amount"/>
      </xsl:variable>	  
	  <xsl:variable name="TotalAmount920455">
        <xsl:value-of select="$Amount920456 + $Amount920457 + $Amount920458+ $Amount920459+ $Amount920460+ $Amount920461"/>
      </xsl:variable>
      <!-- 12 -->
      <xsl:variable name="Amount920371">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920371/Amount"/>
      </xsl:variable>

      <!-- 13 -->
      <xsl:variable name="Amount920373">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920373/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920374">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920374/Amount"/>
      </xsl:variable>
      <xsl:variable name="TotalAmount920372">
        <xsl:value-of select="$Amount920373 + $Amount920374  "/>
      </xsl:variable>

      <!-- 14 -->
      <xsl:variable name="Amount920375">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920375/Amount"/>
      </xsl:variable>

      <!-- 15 -->
	   <xsl:variable name="Amount920378">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920378/Amount"/>
      </xsl:variable>
	    <xsl:variable name="Amount920379">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920379/Amount"/>
      </xsl:variable>
	  <xsl:variable name="Amount920381">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920381/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920382">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920382/Amount"/>
      </xsl:variable>
	  <xsl:variable name="Amount920425">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920425/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920426">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920426/Amount"/>
      </xsl:variable>
	  
      <xsl:variable name="Amount920377">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920377/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920380">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920380/Amount"/>
      </xsl:variable>
	  <xsl:variable name="Amount920428">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920428/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920429">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920429/Amount"/>
      </xsl:variable>
      
	  <!--Total 15.1-->
	   <xsl:variable name="TotalAmount920424">
        <xsl:value-of select="$Amount920378 + $Amount920379 + $Amount920381 + $Amount920382 + $Amount920425 + $Amount920426 "/>
      </xsl:variable>
	  <!--Total 15.2-->
	   <xsl:variable name="TotalAmount920427">
        <xsl:value-of select="$Amount920377 + $Amount920380 + $Amount920428 + $Amount920429 "/>
      </xsl:variable>
	  <!-- Total 15-->
      <xsl:variable name="TotalAmount920376">
        <xsl:value-of select="$TotalAmount920424 + $TotalAmount920427 "/>
      </xsl:variable>
	  
	  

      <!-- 16 -->
      <xsl:variable name="Amount920385">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920385/Amount"/>
      </xsl:variable>

      <!-- 17 -->
      <xsl:variable name="Amount920387">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920387/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920388">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920388/Amount"/>
      </xsl:variable>
      <xsl:variable name="TotalAmount920386">
        <xsl:value-of select="$Amount920387 + $Amount920388 "/>
      </xsl:variable>

      <!-- 18 -->
      <xsl:variable name="Amount920390">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920390/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920391">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920391/Amount"/>
      </xsl:variable>
      <xsl:variable name="TotalAmount920389">
        <xsl:value-of select="$Amount920390 + $Amount920391 "/>
      </xsl:variable>

      <!-- 19 -->
      <xsl:variable name="Amount920393">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920393/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920394">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920394/Amount"/>
      </xsl:variable>
      <xsl:variable name="TotalAmount920392">
        <xsl:value-of select="$Amount920393 + $Amount920394"/>
      </xsl:variable>

      <!-- 20 -->
      <xsl:variable name="Amount920395">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920395/Amount"/>
      </xsl:variable>

      <!-- 21 -->
      <xsl:variable name="Amount920396">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920396/Amount"/>
      </xsl:variable>

      <!-- 22 -->
      <xsl:variable name="Amount920400">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920400/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920401">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920401/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920402">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920402/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920403">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920403/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920404">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920404/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920406">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920406/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920407">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920407/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920408">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920408/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920409">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920409/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920412">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920412/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920413">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920413/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920414">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920414/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920415">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920415/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920416">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920416/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920417">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920417/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920419">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920419/Amount"/>
      </xsl:variable>
      <xsl:variable name="Amount920420">
        <xsl:value-of select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920420/Amount"/>
      </xsl:variable>
      <xsl:variable name="TotalAmount920418">
        <xsl:value-of select="$Amount920419 + $Amount920420 "/>
      </xsl:variable>
      <xsl:variable name="TotalAmount920411">
        <xsl:value-of select="$Amount920412 + $Amount920413 + $Amount920414 + $Amount920415 + $Amount920416 + $Amount920417 "/>
      </xsl:variable>
      <xsl:variable name="TotalAmount920410">
        <xsl:value-of select="$TotalAmount920411 + $TotalAmount920418 "/>
      </xsl:variable>
      <xsl:variable name="TotalAmount920405">
        <xsl:value-of select="$Amount920406 + $Amount920407 + $Amount920408 + $Amount920409 "/>
      </xsl:variable>
      <xsl:variable name="TotalAmount920399">
        <xsl:value-of select="$Amount920400 + $Amount920401 + $Amount920402 + $Amount920403 + $Amount920404 "/>
      </xsl:variable>
      <xsl:variable name="TotalAmount920398">
        <xsl:value-of select="$TotalAmount920399 + $TotalAmount920405 "/>
      </xsl:variable>
      <xsl:variable name="TotalAmount920397">
        <xsl:value-of select="$TotalAmount920398 + $TotalAmount920410 "/>
      </xsl:variable>


      <head>
        <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        
      </head>
      <body>
       <table  class="displayTable"  width="100%"  border="1">
                      <tr>
                        <td class="bgGreen" >Organization ID:</td>
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
                        <td class="bgGreen" >Data Set Type :</td>
                        <td width="80%" colspan="3">
                          <xsl:value-of select="DS_PNL/@name"/>
                        </td>
                      </tr>
                      <tr>
                        <td class="bgGreen" >Data Set Period Month :</td>
                        <td width="80%" colspan="3" align="left">
                          <xsl:value-of select="DS_PNL/DS_PNL_Header/DataSetPeriodMonth"/>
                        </td>
                      </tr>
                      <tr>
                        <td class="bgGreen"> </td>
                        <td class="bgGreen" align="center"> Day</td>
                        <td class="bgGreen" align="center"> Month</td>
                        <td class="bgGreen" align="center"> Year</td>
                      </tr>
                      <tr>
                        <td class="bgGreen" >Data Set Date :</td>
                        <xsl:variable name="month">
                          <xsl:value-of select="substring-after(substring-before(DataSetDate,'-'),'-')"/>
                        </xsl:variable>
                        <xsl:for-each select="DS_PNL/CommonHeader">
                          <td  hight="15px" align="center">
                            <xsl:value-of select="substring(DataSetDate,9,2)"/>
                          </td>
                          <td  hight="15px" align="center">
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
                          <td  hight="15px" align="center">
                            <xsl:value-of select="substring(DataSetDate,1,4)"/>
                          </td>
                        </xsl:for-each>
                      </tr>
                    </table>
                    <table width="100%" border="1" class="displayTable">
                      <tr class="headTableXsl">
                        <td colspan="3">Profit and Loss</td>
                        <!--align="center"-->
                      </tr>
                      <tr class="headTableXsl">
                        <td colspan="2" width="80%">Profit and Loss Item</td>
                        <td width="20%">Amount</td>
                      </tr>
                      <tr>
                        <td width="10%" align="center">920250 </td>
                        <td width="80%" align="left" class="labelXsl">
                          <xsl:value-of select="$name920250"/>
                        </td>
                        <td width="10%" class="labelXsl" align="right"> </td>
                      </tr>

                      <!-- 1 -->
                      <tr>
                        <td  width="10%" align="center">920251 </td>
                        <td width="80%"  align="left" class="paddingSub labelXsl">
                          <xsl:value-of select="$name920251"/>
                        </td>
                        <td width="10%"  class="labelXsl" align="right" >
                          <span style="color:#1500d4">
                            <xsl:value-of select='format-number($TotalAmount920251,"#,###,###,###,###,###,##0.00")'/>
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920252 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920252"/>
                        </td>
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$TotalAmount920252 != 'NaN'">
                                <xsl:value-of select='format-number($TotalAmount920252,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                      </tr>
					  
					    <tr>
                        <td  width="10%" align="center">920430 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920430"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920430">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920430 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920430,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>

                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
					   <tr>
                        <td  width="10%" align="center">920431 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920431"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920431">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920431 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920431,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>

                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
					   <tr>
                        <td  width="10%" align="center">920432 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920432"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920432">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920432 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920432,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>

                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
					   <tr>
                        <td  width="10%" align="center">920433 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920433"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920433">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920433 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920433,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>

                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
					   <tr>
                        <td  width="10%" align="center">920434 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920434"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920434">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920434 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920434,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>

                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
					   <tr>
                        <td  width="10%" align="center">920435 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920435"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920435">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920435 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920435,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>

                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
					   <tr>
                        <td  width="10%" align="center">920436 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920436"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920436">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920436 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920436,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>

                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920253 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920253"/>
                        </td>
                        <td width="10%"  class="labelXsl" align="right" >
                          <span style="color:#1500d4">
                            <xsl:value-of select='format-number($TotalAmount920253,"#,###,###,###,###,###,##0.00")'/>
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920254 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920254"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920254">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920254 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920254,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>

                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920255 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920255"/>
                        </td>
                        <td width="10%"  class="labelXsl" align="right" >
                          <span style="color:#1500d4">
                            <xsl:value-of select='format-number($TotalAmount920255,"#,###,###,###,###,###,##0.00")'/>
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920421 </td>
                        <td width="80%"  align="left" class="subThree labelXsl">
                          <xsl:value-of select="$name920421"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920421">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920421 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920421,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920422 </td>
                        <td width="80%"  align="left" class="subThree labelXsl">
                          <xsl:value-of select="$name920422"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920422">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920422 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920422,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920256 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920256"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920256">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920256 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920256,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920257 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920257"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920257">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920257 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920257,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920258</td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920258"/>
                        </td>
                        <!--<xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920258">-->
                          <td width="10%"  class="labelXsl" align="right">
                            <span style="color:#1500d4">
                              <!--<xsl:if test="$TotalAmount920258 != 'NaN'">-->
                                <xsl:value-of select='format-number($TotalAmount920258,"#,###,###,###,###,###,##0.00")'/>
                              <!--</xsl:if>-->
                            </span>
                          </td>
                        <!--</xsl:for-each>-->
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920259 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920259"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920259">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920259 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920259,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920260 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920260"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920260">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920260 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920260,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920261 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920261"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920261">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920261 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920261,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920262 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920262"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920262">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920262 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920262,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>

                      <!-- 2 -->
                      <tr>
                        <td  width="10%" align="center">920263 </td>
                        <td width="80%"  align="left" class="paddingSub labelXsl">
                          <xsl:value-of select="$name920263"/>
                        </td>
                        <td width="10%"  class="labelXsl" align="right" >
                          <span style="color:#1500d4">
                            <xsl:value-of select='format-number($TotalAmount920263,"#,###,###,###,###,###,##0.00")'/>
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920264 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920264"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920264">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920264 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920264,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920265 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920265"/>
                        </td>
                        <td width="10%"  class="labelXsl" align="right" >
                          <span style="color:#1500d4">
                            <xsl:value-of select='format-number($TotalAmount920265,"#,###,###,###,###,###,##0.00")'/>
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920266 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920266"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920266">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920266 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920266,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920267 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920267"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920267">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920267 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920267,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920268</td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920268"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920268">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920268 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920268,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920269 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920269"/>
                        </td>
                        <td width="10%"  class="labelXsl" align="right" >
                          <span style="color:#1500d4">
                            <xsl:value-of select='format-number($TotalAmount920269,"#,###,###,###,###,###,##0.00")'/>
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920270 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920270"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920270">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920270 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920270,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920271 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920271"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920271">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920271 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920271,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920272 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920272"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920272">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920272 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920272,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920273 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920273"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920273">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920273 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920273,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920274 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920274"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920274">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920274 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920274,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920275 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920275"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920275">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920275 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920275,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>

                      <!-- 3 -->
                      <tr>
                        <td  width="10%" align="center">920276 </td>
                        <td width="80%"  align="left" class="paddingSub labelXsl">
                          <xsl:value-of select="$name920276"/>
                        </td>
                        <td width="10%"  class="labelXsl" align="right" >
                          <span style="color:#1500d4">
                            <xsl:value-of select='format-number($TotalAmount920276,"#,###,###,###,###,###,##0.00")'/>
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920277 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920277"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920277">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920277 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920277,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920278 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920278"/>
                        </td>
                        <td width="10%"  class="labelXsl" align="right" >
                          <span style="color:#1500d4">
                            <xsl:value-of select='format-number($TotalAmount920278,"#,###,###,###,###,###,##0.00")'/>
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920279 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920279"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920279">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920279 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920279,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920280 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920280"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920280">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920280 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920280,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920281 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920281"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920281">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920281 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920281,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920282 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920282"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920282">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920282 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920282,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920283 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920283"/>
                        </td>
                        <td width="10%"  class="labelXsl" align="right" >
                          <span style="color:#1500d4">
                            <xsl:value-of select='format-number($TotalAmount920283,"#,###,###,###,###,###,##0.00")'/>
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920284 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920284"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920284">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920284 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920284,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920285 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920285"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920285">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920285 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920285,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920286 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920286"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920286">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920286 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920286,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920287 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920287"/>
                        </td>
                        <td width="10%"  class="labelXsl" align="right" >
                          <span style="color:#1500d4">
                            <xsl:value-of select='format-number($TotalAmount920287,"#,###,###,###,###,###,##0.00")'/>
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920288 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920288"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920288">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920288 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920288,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920289 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920289"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920289">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920289 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920289,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920290 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920290"/>
                        </td>
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$TotalAmount920290 != 'NaN'">
                                <xsl:value-of select='format-number($TotalAmount920290,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                      </tr>
					   <tr>
                        <td  width="10%" align="center">920437 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920437"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920437">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920437 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920437,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
					   <tr>
                        <td  width="10%" align="center">920438 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920438"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920438">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920438 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920438,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
					  
                      <tr>
                        <td  width="10%" align="center">920291 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920291"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920291">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920291 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920291,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920292 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920292"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920292">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920292 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920292,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920293 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920293"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920293">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920293 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920293,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920294 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920294"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920294">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920294 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920294,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920295 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920295"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920295">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920295 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920295,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920296 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920296"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920296">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920296 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920296,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920297 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920297"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920297">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920297 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920297,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920298 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920298"/>
                        </td>
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$TotalAmount920298 != 'NaN'">
                                <xsl:value-of select='format-number($TotalAmount920298,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                      </tr>
					  
					  <tr>
                        <td  width="10%" align="center">920439 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920439"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920439">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920439 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920439,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
					  <tr>
                        <td  width="10%" align="center">920440 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920440"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920440">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920440 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920440,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
					  <tr>
                        <td  width="10%" align="center">920441 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920441"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920441">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920441 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920441,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
					  <tr>
                        <td  width="10%" align="center">920442 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920442"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920442">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920442 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920442,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
					  <tr>
                        <td  width="10%" align="center">920443 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920443"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920443">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920443 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920443,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
					  <tr>
                        <td  width="10%" align="center">920444 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920444"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920444">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920444 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920444,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
					  <tr>
                        <td  width="10%" align="center">920445 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920445"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920445">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920445 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920445,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920299 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920299"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920299">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920299 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920299,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>

                      <!-- 4 -->
                      <tr>
                        <td  width="10%" align="center">920300 </td>
                        <td width="80%"  align="left" class="paddingSub labelXsl">
                          <xsl:value-of select="$name920300"/>
                        </td>
                        <td width="10%"  class="labelXsl" align="right" >
                          <span style="color:#1500d4">
                            <xsl:value-of select='format-number($TotalAmount920300,"#,###,###,###,###,###,##0.00")'/>
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920301 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920301"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920301">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920301 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920301,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920302 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920302"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920302">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920302 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920302,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920303 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920303"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920303">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920303 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920303,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>

                      <!-- 5 -->
                      <tr>
                        <td  width="10%" align="center">920304 </td>
                        <td width="80%"  align="left" class="paddingSub labelXsl">
                          <xsl:value-of select="$name920304"/>
                        </td>
                        <td width="10%"  class="labelXsl" align="right" >
                          <span style="color:#1500d4">
                            <xsl:value-of select='format-number($TotalAmount920304,"#,###,###,###,###,###,##0.00")'/>
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920305 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920305"/>
                        </td>
                        <td width="10%"  class="labelXsl" align="right" >
                          <span style="color:#1500d4">
                            <xsl:value-of select='format-number($TotalAmount920305,"#,###,###,###,###,###,##0.00")'/>
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920306 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920306"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920306">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920306 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920306,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920307 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920307"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920307">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920307 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920307,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920308 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920308"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920308">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920308 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920308,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920309 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920309"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920309">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920309 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920309,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920310 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920310"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920310">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920310 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920310,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920311 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920311"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920311">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920311 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920311,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920312 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920312"/>
                        </td>
                        <td width="10%"  class="labelXsl" align="right" >
                          <span style="color:#1500d4">
                            <xsl:value-of select='format-number($TotalAmount920312,"#,###,###,###,###,###,##0.00")'/>
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920313 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920313"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920313">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920313 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920313,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920314 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920314"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920314">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920314 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920314,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920315 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920315"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920315">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920315 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920315,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920316 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920316"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920316">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920316 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920316,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920317 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920317"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920317">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920317 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920317,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920318 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920318"/>
                        </td>
                        <td width="10%"  class="labelXsl" align="right" >
                          <span style="color:#1500d4">
                            <xsl:value-of select='format-number($TotalAmount920318,"#,###,###,###,###,###,##0.00")'/>
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920319 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920319"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920319">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920319 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920319,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920320 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920320"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920320">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920320 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920320,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920321 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920321"/>
                        </td>
                        <td width="10%"  class="labelXsl" align="right" >
                          <span style="color:#1500d4">
                            <xsl:value-of select='format-number($TotalAmount920321,"#,###,###,###,###,###,##0.00")'/>
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920322 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920322"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920322">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920322 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920322,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920323 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920323"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920323">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920323 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920323,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920324 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920324"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920324">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920324 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920324,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>

                      <!-- 6 -->
                      <tr>
                        <td  width="10%" align="center">920325 </td>
                        <td width="80%"  align="left" class="paddingSub labelXsl">
                          <xsl:value-of select="$name920325"/>
                        </td>
                        <td width="10%"  class="labelXsl" align="right" >
                          <span style="color:#1500d4">
                            <xsl:value-of select='format-number($TotalAmount920325,"#,###,###,###,###,###,##0.00")'/>
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920326 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920326"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920326">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920326 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920326,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920327 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920327"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920327">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920327 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920327,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>

                      <!-- 7 -->
                      <tr>
                        <td  width="10%" align="center">920328 </td>
                        <td width="80%"  align="left" class="paddingSub labelXsl">
                          <xsl:value-of select="$name920328"/>
                        </td>
                        <td width="10%"  class="labelXsl" align="right" >
                          <span style="color:#1500d4">
                            <xsl:value-of select='format-number($TotalAmount920328,"#,###,###,###,###,###,##0.00")'/>
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920329 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920329"/>
                        </td>
                        <td width="10%"  class="labelXsl" align="right" >
                          <span style="color:#1500d4">
                            <xsl:value-of select='format-number($TotalAmount920329,"#,###,###,###,###,###,##0.00")'/>
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920330 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920330"/>
                        </td>
                        <td width="10%"  class="labelXsl" align="right" >
                          <span style="color:#1500d4">
                            <xsl:value-of select='format-number($TotalAmount920330,"#,###,###,###,###,###,##0.00")'/>
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920331 </td>
                        <td width="80%"  align="left" class="subThree labelXsl">
                          <xsl:value-of select="$name920331"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920331">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920331 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920331,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920332 </td>
                        <td width="80%"  align="left" class="subThree labelXsl">
                          <xsl:value-of select="$name920332"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920332">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920332 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920332,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920333 </td>
                        <td width="80%"  align="left" class="subThree labelXsl">
                          <xsl:value-of select="$name920333"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920333">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920333 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920333,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920334 </td>
                        <td width="80%"  align="left" class="subThree labelXsl">
                          <xsl:value-of select="$name920334"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920334">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920334 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920334,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920335 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920335"/>
                        </td>
                        <td width="10%"  class="labelXsl" align="right" >
                          <span style="color:#1500d4">
                            <xsl:value-of select='format-number($TotalAmount920335,"#,###,###,###,###,###,##0.00")'/>
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920336 </td>
                        <td width="80%"  align="left" class="subThree labelXsl">
                          <xsl:value-of select="$name920336"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920336">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920336 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920336,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920337 </td>
                        <td width="80%"  align="left" class="subThree labelXsl">
                          <xsl:value-of select="$name920337"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920337">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920337 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920337,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920338 </td>
                        <td width="80%"  align="left" class="subThree labelXsl">
                          <xsl:value-of select="$name920338"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920338">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920338 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920338,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920339 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920339"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920339">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920339 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920339,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920340 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920340"/>
                        </td>
                        <td width="10%"  class="labelXsl" align="right" >
                          <span style="color:#1500d4">
                            <xsl:value-of select='format-number($TotalAmount920340,"#,###,###,###,###,###,##0.00")'/>
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920341 </td>
                        <td width="80%"  align="left" class="subThree labelXsl">
                          <xsl:value-of select="$name920341"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920341">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920341 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920341,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920342 </td>
                        <td width="80%"  align="left" class="subThree labelXsl">
                          <xsl:value-of select="$name920342"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920342">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920342 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920342,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920343 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920343"/>
                        </td>
                        <td width="10%"  class="labelXsl" align="right" >
                          <span style="color:#1500d4">
                            <xsl:value-of select='format-number($TotalAmount920343,"#,###,###,###,###,###,##0.00")'/>
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920344 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920344"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920344">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920344 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920344,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920345 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920345"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920345">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920345 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920345,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920346 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920346"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920346">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920346 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920346,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>

                      <!-- 8 -->
                      <tr>
                        <td  width="10%" align="center">920347 </td>
                        <td width="80%"  align="left" class="paddingSub labelXsl">
                          <xsl:value-of select="$name920347"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920347">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920347 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920347,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>

                      <!-- 9 -->
                      <tr>
                        <td  width="10%" align="center">920348 </td>
                        <td width="80%"  align="left" class="paddingSub labelXsl">
                          <xsl:value-of select="$name920348"/>
                        </td>
                        <td width="10%"  class="labelXsl" align="right" >
                          <span style="color:#1500d4">
                            <xsl:value-of select='format-number($TotalAmount920348,"#,###,###,###,###,###,##0.00")'/>
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920349 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920349"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920349">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920349 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920349,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920350 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920350"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920350">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920350 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920350,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920351 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920351"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920351">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920351 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920351,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920352 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920352"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920352">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920352 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920352,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>

                      <!-- 10 -->
                      <tr>
                        <td  width="10%" align="center">920353 </td>
                        <td width="80%"  align="left" class="paddingSub labelXsl">
                          <xsl:value-of select="$name920353"/>
                        </td>
                        <td width="10%"  class="labelXsl" align="right" >
                          <span style="color:#1500d4">
                            <xsl:value-of select='format-number($TotalAmount920353,"#,###,###,###,###,###,##0.00")'/>
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920354 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920354"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920354">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920354 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920354,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920355 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920355"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920355">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920355 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920355,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920356 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920356"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920356">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920356 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920356,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920357 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920357"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920357">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920357 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920357,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920358 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920358"/>
                        </td>
                        <td width="10%"  class="labelXsl" align="right" >
                          <span style="color:#1500d4">
                            <xsl:value-of select='format-number($TotalAmount920358,"#,###,###,###,###,###,##0.00")'/>
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920359 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920359"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920359">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920359 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920359,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920360 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920360"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920360">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920360 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920360,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920361 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920361"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920361">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920361 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920361,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920362 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920362"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920362">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920362 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920362,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920363 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920363"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920363">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920363 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920363,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920364 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920364"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920364">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920364 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920364,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
					  
					  <tr>
                        <td  width="10%" align="center">920446 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920446"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920364">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$TotalAmount920446 != 'NaN'">
                                <xsl:value-of select='format-number($TotalAmount920446,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
					  
					  <tr>
                        <td  width="10%" align="center">920447 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920447"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920364">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920447 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920447,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
					   <tr>
                        <td  width="10%" align="center">920448 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920448"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920364">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920448 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920448,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
					   <tr>
                        <td  width="10%" align="center">920449 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920449"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920364">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920449 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920449,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>

                      <!-- 11 -->
                      <tr>
                        <td  width="10%" align="center">920365 </td>
                        <td width="80%"  align="left" class="paddingSub labelXsl">
                          <xsl:value-of select="$name920365"/>
                        </td>
                        <td width="10%"  class="labelXsl" align="right" >
                          <span style="color:#1500d4">
                            <xsl:value-of select='format-number($TotalAmount920365,"#,###,###,###,###,###,##0.00")'/>
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920366 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920366"/>
                        </td>
                        <td width="10%"  class="labelXsl" align="right" >
                          <span style="color:#1500d4">
                            <xsl:value-of select='format-number($TotalAmount920366,"#,###,###,###,###,###,##0.00")'/>
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920367 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920367"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920367">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920367 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920367,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920368 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920368"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920368">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920368 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920368,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920369 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920369"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920369">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920369 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920369,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920370 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920370"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920370">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920370 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920370,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>

					 
					   <tr>
                        <td width="10%" align="center">920450 </td>
                        <td width="80%" align="left" class="paddingSub labelXsl">
                          <xsl:value-of select="$name920450"/>
                        </td>
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$TotalAmount920450 != 'NaN'">
                                <xsl:value-of select='format-number($TotalAmount920450,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                      </tr>
					  
					   <tr>
                        <td  width="10%" align="center">920451 </td>
                        <td width="80%"  align="left" class="paddingSub labelXsl">
                          <xsl:value-of select="$name920451"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920370">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920451 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920451,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
					    <tr>
                        <td  width="10%" align="center">920452 </td>
                        <td width="80%"  align="left" class="paddingSub labelXsl">
                          <xsl:value-of select="$name920452"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920370">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920452 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920452,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
					    <tr>
                        <td  width="10%" align="center">920453 </td>
                        <td width="80%"  align="left" class="paddingSub labelXsl">
                          <xsl:value-of select="$name920453"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920370">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920453 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920453,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
					   <tr>
                        <td  width="10%" align="center">920454 </td>
                        <td width="80%"  align="left" class="paddingSub labelXsl">
                          <xsl:value-of select="$name920454"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920370">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920454 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920454,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
					  
					  
                      <tr>
                        <td width="10%" align="center">920423 </td>
                        <td width="80%" align="left" class="paddingSub labelXsl">
                          <xsl:value-of select="$name920423"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920423">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920423 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920423,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
						
					   <tr>
                        <td width="10%" align="center">920455 </td>
                        <td width="80%" align="left" class="paddingSub labelXsl">
                          <xsl:value-of select="$name920455"/>
                        </td>
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$TotalAmount920455 != 'NaN'">
                                <xsl:value-of select='format-number($TotalAmount920455,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                      </tr>
					  <tr>
                        <td width="10%" align="center">920456 </td>
                        <td width="80%" align="left" class="paddingSub labelXsl">
                          <xsl:value-of select="$name920456"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920456">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920456 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920456,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
					  <tr>
                        <td width="10%" align="center">920457 </td>
                        <td width="80%" align="left" class="paddingSub labelXsl">
                          <xsl:value-of select="$name920457"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920457">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920457 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920457,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
					  <tr>
                        <td width="10%" align="center">920458 </td>
                        <td width="80%" align="left" class="paddingSub labelXsl">
                          <xsl:value-of select="$name920458"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920458">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920458 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920458,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
					  <tr>
                        <td width="10%" align="center">920459 </td>
                        <td width="80%" align="left" class="paddingSub labelXsl">
                          <xsl:value-of select="$name920459"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920459">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920459 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920459,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
					  <tr>
                        <td width="10%" align="center">920460 </td>
                        <td width="80%" align="left" class="paddingSub labelXsl">
                          <xsl:value-of select="$name920460"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920460">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920460 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920460,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
					  <tr>
                        <td width="10%" align="center">920461 </td>
                        <td width="80%" align="left" class="paddingSub labelXsl">
                          <xsl:value-of select="$name920461"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920461">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920461 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920461,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
					  
                      <!-- 12 -->
                      <tr>
                        <td  width="10%" align="center">920371 </td>
                        <td width="80%"  align="left" class="paddingSub labelXsl">
                          <xsl:value-of select="$name920371"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920371">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920371 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920371,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>

                      <!-- 13 -->
                      <tr>
                        <td  width="10%" align="center">920372 </td>
                        <td width="80%"  align="left" class="paddingSub labelXsl">
                          <xsl:value-of select="$name920372"/>
                        </td>
                        <td width="10%"  class="labelXsl" align="right" >
                          <span style="color:#1500d4">
                            <xsl:value-of select='format-number($TotalAmount920372,"#,###,###,###,###,###,##0.00")'/>
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920373 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920373"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920373">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920373 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920373,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920374 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920374"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920374">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920374 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920374,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>

                      <!-- 14 -->
                      <tr>
                        <td  width="10%" align="center">920375 </td>
                        <td width="80%"  align="left" class="paddingSub labelXsl">
                          <xsl:value-of select="$name920375"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920375">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920375 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920375,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>

                      <!-- 15 -->
                      <tr>
                        <td  width="10%" align="center">920376 </td>
                        <td width="80%"  align="left" class="paddingSub labelXsl">
                          <xsl:value-of select="$name920376"/>
                        </td>
                        <td width="10%"  class="labelXsl" align="right" >
                          <span style="color:#1500d4">
                                <xsl:value-of select='format-number($TotalAmount920376,"#,###,###,###,###,###,##0.00")'/>
                          </span>
                        </td>
                      </tr>
					  <tr>
                        <td  width="10%" align="center">920424 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920424"/>
                        </td>
                        <td width="10%"  class="labelXsl" align="right" >
                          <span style="color:#1500d4">
                                <xsl:value-of select='format-number($TotalAmount920424,"#,###,###,###,###,###,##0.00")'/>
                          </span>
                        </td>
                      </tr>
					  <tr>
                        <td  width="10%" align="center">920378 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920378"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920378">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920378 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920378,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920379 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920379"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920379">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920379 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920379,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
					  <tr>
                        <td  width="10%" align="center">920381 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920381"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920381">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920381 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920381,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920382 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920382"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920382">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920382 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920382,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920425 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920425"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920425">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920425 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920425,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
					  <tr>
                        <td  width="10%" align="center">920426 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920426"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920426">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920426 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920426,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
					   <tr>
                        <td  width="10%" align="center">920427 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920427"/>
                        </td>
                        <td width="10%"  class="labelXsl" align="right" >
                          <span style="color:#1500d4">
                                <xsl:value-of select='format-number($TotalAmount920427,"#,###,###,###,###,###,##0.00")'/>
                          </span>
                        </td>
                      </tr>
					  
                      <tr>
                        <td  width="10%" align="center">920377 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920377"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920377">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920377 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920377,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                     
                      <tr>
                        <td  width="10%" align="center">920380 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920380"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920380">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920380 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920380,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      
					  
					    <tr>
                        <td  width="10%" align="center">920428 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920428"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920428">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920428 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920428,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
					   <tr>
                        <td  width="10%" align="center">920429 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920429"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920429">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920429 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920429,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>

                      <!-- 16 -->
                      <tr>
                        <td  width="10%" align="center">920385 </td>
                        <td width="80%"  align="left" class="paddingSub labelXsl">
                          <xsl:value-of select="$name920385"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920385">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920385 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920385,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>

                      <!-- 17 -->
                      <tr>
                        <td  width="10%" align="center">920386 </td>
                        <td width="80%"  align="left" class="paddingSub labelXsl">
                          <xsl:value-of select="$name920386"/>
                        </td>
                        <td width="10%"  class="labelXsl" align="right" >
                          <span style="color:#1500d4">
                            <xsl:value-of select='format-number($TotalAmount920386,"#,###,###,###,###,###,##0.00")'/>
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920387 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920387"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920387">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920387 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920387,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920388 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920388"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920388">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920388 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920388,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>

                      <!-- 18 -->
                      <tr>
                        <td  width="10%" align="center">920389 </td>
                        <td width="80%"  align="left" class="paddingSub labelXsl">
                          <xsl:value-of select="$name920389"/>
                        </td>
                        <td width="10%"  class="labelXsl" align="right" >
                          <span style="color:#1500d4">
                            <xsl:value-of select='format-number($TotalAmount920389,"#,###,###,###,###,###,##0.00")'/>
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920390 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920390"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920390">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920390 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920390,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920391 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920391"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920391">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920391 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920391,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>

                      <!-- 19 -->
                      <tr>
                        <td  width="10%" align="center">920392 </td>
                        <td width="80%"  align="left" class="paddingSub labelXsl">
                          <xsl:value-of select="$name920392"/>
                        </td>
                        <td width="10%"  class="labelXsl" align="right" >
                          <span style="color:#1500d4">
                            <xsl:value-of select='format-number($TotalAmount920392,"#,###,###,###,###,###,##0.00")'/>
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920393 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920393"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920393">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920393 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920393,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920394 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920394"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920394">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920394 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920394,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>

                      <!-- 20 -->
                      <tr>
                        <td  width="10%" align="center">920395 </td>
                        <td width="80%"  align="left" class="paddingSub labelXsl">
                          <xsl:value-of select="$name920395"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920395">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920395 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920395,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>

                      <!-- 21 -->
                      <tr>
                        <td  width="10%" align="center">920396 </td>
                        <td width="80%"  align="left" class="paddingSub labelXsl">
                          <xsl:value-of select="$name920396"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920396">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920396 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920396,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>

                      <!-- 22 -->
                      <tr>
                        <td  width="10%" align="center">920397 </td>
                        <td width="80%"  align="left" class="paddingSub labelXsl">
                          <xsl:value-of select="$name920397"/>
                        </td>
                        <td width="10%"  class="labelXsl" align="right" >
                          <span style="color:#1500d4">
                            <xsl:value-of select='format-number($TotalAmount920397,"#,###,###,###,###,###,##0.00")'/>
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920398 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920398"/>
                        </td>
                        <td width="10%"  class="labelXsl" align="right" >
                          <span style="color:#1500d4">
                            <xsl:value-of select='format-number($TotalAmount920398,"#,###,###,###,###,###,##0.00")'/>
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920399 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920399"/>
                        </td>
                        <td width="10%"  class="labelXsl" align="right" >
                          <span style="color:#1500d4">
                            <xsl:value-of select='format-number($TotalAmount920399,"#,###,###,###,###,###,##0.00")'/>
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920400 </td>
                        <td width="80%"  align="left" class="subThree labelXsl">
                          <xsl:value-of select="$name920400"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920400">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920400 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920400,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920401 </td>
                        <td width="80%"  align="left" class="subThree labelXsl">
                          <xsl:value-of select="$name920401"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920401">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920401 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920401,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920402 </td>
                        <td width="80%"  align="left" class="subThree labelXsl">
                          <xsl:value-of select="$name920402"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920402">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920402 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920402,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920403 </td>
                        <td width="80%"  align="left" class="subThree labelXsl">
                          <xsl:value-of select="$name920403"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920403">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920403 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920403,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920404 </td>
                        <td width="80%"  align="left" class="subThree labelXsl">
                          <xsl:value-of select="$name920404"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920404">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920404 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920404,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920405 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920405"/>
                        </td>
                        <td width="10%"  class="labelXsl" align="right" >
                          <span style="color:#1500d4">
                            <xsl:value-of select='format-number($TotalAmount920405,"#,###,###,###,###,###,##0.00")'/>
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920406 </td>
                        <td width="80%"  align="left" class="subThree labelXsl">
                          <xsl:value-of select="$name920406"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920406">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920406 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920406,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920407 </td>
                        <td width="80%"  align="left" class="subThree labelXsl">
                          <xsl:value-of select="$name920407"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920407">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920407 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920407,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920408 </td>
                        <td width="80%"  align="left" class="subThree labelXsl">
                          <xsl:value-of select="$name920408"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920408">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920408 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920408,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920409 </td>
                        <td width="80%"  align="left" class="subThree labelXsl">
                          <xsl:value-of select="$name920409"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920409">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920409 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920409,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920410 </td>
                        <td width="80%"  align="left" class="subOne labelXsl">
                          <xsl:value-of select="$name920410"/>
                        </td>
                        <!--<xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920410">-->
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <!--<xsl:if test="$TotalAmount920410 != 'NaN'">-->
                                <xsl:value-of select='format-number($TotalAmount920410,"#,###,###,###,###,###,##0.00")'/>
                              <!--</xsl:if>-->
                            </span>
                          </td>
                        <!--</xsl:for-each>-->
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920411 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920411"/>
                        </td>
                        <td width="10%"  class="labelXsl" align="right" >
                          <span style="color:#1500d4">
                            <xsl:value-of select='format-number($TotalAmount920411,"#,###,###,###,###,###,##0.00")'/>
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920412 </td>
                        <td width="80%"  align="left" class="subThree labelXsl">
                          <xsl:value-of select="$name920412"/>
                        </td>
                          <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920412">
                        <td width="10%"  class="labelXsl" align="right" >
                          <span style="color:#1500d4">
                              <xsl:if test="$Amount920412 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920412,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                          </span>
                        </td>
                          </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920413 </td>
                        <td width="80%"  align="left" class="subThree labelXsl">
                          <xsl:value-of select="$name920413"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920413">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920413 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920413,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920414 </td>
                        <td width="80%"  align="left" class="subThree labelXsl">
                          <xsl:value-of select="$name920414"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920414">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920414 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920414,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920415 </td>
                        <td width="80%"  align="left" class="subThree labelXsl">
                          <xsl:value-of select="$name920415"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920415">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920415 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920415,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920416 </td>
                        <td width="80%"  align="left" class="subThree labelXsl">
                          <xsl:value-of select="$name920416"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920416">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920416 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920416,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920417 </td>
                        <td width="80%"  align="left" class="subThree labelXsl">
                          <xsl:value-of select="$name920417"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920417">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920417 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920417,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920418 </td>
                        <td width="80%"  align="left" class="subTwo labelXsl">
                          <xsl:value-of select="$name920418"/>
                        </td>
                        <td width="10%"  class="labelXsl" align="right" >
                          <span style="color:#1500d4">
                            <xsl:value-of select='format-number($TotalAmount920418,"#,###,###,###,###,###,##0.00")'/>
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920419 </td>
                        <td width="80%"  align="left" class="subThree labelXsl">
                          <xsl:value-of select="$name920419"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920419">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920419 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920419,"#,###,###,###,###,###,##0.00")'/>
                              </xsl:if>
                            </span>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr>
                        <td  width="10%" align="center">920420 </td>
                        <td width="80%"  align="left" class="subThree labelXsl">
                          <xsl:value-of select="$name920420"/>
                        </td>
                        <xsl:for-each select="DS_PNL/DS_PNL_Content/ContentRecordGroup/ProfitAndLossItem920420">
                          <td width="10%"  class="labelXsl" align="right" >
                            <span style="color:#1500d4">
                              <xsl:if test="$Amount920420 != 'NaN'">
                                <xsl:value-of select='format-number($Amount920420,"#,###,###,###,###,###,##0.00")'/>
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
