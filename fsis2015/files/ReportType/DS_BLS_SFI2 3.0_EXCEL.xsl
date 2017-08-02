<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <xsl:variable name="name950002" >	   สินทรัพย์</xsl:variable>

      <xsl:variable name="name950003">&#160;&#160;	      1. เงินสด</xsl:variable>

      <xsl:variable name="name950004">&#160;&#160;&#160;&#160;	         1.1 เงินสดในมือ</xsl:variable>

      <xsl:variable name="name950005">&#160;&#160;&#160;&#160;&#160;&#160;            1.1.1 เงินบาท</xsl:variable>

      <xsl:variable name="name950006">&#160;&#160;&#160;&#160;&#160;&#160;	            1.1.2 เงินตราต่างประเทศ</xsl:variable>

      <xsl:variable name="name950007">&#160;&#160;&#160;&#160;	         1.2 รายการเงินสดระหว่างเรียกเก็บ</xsl:variable>

      <xsl:variable name="name950008">&#160;&#160;      2. รายการระหว่างธนาคารและตลาดเงิน</xsl:variable>

      <xsl:variable name="name950009">&#160;&#160;&#160;&#160;         2.1 ในประเทศ</xsl:variable>

      <xsl:variable name="name950010">&#160;&#160;&#160;&#160;&#160;&#160;	        2.1.1 เงินฝาก</xsl:variable>

      <xsl:variable name="name950011">&#160;&#160;&#160;&#160;&#160;&#160;    2.1.2 เงินให้สินเชื่อ</xsl:variable>

      <xsl:variable name="name950012">&#160;&#160;&#160;&#160;         2.2 ต่างประเทศ</xsl:variable>

      <xsl:variable name="name950013">&#160;&#160;&#160;&#160;&#160;&#160;            2.2.1 เงินฝาก</xsl:variable>

      <xsl:variable name="name950014">&#160;&#160;&#160;&#160;&#160;&#160;              2.2.2 เงินให้สินเชื่อ</xsl:variable>

      <xsl:variable name="name950015">&#160;&#160;&#160;&#160;       2.3 ดอกเบี้ยค้างรับ  / รายได้สินเชื่อค้างรับ </xsl:variable>

      <xsl:variable name="name950016">&#160;&#160;&#160;&#160;         2.4 หัก รายได้รอการตัดบัญชี</xsl:variable>

      <xsl:variable name="name950017">&#160;&#160;&#160;&#160;         2.5 หัก ค่าเผื่อหนี้สงสัยจะสูญ</xsl:variable>

      <xsl:variable name="name950018">&#160;&#160;     3. หลักทรัพย์ซื้อโดยมีสัญญาขายคืน</xsl:variable>

      <xsl:variable name="name950019">&#160;&#160;     4. เงินลงทุน (สุทธิ)</xsl:variable>

      <xsl:variable name="name950020">&#160;&#160;&#160;&#160;       4.1 เงินลงทุนชั่วคราว (สุทธิ)</xsl:variable>

      <xsl:variable name="name950021">&#160;&#160;&#160;&#160;&#160;&#160;          4.1.1 หลักทรัพย์เพื่อค้า (สุทธิ)</xsl:variable>

      <xsl:variable name="name950022">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;             4.1.1.1 ตราสารทุน</xsl:variable>

      <xsl:variable name="name950023">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;            4.1.1.2 ตราสารหนี้</xsl:variable>

      <xsl:variable name="name950024">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;          4.1.1.3 เงินลงทุนในลูกหนี้</xsl:variable>

      <xsl:variable name="name950025">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;            4.1.1.4 ค่าเผื่อการปรับมูลค่าของหลักทรัพย์</xsl:variable>

      <xsl:variable name="name950026">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;            4.1.1.4.1 ส่วนเกินจากการปรับมูลค่า</xsl:variable>

      <xsl:variable name="name950027">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;               4.1.1.4.2 หัก ส่วนต่ำจากการปรับมูลค่า</xsl:variable>

      <xsl:variable name="name950028">&#160;&#160;&#160;&#160;&#160;&#160;         4.1.2 หลักทรัพย์เผื่อขาย (สุทธิ)</xsl:variable>

      <xsl:variable name="name950029">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;             4.1.2.1 ตราสารทุน</xsl:variable>

      <xsl:variable name="name950030">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;             4.1.2.2 ตราสารหนี้</xsl:variable>

      <xsl:variable name="name950031">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;             4.1.2.3 เงินลงทุนในลูกหนี้</xsl:variable>

      <xsl:variable name="name950032">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;              4.1.2.4 ค่าเผื่อการปรับมูลค่าของหลักทรพย์</xsl:variable>

      <xsl:variable name="name950033">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;           4.1.2.4.1 ส่วนเกินจากการปรับมูลค่า           </xsl:variable>

      <xsl:variable name="name950034">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;            4.1.2.4.2 หัก ส่วนต่ำจากการปรับมูลค่า</xsl:variable>

      <xsl:variable name="name950035">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;          4.1.2.5 หัก ค่าเผื่อการด้อยค่าของหลักทรัพย์</xsl:variable>

      <xsl:variable name="name950036">&#160;&#160;&#160;&#160;&#160;&#160;       4.1.3 ตราสารหนี้ที่จะถือจนครบกำหนด (สุทธิ)</xsl:variable>

      <xsl:variable name="name950037">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;             4.1.3.1 หลักทรัพย์รัฐบาลและรัฐวิสาหกิจ</xsl:variable>

      <xsl:variable name="name950038">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;              4.1.3.2 ตราสารหนี้ภาคเอกชน</xsl:variable>

      <xsl:variable name="name950039">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;           4.1.3.3 ตราสารหนี้ต่างประเทศ</xsl:variable>

      <xsl:variable name="name950040">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;             4.1.3.4 ตราสารหนี้อื่น</xsl:variable>

      <xsl:variable name="name950041">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;          4.1.3.5 เงินลงทุนในลูกหนี้ที่เป็นตราสารหนี้       </xsl:variable>

      <xsl:variable name="name950042">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;         4.1.3.6 หัก ค่าเผื่อการด้อยค่าของหลักทรัพย์</xsl:variable>

      <xsl:variable name="name950043">&#160;&#160;&#160;&#160;&#160;&#160;       4.1.4 เงินลงทุนทั่วไป  (สุทธิ)</xsl:variable>

      <xsl:variable name="name950044">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;            4.1.4.1 หลักทรัพย์จดทะเบียน</xsl:variable>

      <xsl:variable name="name950045">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;             4.1.4.2 หลักทรัพย์ต่างประเทศ</xsl:variable>

      <xsl:variable name="name950046">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;          4.1.4.3 หลักทรัพย์อื่น</xsl:variable>

      <xsl:variable name="name950047">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;           4.1.4.4 เงินลงทุนในลูกหนี้</xsl:variable>

      <xsl:variable name="name950048">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;         4.1.4.5 หัก ค่าเผื่อการด้อยค่าของหลักทรัพย์       </xsl:variable>

      <xsl:variable name="name950049">&#160;&#160;&#160;&#160;      4.2 เงินลงทุนระยะยาว (สุทธิ)</xsl:variable>

      <xsl:variable name="name950050">&#160;&#160;&#160;&#160;&#160;&#160;       4.2.1 หลักทรัพย์เผื่อขาย (สุทธิ)</xsl:variable>

      <xsl:variable name="name950051">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;            4.2.1.1 ตราสารทุน</xsl:variable>

      <xsl:variable name="name950052">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;                   4.2.1.1.1 หลักทรัพย์จดทะเบียน</xsl:variable>

      <xsl:variable name="name950053">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;                   4.2.1.1.2 หลักทรัพย์ต่างประเทศ</xsl:variable>

      <xsl:variable name="name950054">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;                  4.2.1.1.3 หลักทรัพย์อื่น</xsl:variable>

      <xsl:variable name="name950055">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;           4.2.1.2 ตราสารหนี้</xsl:variable>

      <xsl:variable name="name950056">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;                  4.2.1.2.1 หลักทรัพย์รัฐบาล และรัฐวิสาหกิจ          </xsl:variable>

      <xsl:variable name="name950057">&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;                   4.2.1.2.2 ตราสารหนี้ภาคเอกชน</xsl:variable>

      <xsl:variable name="name950058">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;                   4.2.1.2.3 ตราสารหนี้ต่างประเทศ</xsl:variable>

      <xsl:variable name="name950059">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;                    4.2.1.2.4 ตราสารหนี้อื่น</xsl:variable>

      <xsl:variable name="name950060">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;              4.2.1.3 เงินลงทุนในลูกหนี้</xsl:variable>

      <xsl:variable name="name950061">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;           4.2.1.4 ค่าเผื่อการปรับมูลค่าของหลักทรัพย์</xsl:variable>

      <xsl:variable name="name950062">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;                    4.2.1.4.1 ส่วนเกินจากการปรับมูลค่า</xsl:variable>

      <xsl:variable name="name950063">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;                   4.2.1.4.2 หัก ส่วนต่ำจากการปรับมูลค่า</xsl:variable>

      <xsl:variable name="name950064">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;            4.2.1.5 หัก ค่าเผื่อการด้อยค่าของหลักทรัพย์</xsl:variable>

      <xsl:variable name="name950065">&#160;&#160;&#160;&#160;&#160;&#160;         4.2.2 ตราสารหนี้ที่จะถือจนครบกำหนด (สุทธิ)</xsl:variable>

      <xsl:variable name="name950066">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;            4.2.2.1 หลักทรัพย์รัฐบาลและรัฐวิสาหกิจ</xsl:variable>

      <xsl:variable name="name950067">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;            4.2.2.2 ตราสารหนี้ภาคเอกชน</xsl:variable>

      <xsl:variable name="name950068">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;          4.2.2.3 ตราสารหนี้ต่างประเทศ</xsl:variable>

      <xsl:variable name="name950069">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;             4.2.2.4 ตราสารหนี้อื่น</xsl:variable>

      <xsl:variable name="name950070">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;               4.2.2.5 เงินลงทุนในลูกหนี้ที่เป็นตราสารหนี้          </xsl:variable>

      <xsl:variable name="name950071">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;            4.2.2.6 หัก ค่าเผื่อการด้อยค่าของหลักทรัพย์</xsl:variable>

      <xsl:variable name="name950072">&#160;&#160;&#160;&#160;&#160;&#160;        4.2.3 เงินลงทุนทั่วไป  (สุทธิ)</xsl:variable>

      <xsl:variable name="name950073">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;              4.2.3.1 หลักทรัพย์จดทะเบียน</xsl:variable>

      <xsl:variable name="name950074">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;                4.2.3.2 หลักทรัพย์ต่างประเทศ</xsl:variable>

      <xsl:variable name="name950075">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;              4.2.3.3 หลักทรัพย์อื่น</xsl:variable>

      <xsl:variable name="name950076">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;               4.2.3.4 เงินลงทุนในลูกหนี้</xsl:variable>

      <xsl:variable name="name950077">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;                4.2.3.5 หัก ค่าเผื่อการด้อยค่าของหลักทรัพย์              </xsl:variable>

      <xsl:variable name="name950078">&#160;&#160;&#160;&#160;     4.3 เงินลงทุนในบริษัทย่อยและบริษัทร่วม (สุทธิ)</xsl:variable>

      <xsl:variable name="name950079">&#160;&#160;&#160;&#160;&#160;&#160;        4.3.1 เงินลงทุนในบริษัทย่อยและบริษัทร่วม</xsl:variable>

      <xsl:variable name="name950080">&#160;&#160;&#160;&#160;&#160;&#160;          4.3.2 หัก ค่าเผื่อการด้อยค่าของเงินลงทุน</xsl:variable>

      <xsl:variable name="name950081">&#160;   5. เงินให้สินเชื่อ (สุทธิ)</xsl:variable>

      <xsl:variable name="name950082">&#160;&#160;&#160;&#160;      5.1 เงินให้สินเชื่อ</xsl:variable>

      <xsl:variable name="name950083">&#160;&#160;&#160;&#160;&#160;&#160;             5.1.1 เงินบาท</xsl:variable>

      <xsl:variable name="name950084">&#160;&#160;&#160;&#160;&#160;&#160;              5.1.2 เงินตราต่างประเทศ</xsl:variable>

      <xsl:variable name="name950085">&#160;&#160;&#160;&#160;        5.2 ดอกเบี้ยค้างรับ /  รายได้สินเชื่อค้างรับ </xsl:variable>

      <xsl:variable name="name950086">&#160;&#160;&#160;&#160;      5.3 หัก รายได้รอการตัดบัญชี</xsl:variable>

      <xsl:variable name="name950087">&#160;&#160;&#160;&#160;      5.4 หัก ค่าเผื่อหนี้สงสัยจะสูญ</xsl:variable>

      <xsl:variable name="name950088">&#160;&#160;&#160;&#160;&#160;&#160;           5.4.1 สินเชื่อปกติและกล่าวถึงเป็นพิเศษ</xsl:variable>

      <xsl:variable name="name950089"> &#160;&#160;&#160;&#160;&#160;&#160;           5.4.2 สินเชื่อด้อยคุณภาพ</xsl:variable>

      <xsl:variable name="name950090">&#160;&#160;&#160;&#160;    5.5 หัก ค่าเผื่อการปรับมูลค่าจากการปรับโครงสร้างหนี้       </xsl:variable>

      <xsl:variable name="name950264">	      ลูกหนี้รอการชดใช้โครงการนโยบายรัฐ [เฉพาะ SFI ]</xsl:variable>

      <xsl:variable name="name950091"> &#160;&#160; 6. ทรัพย์สินรอการขาย (สุทธิ)</xsl:variable>

      <xsl:variable name="name950092">&#160;&#160;&#160;&#160;      6.1 ทรัพย์สินที่ได้จากการชำระหนี้              </xsl:variable>

      <xsl:variable name="name950093">&#160;&#160;&#160;&#160;&#160;&#160;    6.1.1 อสังหาริมทรัพย์</xsl:variable>

      <xsl:variable name="name950094">&#160;&#160;&#160;&#160;&#160;&#160;  6.1.2 สังหาริมทรัพย์</xsl:variable>

      <xsl:variable name="name950095"> &#160;&#160;&#160;&#160;  6.2 อื่น ๆ</xsl:variable>

      <xsl:variable name="name950096">&#160;&#160;&#160;&#160;  6.3 หัก ค่าเผื่อการลดราคา</xsl:variable>

      <xsl:variable name="name950097"> &#160;&#160;&#160;&#160;  6.4 หัก ค่าเผื่อการด้อยค่า</xsl:variable>

      <xsl:variable name="name950098">&#160;&#160;7. ภาระของลูกค้าจากการรับรอง</xsl:variable>

      <xsl:variable name="name950099">&#160;&#160;8. ภาระของลูกค้าจากการประกอบธุรกิจอื่น</xsl:variable>

      <xsl:variable name="name950100">&#160;&#160;9. ที่ดิน อาคาร และอุปกรณ์ (สุทธิ)</xsl:variable>

      <xsl:variable name="name950101">&#160;&#160;&#160;&#160;    9.1 ที่ดิน (สุทธิ)</xsl:variable>

      <xsl:variable name="name950102">&#160;&#160;&#160;&#160;&#160;&#160; 9.1.1 ราคาทุนเดิม</xsl:variable>

      <xsl:variable name="name950103">&#160;&#160;&#160;&#160;&#160;&#160;  9.1.2 ส่วนที่ตีราคาเพิ่ม</xsl:variable>

      <xsl:variable name="name950104">&#160;&#160;&#160;&#160;&#160;&#160; 9.1.3 หัก ค่าเผื่อการด้อยค่า</xsl:variable>

      <xsl:variable name="name950105">&#160;&#160;&#160;&#160; 9.2 อาคาร (สุทธิ)</xsl:variable>

      <xsl:variable name="name950106">&#160;&#160;&#160;&#160;&#160;&#160;  9.2.1 ราคาทุนเดิม</xsl:variable>

      <xsl:variable name="name950107">&#160;&#160;&#160;&#160;&#160;&#160; 9.2.2 ส่วนที่ตีราคาเพิ่ม</xsl:variable>

      <xsl:variable name="name950108">&#160;&#160;&#160;&#160;&#160;&#160; 9.2.3 หัก ค่าเสื่อมราคาสะสม</xsl:variable>

      <xsl:variable name="name950109">&#160;&#160;&#160;&#160;&#160;&#160; 9.2.4 หัก ค่าเผื่อการด้อยค่า</xsl:variable>

      <xsl:variable name="name950110">&#160;&#160;&#160;&#160;  9.3 อุปกรณ์ (สุทธิ)</xsl:variable>

      <xsl:variable name="name950111">&#160;&#160;&#160;&#160;&#160;&#160; 9.3.1 ราคาทุนเดิม</xsl:variable>

      <xsl:variable name="name950112">&#160;&#160;&#160;&#160;&#160;&#160; 9.3.2 หัก ค่าเสื่อมราคาสะสม</xsl:variable>

      <xsl:variable name="name950113">&#160;&#160;&#160;&#160;&#160;&#160; 9.3.3 หัก ค่าเผื่อการด้อยค่า</xsl:variable>

      <xsl:variable name="name950114">&#160;&#160;&#160;&#160;  9.4 อื่น ๆ (สุทธิ)</xsl:variable>

      <xsl:variable name="name950115">&#160;&#160;&#160;&#160;&#160;&#160;  9.4.1 ราคาทุนเดิม</xsl:variable>

      <xsl:variable name="name950116">&#160;&#160;&#160;&#160;&#160;&#160;      9.4.2 หัก ค่าเสื่อมราคาสะสม</xsl:variable>

      <xsl:variable name="name950117">&#160;&#160;&#160;&#160;&#160;&#160;     9.4.3 หัก ค่าเผื่อการด้อยค่า</xsl:variable>

      <xsl:variable name="name950118">&#160;&#160; 10. สินทรัพย์อื่น (สุทธิ)</xsl:variable>

      <xsl:variable name="name950119">&#160;&#160;&#160;&#160;  10.1 ค่าใช้จ่ายล่วงหน้าและรายจ่ายรอการตัดบัญชี      </xsl:variable>

      <xsl:variable name="name950120">&#160;&#160;&#160;&#160;  10.2 รายได้ค้างรับ</xsl:variable>

      <xsl:variable name="name950121">&#160;&#160;&#160;&#160;  10.3 ผลต่างบัญชีระหว่างกัน</xsl:variable>

      <xsl:variable name="name950122">&#160;&#160;&#160;&#160;  10.4 ลูกหนี้อื่น</xsl:variable>

      <xsl:variable name="name950123">&#160;&#160;&#160;&#160;    10.5 ภาษีเงินได้รอการตัด</xsl:variable>

      <xsl:variable name="name950124">&#160;&#160;&#160;&#160;  10.6 สิทธิการเช่าที่ดินและอาคารสุทธิ</xsl:variable>

      <xsl:variable name="name950125">&#160;&#160;&#160;&#160;  10.7 ผลต่างจากอัตราแลกเปลี่ยนของสัญญาซื้อขายเงินตราต่างประเทศล่วงหน้า      </xsl:variable>

      <xsl:variable name="name950126">&#160;&#160;&#160;&#160;   10.8 ลูกหนี้ภาษีมูลค่าเพิ่ม</xsl:variable>

      <xsl:variable name="name950127">&#160;&#160;&#160;&#160;   10.9 พักลูกหนี้</xsl:variable>

      <xsl:variable name="name950128">&#160;&#160;&#160;&#160;   10.10 เงินทดรองจ่าย</xsl:variable>

      <xsl:variable name="name950129">&#160;&#160;&#160;&#160;   10.11 ความเสียหายจากการทุจริต (สุทธิ)          </xsl:variable>

      <xsl:variable name="name950130">&#160;&#160;&#160;&#160;&#160;&#160;  10.11.1 ความเสียหายจากการทุจริต</xsl:variable>

      <xsl:variable name="name950131">&#160;&#160;&#160;&#160;&#160;&#160;  10.11.2 หัก ค่าเผื่อความเสียหายจากการทุจริต</xsl:variable>

      <xsl:variable name="name950132">&#160;&#160;&#160;&#160;    10.12 อื่น ๆ</xsl:variable>

      <xsl:variable name="name950133">&#160;&#160;&#160;&#160;   10.13 หัก ค่าเผื่อการด้อยค่า</xsl:variable>

      <xsl:variable name="name950134">	 หนี้สินและส่วนของผู้ถือหุ้น / ส่วนของสำนักงานใหญ่</xsl:variable>

      <xsl:variable name="name950263">	  หนี้สิน</xsl:variable>

      <xsl:variable name="name950135">&#160;&#160;11. เงินรับฝาก (หักส่วนลดจ่ายรอตัดบัญชี)</xsl:variable>

      <xsl:variable name="name950136">&#160;&#160;&#160;&#160;    11.1 บัญชีเงินรับฝากกระแสรายวัน</xsl:variable>

      <xsl:variable name="name950137">&#160;&#160;&#160;&#160;    11.2 บัญชีเงินรับฝากออมทรัพย์</xsl:variable>

      <xsl:variable name="name950138">&#160;&#160;&#160;&#160;   11.3 บัญชีเงินรับฝากจ่ายคืนเมื่อสิ้นระยะเวลา (ไม่รวมบัตรเงินฝาก)     </xsl:variable>

      <xsl:variable name="name950139">&#160;&#160;&#160;&#160;   11.4 ตั๋วสัญญาใช้เงิน / ตั๋วแลกเงิน</xsl:variable>

      <xsl:variable name="name950140">&#160;&#160;&#160;&#160;    11.5 บัตรเงินฝาก</xsl:variable>

      <xsl:variable name="name950141">&#160;&#160; 12. รายการระหว่างธนาคารและตลาดเงิน (หักส่วนลดจ่ายรอตัดบัญชี)</xsl:variable>

      <xsl:variable name="name950142">&#160;&#160;&#160;&#160;    12.1 ในประเทศ</xsl:variable>

      <xsl:variable name="name950143">&#160;&#160;&#160;&#160;&#160;&#160;   12.1.1 เงินรับฝาก</xsl:variable>

      <xsl:variable name="name950144">&#160;&#160;&#160;&#160;&#160;&#160;   12.1.2 เงินกู้ยืม</xsl:variable>

      <xsl:variable name="name950145">&#160;&#160;&#160;&#160;  12.2 ต่างประเทศ</xsl:variable>

      <xsl:variable name="name950146">&#160;&#160;&#160;&#160;&#160;&#160;    12.2.1 เงินรับฝาก</xsl:variable>

      <xsl:variable name="name950147">&#160;&#160;&#160;&#160;&#160;&#160;  12.2.2 เงินกู้ยืม</xsl:variable>

      <xsl:variable name="name950148">&#160;&#160;  13. หนี้สินจ่ายคืนเมื่อทวงถาม</xsl:variable>

      <xsl:variable name="name950149">&#160;&#160;&#160;&#160;    13.1 เช็คธนาคาร</xsl:variable>

      <xsl:variable name="name950150">&#160;&#160;&#160;&#160;   13.2 ดราฟต์และเงินโอนอื่น</xsl:variable>

      <xsl:variable name="name950151">&#160;&#160;14. หลักทรัพย์ขายโดยมีสัญญาซื้อคืน</xsl:variable>

      <xsl:variable name="name950152">&#160;&#160; 15. เงินกู้ยืม (หักส่วนลดจ่ายรอตัดบัญชี)</xsl:variable>

      <xsl:variable name="name950153">&#160;&#160;&#160;&#160;   15.1 เงินกู้ยืมที่เป็นเงินบาท</xsl:variable>

      <xsl:variable name="name950154">&#160;&#160;&#160;&#160;&#160;&#160;  15.1.1 เงินกู้ยืม</xsl:variable>

      <xsl:variable name="name950155">&#160;&#160;&#160;&#160;&#160;&#160;   15.1.2 หุ้นกู้และตราสารหนี้</xsl:variable>

      <xsl:variable name="name950156">&#160;&#160;&#160;&#160;   15.2 เงินกู้ยืมที่เป็นเงินตราต่างประเทศ</xsl:variable>

      <xsl:variable name="name950157">&#160;&#160;&#160;&#160;&#160;&#160;   15.2.1 เงินกู้ยืม</xsl:variable>

      <xsl:variable name="name950158">&#160;&#160;&#160;&#160;&#160;&#160; 15.2.2 หุ้นกู้และตราสารหนี้</xsl:variable>

      <xsl:variable name="name950159">&#160;&#160;  16. ภาระของสถาบันการเงินจากการรับรอง</xsl:variable>

      <xsl:variable name="name950160">&#160;&#160;  17. ภาระของสถาบันการเงินจากการขายลูกหนี้ตั๋วเงิน</xsl:variable>

      <xsl:variable name="name950161">&#160;&#160;   18. ภาระของสถาบันการเงินที่ต้องส่งคืนหลักประกัน</xsl:variable>

      <xsl:variable name="name950265">&#160;&#160;   เจ้าหนี้โครงการรัฐบาล [เฉพาะ SFI]</xsl:variable>

      <xsl:variable name="name950266">&#160;&#160;   เงินอุดหนุนจากรัฐบาลและหน่วยงาน รอการรับรู้เป็นรายได้ [เฉพาะ SFI]</xsl:variable>

      <xsl:variable name="name950162">&#160;&#160;  19. หนี้สินอื่น</xsl:variable>

      <xsl:variable name="name950163">&#160;&#160;&#160;&#160;  19.1 เงินมัดจำและเงินประกัน</xsl:variable>

      <xsl:variable name="name950164">&#160;&#160;&#160;&#160;  19.2 ค่าใช้จ่ายค้างจ่าย</xsl:variable>

      <xsl:variable name="name950165"> &#160;&#160;&#160;&#160;  19.3 ผลต่างบัญชีระหว่างกัน</xsl:variable>

      <xsl:variable name="name950166">&#160;&#160;&#160;&#160;   19.4 ภาษีเงินได้รอการตัด</xsl:variable>

      <xsl:variable name="name950167">&#160;&#160;&#160;&#160;      19.5 เงินทุนเลี้ยงชีพและบำเหน็จ</xsl:variable>

      <xsl:variable name="name950168">&#160;&#160;&#160;&#160;   19.6 ผลต่างจากอัตราแลกเปลี่ยนของสัญญาซื้อขายเงินตราต่างประเทศล่วงหน้า</xsl:variable>

      <xsl:variable name="name950169">&#160;&#160;&#160;&#160;    19.7 เจ้าหนี้ภาษีมูลค่าเพิ่ม</xsl:variable>

      <xsl:variable name="name950170">&#160;&#160;&#160;&#160;  19.8 ภาษีหัก ณ ที่จ่ายที่ยังไม่ได้นำส่ง</xsl:variable>

      <xsl:variable name="name950171">&#160;&#160;&#160;&#160;  19.9 พักเจ้าหนี้</xsl:variable>

      <xsl:variable name="name950172">&#160;&#160;&#160;&#160;  19.10 ดอกเบี้ยค้างจ่าย / เงินปันผลกำไรค้างจ่าย</xsl:variable>

      <xsl:variable name="name950173">&#160;&#160;&#160;&#160;   19.11 เจ้าหนี้อื่น</xsl:variable>

      <xsl:variable name="name950174">&#160;&#160;&#160;&#160;   19.12 อื่น ๆ</xsl:variable>

      <xsl:variable name="name950900">	  ส่วนของผู้ถือหุ้น</xsl:variable>

      <xsl:variable name="name950175">&#160;&#160; 20. ส่วนของผู้ถือหุ้น</xsl:variable>

      <xsl:variable name="name950176">&#160;&#160;&#160;&#160;    20.1 ทุนจดทะเบียนที่ออกและชำระแล้ว (กรณีสถาบันการเงินเฉพาะกิจที่มีการจัดสรรส่วนผู้ถือหุ้นเป็นทุนเรือนหุ้น)  </xsl:variable>

      <xsl:variable name="name950177">&#160;&#160;&#160;&#160;&#160;&#160;    20.1.1 หุ้นบุริมสิทธิ</xsl:variable>

      <xsl:variable name="name950178">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 20.1.1.1 หุ้นบุริมสิทธิชนิดสะสมเงินปันผลที่ชำระแล้ว             </xsl:variable>

      <xsl:variable name="name950179">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 20.1.1.2 หุ้นบุริมสิทธิชนิดไม่สะสมเงินปันผลที่ชำระแล้ว    </xsl:variable>

      <xsl:variable name="name950180">&#160;&#160;&#160;&#160;&#160;&#160;   20.1.2 หุ้นสามัญที่ชำระแล้ว</xsl:variable>

      <xsl:variable name="name950181">&#160;&#160;&#160;&#160;     20.2 ใบสำคัญแสดงสิทธิที่จะซื้อหุ้น (กรณีสถาบันการเงินเฉพาะกิจที่มีการจัดสรรส่วนผู้ถือหุ้นเป็นทุนเรือนหุ้น)</xsl:variable>

      <xsl:variable name="name950182">&#160;&#160;&#160;&#160;   20.3 หัก หุ้นทุนซื้อคืน (กรณีสถาบันการเงินเฉพาะกิจที่มีการจัดสรรส่วนผู้ถือหุ้นเป็นทุนเรือนหุ้น)</xsl:variable>

      <xsl:variable name="name950183">&#160;&#160;&#160;&#160;  20.4 ส่วนเกิน (ต่ำกว่า) มูลค่าหุ้น (กรณีสถาบันการเงินเฉพาะกิจที่มีการจัดสรรส่วนผู้ถือหุ้นเป็นทุนเรือนหุ้น)</xsl:variable>

      <xsl:variable name="name950184">&#160;&#160;&#160;&#160;&#160;&#160;  20.4.1 ส่วนเกิน (ต่ำกว่า) มูลค่าหุ้นบุริมสิทธิ</xsl:variable>

      <xsl:variable name="name950185">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;  20.4.1.1 ส่วนเกิน (ต่ำกว่า) มูลค่าหุ้นบุริมสิทธิชนิดสะสมเงินปันผล      </xsl:variable>

      <xsl:variable name="name950186">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;  20.4.1.2 ส่วนเกิน (ต่ำกว่า) มูลค่าหุ้นบุริมสิทธิชนิดไม่สะสมเงินปันผล</xsl:variable>

      <xsl:variable name="name950187">&#160;&#160;&#160;&#160;&#160;&#160; 20.4.2 ส่วนเกิน (ต่ำกว่า) มูลค่าหุ้นสามัญ</xsl:variable>

      <xsl:variable name="name950188">&#160;&#160;&#160;&#160;&#160;&#160; 20.4.3 ส่วนเกินทุนหุ้นทุนซื้อคืนหุ้นบุริมสิทธิ</xsl:variable>

      <xsl:variable name="name950189">&#160;&#160;&#160;&#160;&#160;&#160;   20.4.4 ส่วนเกินทุนหุ้นทุนซื้อคืนหุ้นสามัญ</xsl:variable>

      <xsl:variable name="name950190">&#160;&#160;&#160;&#160;  20.5  ส่วนเกินทุนจากการตีราคาทรัพย์สิน</xsl:variable>

      <xsl:variable name="name950191">&#160;&#160;&#160;&#160;&#160;&#160; 20.5.1 ส่วนเกินจากการตีราคาที่ดิน</xsl:variable>

      <xsl:variable name="name950192">&#160;&#160;&#160;&#160;&#160;&#160; 20.5.2 ส่วนเกินจากการตีราคาอาคาร</xsl:variable>

      <xsl:variable name="name950193">&#160;&#160;&#160;&#160;   20.6 ส่วนเกิน(ต่ำกว่า)ทุนจากการเปลี่ยนแปลงมูลค่าเงินลงทุน           </xsl:variable>

      <xsl:variable name="name950194">&#160;&#160;&#160;&#160;&#160;&#160;  20.6.1 ส่วนเกินทุนที่เกิดจากการเปลี่ยนแปลงมูลค่าของเงินลงทุน</xsl:variable>

      <xsl:variable name="name950195">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;        20.6.1.1 ส่วนเกินทุนที่เกิดจากการเปลี่ยนแปลงมูลค่าของตราสารทุน</xsl:variable>

      <xsl:variable name="name950196">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;     20.6.1.2 ส่วนเกินทุนที่เกิดจากการเปลี่ยนแปลงมูลค่าของตราสารหนี้</xsl:variable>

      <xsl:variable name="name950197">&#160;&#160;&#160;&#160;&#160;&#160;  20.6.2 หัก ส่วนต่ำกว่าทุนที่เกิดจากการเปลี่ยนแปลงมูลค่าของเงินลงทุน</xsl:variable>

      <xsl:variable name="name950198">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;          20.6.2.1 หัก ส่วนต่ำกว่าทุนที่เกิดจากการเปลี่ยนแปลงมูลค่าของตราสารทุน</xsl:variable>

      <xsl:variable name="name950199">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;        20.6.2.2 หัก ส่วนต่ำกว่าทุนที่เกิดจากการเปลี่ยนแปลงมูลค่าของตราสารหนี้</xsl:variable>

      <xsl:variable name="name950200">&#160;&#160;&#160;&#160;  20.7 ผลต่างจากการแปลงค่างบการเงิน</xsl:variable>

      <xsl:variable name="name950201">&#160;&#160;&#160;&#160;  20.8 กำไร (ขาดทุน) สะสม</xsl:variable>

      <xsl:variable name="name950202">&#160;&#160;&#160;&#160;&#160;&#160; 20.8.1 กำไรสะสมจัดสรรแล้ว</xsl:variable>

      <xsl:variable name="name950203">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;         20.8.1.1 สำรองตามกฏหมาย</xsl:variable>

      <xsl:variable name="name950204">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;       20.8.1.2 สำรองอื่น ๆ</xsl:variable>

      <xsl:variable name="name950205">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;     20.8.1.3 คงเหลือหลังจากการจัดสรร</xsl:variable>

      <xsl:variable name="name950206">&#160;&#160;&#160;&#160;&#160;&#160;  20.8.2 กำไร (ขาดทุน) สะสมที่ยังไม่จัดสรร</xsl:variable>

      <xsl:variable name="name950207">&#160;&#160;&#160;&#160;&#160;&#160;  20.8.3 กำไร (ขาดทุน) สุทธิงวดบัญชีก่อนที่ยังไม่ได้จัดสรร       </xsl:variable>

      <xsl:variable name="name950208">&#160;&#160;&#160;&#160;&#160;&#160; 20.8.4 กำไร (ขาดทุน) ระหว่างงวด</xsl:variable>

      <xsl:variable name="name950209">&#160;&#160;&#160;&#160;&#160;&#160;  20.8.5 อื่น ๆ</xsl:variable>

      <xsl:variable name="name950210">&#160;&#160;&#160;&#160;   20.9 ส่วนของผู้ถือหุ้นส่วนน้อย</xsl:variable>

      <xsl:variable name="name950267">	         ทุนประเดิม หรือเงินทุนรับโอนจากรัฐบาล [เฉพาะ SFI]          </xsl:variable>

      <xsl:variable name="name950268">	         ส่วนเกินทุนจากการบริจาค [เฉพาะ SFI]</xsl:variable>

      <xsl:variable name="name950269">	         เงินอุดหนุนจากรัฐบาลเพื่อการลงทุน [เฉพาะ SFI]</xsl:variable>

      <xsl:variable name="name950233">	   รายการนอกงบดุล ? ภาระผูกพันทั้งสิ้น</xsl:variable>

      <xsl:variable name="name950234">&#160;&#160;  21. การรับอาวัลตั๋วเงิน และการค้ำประกันการกู้ยืมเงิน             </xsl:variable>

      <xsl:variable name="name950235">&#160;&#160; 22. ภาระตามตั๋วเงินค่าสินค้าเข้าที่ยังไม่ครบกำหนด</xsl:variable>

      <xsl:variable name="name950236">&#160;&#160;  23. การขายลูกหนี้ตั๋วเงินที่ผู้ซื้อมีสิทธิไล่เบี้ย (Commercial papers sold with recourse)     </xsl:variable>

      <xsl:variable name="name950237">&#160;&#160;  24. เล็ตเตอร์ออฟเครดิต</xsl:variable>

      <xsl:variable name="name950238">&#160;&#160;  25. ตราสารอนุพันธ์ทางการเงิน</xsl:variable>

      <xsl:variable name="name950239">&#160;&#160; 26. ภาระผูกพันอื่น</xsl:variable>

      <xsl:variable name="name950240">	   รายละเอียดของทุนจดทะเบียน</xsl:variable>

      <xsl:variable name="name950241">&#160;&#160;  27. ทุนจดทะเบียน</xsl:variable>

      <xsl:variable name="name950242">&#160;&#160;&#160;&#160;     27.1 หุ้นบุริมสิทธิ</xsl:variable>

      <xsl:variable name="name950243"> &#160;&#160;&#160;&#160;&#160;&#160;   27.1.1 หุ้นบุริมสิทธิชนิดสะสมเงินปันผล</xsl:variable>

      <xsl:variable name="name950244">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;      27.1.1.1 จำนวนหุ้น (หุ้น)</xsl:variable>

      <xsl:variable name="name950245">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;     27.1.1.2 มูลค่าที่ตราไว้ (บาท)</xsl:variable>

      <xsl:variable name="name950246">&#160;&#160;&#160;&#160;&#160;&#160;    27.1.2 หุ้นบุริมสิทธิชนิดไม่สะสมเงินปันผล</xsl:variable>

      <xsl:variable name="name950247">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;    27.1.2.1 จำนวนหุ้น (หุ้น)</xsl:variable>

      <xsl:variable name="name950248">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;    27.1.2.2 มูลค่าที่ตราไว้ (บาท)</xsl:variable>

      <xsl:variable name="name950249">&#160;&#160;&#160;&#160;27.2 หุ้นสามัญ</xsl:variable>

      <xsl:variable name="name950250">&#160;&#160;&#160;&#160;&#160;&#160;  27.2.1 จำนวนหุ้น (หุ้น)</xsl:variable>

      <xsl:variable name="name950251">&#160;&#160;&#160;&#160;&#160;&#160;   27.2.2 มูลค่าที่ตราไว้ (บาท)</xsl:variable>

      <xsl:variable name="name950252">&#160;&#160;28. ทุน(จดทะเบียน)ที่ออกและชำระแล้ว</xsl:variable>

      <xsl:variable name="name950253">&#160;&#160;&#160;&#160;   28.1 หุ้นบุริมสิทธิ</xsl:variable>

      <xsl:variable name="name950254">&#160;&#160;&#160;&#160;&#160;&#160; 28.1.1 หุ้นบุริมสิทธิชนิดสะสมเงินปันผล              </xsl:variable>

      <xsl:variable name="name950255">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;    28.1.1.1 จำนวนหุ้น (หุ้น)</xsl:variable>

      <xsl:variable name="name950256">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;   28.1.1.2 มูลค่าที่ตราไว้ (บาท)</xsl:variable>

      <xsl:variable name="name950257">&#160;&#160;&#160;&#160;&#160;&#160; 28.1.2 หุ้นบุริมสิทธิชนิดไม่สะสมเงินปันผล</xsl:variable>

      <xsl:variable name="name950258">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;    28.1.2.1 จำนวนหุ้น (หุ้น)</xsl:variable>

      <xsl:variable name="name950259">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;     28.1.2.2 มูลค่าที่ตราไว้ (บาท)</xsl:variable>

      <xsl:variable name="name950260">&#160;&#160;&#160;&#160;   28.2 หุ้นสามัญ</xsl:variable>

      <xsl:variable name="name950261">&#160;&#160;&#160;&#160;&#160;&#160;  28.2.1 จำนวนหุ้น (หุ้น)</xsl:variable>

      <xsl:variable name="name950262">&#160;&#160;&#160;&#160;&#160;&#160;  28.2.2 มูลค่าที่ตราไว้ (บาท)</xsl:variable>



            <!--rowUp-->
                <!--<xsl:for-each select="DS_BLS/DS_BLS_Content/ContentRecordGroup">-->
                <xsl:variable name="BalanceSheetAmount950005"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950005/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950006"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950006/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950004"><xsl:value-of select="$BalanceSheetAmount950005 + $BalanceSheetAmount950006"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950007"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950007/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950003"><xsl:value-of select="$TotalBalanceSheetAmount950004 + $BalanceSheetAmount950007"/></xsl:variable>

                <xsl:variable name="BalanceSheetAmount950010"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950010/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950011"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950011/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950009"><xsl:value-of select="$BalanceSheetAmount950010 + $BalanceSheetAmount950011"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950013"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950013/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950014"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950014/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950012"><xsl:value-of select="$BalanceSheetAmount950013 + $BalanceSheetAmount950014"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950015"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950015/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950016"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950016/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950017"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950017/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950008"><xsl:value-of select="$TotalBalanceSheetAmount950009 + $TotalBalanceSheetAmount950012 + $BalanceSheetAmount950015 - $BalanceSheetAmount950016 - $BalanceSheetAmount950017"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950018"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950018/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                 <!--4.1.1-->
                <xsl:variable name="BalanceSheetAmount950022"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950022/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950023"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950023/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950024"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950024/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950026"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950026/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950027"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950027/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950025"><xsl:value-of select="$BalanceSheetAmount950026 - $BalanceSheetAmount950027"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950021"><xsl:value-of select="$BalanceSheetAmount950022 + $BalanceSheetAmount950023 + $BalanceSheetAmount950024  + $TotalBalanceSheetAmount950025"/></xsl:variable>
                <!--4.1.2-->
                <xsl:variable name="BalanceSheetAmount950029"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950029/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950030"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950030/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950031"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950031/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950035"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950035/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950033"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950033/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950034"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950034/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950032"><xsl:value-of select="$BalanceSheetAmount950033 - $BalanceSheetAmount950034"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950028"><xsl:value-of select="$BalanceSheetAmount950029 + $BalanceSheetAmount950030 + $BalanceSheetAmount950031  + $TotalBalanceSheetAmount950032 - $BalanceSheetAmount950035"/></xsl:variable>
                <!--4.1.3-->
                <xsl:variable name="BalanceSheetAmount950037"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950037/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950038"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950038/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950039"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950039/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950040"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950040/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950041"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950041/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950042"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950042/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950036"><xsl:value-of select="$BalanceSheetAmount950037 + $BalanceSheetAmount950038 + $BalanceSheetAmount950039  + $BalanceSheetAmount950040 + $BalanceSheetAmount950041 - $BalanceSheetAmount950042"/></xsl:variable>
                <!--4.1.4-->
                <xsl:variable name="BalanceSheetAmount950044"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950044/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950045"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950045/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950046"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950046/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950047"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950047/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950048"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950048/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950043"><xsl:value-of select="$BalanceSheetAmount950044 + $BalanceSheetAmount950045 + $BalanceSheetAmount950046  + $BalanceSheetAmount950047 - $BalanceSheetAmount950048"/></xsl:variable>
                <!--4.1-->
                <xsl:variable name="TotalBalanceSheetAmount950020"><xsl:value-of select="$TotalBalanceSheetAmount950021 + $TotalBalanceSheetAmount950028 + $TotalBalanceSheetAmount950036 + $TotalBalanceSheetAmount950043"/></xsl:variable>
                <!--4.2.1-->
                <xsl:variable name="BalanceSheetAmount950052"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950052/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950053"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950053/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950054"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950054/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950051"><xsl:value-of select="$BalanceSheetAmount950052 + $BalanceSheetAmount950053 + $BalanceSheetAmount950054"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950056"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950056/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950057"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950057/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950058"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950058/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950059"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950059/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950055"><xsl:value-of select="$BalanceSheetAmount950056 + $BalanceSheetAmount950057 + $BalanceSheetAmount950058 + $BalanceSheetAmount950059"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950062"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950062/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950063"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950063/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950061"><xsl:value-of select="$BalanceSheetAmount950062 - $BalanceSheetAmount950063"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950060"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950060/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950064"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950064/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950050"><xsl:value-of select="$TotalBalanceSheetAmount950051 + $TotalBalanceSheetAmount950055 + $BalanceSheetAmount950060 + $TotalBalanceSheetAmount950061 - $BalanceSheetAmount950064"/></xsl:variable>
                <!--4.2.2-->
                <xsl:variable name="BalanceSheetAmount950066"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950066/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950067"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950067/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950068"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950068/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950069"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950069/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950070"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950070/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950071"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950071/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950065"><xsl:value-of select="$BalanceSheetAmount950066 + $BalanceSheetAmount950067 + $BalanceSheetAmount950068 + $BalanceSheetAmount950069 + $BalanceSheetAmount950070 - $BalanceSheetAmount950071"/></xsl:variable>
                <!--4.2.3-->
                <xsl:variable name="BalanceSheetAmount950073"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950073/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950074"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950074/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950075"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950075/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950076"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950076/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950077"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950077/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950072"><xsl:value-of select="$BalanceSheetAmount950073 + $BalanceSheetAmount950074 + $BalanceSheetAmount950075 + $BalanceSheetAmount950076 - $BalanceSheetAmount950077"/></xsl:variable>
                <!--4.2-->
                <xsl:variable name="TotalBalanceSheetAmount950049"><xsl:value-of select="$TotalBalanceSheetAmount950050 + $TotalBalanceSheetAmount950065 + $TotalBalanceSheetAmount950072"/></xsl:variable>
                <!--4.3-->
                <xsl:variable name="BalanceSheetAmount950079"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950079/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950080"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950080/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950078"><xsl:value-of select="$BalanceSheetAmount950079 - $BalanceSheetAmount950080"/></xsl:variable>
                <!--4.-->
                <xsl:variable name="TotalBalanceSheetAmount950019"><xsl:value-of select="$TotalBalanceSheetAmount950020 + $TotalBalanceSheetAmount950049 + $TotalBalanceSheetAmount950078"/></xsl:variable>
                <!--5.-->
                <xsl:variable name="BalanceSheetAmount950083"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950083/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950084"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950084/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950082"><xsl:value-of select="$BalanceSheetAmount950083 + $BalanceSheetAmount950084"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950085"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950085/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950086"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950086/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950088"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950088/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950089"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950089/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950087"><xsl:value-of select="$BalanceSheetAmount950088 + $BalanceSheetAmount950089"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950090"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950090/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
				<xsl:variable name="BalanceSheetAmount950264"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950264/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950081"><xsl:value-of select="$TotalBalanceSheetAmount950082 + $BalanceSheetAmount950085 - $BalanceSheetAmount950086 - $TotalBalanceSheetAmount950087 - $BalanceSheetAmount950090"/></xsl:variable>
                <!--6.-->
                <xsl:variable name="BalanceSheetAmount950093"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950093/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950094"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950094/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950092"><xsl:value-of select="$BalanceSheetAmount950093 + $BalanceSheetAmount950094"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950095"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950095/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950096"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950096/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950097"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950097/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950091"><xsl:value-of select="$TotalBalanceSheetAmount950092 + $BalanceSheetAmount950095 - $BalanceSheetAmount950096 - $BalanceSheetAmount950097"/></xsl:variable>
                <!--7.-->
                <xsl:variable name="BalanceSheetAmount950098"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950098/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <!--8.-->
                <xsl:variable name="BalanceSheetAmount950099"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950099/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <!--9.-->
                <xsl:variable name="BalanceSheetAmount950102"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950102/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950103"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950103/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950104"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950104/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950101"><xsl:value-of select="$BalanceSheetAmount950102 + $BalanceSheetAmount950103 - $BalanceSheetAmount950104"/></xsl:variable>

                <xsl:variable name="BalanceSheetAmount950106"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950106/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950107"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950107/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950108"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950108/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950109"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950109/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950105"><xsl:value-of select="$BalanceSheetAmount950106 + $BalanceSheetAmount950107 - $BalanceSheetAmount950108 - $BalanceSheetAmount950109"/></xsl:variable>

                <xsl:variable name="BalanceSheetAmount950111"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950111/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950112"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950112/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950113"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950113/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950110"><xsl:value-of select="$BalanceSheetAmount950111 - $BalanceSheetAmount950112 - $BalanceSheetAmount950113"/></xsl:variable>

                <xsl:variable name="BalanceSheetAmount950115"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950115/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950116"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950116/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950117"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950117/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950114"><xsl:value-of select="$BalanceSheetAmount950115 - $BalanceSheetAmount950116 - $BalanceSheetAmount950117"/></xsl:variable>

                <xsl:variable name="TotalBalanceSheetAmount950100"><xsl:value-of select="$TotalBalanceSheetAmount950101 + $TotalBalanceSheetAmount950105 + $TotalBalanceSheetAmount950110 + $TotalBalanceSheetAmount950114"/></xsl:variable>

                <!--10.-->
                <!--950119+950120+950121+950122+950123+950124+950125+950126+950127+950128+950130-950131+950132-950133-->
                <xsl:variable name="BalanceSheetAmount950119"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950119/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950120"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950120/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950121"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950121/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950122"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950122/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950123"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950123/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950124"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950124/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950125"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950125/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950126"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950126/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950127"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950127/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950128"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950128/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>

                <xsl:variable name="BalanceSheetAmount950130"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950130/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950131"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950131/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950129"><xsl:value-of select="$BalanceSheetAmount950130 - $BalanceSheetAmount950131"/></xsl:variable>

                <xsl:variable name="BalanceSheetAmount950132"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950132/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950133"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950133/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950118"><xsl:value-of select="$BalanceSheetAmount950119 + $BalanceSheetAmount950120 + $BalanceSheetAmount950121 + $BalanceSheetAmount950122 + $BalanceSheetAmount950123 + $BalanceSheetAmount950124 + $BalanceSheetAmount950125 + $BalanceSheetAmount950126 + $BalanceSheetAmount950127 + $BalanceSheetAmount950128 + $TotalBalanceSheetAmount950129 + $BalanceSheetAmount950132 - $BalanceSheetAmount950133"/></xsl:variable>
                <!--11.-->
                <!--950136+950137+950138+950139+950140-->
                <xsl:variable name="BalanceSheetAmount950136"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950136/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950137"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950137/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950138"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950138/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950139"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950139/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950140"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950140/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950135"><xsl:value-of select="$BalanceSheetAmount950136 + $BalanceSheetAmount950137 + $BalanceSheetAmount950138 + $BalanceSheetAmount950139 + $BalanceSheetAmount950140"/></xsl:variable>
                <!--12.-->
                 <!--950143+950144-->
                <xsl:variable name="BalanceSheetAmount950143"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950143/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950144"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950144/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950142"><xsl:value-of select="$BalanceSheetAmount950143 + $BalanceSheetAmount950144"/></xsl:variable>

                <xsl:variable name="BalanceSheetAmount950146"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950146/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950147"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950147/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950145"><xsl:value-of select="$BalanceSheetAmount950146 + $BalanceSheetAmount950147"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950141"><xsl:value-of select="$TotalBalanceSheetAmount950142 + $TotalBalanceSheetAmount950145"/></xsl:variable>
                <!--13.-->
                <xsl:variable name="BalanceSheetAmount950149"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950149/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950150"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950150/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950148"><xsl:value-of select="$BalanceSheetAmount950149 + $BalanceSheetAmount950150"/></xsl:variable>
                <!--14.-->
                <xsl:variable name="BalanceSheetAmount950151"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950151/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <!--15.-->
                <xsl:variable name="BalanceSheetAmount950154"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950154/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950155"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950155/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950153"><xsl:value-of select="$BalanceSheetAmount950154 + $BalanceSheetAmount950155"/></xsl:variable>

                <xsl:variable name="BalanceSheetAmount950157"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950157/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950158"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950158/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950156"><xsl:value-of select="$BalanceSheetAmount950157 + $BalanceSheetAmount950158"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950152"><xsl:value-of select="$TotalBalanceSheetAmount950153 + $TotalBalanceSheetAmount950156"/></xsl:variable>
                <!--16.-->
                <xsl:variable name="BalanceSheetAmount950159"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950159/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <!--17.-->
                <xsl:variable name="BalanceSheetAmount950160"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950160/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <!--18.-->
                <xsl:variable name="BalanceSheetAmount950161"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950161/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>

                <!--265,266-->
                <xsl:variable name="BalanceSheetAmount950265"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950265/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950266"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950266/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <!--19.-->
                <xsl:variable name="BalanceSheetAmount950163"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950163/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950164"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950164/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950165"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950165/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950166"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950166/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950167"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950167/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950168"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950168/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950169"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950169/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950170"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950170/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950171"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950171/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950172"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950172/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950173"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950173/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950174"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950174/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950162"><xsl:value-of select="$BalanceSheetAmount950163 + $BalanceSheetAmount950164 + $BalanceSheetAmount950165 + $BalanceSheetAmount950166 + $BalanceSheetAmount950167 + $BalanceSheetAmount950168 + $BalanceSheetAmount950169 + $BalanceSheetAmount950170 + $BalanceSheetAmount950171 + $BalanceSheetAmount950172 + $BalanceSheetAmount950173 + $BalanceSheetAmount950174"/></xsl:variable>

                <xsl:variable name="TotalBalanceSheetAmount950263"><xsl:value-of select="$TotalBalanceSheetAmount950135 + $TotalBalanceSheetAmount950141 + $TotalBalanceSheetAmount950148 + $BalanceSheetAmount950151 + $TotalBalanceSheetAmount950152 + $BalanceSheetAmount950159 + $BalanceSheetAmount950160 + $BalanceSheetAmount950161 + $BalanceSheetAmount950265 + $BalanceSheetAmount950266 + $TotalBalanceSheetAmount950162 "/></xsl:variable>

                <!--20.-->
                <xsl:variable name="BalanceSheetAmount950178"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950178/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950179"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950179/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950177"><xsl:value-of select="$BalanceSheetAmount950178 + $BalanceSheetAmount950179"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950180"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950180/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950176"><xsl:value-of select="$TotalBalanceSheetAmount950177+ $BalanceSheetAmount950180"/></xsl:variable>

                <xsl:variable name="BalanceSheetAmount950181"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950181/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950182"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950182/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <!--20.4-->
                <xsl:variable name="BalanceSheetAmount950185"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950185/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950186"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950186/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950184"><xsl:value-of select="$BalanceSheetAmount950185 + $BalanceSheetAmount950186"/></xsl:variable>

                <xsl:variable name="BalanceSheetAmount950187"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950187/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950188"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950188/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950189"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950189/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950183"><xsl:value-of select="$TotalBalanceSheetAmount950184 + $BalanceSheetAmount950187 + $BalanceSheetAmount950188 + $BalanceSheetAmount950189"/></xsl:variable>
                <!--20.5-->
                <xsl:variable name="BalanceSheetAmount950191"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950191/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950192"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950192/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950190"><xsl:value-of select="$BalanceSheetAmount950191 + $BalanceSheetAmount950192"/></xsl:variable>
                <!--20.6-->
                <xsl:variable name="BalanceSheetAmount950195"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950195/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950196"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950196/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950194"><xsl:value-of select="$BalanceSheetAmount950195 + $BalanceSheetAmount950196"/></xsl:variable>

                <xsl:variable name="BalanceSheetAmount950198"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950198/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950199"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950199/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950197"><xsl:value-of select="$BalanceSheetAmount950198 + $BalanceSheetAmount950199"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950193"><xsl:value-of select="$TotalBalanceSheetAmount950194 - $TotalBalanceSheetAmount950197"/></xsl:variable>
                <!--20.7-->
                <xsl:variable name="BalanceSheetAmount950200"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950200/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <!--20.8-->
                <xsl:variable name="BalanceSheetAmount950203"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950203/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950204"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950204/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950205"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950205/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950202"><xsl:value-of select="$BalanceSheetAmount950203 + $BalanceSheetAmount950204 + $BalanceSheetAmount950205 "/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950206"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950206/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950207"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950207/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950208"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950208/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950209"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950209/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950201"><xsl:value-of select="$TotalBalanceSheetAmount950202 + $BalanceSheetAmount950206 + $BalanceSheetAmount950207 + $BalanceSheetAmount950208 + $BalanceSheetAmount950209 "/></xsl:variable>
                <!--20.9-->
                <xsl:variable name="BalanceSheetAmount950210"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950210/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950267"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950267/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950268"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950268/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950269"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950269/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>

				<xsl:variable name="TotalBalanceSheetAmount950175"><xsl:value-of select="$TotalBalanceSheetAmount950176 + $BalanceSheetAmount950181 - $BalanceSheetAmount950182 + $TotalBalanceSheetAmount950183 + $TotalBalanceSheetAmount950190 + $TotalBalanceSheetAmount950193 + $BalanceSheetAmount950200 + $TotalBalanceSheetAmount950201 + $BalanceSheetAmount950210"/></xsl:variable>
				<!--950900ส่วนของผู้ถือหุ้น--> 
			    <xsl:variable name="TotalBalanceSheetAmount950900"><xsl:value-of select="$TotalBalanceSheetAmount950175 + $BalanceSheetAmount950267 + $BalanceSheetAmount950268 + $BalanceSheetAmount950269"/></xsl:variable>
               
			   <!---->
                <xsl:variable name="BalanceSheetAmount950234"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950234/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950235"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950235/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950236"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950236/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950237"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950237/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950238"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950238/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950239"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950239/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950233"><xsl:value-of select="$BalanceSheetAmount950234 + $BalanceSheetAmount950235 + $BalanceSheetAmount950236 + $BalanceSheetAmount950237 + $BalanceSheetAmount950238 + $BalanceSheetAmount950239"/></xsl:variable>

                <!--27.-->
                <xsl:variable name="BalanceSheetAmount950244"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950244/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950245"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950245/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950243"><xsl:value-of select="$BalanceSheetAmount950244 * $BalanceSheetAmount950245"/></xsl:variable>

                <xsl:variable name="BalanceSheetAmount950247"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950247/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950248"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950248/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950246"><xsl:value-of select="$BalanceSheetAmount950247 * $BalanceSheetAmount950248"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950242"><xsl:value-of select="$TotalBalanceSheetAmount950243 + $TotalBalanceSheetAmount950246"/></xsl:variable>


                <xsl:variable name="BalanceSheetAmount950250"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950250/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950251"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950251/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950249"><xsl:value-of select="$BalanceSheetAmount950250 * $BalanceSheetAmount950251"/></xsl:variable>

                <xsl:variable name="TotalBalanceSheetAmount950241"><xsl:value-of select="$TotalBalanceSheetAmount950242 + $TotalBalanceSheetAmount950249"/></xsl:variable>
                <!--28.-->
                <xsl:variable name="BalanceSheetAmount950255"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950255/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950256"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950256/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950254"><xsl:value-of select="$BalanceSheetAmount950255 * $BalanceSheetAmount950256"/></xsl:variable>

                <xsl:variable name="BalanceSheetAmount950258"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950258/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950259"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950259/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950257"><xsl:value-of select="$BalanceSheetAmount950258 * $BalanceSheetAmount950259"/></xsl:variable>

                <xsl:variable name="TotalBalanceSheetAmount950253"><xsl:value-of select="$TotalBalanceSheetAmount950254 + $TotalBalanceSheetAmount950257"/></xsl:variable>

                <xsl:variable name="BalanceSheetAmount950261"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950261/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="BalanceSheetAmount950262"><xsl:value-of select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950262/BalanceSheetItemInfo/BalanceSheetAmount"/></xsl:variable>
                <xsl:variable name="TotalBalanceSheetAmount950260"><xsl:value-of select="$BalanceSheetAmount950261 * $BalanceSheetAmount950262"/></xsl:variable>

                <xsl:variable name="TotalBalanceSheetAmount950252"><xsl:value-of select="$TotalBalanceSheetAmount950253 + $TotalBalanceSheetAmount950260"/></xsl:variable>
                <!--950240 รายละเอียดของทุนจดทะเบียน-->  
			    <xsl:variable name="TotalBalanceSheetAmount950240"><xsl:value-of select="$TotalBalanceSheetAmount950241 + $TotalBalanceSheetAmount950252 "/></xsl:variable>
				<!--950134-->
                <xsl:variable name="TotalBalanceSheetAmount950134"><xsl:value-of select="$TotalBalanceSheetAmount950263 + $TotalBalanceSheetAmount950900"/></xsl:variable>
				<!--950002 สินทรัพย์ -->
                <xsl:variable name="TotalBalanceSheetAmount950002"><xsl:value-of select="$TotalBalanceSheetAmount950003 + $TotalBalanceSheetAmount950008 + $BalanceSheetAmount950018 + $TotalBalanceSheetAmount950019 + $TotalBalanceSheetAmount950081 + $BalanceSheetAmount950264 + $TotalBalanceSheetAmount950091 + $BalanceSheetAmount950098 + $BalanceSheetAmount950099 + $TotalBalanceSheetAmount950100 + $TotalBalanceSheetAmount950118"/></xsl:variable>
            <!--</xsl:for-each>-->
            <!--rowUp-->

            <head>
                <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            </head>
            <body>


                <table class="displayTable" width="100%" border="1">
                    <tr>
                        <td class="bgGreen" width="20%">Organization ID :</td>
                        <td width="15%%" colspan="2">
                            <xsl:for-each select="DS_BLS/CommonHeader">
                                <xsl:value-of select="OrganizationId"/>
                            </xsl:for-each>
                        </td>
                    </tr>
                    <tr>
                        <td class="bgGreen" width="20%">FI Reporting Group ID :</td>
                        <td colspan="2">
                            116003 - ชุดรวมทุกสำนักงานในประเทศ
                        </td>
                    </tr>
                    <tr>
                        <td class="bgGreen" width="20%">Data Set Type :</td>
                        <td colspan="2">
                            <xsl:for-each select="DS_BLS">
                                <xsl:value-of select="@name"/>
                            </xsl:for-each>
                        </td>
                    </tr>
                    <tr>
                        <td class="bgGreen" width="20%">Branch Number :</td>
                        <td colspan="2">

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
                        <xsl:for-each select="DS_BLS/CommonHeader">
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
                            <td width="20%" hight="15px" align="center">
                                <xsl:value-of select="substring(DataSetDate,1,4)"/>
                            </td>
                        </xsl:for-each>

                    </tr>
                </table>
                <table class="displayTable" width="100%" border="1">
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
                        <td align="center" class="labelXsl">950002</td>
                        <td class="labelXsl">
                            <xsl:value-of select="$name950002"/>

                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'" >
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950002,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950003</td>
                        <td class="subOne  labelXsl">
                            <xsl:value-of select="$name950003"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950003,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950004</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950004"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950004,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl" width="10%">950005</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950005"/>
                        </td>
                        <td width="10%" align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950005,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950006</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950006"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950006,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950007</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950007"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950007,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950008</td>
                        <td class="subOne  labelXsl">
                            <xsl:value-of select="$name950008"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950008,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950009</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950009"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950009,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950010</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950010"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950010,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950011</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950011"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950011,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950012</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950012"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950012,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950013</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950013"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950013,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950014</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950014"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950014,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950015</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950015"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950015,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950016</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950016"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950016,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950017</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950017"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950017,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950018</td>
                        <td class="subOne  labelXsl">
                            <xsl:value-of select="$name950018"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950018,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950019</td>
                        <td class="subOne  labelXsl">
                            <xsl:value-of select="$name950019"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950019,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950020</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950020"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950020,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950021</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950021"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950021,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950022</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950022"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950022,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950023</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950023"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950023,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950024</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950024"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950024,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950025</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950025"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950025,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950026</td>
                        <td class="subFive  labelXsl">
                            <xsl:value-of select="$name950026"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950026,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950027</td>
                        <td class="subFive  labelXsl">
                            <xsl:value-of select="$name950027"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950027,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950028</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950028"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950028,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950029</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950029"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950029,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950030</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950030"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950030,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950031</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950031"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950031,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950032</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950032"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950032,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950033</td>
                        <td class="subFive  labelXsl">
                            <xsl:value-of select="$name950033"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950033,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950034</td>
                        <td class="subFive  labelXsl">
                            <xsl:value-of select="$name950034"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950034,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950035</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950035"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950035,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>

                    <tr>
                        <td align="center" class="labelXsl">950036</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950036"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950036,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950037</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950037"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950037,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950038</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950038"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950038,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950039</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950039"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950039,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950040</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950040"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950040,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950041</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950041"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950041,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950042</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950042"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950042,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950043</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950043"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950043,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950044</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950044"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950044,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950045</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950045"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950045,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950046</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950046"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950046,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950047</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950047"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950047,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950048</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950048"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950048,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950049</td>
                        <td class="subOne  labelXsl">
                            <xsl:value-of select="$name950049"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950049,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950050</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950050"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950050,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950051</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950051"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950051,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>

                    <tr>
                        <td align="center" class="labelXsl">950052</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950052"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950052,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950053</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950053"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950053,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950054</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950054"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950054,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950055</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950055"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950055,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950056</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950056"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950056,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950057</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950057"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950057,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950058</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950058"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950058,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950059</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950059"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950059,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950060</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950060"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950060,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950061</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950061"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950061,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950062</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950062"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950062,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950063</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950063"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950063,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950064</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950064"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950064,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950065</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950065"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950065,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950066</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950066"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950066,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950067</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950067"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950067,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950068</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950068"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950068,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950069</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950069"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950069,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950070</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950070"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950070,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950071</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950071"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950071,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950072</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950072"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950072,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950073</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950073"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950073,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950074</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950074"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950074,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950075</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950075"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950075,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950076</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950076"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950076,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950077</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950077"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950077,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950078</td>
                        <td class="subOne  labelXsl">
                            <xsl:value-of select="$name950078"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950078,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950079</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950079"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950079,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950080</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950080"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950080,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950081</td>
                        <td class="subOne  labelXsl">
                            <xsl:value-of select="$name950081"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950081,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950082</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950082"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950082,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950083</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950083"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($BalanceSheetAmount950083,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950084</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950084"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950084/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950084,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950085</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950085"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950085/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950085,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950086</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950086"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950086/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950086,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950087</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950087"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950087,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950088</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950088"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950088/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950088,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>

                    <tr>
                        <td align="center" class="labelXsl">950089</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950089"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950089/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950089,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>

                    <tr>
                        <td align="center" class="labelXsl">950090</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950090"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950090/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950090,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950264</td>
                        <td class="subOne  labelXsl">
                            <xsl:value-of select="$name950264"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950264/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950264,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950091</td>
                        <td class="subOne  labelXsl">
                            <xsl:value-of select="$name950091"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950091,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950092</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950092"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950092,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950093</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950093"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950093/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950093,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950094</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950094"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950094/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950094,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950095</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950095"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950095/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950095,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950096</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950096"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950096/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950096,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950097</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950097"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950097/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950097,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950098</td>
                        <td class="subOne  labelXsl">
                            <xsl:value-of select="$name950098"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950098/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950098,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950099</td>
                        <td class="subOne  labelXsl">
                            <xsl:value-of select="$name950099"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950099/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950099,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950100</td>
                        <td class="subOne  labelXsl">
                            <xsl:value-of select="$name950100"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950100,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950101</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950101"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950101,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950102</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950102"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950102/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950102,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950103</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950103"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950103/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950103,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950104</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950104"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950104/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950104,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950105</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950105"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950105,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950106</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950106"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950106/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950106,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950107</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950107"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950107/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950107,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950108</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950108"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950108/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950108,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950109</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950109"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950109/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950109,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950110</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950110"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950110,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950111</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950111"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950111/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950111,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950112</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950112"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950112/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950112,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950113</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950113"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950113/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950113,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950114</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950114"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950114,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950115</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950115"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950115/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950115,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950116</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950116"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950116/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950116,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950117</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950117"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950117/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950117,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950118</td>
                        <td class="subOne  labelXsl">
                            <xsl:value-of select="$name950118"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950118,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>

                    <tr>
                        <td align="center" class="labelXsl">950119</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950119"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950119/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950119,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>

                    <tr>
                        <td align="center" class="labelXsl">950120</td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950120">
                            <td class="subTwo  labelXsl">
                                <xsl:value-of select="$name950120"/>
                            </td>
                        </xsl:for-each>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950120/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950120,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950121</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950121"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950121/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950121,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950122</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950122"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950122/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950122,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950123</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950123"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950123/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950123,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950124</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950124"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950124/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950124,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950125</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950125"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950125/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950125,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950126</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950126"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950126/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950126,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950127</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950127"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950127/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950127,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950128</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950128"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950128/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950128,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950129</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950129"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950129,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950130</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950130"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950130/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950130,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950131</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950131"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950131/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950131,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950132</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950132"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950132/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950132,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950133</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950133"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950133/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950133,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950134</td>
                        <td class="labelXsl">
                            <xsl:value-of select="$name950134"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950134,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950263</td>
                        <td class="paddingSub  labelXsl">
                            <xsl:value-of select="$name950263"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950263,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950135</td>
                        <td class="subOne  labelXsl">
                            <xsl:value-of select="$name950135"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950135,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950136</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950136"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950136/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950136,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950137</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950137"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950137/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950137,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950138</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950138"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950138/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950138,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950139</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950139"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950139/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950139,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950140</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950140"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950140/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950140,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950141</td>
                        <td class="subOne  labelXsl">
                            <xsl:value-of select="$name950141"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950141,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950142</td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950143">
                            <td class="subTwo  labelXsl">
                                <xsl:value-of select="$name950142"/>
                            </td>
                        </xsl:for-each>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950142,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950143</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950143"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950143/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950143,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950144</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950144"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950144/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950144,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950145</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950145"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950145,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950146</td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950146">
                            <td class="subThree  labelXsl">
                                <xsl:value-of select="$name950146"/>
                            </td>
                        </xsl:for-each>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950146/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950146,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950147</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950147"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950147/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950147,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950148</td>
                        <td class="subOne  labelXsl">
                            <xsl:value-of select="$name950148"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950148,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950149</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950149"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950149/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950149,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950150</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950150"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950150/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950150,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950151</td>
                        <td class="subOne  labelXsl">
                            <xsl:value-of select="$name950151"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950151/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950151,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950152</td>
                        <td class="subOne  labelXsl">
                            <xsl:value-of select="$name950152"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950152,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950153</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950153"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950153,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950154</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950154"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950154/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950154,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950155</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950155"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950155/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950155,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950156</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950156"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950156,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>

                    <tr>
                        <td align="center" class="labelXsl">950157</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950157"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950157/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950157,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>

                    <tr>
                        <td align="center" class="labelXsl">950158</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950158"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950158/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950158,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950159</td>
                        <td class="subOne  labelXsl">
                            <xsl:value-of select="$name950159"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950159/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950159,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950160</td>
                        <td class="subOne  labelXsl">
                            <xsl:value-of select="$name950160"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950160/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950160,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950161</td>
                        <td class="subOne  labelXsl">
                            <xsl:value-of select="$name950161"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950161/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950161,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950265</td>
                        <td class="subOne  labelXsl">
                            <xsl:value-of select="$name950265"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950265/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950265,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950266</td>
                        <td class="subOne  labelXsl">
                            <xsl:value-of select="$name950266"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950266/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950266,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950162</td>
                        <td class="subOne  labelXsl">
                            <xsl:value-of select="$name950162"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950162,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950163</td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950163">
                            <td class="subTwo  labelXsl">
                                <xsl:value-of select="$name950163"/>
                            </td>
                        </xsl:for-each>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950163/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950163,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950164</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950164"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950164/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950164,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950165</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950165"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950165/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950165,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950166</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950166"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950166/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950166,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>

                    <tr>
                        <td align="center" class="labelXsl">950167</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950167"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950167/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950167,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>

                    <tr>
                        <td align="center" class="labelXsl">950168</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950168"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950168/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950168,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950169</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950169"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950169/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950169,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950170</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950170"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950170/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950170,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950171</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950171"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950171/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950171,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950172</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950172"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950172/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950172,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950173</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950173"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950173/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950173,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950174</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950174"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950174/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950174,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950900</td>
                        <td class="subOne  labelXsl">
                            <xsl:value-of select="$name950900"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950900,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950175</td>
                        <td class="subOne labelXsl">
                            <xsl:value-of select="$name950175"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950175,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>

                    <tr>
                        <td align="center" class="labelXsl">950176</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950176"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950176,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950177</td>
                        <td class="subThree labelXsl">
                            <xsl:value-of select="$name950177"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950177,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950178</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950178"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950178/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950178,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950179</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950179"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950179/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950179,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950180</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950180"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950180/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950180,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950181</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950181"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950181/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950181,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950182</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950182"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950182/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950182,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950183</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950183"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950183,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950184</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950184"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950184,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950185</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950185"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950185/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950185,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950186</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950186"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950186/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950186,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>

                    <tr>
                        <td align="center" class="labelXsl">950187</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950187"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950187/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950187,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950188</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950188"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950188/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950188,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950189</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950189"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950189/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950189,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950190</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950190"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950190,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950191</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950191"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950191/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950191,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950192</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950192"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950192/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950192,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950193</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950193"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950193,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950194</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950194"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950194,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950195</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950195"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950195/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950195,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950196</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950196"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950196/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950196,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950197</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950197"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950197,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950198</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950198"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950198/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950198,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950199</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950199"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950199/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950199,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950200</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950200"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950200/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950200,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950201</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950201"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950201,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950202</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950202"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950202,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950203</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950203"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950203/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950203,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950204</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950204"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950204/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950204,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950205</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950205"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950205/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950205,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950206</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950206"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950206/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950206,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950207</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950207"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950207/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950207,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950208</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950208"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950208/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950208,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950209</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950209"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950209/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950209,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950210</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950210"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950210/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950210,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950267</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950267"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950267/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950267,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950268</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950268"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950268/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950268,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950269</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950269"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950269/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950269,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950233</td>
                        <td class="subOne  labelXsl">
                            <xsl:value-of select="$name950233"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950233,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950234</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950234"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950234/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950234,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950235</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950235"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950235/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950235,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950236</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950236"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950236/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950236,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950237</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950237"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950237/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950237,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950238</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950238"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950238/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950238,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950239</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950239"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950239/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950239,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>

                    <tr>
                        <td align="center" class="labelXsl">950240</td>
                        <td class="subOne  labelXsl">
                            <xsl:value-of select="$name950240"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950240,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950241</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950241"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950241,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950242</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950242"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950242,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950243</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950243"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950243,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>

                        <td align="center" class="labelXsl">950244</td>
                        <td class="subFive  labelXsl">
                            <xsl:value-of select="$name950244"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950244/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950244,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950245</td>
                        <td class="subFive  labelXsl">
                            <xsl:value-of select="$name950245"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950245/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950245,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950246</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950246"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950246,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950247</td>
                        <td class="subFive  labelXsl">
                            <xsl:value-of select="$name950247"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950247/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950247,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950248</td>
                        <td class="subFive  labelXsl">
                            <xsl:value-of select="$name950248"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950248/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950248,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950249</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950249"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950249,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950250</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950250"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950250/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950250,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950251</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950251"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950251/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950251,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950252</td>
                        <td class="subTwo  labelXsl">
                            <xsl:value-of select="$name950252"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950252,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950253</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950253"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950253,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950254</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950254"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950254,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950255</td>
                        <td class="subFive  labelXsl">
                            <xsl:value-of select="$name950255"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950255/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950255,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950256</td>
                        <td class="subFive  labelXsl">
                            <xsl:value-of select="$name950256"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950256/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950256,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950257</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950257"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950257,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950258</td>
                        <td class="subFive  labelXsl">
                            <xsl:value-of select="$name950258"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950258/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950258,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950259</td>
                        <td class="subFive  labelXsl">
                            <xsl:value-of select="$name950259"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950259/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950259,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950260</td>
                        <td class="subThree  labelXsl">
                            <xsl:value-of select="$name950260"/>
                        </td>
                        <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                            <span style="color:#1500d4">
                                <xsl:value-of
                                        select="format-number($TotalBalanceSheetAmount950260,'###,###,###,###,###,###,###,##0.00')"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950261</td>
                        <td class="subFour  labelXsl">
                            <xsl:value-of select="$name950261"/>
                        </td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950261/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950261,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td align="center" class="labelXsl">950262</td>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950262">
                            <td class="subFour  labelXsl">
                                <xsl:value-of select="$name950262"/>
                            </td>
                        </xsl:for-each>
                        <xsl:for-each
                                select="DS_BLS/DS_BLS_Content/ContentRecordGroup/BalanceSheetItem950262/BalanceSheetItemInfo">
                            <td width="20%" class="labelXsl" align="right"   style="mso-number-format:'\#\,\#\#0\.00'">
                                <xsl:if test="not (BalanceSheetAmount=' 'or BalanceSheetAmount='')">
                                    <span style="color:#1500d4">
                                        <xsl:value-of
                                                select="format-number($BalanceSheetAmount950262,'###,###,###,###,###,###,###,##0.00')"/>
                                    </span>
                                </xsl:if>
                            </td>
                        </xsl:for-each>
                    </tr>
                </table>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
