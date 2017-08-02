<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <xsl:variable name="name930044">&#160;&#160;	1.  สินทรัพย์สภาพคล่อง														</xsl:variable>
            <xsl:variable name="name930045">&#160;&#160;&#160;&#160;	 1.1  เงินฝากกระแสรายวันที่ ธนาคารแห่งประเทศไทย		</xsl:variable>
            <xsl:variable name="name930042">&#160;&#160;&#160;&#160;	  1.2  เงินฝากประจำที่ธนาคารแห่งประเทศไทย		</xsl:variable>
            <xsl:variable name="name930098">&#160;&#160;&#160;&#160;	 1.3  เงินสดที่ศูนย์เงินสดกลางธนาคารพาณิชย์ 		</xsl:variable>
            <xsl:variable name="name930046">&#160;&#160;&#160;&#160;	 1.4  เงินสดที่ธนาคารพาณิชย์ (รวมเงินตราต่างประเทศ)		</xsl:variable>
            <xsl:variable name="name930047">&#160;&#160;&#160;&#160;	 1.5  หลักทรัพย์หรือตราสารแสดงสิทธิในหนี้ที่ปราศจากภาระผูกพัน		</xsl:variable>
            <xsl:variable name="name930048">&#160;&#160;&#160;&#160;&#160;&#160;     1.5.1  หลักทรัพย์หรือตราสารแสดงสิทธิในหนี้ที่ออกโดยรัฐบาลไทย		</xsl:variable>
            <xsl:variable name="name930049">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;  1.5.1.1  ตั๋วเงินคลัง		</xsl:variable>
            <xsl:variable name="name930050">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 1.5.1.2  พันธบัตรรัฐบาล		</xsl:variable>
            <xsl:variable name="name930051">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 1.5.1.3  ตั๋วสัญญาใช้เงินเพื่อปรับโครงสร้างหนี้ที่ออกโดยกระทรวงการคลัง		</xsl:variable>
            <xsl:variable name="name930099">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;  1.5.1.4 ตราสารแสดงสิทธิในหนี้อื่น		</xsl:variable>
            <xsl:variable name="name930053">&#160;&#160;&#160;&#160;&#160;&#160;     1.5.2  หลักทรัพย์หรือตราสารแสดงสิทธิในหนี้ที่กระทรวงการคลังค้ำประกันเฉพาะต้นเงินหรือรวมทั้งดอกเบี้ย		</xsl:variable>
            <xsl:variable name="name930052">&#160;&#160;&#160;&#160;&#160;&#160;     1.5.3  หลักทรัพย์หรือตราสารแสดงสิทธิในหนี้ที่ออกโดยธนาคารแห่งประเทศไทย		</xsl:variable>
            <xsl:variable name="name930100">&#160;&#160;&#160;&#160;&#160;&#160;     1.5.4  หลักทรัพย์หรือตราสารแสดงสิทธิในหนี้ที่ธนาคารแห่งประเทศไทยค้ำประกันเฉพาะต้นเงินหรือรวมทั้งดอกเบี้ย		</xsl:variable>
            <xsl:variable name="name930054">&#160;&#160;&#160;&#160;&#160;&#160;     1.5.5  หลักทรัพย์ หรือตราสารแสดงสิทธิในหนี้ที่ออกโดยกองทุนเพื่อการฟื้นฟูและพัฒนาระบบสถาบันการเงิน		</xsl:variable>
            <xsl:variable name="name930055">&#160;&#160;&#160;&#160;&#160;&#160;     1.5.6  หลักทรัพย์หรือตราสารแสดงสิทธิในหนี้ที่กองทุนเพื่อการฟื้นฟูและพัฒนาระบบสถาบันการเงินค้ำประกันเฉพาะต้นเงินหรือรวมทั้งดอกเบี้ย		</xsl:variable>
            <xsl:variable name="name930056">&#160;&#160;&#160;&#160;&#160;&#160;    1.5.7  หลักทรัพย์หรือตราสารแสดงสิทธิในหนี้ที่ออกโดยรัฐวิสาหกิจหรือหน่วยงานของรัฐซึ่งธนาคารแห่งประเทศไทยให้ความเห็นชอบ		</xsl:variable>
            <xsl:variable name="name930101">&#160;&#160;&#160;&#160;&#160;&#160;    1.5.8  หลักทรัพย์หรือตราสารแสดงสิทธิในหนี้ ที่ออกโดยรัฐวิสาหกิจที่เป็นบริษัทจำกัด (มหาชน)		</xsl:variable>
            <xsl:variable name="name930102">&#160;&#160;&#160;&#160;&#160;&#160;     1.5.9  ตราสารแสดงสิทธิในหนี้ที่ออกเพื่อวัตถุประสงค์ในการแก้ไขปัญหาสินทรัพย์ที่ไม่ก่อให้เกิดรายได้ของสถาบันการเงิน ที่กระทรวงการคลัง ธนาคารแห่งประเทศไทย หรือกองทุนเพื่อการฟื้นฟูและพัฒนาระบบสถาบันการเงิน รับรอง อาวัล หรือ ค้ำประกัน ต้นเงินหรือรวมทั้งดอกเบี้ย  		</xsl:variable>
            <xsl:variable name="name930103">&#160;&#160;&#160;&#160;&#160;&#160;     1.5.10  ตราสารแสดงสิทธิในหนี้ที่ออกเพื่อวัตถุประสงค์ในการแก้ไขปัญหาสินทรัพย์ที่ไม่ก่อให้เกิดรายได้ของสถาบันการเงิน ที่ออกโดยบริษัทบริหารสินทรัพย์		</xsl:variable>
            <xsl:variable name="name930104">&#160;&#160;&#160;&#160;&#160;&#160;    1.5.11  หลักทรัพย์หรือตราสารแสดงสิทธิในหนี้ที่สามารถใช้เป็นหลักประกันในธุรกรรม e-Bilateral Repo		</xsl:variable>
            <xsl:variable name="name930059">&#160;&#160;	2.  เงินรับฝาก		</xsl:variable>
            <xsl:variable name="name930060">&#160;&#160;&#160;&#160;	 2.1  บัญชีผู้มีถิ่นที่อยู่ในต่างประเทศไม่เกิน 1 ปี		</xsl:variable>
            <xsl:variable name="name930061">&#160;&#160;&#160;&#160;	 2.2  บัญชีอื่น ๆ		</xsl:variable>
            <xsl:variable name="name930062">&#160;&#160;	3.  เงินกู้ยืมจากต่างประเทศ		</xsl:variable>
            <xsl:variable name="name930063">&#160;&#160;&#160;&#160;	 3.1  ไม่เกิน 1 ปี		</xsl:variable>
            <xsl:variable name="name930064">&#160;&#160;&#160;&#160;&#160;&#160;     3.1.1  กู้เองโดยตรง		</xsl:variable>
            <xsl:variable name="name930065">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;  3.1.1.1 ยอดเงินกู้ยืมจากต่างประเทศที่เกินกว่า 1 ปี แต่มีการชำระคืนภายใน 1 ปี นับแต่วันที่กู้		</xsl:variable>
            <xsl:variable name="name930066">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 3.1.1.2 อื่นๆ		</xsl:variable>
            <xsl:variable name="name930067">&#160;&#160;&#160;&#160;&#160;&#160;     3.1.2 กู้ผ่านสาขาหรือสำนักงานใหญ่ในต่างประเทศ		</xsl:variable>
            <xsl:variable name="name930068">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 3.1.2.1 ยอดเงินกู้ยืมจากต่างประเทศที่เกินกว่า 1 ปี แต่มีการชำระคืนภายใน 1 ปี นับแต่วันที่กู้		</xsl:variable>
            <xsl:variable name="name930069">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 3.1.2.2 อื่นๆ		</xsl:variable>
            <xsl:variable name="name930070">&#160;&#160;&#160;&#160;	  3.2 เกินกว่า 1 ปี		</xsl:variable>
            <xsl:variable name="name930071">&#160;&#160;&#160;&#160;&#160;&#160;     3.2.1 กู้เองโดยตรง		</xsl:variable>
            <xsl:variable name="name930072">&#160;&#160;&#160;&#160;&#160;&#160;      3.2.2 กู้ผ่านสาขาหรือสำนักงานใหญ่ในต่างประเทศ		</xsl:variable>
            <xsl:variable name="name930073">&#160;&#160;	4. ยอดเงินกู้ยืมระยะสั้นเพื่อการนำเข้า/ส่งออกที่ได้รับการยกเว้นไม่ต้องดำรงสินทรัพย์สภาพคล่อง		</xsl:variable>
            <xsl:variable name="name930074">&#160;&#160;	5.  รายการถอนเงินฝากระหว่างเดือน(ยอดสะสม ณ วันสิ้นเดือนที่รายงาน)		</xsl:variable>
            <xsl:variable name="name930075">&#160;&#160;&#160;&#160;	 5.1  เงินฝากจ่ายคืนเมื่อทวงถาม		</xsl:variable>
            <xsl:variable name="name930076">&#160;&#160;&#160;&#160;	 5.2  เงินฝากออมทรัพย์		</xsl:variable>
            <xsl:variable name="name930077">&#160;&#160;&#160;&#160;	 5.3  เงินฝากจ่ายคืนเมื่อสิ้นระยะเวลา		</xsl:variable>
            <xsl:variable name="name930078">&#160;&#160;&#160;&#160;&#160;&#160;     5.3.1  ไม่เกิน 3 เดือน		</xsl:variable>
            <xsl:variable name="name930079">&#160;&#160;&#160;&#160;&#160;&#160;     5.3.2  เกินกว่า 3 เดือน แต่ไม่เกิน 6 เดือน		</xsl:variable>
            <xsl:variable name="name930080">&#160;&#160;&#160;&#160;&#160;&#160;      5.3.3  เกินกว่า 6 เดือน แต่ไม่เกิน 1 ปี		</xsl:variable>
            <xsl:variable name="name930082">&#160;&#160;&#160;&#160;&#160;&#160;      5.3.5  เกินกว่า 1 ปี แต่ไม่เกิน 1.5 ปี		</xsl:variable>
            <xsl:variable name="name930083">&#160;&#160;&#160;&#160;&#160;&#160;     5.3.6  เกินกว่า 1.5 ปี แต่ไม่เกิน 2 ปี		</xsl:variable>
            <xsl:variable name="name930084">&#160;&#160;&#160;&#160;&#160;&#160;     5.3.7  เกินกว่า 2 ปีขึ้นไป		</xsl:variable>
            <xsl:variable name="name930085">&#160;&#160;	6.  รายละเอียดประกอบการประเมินฐานะสภาพคล่อง ณ วันสิ้นเดือน		</xsl:variable>
            <xsl:variable name="name930086">&#160;&#160;&#160;&#160;	  6.1  เงินฝากธนาคารในประเทศ		</xsl:variable>
            <xsl:variable name="name930087">&#160;&#160;&#160;&#160;&#160;&#160;    6.1.1  ธนาคารแห่งประเทศไทย		</xsl:variable>
            <xsl:variable name="name930088">&#160;&#160;&#160;&#160;&#160;&#160;    6.1.2  ธนาคารพาณิชย์		</xsl:variable>
            <xsl:variable name="name930089">&#160;&#160;&#160;&#160;&#160;&#160;     6.1.3  ธนาคารออมสิน		</xsl:variable>
            <xsl:variable name="name930090">&#160;&#160;&#160;&#160;&#160;&#160;    6.1.4  ธนาคารเพื่อการเกษตรและสหกรณ์การเกษตร		</xsl:variable>
            <xsl:variable name="name930091">&#160;&#160;&#160;&#160;&#160;&#160;    6.1.5  ธนาคารอาคารสงเคราะห์		</xsl:variable>
            <xsl:variable name="name930092">&#160;&#160;&#160;&#160;&#160;&#160;    6.1.6  ธนาคารเพื่อการส่งออกและนำเข้าแห่งประเทศไทย		</xsl:variable>
            <xsl:variable name="name930093">&#160;&#160;&#160;&#160;	   6.2  หุ้นกู้ พันธบัตรรัฐบาล และพันธบัตรรัฐวิสาหกิจ ที่ปราศจากภาระผูกพัน ซึ่งหักค่าเผื่อการลดราคาหลักทรัพย์แล้ว		</xsl:variable>
            <xsl:variable name="name930094">&#160;&#160;&#160;&#160;	  6.3  ตั๋วเงินที่กระทรวงการคลังค้ำประกันต้นเงินและดอกเบี้ย		</xsl:variable>
            <xsl:variable name="name930095">&#160;&#160;&#160;&#160;	 6.4  วงเงินเบิกเกินบัญชีที่ลูกค้ายังไม่ได้ถอน		</xsl:variable>
            <xsl:variable name="name930096">&#160;&#160;&#160;&#160;&#160;&#160;    6.4.1  บัญชีกระแสรายวัน		</xsl:variable>
            <xsl:variable name="name930097">&#160;&#160;&#160;&#160;&#160;&#160;    6.4.2  บัญชีอื่นๆ		</xsl:variable>
            <xsl:variable name="name930105">&#160;&#160;	7. หลักทรัพย์หรือตราสารแสดงสิทธิในหนี้ ที่ได้รับจากการทำธุรกรรมซื้อคืน (Repo) หรือจากธุรกรรมยืมและให้ยืมหลักทรัพย์ (SBL)		</xsl:variable>
            <head>
                <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            </head>
            <body>
                 <table class="displayTable" width="50%" border="1">
                                            <tr>
                                                <td class="bgGreen" width="20%">Organization ID :  </td>
                                                <td width="15%" colspan="3">
                                                    <xsl:for-each select="DS_LQ1/CommonHeader">
                                                        <xsl:value-of select="OrganizationId"/>
                                                    </xsl:for-each>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="bgGreen" width="20%">FI Reporting Group :</td>    <!-- bgcolor="#9acd32"-->
                                                <td width="80%"  colspan="3">
                                                   116003 - ชุดรวมทุกสำนักงานในประเทศ
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="bgGreen" width="20%">Data Set Type :</td>
                                                <td colspan="3">
                                                    <xsl:value-of select="DS_LQ1/@name"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="bgGreen"></td>
												<td class="bgGreen" align="center">Day</td>
                                                <td class="bgGreen" align="center">Month</td>
                                                <td class="bgGreen" align="center">Year</td>
                                            </tr>
                                            <tr>
                                                    <td class="bgGreen" >Data Set Date :</td>
                                    <xsl:variable name="month">
                            <xsl:value-of select="substring-after(substring-before(DataSetDate,'-'),'-')"/>
                        </xsl:variable>
                        <xsl:for-each select="DS_LQ1/CommonHeader">
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
                                        <table width="2000px" class="displayTable" border="1">
                                            <tr class="headTableXsl">
                                                <td  align="center" colspan="16">Liquidity Assessment</td>
                                            </tr>
                                            <tr class="headTableXsl">
                                                <td  align="center" rowspan="2" colspan="2" >Liquidity Assessment Item</td>
                                                <td  align="center" colspan="14" >Item Date / Amount </td>

                                            </tr>
                                            <tr class="headTableXsl">
                                                 <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup">
                                                    <td align="center" >
                                                        <xsl:value-of select="ItemDate"/>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                           <tr>
                                                <td class="labelXsl"  align="center" >930044</td>
                                                <td class="labelXsl" > <xsl:value-of select="$name930044"/></td>
                                                <xsl:for-each select="DS_LQ1/LiquidityAssessmentItem930044">
                                                  <td class="labelXsl"  align="right"  style="mso-number-format:'\#\,\#\#0\.00'" >
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(value,'###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                           </tr>
                                           <tr>
                                                <td class="labelXsl"  align="center" >930045</td>
                                               <td class="subOne labelXsl"><xsl:value-of select="$name930045"/>  </td>
                                               <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup/LiquidityAssessmentItem930045">
                                                  <xsl:if test="Amount != ''">
                                                      <td class=" labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                        <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                      </td>
                                                      </xsl:if>
                                                      <xsl:if test="Amount = ''">
                                                      <td class=" labelXsl" align="right">
                                                        <span   style="color:#1500d4">0.00</span>
                                                      </td>
                                                  </xsl:if>
                                                </xsl:for-each>
                                           </tr>
                                            <tr>
                                                 <td class="labelXsl"  align="center" >930042</td>
                                               <td class=" subOne labelXsl"><xsl:value-of select="$name930042"/> </td>
                                                <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup/LiquidityAssessmentItem930042">
                                                  <xsl:if test="Amount != ''">
                                                      <td class=" labelXsl" align="right">
                                                        <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                      </td>
                                                      </xsl:if>
                                                      <xsl:if test="Amount = ''">
                                                      <td class=" labelXsl" align="right">
                                                        <span   style="color:#1500d4">0.00</span>
                                                      </td>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </tr>
                                             <tr>
                                                  <td class="labelXsl"  align="center" >930098</td>
                                               <td class="subOne  labelXsl"> <xsl:value-of select="$name930098"/> </td>
                                                <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup/LiquidityAssessmentItem930098">
                                                  <xsl:if test="Amount != ''">
                                                      <td class=" labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                        <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                      </td>
                                                      </xsl:if>
                                                      <xsl:if test="Amount = ''">
                                                      <td class=" labelXsl" align="right">
                                                        <span   style="color:#1500d4">0.00</span>
                                                      </td>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </tr>
                                             <tr>
                                                  <td class="labelXsl"  align="center" >930046</td>
                                               <td class=" subOne labelXsl"><xsl:value-of select="$name930046"/> </td>
                                                <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup/LiquidityAssessmentItem930046">
                                                  <xsl:if test="Amount != ''">
                                                      <td class=" labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                        <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                      </td>
                                                      </xsl:if>
                                                      <xsl:if test="Amount = ''">
                                                      <td class=" labelXsl" align="right">
                                                        <span   style="color:#1500d4">0.00</span>
                                                      </td>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </tr>

                                             <tr>
                                                  <td class="labelXsl"  align="center" >930047</td>
                                               <td class=" subOne labelXsl"> <xsl:value-of select="$name930047"/>  </td>
                                                <xsl:for-each select="DS_LQ1/LiquidityAssessmentItem930047">
                                                  <td class="labelXsl"  align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(value,'###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>

                                             <tr>
                                                  <td class="labelXsl"  align="center" >930048</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930048"/>  </td>
                                                <xsl:for-each select="DS_LQ1/LiquidityAssessmentItem930048">
                                                  <td class="labelXsl"  align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(value,'###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                             <tr>
                                                  <td class="labelXsl"  align="center" >930049</td>
                                               <td class="subThree labelXsl"> <xsl:value-of select="$name930049"/>  </td>
                                                <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup/LiquidityAssessmentItem930049">
                                                  <xsl:if test="Amount != ''">
                                                      <td class=" labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                        <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                      </td>
                                                      </xsl:if>
                                                      <xsl:if test="Amount = ''">
                                                      <td class=" labelXsl" align="right">
                                                        <span   style="color:#1500d4">0.00</span>
                                                      </td>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                 <td class="labelXsl"  align="center" >930050</td>
                                               <td class="subThree labelXsl"> <xsl:value-of select="$name930050"/>  </td>
                                                <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup/LiquidityAssessmentItem930050">
                                                  <xsl:if test="Amount != ''">
                                                      <td class=" labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                        <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                      </td>
                                                      </xsl:if>
                                                      <xsl:if test="Amount = ''">
                                                      <td class=" labelXsl" align="right">
                                                        <span   style="color:#1500d4">0.00</span>
                                                      </td>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                 <td class="labelXsl"  align="center" >930051</td>
                                               <td class="subThree labelXsl"> <xsl:value-of select="$name930051"/>  </td>
                                                <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup/LiquidityAssessmentItem930051">
                                                  <xsl:if test="Amount != ''">
                                                      <td class=" labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                        <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                      </td>
                                                      </xsl:if>
                                                      <xsl:if test="Amount = ''">
                                                      <td class=" labelXsl" align="right">
                                                        <span   style="color:#1500d4">0.00</span>
                                                      </td>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </tr>
                                             <tr>
                                                 <td class="labelXsl"  align="center" >930099</td>
                                               <td class="subThree labelXsl"> <xsl:value-of select="$name930099"/>  </td>
                                                <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup/LiquidityAssessmentItem930099">
                                                  <xsl:if test="Amount != ''">
                                                      <td class=" labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                        <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                      </td>
                                                      </xsl:if>
                                                      <xsl:if test="Amount = ''">
                                                      <td class=" labelXsl" align="right">
                                                        <span   style="color:#1500d4">0.00</span>
                                                      </td>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </tr>

                                             <tr>
                                                  <td class="labelXsl"  align="center" >930053</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930053"/>  </td>
                                                <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup/LiquidityAssessmentItem930053">
                                                  <xsl:if test="Amount != ''">
                                                      <td class=" labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                        <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                      </td>
                                                      </xsl:if>
                                                      <xsl:if test="Amount = ''">
                                                      <td class=" labelXsl" align="right">
                                                        <span   style="color:#1500d4">0.00</span>
                                                      </td>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                  <td class="labelXsl"  align="center" >930052</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930052"/>  </td>
                                                <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup/LiquidityAssessmentItem930052">
                                                  <xsl:if test="Amount != ''">
                                                      <td class=" labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                        <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                      </td>
                                                      </xsl:if>
                                                      <xsl:if test="Amount = ''">
                                                      <td class=" labelXsl" align="right">
                                                        <span   style="color:#1500d4">0.00</span>
                                                      </td>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                  <td class="labelXsl"  align="center" >930100</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930100"/>  </td>
                                                <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup/LiquidityAssessmentItem930100">
                                                  <xsl:if test="Amount != ''">
                                                      <td class=" labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                        <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                      </td>
                                                      </xsl:if>
                                                      <xsl:if test="Amount = ''">
                                                      <td class=" labelXsl" align="right">
                                                        <span   style="color:#1500d4">0.00</span>
                                                      </td>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                 <td class="labelXsl"  align="center" >930054</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930054"/>  </td>
                                                <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup/LiquidityAssessmentItem930054">
                                                  <xsl:if test="Amount != ''">
                                                      <td class=" labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                        <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                      </td>
                                                      </xsl:if>
                                                      <xsl:if test="Amount = ''">
                                                      <td class=" labelXsl" align="right">
                                                        <span   style="color:#1500d4">0.00</span>
                                                      </td>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                 <td class="labelXsl"  align="center" >930055</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930055"/>  </td>
                                                <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup/LiquidityAssessmentItem930055">
                                                  <xsl:if test="Amount != ''">
                                                      <td class=" labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                        <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                      </td>
                                                      </xsl:if>
                                                      <xsl:if test="Amount = ''">
                                                      <td class=" labelXsl" align="right">
                                                        <span   style="color:#1500d4">0.00</span>
                                                      </td>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                 <td class="labelXsl"  align="center" >930056</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930056"/>  </td>
                                                <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup/LiquidityAssessmentItem930056">
                                                  <xsl:if test="Amount != ''">
                                                      <td class=" labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                        <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                      </td>
                                                      </xsl:if>
                                                      <xsl:if test="Amount = ''">
                                                      <td class=" labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                        <span   style="color:#1500d4">0.00</span>
                                                      </td>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </tr>
                                             <tr>
                                                 <td class="labelXsl"  align="center" >930101</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930101"/>  </td>
                                                <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup/LiquidityAssessmentItem930101">
                                                  <xsl:if test="Amount != ''">
                                                      <td class=" labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                        <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                      </td>
                                                      </xsl:if>
                                                      <xsl:if test="Amount = ''">
                                                      <td class=" labelXsl" align="right">
                                                        <span   style="color:#1500d4">0.00</span>
                                                      </td>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                 <td class="labelXsl"  align="center" >930102</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930102"/>  </td>
                                                <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup/LiquidityAssessmentItem930102">
                                                  <xsl:if test="Amount != ''">
                                                      <td class=" labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                        <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                      </td>
                                                      </xsl:if>
                                                      <xsl:if test="Amount = ''">
                                                      <td class=" labelXsl" align="right">
                                                        <span   style="color:#1500d4">0.00</span>
                                                      </td>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                 <td class="labelXsl"  align="center" >930103</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930103"/>  </td>
                                                <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup/LiquidityAssessmentItem930103">
                                                  <xsl:if test="Amount != ''">
                                                      <td class=" labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                        <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                      </td>
                                                      </xsl:if>
                                                      <xsl:if test="Amount = ''">
                                                      <td class=" labelXsl" align="right">
                                                        <span   style="color:#1500d4">0.00</span>
                                                      </td>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                 <td class="labelXsl"  align="center" >930104</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930104"/>  </td>
                                                <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup/LiquidityAssessmentItem930104">
                                                  <xsl:if test="Amount != ''">
                                                      <td class=" labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                        <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                      </td>
                                                      </xsl:if>
                                                      <xsl:if test="Amount = ''">
                                                      <td class=" labelXsl" align="right">
                                                        <span   style="color:#1500d4">0.00</span>
                                                      </td>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </tr>

                                            <tr>
                                                 <td class="labelXsl"  align="center" >930059</td>
                                               <td class="labelXsl"> <xsl:value-of select="$name930059"/>  </td>
                                                <xsl:for-each select="DS_LQ1/LiquidityAssessmentItem930059">
                                                  <td class="labelXsl"  align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(value,'###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                 <td class="labelXsl"  align="center" >930060</td>
                                               <td class="subOne labelXsl"> <xsl:value-of select="$name930060"/>  </td>
                                                <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup/LiquidityAssessmentItem930060">
                                                  <xsl:if test="Amount != ''">
                                                      <td class=" labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                        <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                      </td>
                                                      </xsl:if>
                                                      <xsl:if test="Amount = ''">
                                                      <td class=" labelXsl" align="right">
                                                        <span   style="color:#1500d4">0.00</span>
                                                      </td>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                               <td class="labelXsl"  align="center" >930061</td>
                                               <td class="subOne labelXsl"> <xsl:value-of select="$name930061"/>  </td>
                                                <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup/LiquidityAssessmentItem930061">
                                                  <xsl:if test="Amount != ''">
                                                      <td class=" labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                        <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                      </td>
                                                      </xsl:if>
                                                      <xsl:if test="Amount = ''">
                                                      <td class=" labelXsl" align="right">
                                                        <span   style="color:#1500d4">0.00</span>
                                                      </td>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </tr>
                                             <tr>
                                                  <td class="labelXsl"  align="center" >930062</td>
                                               <td class=" labelXsl"> <xsl:value-of select="$name930062"/>  </td>
                                                <xsl:for-each select="DS_LQ1/LiquidityAssessmentItem930062">
                                                  <td class="labelXsl"  align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(value,'###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                  <td class="labelXsl"  align="center" >930063</td>
                                               <td class="subOne labelXsl"> <xsl:value-of select="$name930063"/>  </td>
                                                <xsl:for-each select="DS_LQ1/LiquidityAssessmentItem930063">
                                                  <td class="labelXsl"  align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(value,'###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                  <td class="labelXsl"  align="center" >930064</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930064"/>  </td>
                                                <xsl:for-each select="DS_LQ1/LiquidityAssessmentItem930064">
                                                  <td class="labelXsl"  align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(value,'###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                  <td class="labelXsl"  align="center" >930065</td>
                                               <td class="subThree labelXsl"> <xsl:value-of select="$name930065"/>  </td>
                                                <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup/LiquidityAssessmentItem930065">
                                                  <xsl:if test="Amount != ''">
                                                      <td class=" labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                        <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                      </td>
                                                      </xsl:if>
                                                      <xsl:if test="Amount = ''">
                                                      <td class=" labelXsl" align="right">
                                                        <span   style="color:#1500d4">0.00</span>
                                                      </td>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </tr>
                                             <tr>
                                                  <td class="labelXsl"  align="center" >930066</td>
                                               <td class="subThree labelXsl"> <xsl:value-of select="$name930066"/>  </td>
                                                <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup/LiquidityAssessmentItem930066">
                                                  <xsl:if test="Amount != ''">
                                                      <td class=" labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                        <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                      </td>
                                                      </xsl:if>
                                                      <xsl:if test="Amount = ''">
                                                      <td class=" labelXsl" align="right">
                                                        <span   style="color:#1500d4">0.00</span>
                                                      </td>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                  <td class="labelXsl"  align="center" >930067</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930067"/>  </td>
                                                <xsl:for-each select="DS_LQ1/LiquidityAssessmentItem930067">
                                                  <td class="labelXsl"  align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(value,'###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                             <tr>
                                                  <td class="labelXsl"  align="center" >930068</td>
                                               <td class="subThree labelXsl"> <xsl:value-of select="$name930068"/>  </td>
                                                <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup/LiquidityAssessmentItem930068">
                                                  <xsl:if test="Amount != ''">
                                                      <td class=" labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                        <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                      </td>
                                                      </xsl:if>
                                                      <xsl:if test="Amount = ''">
                                                      <td class=" labelXsl" align="right">
                                                        <span   style="color:#1500d4">0.00</span>
                                                      </td>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </tr>
                                             <tr>
                                                  <td class="labelXsl"  align="center" >930069</td>
                                               <td class="subThree labelXsl"> <xsl:value-of select="$name930069"/>  </td>
                                                <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup/LiquidityAssessmentItem930069">
                                                  <xsl:if test="Amount != ''">
                                                      <td class=" labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                        <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                      </td>
                                                      </xsl:if>
                                                      <xsl:if test="Amount = ''">
                                                      <td class=" labelXsl" align="right">
                                                        <span   style="color:#1500d4">0.00</span>
                                                      </td>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </tr>
                                             <tr>
                                                  <td class="labelXsl"  align="center" >930070</td>
                                               <td class="subOne labelXsl"> <xsl:value-of select="$name930070"/>  </td>
                                                <xsl:for-each select="DS_LQ1/LiquidityAssessmentItem930070">
                                                  <td class="labelXsl"  align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(value,'###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                             <tr>
                                                  <td class="labelXsl"  align="center" >930071</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930071"/>  </td>
                                                <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup/LiquidityAssessmentItem930071">
                                                  <xsl:if test="Amount != ''">
                                                      <td class=" labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                        <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                      </td>
                                                      </xsl:if>
                                                      <xsl:if test="Amount = ''">
                                                      <td class=" labelXsl" align="right">
                                                        <span   style="color:#1500d4">0.00</span>
                                                      </td>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </tr>
                                             <tr>
                                                  <td class="labelXsl"  align="center" >930072</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930072"/>  </td>
                                                <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup/LiquidityAssessmentItem930072">
                                                  <xsl:if test="Amount != ''">
                                                      <td class=" labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                        <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                      </td>
                                                      </xsl:if>
                                                      <xsl:if test="Amount = ''">
                                                      <td class=" labelXsl" align="right">
                                                        <span   style="color:#1500d4">0.00</span>
                                                      </td>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </tr>
                                             <tr>
                                                  <td class="labelXsl"  align="center" >930073</td>
                                               <td class="labelXsl"> <xsl:value-of select="$name930073"/>  </td>
                                                <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup/LiquidityAssessmentItem930073">
                                                  <xsl:if test="Amount != ''">
                                                      <td class=" labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                        <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                      </td>
                                                      </xsl:if>
                                                      <xsl:if test="Amount = ''">
                                                      <td class=" labelXsl" align="right">
                                                        <span   style="color:#1500d4">0.00</span>
                                                      </td>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </tr>
                                             <tr>
                                                  <td class="labelXsl"  align="center" >930074</td>
                                               <td class=" labelXsl"> <xsl:value-of select="$name930074"/>  </td>
                                                <xsl:for-each select="DS_LQ1/LiquidityAssessmentItem930074">
                                                  <td class="labelXsl"  align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(value,'###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                             <tr>
                                                  <td class="labelXsl"  align="center" >930075</td>
                                               <td class="subOne labelXsl"> <xsl:value-of select="$name930075"/>  </td>
                                                <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup/LiquidityAssessmentItem930075">
                                                  <xsl:if test="Amount != ''">
                                                      <td class=" labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                        <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                      </td>
                                                      </xsl:if>
                                                      <xsl:if test="Amount = ''">
                                                      <td class=" labelXsl" align="right">
                                                        <span   style="color:#1500d4">0.00</span>
                                                      </td>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                  <td class="labelXsl"  align="center" >930076</td>
                                               <td class="subOne labelXsl"> <xsl:value-of select="$name930076"/>  </td>
                                                <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup/LiquidityAssessmentItem930076">
                                                  <xsl:if test="Amount != ''">
                                                      <td class=" labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                        <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                      </td>
                                                      </xsl:if>
                                                      <xsl:if test="Amount = ''">
                                                      <td class=" labelXsl" align="right">
                                                        <span   style="color:#1500d4">0.00</span>
                                                      </td>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                  <td class="labelXsl"  align="center" >930077</td>
                                               <td class="subOne labelXsl"> <xsl:value-of select="$name930077"/>  </td>
                                                <xsl:for-each select="DS_LQ1/LiquidityAssessmentItem930077">
                                                  <td class="labelXsl"  align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(value,'###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                  <td class="labelXsl"  align="center" >930078</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930078"/>  </td>
                                                <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup/LiquidityAssessmentItem930078">
                                                  <xsl:if test="Amount != ''">
                                                      <td class=" labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                        <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                      </td>
                                                      </xsl:if>
                                                      <xsl:if test="Amount = ''">
                                                      <td class=" labelXsl" align="right">
                                                        <span   style="color:#1500d4">0.00</span>
                                                      </td>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                  <td class="labelXsl"  align="center" >930079</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930079"/>  </td>
                                                <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup/LiquidityAssessmentItem930079">
                                                  <xsl:if test="Amount != ''">
                                                      <td class=" labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                        <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                      </td>
                                                      </xsl:if>
                                                      <xsl:if test="Amount = ''">
                                                      <td class=" labelXsl" align="right">
                                                        <span   style="color:#1500d4">0.00</span>
                                                      </td>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </tr>
                                             <tr>
                                                  <td class="labelXsl"  align="center" >930080</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930080"/>  </td>
                                                <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup/LiquidityAssessmentItem930080">
                                                  <xsl:if test="Amount != ''">
                                                      <td class=" labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                        <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                      </td>
                                                      </xsl:if>
                                                      <xsl:if test="Amount = ''">
                                                      <td class=" labelXsl" align="right">
                                                        <span   style="color:#1500d4">0.00</span>
                                                      </td>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                  <td class="labelXsl"  align="center" >930082</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930082"/>  </td>
                                                <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup/LiquidityAssessmentItem930082">
                                                  <xsl:if test="Amount != ''">
                                                      <td class=" labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                        <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                      </td>
                                                      </xsl:if>
                                                      <xsl:if test="Amount = ''">
                                                      <td class=" labelXsl" align="right">
                                                        <span   style="color:#1500d4">0.00</span>
                                                      </td>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                  <td class="labelXsl"  align="center" >930083</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930083"/>  </td>
                                                <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup/LiquidityAssessmentItem930083">
                                                  <xsl:if test="Amount != ''">
                                                      <td class=" labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                        <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                      </td>
                                                      </xsl:if>
                                                      <xsl:if test="Amount = ''">
                                                      <td class=" labelXsl" align="right">
                                                        <span   style="color:#1500d4">0.00</span>
                                                      </td>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                  <td class="labelXsl"  align="center" >930084</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930084"/>  </td>
                                                <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup/LiquidityAssessmentItem930084">
                                                  <xsl:if test="Amount != ''">
                                                      <td class=" labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                        <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                      </td>
                                                      </xsl:if>
                                                      <xsl:if test="Amount = ''">
                                                      <td class=" labelXsl" align="right">
                                                        <span   style="color:#1500d4">0.00</span>
                                                      </td>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                  <td class="labelXsl"  align="center" >930085</td>
                                               <td class="labelXsl"> <xsl:value-of select="$name930085"/>  </td>
                                                <xsl:for-each select="DS_LQ1/LiquidityAssessmentItem930085">
                                                  <td class="labelXsl"  align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(value,'###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                  <td class="labelXsl"  align="center" >930086</td>
                                               <td class="subOne labelXsl"> <xsl:value-of select="$name930086"/>  </td>
                                                <xsl:for-each select="DS_LQ1/LiquidityAssessmentItem930086">
                                                  <td class="labelXsl"  align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(value,'###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                  <td class="labelXsl"  align="center" >930087</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930087"/>  </td>
                                                <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup/LiquidityAssessmentItem930087">
                                                  <xsl:if test="Amount != ''">
                                                      <td class=" labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                        <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                      </td>
                                                      </xsl:if>
                                                      <xsl:if test="Amount = ''">
                                                      <td class=" labelXsl" align="right">
                                                        <span   style="color:#1500d4">0.00</span>
                                                      </td>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                  <td class="labelXsl"  align="center" >930088</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930088"/>  </td>
                                                <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup/LiquidityAssessmentItem930088">
                                                  <xsl:if test="Amount != ''">
                                                      <td class=" labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                        <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                      </td>
                                                      </xsl:if>
                                                      <xsl:if test="Amount = ''">
                                                      <td class=" labelXsl" align="right">
                                                        <span   style="color:#1500d4">0.00</span>
                                                      </td>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                  <td class="labelXsl"  align="center" >930089</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930089"/>  </td>
                                                <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup/LiquidityAssessmentItem930089">
                                                  <xsl:if test="Amount != ''">
                                                      <td class=" labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                        <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                      </td>
                                                      </xsl:if>
                                                      <xsl:if test="Amount = ''">
                                                      <td class=" labelXsl" align="right">
                                                        <span   style="color:#1500d4">0.00</span>
                                                      </td>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                  <td class="labelXsl"  align="center" >930090</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930090"/>  </td>
                                                <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup/LiquidityAssessmentItem930090">
                                                 <xsl:if test="Amount != ''">
                                                      <td class=" labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                        <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                      </td>
                                                      </xsl:if>
                                                      <xsl:if test="Amount = ''">
                                                      <td class=" labelXsl" align="right">
                                                        <span   style="color:#1500d4">0.00</span>
                                                      </td>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </tr>
                                             <tr>
                                                  <td class="labelXsl"  align="center" >930091</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930091"/>  </td>
                                                <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup/LiquidityAssessmentItem930091">
                                                  <xsl:if test="Amount != ''">
                                                      <td class=" labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                        <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                      </td>
                                                      </xsl:if>
                                                      <xsl:if test="Amount = ''">
                                                      <td class=" labelXsl" align="right">
                                                        <span   style="color:#1500d4">0.00</span>
                                                      </td>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </tr>
                                             <tr>
                                                  <td class="labelXsl"  align="center" >930092</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930092"/>  </td>
                                                <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup/LiquidityAssessmentItem930092">
                                                  <xsl:if test="Amount != ''">
                                                      <td class=" labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                        <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                      </td>
                                                      </xsl:if>
                                                      <xsl:if test="Amount = ''">
                                                      <td class=" labelXsl" align="right">
                                                        <span   style="color:#1500d4">0.00</span>
                                                      </td>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </tr>
                                             <tr>
                                                  <td class="labelXsl"  align="center" >930093</td>
                                               <td class="subOne labelXsl"> <xsl:value-of select="$name930093"/>  </td>
                                                <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup/LiquidityAssessmentItem930093">
                                                  <xsl:if test="Amount != ''">
                                                      <td class=" labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                        <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                      </td>
                                                      </xsl:if>
                                                      <xsl:if test="Amount = ''">
                                                      <td class=" labelXsl" align="right">
                                                        <span   style="color:#1500d4">0.00</span>
                                                      </td>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </tr>
                                             <tr>
                                                  <td class="labelXsl"  align="center" >930094</td>
                                               <td class="subOne labelXsl"> <xsl:value-of select="$name930094"/>  </td>
                                                <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup/LiquidityAssessmentItem930094">
                                                  <xsl:if test="Amount != ''">
                                                      <td class=" labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                        <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                      </td>
                                                      </xsl:if>
                                                      <xsl:if test="Amount = ''">
                                                      <td class=" labelXsl" align="right">
                                                        <span   style="color:#1500d4">0.00</span>
                                                      </td>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </tr>
                                             <tr>
                                                  <td class="labelXsl"  align="center" >930095</td>
                                               <td class="subOne labelXsl"> <xsl:value-of select="$name930095"/>  </td>
                                                <xsl:for-each select="DS_LQ1/LiquidityAssessmentItem930095">
                                                  <td class="labelXsl"  align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(value,'###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                             <tr>
                                                  <td class="labelXsl"  align="center" >930096</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930096"/>  </td>
                                                <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup/LiquidityAssessmentItem930096">
                                                  <xsl:if test="Amount != ''">
                                                      <td class=" labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                        <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                      </td>
                                                      </xsl:if>
                                                      <xsl:if test="Amount = ''">
                                                      <td class=" labelXsl" align="right">
                                                        <span   style="color:#1500d4">0.00</span>
                                                      </td>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                  <td class="labelXsl"  align="center" >930097</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930097"/>  </td>
                                                <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup/LiquidityAssessmentItem930097">
                                                  <xsl:if test="Amount != ''">
                                                      <td class=" labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                        <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                      </td>
                                                      </xsl:if>
                                                      <xsl:if test="Amount = ''">
                                                      <td class=" labelXsl" align="right">
                                                        <span   style="color:#1500d4">0.00</span>
                                                      </td>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                  <td class="labelXsl"  align="center" >930105</td>
                                               <td class="labelXsl"> <xsl:value-of select="$name930105"/>  </td>
                                                <xsl:for-each select="DS_LQ1/DS_LQ1_Content/ContentRecordGroup/LiquidityAssessmentItem930105">
                                                  <xsl:if test="Amount != ''">
                                                      <td class=" labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
                                                        <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                      </td>
                                                      </xsl:if>
                                                      <xsl:if test="Amount = ''">
                                                      <td class=" labelXsl" align="right">
                                                        <span   style="color:#1500d4">0.00</span>
                                                      </td>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </tr>
                                        </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
