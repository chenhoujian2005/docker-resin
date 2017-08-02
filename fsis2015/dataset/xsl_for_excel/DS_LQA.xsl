<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <xsl:variable name="OrganizationId">OrganizationId</xsl:variable>
            <xsl:variable name="name930044">	1.  สินทรัพย์สภาพคล่อง</xsl:variable>

            <xsl:variable name="name930045">	   1.1  เงินฝากกระแสรายวันที่ ธนาคารแห่งประเทศไทย		</xsl:variable>

            <xsl:variable name="name930042">	   1.2 เงินฝากประจำที่ธนาคารแห่งประเทศไทย</xsl:variable>

            <xsl:variable name="name930098">	   1.3 เงินสดที่ศูนย์เงินสดกลางธนาคารพาณิชย์</xsl:variable>

            <xsl:variable name="name930046">	   1.4  เงินสดที่ธนาคารพาณิชย์(รวมเงินตราต่างประเทศ)</xsl:variable>

            <xsl:variable name="name930047">	   1.5  หลักทรัพย์ที่ปราศจากภาระผูกพัน</xsl:variable>

            <xsl:variable name="name930048">	      1.5.1  หลักทรัพย์รัฐบาลไทย</xsl:variable>

            <xsl:variable name="name930049">	         1.5.1.1  ตั๋วเงินคลัง</xsl:variable>

            <xsl:variable name="name930050">	         1.5.1.2  พันธบัตรรัฐบาล</xsl:variable>

            <xsl:variable name="name930051">	         1.5.1.3  ตั๋วสัญญาใช้เงินเพื่อปรับโครงสร้างหนี้ที่ออกโดยกระทรวงการคลัง</xsl:variable>

            <xsl:variable name="name930052">	      1.5.2  พันธบัตรธนาคารแห่งประเทศไทย</xsl:variable>

            <xsl:variable name="name930053">	      1.5.3  หุ้นกู้ พันธบัตร หรือตั๋วสัญญาใช้เงิน ที่กระทรวงการคลังค้ำประกันต้นเงินและดอกเบี้ย                                </xsl:variable>

            <xsl:variable name="name930054">	      1.5.4  พันธบัตร หรือตราสารแสดงสิทธิในหนี้ที่ออกโดยกองทุนเพื่อการฟื้นฟูและพัฒนาระบบสถาบันการเงิน                            </xsl:variable>

            <xsl:variable name="name930055">	      1.5.5  หุ้นกู้ พันธบัตร หรือตราสารแสดงสิทธิในหนี้ที่กองทุนเพื่อการฟื้นฟูและพัฒนาระบบสถาบันการเงินค้ำประกันต้นเงินและดอกเบี้ย                                   </xsl:variable>

            <xsl:variable name="name930056">	      1.5.6  หุ้นกู้ พันธบัตร หรือตราสารแสดงสิทธิในหนี้ที่ออกโดยองค์การของรัฐหรือรัฐวิสาหกิจซึ่ง ธนาคารแห่งประเทศไทยให้ความเห็นชอบ หรือที่ออกโดยบรรษัทเงินทุนอุตสาหกรรมแห่งประเทศไทย                   </xsl:variable>

            <xsl:variable name="name930057">	      1.5.7  หลักทรัพย์ที่บรรษัทตลาดรองสินเชื่อที่อยู่อาศัยออกใหม่สืบเนื่องจากโครงการแปลงสินทรัพย์เป็นหลักทรัพย์ตามพระราชกำหนดนิติบุคคลเฉพาะกิจเพื่อการแปลงสินทรัพย์เป็นหลักทรัพย์ พ.ศ. 2540                    </xsl:variable>

            <xsl:variable name="name930059">	2.  เงินฝาก</xsl:variable>

            <xsl:variable name="name930060">	   2.1  บัญชีผู้มีถิ่นที่อยู่ในต่างประเทศไม่เกิน 1 ปี                                      </xsl:variable>

            <xsl:variable name="name930061">	   2.2  บัญชีอื่น ๆ</xsl:variable>

            <xsl:variable name="name930062">	3.  เงินกู้ยืมจากต่างประเทศ</xsl:variable>

            <xsl:variable name="name930063">	   3.1  ไม่เกิน 1 ปี</xsl:variable>

            <xsl:variable name="name930064">	      3.1.1  กู้เองโดยตรง</xsl:variable>

            <xsl:variable name="name930065">	         3.1.1.1 ยอดเงินกู้ยืมจากต่างประเทศที่เกินกว่า 1 ปี แต่มีการชำระคืนภายใน 1 ปี นับแต่วันที่กู้                           </xsl:variable>

            <xsl:variable name="name930066">	         3.1.1.2 อื่นๆ</xsl:variable>

            <xsl:variable name="name930067">	      3.1.2  กู้ผ่านสาขาหรือสำนักงานใหญ่ในต่างประเทศ                                                  </xsl:variable>

            <xsl:variable name="name930068">	         3.1.2.1 ยอดเงินกู้ยืมจากต่างประเทศที่เกินกว่า1 ปี แต่มีการชำระคืนภายใน 1 ปี นับแต่วันที่กู้                                  </xsl:variable>

            <xsl:variable name="name930069">	         3.1.2.2 อื่นๆ</xsl:variable>

            <xsl:variable name="name930070">	   3.2  เกินกว่า 1 ปี</xsl:variable>

            <xsl:variable name="name930071">	      3.2.1  กู้เองโดยตรง</xsl:variable>

            <xsl:variable name="name930072">	      3.2.2  กู้ผ่านสาขาหรือสำนักงานใหญ่ในต่างประเทศ                                                   </xsl:variable>

            <xsl:variable name="name930073">	4.  ยอดเงินกู้ยืมระยะสั้นเพื่อการนำเข้า/ส่งออกที่ได้รับการยกเว้นไม่ต้องดำรงสินทรัพย์สภาพคล่อง                        </xsl:variable>

            <xsl:variable name="name930074">	5.  รายการถอนเงินฝากระหว่างเดือน</xsl:variable>

            <xsl:variable name="name930075">	  5.1  เงินฝากจ่ายคืนเมื่อทวงถาม</xsl:variable>

            <xsl:variable name="name930076">	  5.2  เงินฝากออมทรัพย์</xsl:variable>

            <xsl:variable name="name930077">	  5.3  เงินฝากจ่ายคืนเมื่อสิ้นระยะเวลา</xsl:variable>

            <xsl:variable name="name930078">	    5.3.1  ไม่เกิน 3 เดือน</xsl:variable>

            <xsl:variable name="name930079">	    5.3.2  เกินกว่า 3 เดือน แต่ไม่เกิน 6 เดือน                               </xsl:variable>

            <xsl:variable name="name930080">	    5.3.3  เกินกว่า 6 เดือน แต่ไม่เกิน 1 ปี</xsl:variable>

            <xsl:variable name="name930082">	    5.3.4  เกินกว่า 1 ปี แต่ไม่เกิน 1.5 ปี</xsl:variable>

            <xsl:variable name="name930083">	    5.3.5  เกินกว่า 1.5 ปี แต่ไม่เกิน 2 ปี</xsl:variable>

            <xsl:variable name="name930084">	    5.3.6  เกินกว่า 2 ปีขึ้นไป</xsl:variable>

            <xsl:variable name="name930085">	6.  รายละเอียดประกอบการประเมินฐานะสภาพคล่อง</xsl:variable>

            <xsl:variable name="name930086">	  6.1  เงินฝากธนาคารในประเทศ</xsl:variable>

            <xsl:variable name="name930087">	    6.1.1  ธนาคารแห่งประเทศไทย</xsl:variable>

            <xsl:variable name="name930088">	    6.1.2  ธนาคารพาณิชย์</xsl:variable>

            <xsl:variable name="name930089">	    6.1.3  ธนาคารออมสิน</xsl:variable>

            <xsl:variable name="name930090">	    6.1.4  ธนาคารเพื่อการเกษตรและสหกรณ์การเกษตร                  </xsl:variable>

            <xsl:variable name="name930091">	    6.1.5  ธนาคารอาคารสงเคราะห์</xsl:variable>

            <xsl:variable name="name930092">	    6.1.6  ธนาคารเพื่อการส่งออกและนำเข้าแห่งประเทศไทย                             </xsl:variable>

            <xsl:variable name="name930093">	  6.2  หุ้นกู้ พันธบัตรรัฐบาล และพันธบัตรรัฐวิสาหกิจ ที่ปราศจากภาระผูกพัน ซึ่งหักค่าเผื่อการลดราคาหลักทรัพย์แล้ว                        </xsl:variable>

            <xsl:variable name="name930094">	  6.3  ตั๋วเงินที่กระทรวงการคลังค้ำประกันต้นเงินและดอกเบี้ย</xsl:variable>

            <xsl:variable name="name930095">	  6.4  วงเงินเบิกเกินบัญชีที่ลูกค้ายังไม่ได้ถอน</xsl:variable>

            <xsl:variable name="name930096">	    6.4.1  บัญชีกระแสรายวัน</xsl:variable>

            <xsl:variable name="name930097">	    6.4.2  บัญชีอื่นๆ</xsl:variable>

            <xsl:variable name="name930105">	    7. หลักทรัพย์หรือตราสารแสดงสิทธิในหนี้ ที่ได้รับจากการทำธุรกรรมซื้อคืน (Repo) หรือจากธุรกรรมยืมและให้ยืมหลักทรัพย์ (SBL)    </xsl:variable>
            <head>
                <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            </head>
            <body>
                 <table class="displayTable" width="50%" border="1">
                                            <tr>
                                                <td class="bgGreen" width="20%">Organization ID :  </td>
                                                <td width="15%" colspan="2">
                                                    <xsl:for-each select="DS_LQA/CommonHeader">
                                                        <xsl:value-of select="OrganizationId"/>
                                                    </xsl:for-each>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="bgGreen" width="20%">FI Reporting Group :</td>    <!-- bgcolor="#9acd32"-->
                                                <td width="80%"  colspan="2">
                                                   116003 - ชุดรวมทุกสำนักงานในประเทศ
                                                </td>
                                            </tr>
                                            <tr>
                                                <td  width="20%">Data Set Type :</td>
                                                <td colspan="2">
                                                    <xsl:value-of select="DS_LQA/@name"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="bgGreen"></td>
                                                <td class="bgGreen" align="center">Month</td>
                                                <td class="bgGreen" align="center">Year</td>
                                            </tr>
                                            <tr>
                                                    <td class="bgGreen" >Data Set Date :</td>
                                                            <xsl:variable name="month"><xsl:value-of select="substring-after(substring-before(DataSetDate,'-'),'-')"/></xsl:variable>
                                                            <xsl:for-each select="DS_LQA/CommonHeader">
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
                                        <table width="2000px" class="displayTable" border="1">
                                            <tr class="headTableXsl">
                                                <td  align="center" colspan="16">Liquidity Assessment</td>
                                            </tr>
                                            <tr class="headTableXsl">
                                                <td  align="center" rowspan="2" colspan="2" >Liquidity Assessment Item</td>
                                                <td  align="center" colspan="14" >Item Date / Amount </td>

                                            </tr>
                                            <tr class="headTableXsl">
                                                 <xsl:for-each select="DS_LQA/DS_LQA_Content/ContentRecordGroup">
                                                    <td align="center" >
                                                        <xsl:value-of select="ItemDate"/>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td class="labelXsl"  align="center" >930044</td>
                                                <td class="labelXsl" > <xsl:value-of select="$name930044"/></td>
                                                <xsl:for-each select="DS_LQA/LiquidityAssessmentItem930044">
                                                  <td class="labelXsl"  align="right" >
                                                    <span style="color:#1500d4">
                                                        <xsl:value-of select="format-number(value,'###,###,###,##0.00')" />
                                                    </span>
                                                </td>
                                                </xsl:for-each>
                                           </tr>
                                           <tr>
                                                <td class="labelXsl"  align="center" >930045</td>
                                               <td class="subOne labelXsl"><xsl:value-of select="$name930045"/>  </td>
                                               <xsl:for-each select="DS_LQA/DS_LQA_Content/ContentRecordGroup/LiquidityAssessmentItem930045">
                                                  <td class=" labelXsl" align="right">
                                                    <span   style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                           </tr>
                                            <tr>
                                                 <td class="labelXsl"  align="center" >930042</td>
                                               <td class=" subOne labelXsl"><xsl:value-of select="$name930042"/> </td>
                                                <xsl:for-each select="DS_LQA/DS_LQA_Content/ContentRecordGroup/LiquidityAssessmentItem930042">
                                                  <td class="labelXsl"  align="right">
                                                      <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                    <!--<span style="color:#1500d4"><xsl:value-of select="$Amount930042" /></span>-->
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                             <tr>
                                                  <td class="labelXsl"  align="center" >930098</td>
                                               <td class="subOne  labelXsl"> <xsl:value-of select="$name930098"/> </td>
                                                <xsl:for-each select="DS_LQA/DS_LQA_Content/ContentRecordGroup/LiquidityAssessmentItem930098">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                             <tr>
                                                  <td class="labelXsl"  align="center" >930046</td>
                                               <td class=" subOne labelXsl"><xsl:value-of select="$name930046"/> </td>
                                                <xsl:for-each select="DS_LQA/DS_LQA_Content/ContentRecordGroup/LiquidityAssessmentItem930046">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>

                                             <tr>
                                                  <td class="labelXsl"  align="center" >930047</td>
                                               <td class=" subOne labelXsl"> <xsl:value-of select="$name930047"/>  </td>
                                                <xsl:for-each select="DS_LQA/LiquidityAssessmentItem930047">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(value,'###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>

                                             <tr>
                                                  <td class="labelXsl"  align="center" >930048</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930048"/>  </td>
                                                <xsl:for-each select="DS_LQA/LiquidityAssessmentItem930048">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(value,'###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                             <tr>
                                                  <td class="labelXsl"  align="center" >930049</td>
                                               <td class="subThree labelXsl"> <xsl:value-of select="$name930049"/>  </td>
                                                <xsl:for-each select="DS_LQA/DS_LQA_Content/ContentRecordGroup/LiquidityAssessmentItem930049">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                 <td class="labelXsl"  align="center" >930050</td>
                                               <td class="subThree labelXsl"> <xsl:value-of select="$name930050"/>  </td>
                                                <xsl:for-each select="DS_LQA/DS_LQA_Content/ContentRecordGroup/LiquidityAssessmentItem930050">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                 <td class="labelXsl"  align="center" >930051</td>
                                               <td class="subThree labelXsl"> <xsl:value-of select="$name930051"/>  </td>
                                                <xsl:for-each select="DS_LQA/DS_LQA_Content/ContentRecordGroup/LiquidityAssessmentItem930051">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                             <tr>
                                                  <td class="labelXsl"  align="center" >930052</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930052"/>  </td>
                                                <xsl:for-each select="DS_LQA/DS_LQA_Content/ContentRecordGroup/LiquidityAssessmentItem930052">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                             <tr>
                                                  <td class="labelXsl"  align="center" >930053</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930053"/>  </td>
                                                <xsl:for-each select="DS_LQA/DS_LQA_Content/ContentRecordGroup/LiquidityAssessmentItem930053">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                 <td class="labelXsl"  align="center" >930054</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930054"/>  </td>
                                                <xsl:for-each select="DS_LQA/DS_LQA_Content/ContentRecordGroup/LiquidityAssessmentItem930054">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                 <td class="labelXsl"  align="center" >930055</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930055"/>  </td>
                                                <xsl:for-each select="DS_LQA/DS_LQA_Content/ContentRecordGroup/LiquidityAssessmentItem930055">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                 <td class="labelXsl"  align="center" >930056</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930056"/>  </td>
                                                <xsl:for-each select="DS_LQA/DS_LQA_Content/ContentRecordGroup/LiquidityAssessmentItem930056">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                 <td class="labelXsl"  align="center" >930057</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930057"/>  </td>
                                                <xsl:for-each select="DS_LQA/DS_LQA_Content/ContentRecordGroup/LiquidityAssessmentItem930057">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                 <td class="labelXsl"  align="center" >930059</td>
                                               <td class="labelXsl"> <xsl:value-of select="$name930059"/>  </td>
                                                <xsl:for-each select="DS_LQA/LiquidityAssessmentItem930059">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(value,'###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                 <td class="labelXsl"  align="center" >930060</td>
                                               <td class="subOne labelXsl"> <xsl:value-of select="$name930060"/>  </td>
                                                <xsl:for-each select="DS_LQA/DS_LQA_Content/ContentRecordGroup/LiquidityAssessmentItem930060">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                               <td class="labelXsl"  align="center" >930061</td>
                                               <td class="subOne labelXsl"> <xsl:value-of select="$name930061"/>  </td>
                                                <xsl:for-each select="DS_LQA/DS_LQA_Content/ContentRecordGroup/LiquidityAssessmentItem930061">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                             <tr>
                                                  <td class="labelXsl"  align="center" >930062</td>
                                               <td class=" labelXsl"> <xsl:value-of select="$name930062"/>  </td>
                                                <xsl:for-each select="DS_LQA/LiquidityAssessmentItem930062">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(value,'###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                  <td class="labelXsl"  align="center" >930063</td>
                                               <td class="subOne labelXsl"> <xsl:value-of select="$name930063"/>  </td>
                                                <xsl:for-each select="DS_LQA/LiquidityAssessmentItem930063">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(value,'###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                  <td class="labelXsl"  align="center" >930064</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930064"/>  </td>
                                                <xsl:for-each select="DS_LQA/LiquidityAssessmentItem930064">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(value,'###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                  <td class="labelXsl"  align="center" >930065</td>
                                               <td class="subThree labelXsl"> <xsl:value-of select="$name930065"/>  </td>
                                                <xsl:for-each select="DS_LQA/DS_LQA_Content/ContentRecordGroup/LiquidityAssessmentItem930065">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                             <tr>
                                                  <td class="labelXsl"  align="center" >930066</td>
                                               <td class="subThree labelXsl"> <xsl:value-of select="$name930066"/>  </td>
                                                <xsl:for-each select="DS_LQA/DS_LQA_Content/ContentRecordGroup/LiquidityAssessmentItem930066">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                  <td class="labelXsl"  align="center" >930067</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930067"/>  </td>
                                                <xsl:for-each select="DS_LQA/LiquidityAssessmentItem930067">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(value,'###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                             <tr>
                                                  <td class="labelXsl"  align="center" >930068</td>
                                               <td class="subThree labelXsl"> <xsl:value-of select="$name930068"/>  </td>
                                                <xsl:for-each select="DS_LQA/DS_LQA_Content/ContentRecordGroup/LiquidityAssessmentItem930068">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                             <tr>
                                                  <td class="labelXsl"  align="center" >930069</td>
                                               <td class="subThree labelXsl"> <xsl:value-of select="$name930069"/>  </td>
                                                <xsl:for-each select="DS_LQA/DS_LQA_Content/ContentRecordGroup/LiquidityAssessmentItem930069">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                             <tr>
                                                  <td class="labelXsl"  align="center" >930070</td>
                                               <td class="subOne labelXsl"> <xsl:value-of select="$name930070"/>  </td>
                                                <xsl:for-each select="DS_LQA/LiquidityAssessmentItem930070">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(value,'###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                             <tr>
                                                  <td class="labelXsl"  align="center" >930071</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930071"/>  </td>
                                                <xsl:for-each select="DS_LQA/DS_LQA_Content/ContentRecordGroup/LiquidityAssessmentItem930071">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                             <tr>
                                                  <td class="labelXsl"  align="center" >930072</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930072"/>  </td>
                                                <xsl:for-each select="DS_LQA/DS_LQA_Content/ContentRecordGroup/LiquidityAssessmentItem930072">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                             <tr>
                                                  <td class="labelXsl"  align="center" >930073</td>
                                               <td class="labelXsl"> <xsl:value-of select="$name930073"/>  </td>
                                                <xsl:for-each select="DS_LQA/DS_LQA_Content/ContentRecordGroup/LiquidityAssessmentItem930073">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                             <tr>
                                                  <td class="labelXsl"  align="center" >930074</td>
                                               <td class=" labelXsl"> <xsl:value-of select="$name930074"/>  </td>
                                                <xsl:for-each select="DS_LQA/LiquidityAssessmentItem930074">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(value,'###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                             <tr>
                                                  <td class="labelXsl"  align="center" >930075</td>
                                               <td class="subOne labelXsl"> <xsl:value-of select="$name930075"/>  </td>
                                                <xsl:for-each select="DS_LQA/DS_LQA_Content/ContentRecordGroup/LiquidityAssessmentItem930075">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                  <td class="labelXsl"  align="center" >930076</td>
                                               <td class="subOne labelXsl"> <xsl:value-of select="$name930076"/>  </td>
                                                <xsl:for-each select="DS_LQA/DS_LQA_Content/ContentRecordGroup/LiquidityAssessmentItem930076">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                  <td class="labelXsl"  align="center" >930077</td>
                                               <td class="subOne labelXsl"> <xsl:value-of select="$name930077"/>  </td>
                                                <xsl:for-each select="DS_LQA/LiquidityAssessmentItem930077">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(value,'###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                  <td class="labelXsl"  align="center" >930078</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930078"/>  </td>
                                                <xsl:for-each select="DS_LQA/DS_LQA_Content/ContentRecordGroup/LiquidityAssessmentItem930078">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                  <td class="labelXsl"  align="center" >930079</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930079"/>  </td>
                                                <xsl:for-each select="DS_LQA/DS_LQA_Content/ContentRecordGroup/LiquidityAssessmentItem930079">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                             <tr>
                                                  <td class="labelXsl"  align="center" >930080</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930080"/>  </td>
                                                <xsl:for-each select="DS_LQA/DS_LQA_Content/ContentRecordGroup/LiquidityAssessmentItem930080">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                  <td class="labelXsl"  align="center" >930082</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930082"/>  </td>
                                                <xsl:for-each select="DS_LQA/DS_LQA_Content/ContentRecordGroup/LiquidityAssessmentItem930082">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                  <td class="labelXsl"  align="center" >930083</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930083"/>  </td>
                                                <xsl:for-each select="DS_LQA/DS_LQA_Content/ContentRecordGroup/LiquidityAssessmentItem930083">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                  <td class="labelXsl"  align="center" >930084</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930084"/>  </td>
                                                <xsl:for-each select="DS_LQA/DS_LQA_Content/ContentRecordGroup/LiquidityAssessmentItem930084">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                  <td class="labelXsl"  align="center" >930085</td>
                                               <td class="labelXsl"> <xsl:value-of select="$name930085"/>  </td>
                                                <xsl:for-each select="DS_LQA/LiquidityAssessmentItem930085">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(value,'###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                  <td class="labelXsl"  align="center" >930086</td>
                                               <td class="subOne labelXsl"> <xsl:value-of select="$name930086"/>  </td>
                                                <xsl:for-each select="DS_LQA/LiquidityAssessmentItem930086">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(value,'###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                  <td class="labelXsl"  align="center" >930087</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930087"/>  </td>
                                                <xsl:for-each select="DS_LQA/DS_LQA_Content/ContentRecordGroup/LiquidityAssessmentItem930087">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                  <td class="labelXsl"  align="center" >930088</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930088"/>  </td>
                                                <xsl:for-each select="DS_LQA/DS_LQA_Content/ContentRecordGroup/LiquidityAssessmentItem930088">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                  <td class="labelXsl"  align="center" >930089</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930089"/>  </td>
                                                <xsl:for-each select="DS_LQA/DS_LQA_Content/ContentRecordGroup/LiquidityAssessmentItem930089">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                  <td class="labelXsl"  align="center" >930090</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930090"/>  </td>
                                                <xsl:for-each select="DS_LQA/DS_LQA_Content/ContentRecordGroup/LiquidityAssessmentItem930090">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                             <tr>
                                                  <td class="labelXsl"  align="center" >930091</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930091"/>  </td>
                                                <xsl:for-each select="DS_LQA/DS_LQA_Content/ContentRecordGroup/LiquidityAssessmentItem930091">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                             <tr>
                                                  <td class="labelXsl"  align="center" >930092</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930092"/>  </td>
                                                <xsl:for-each select="DS_LQA/DS_LQA_Content/ContentRecordGroup/LiquidityAssessmentItem930092">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                             <tr>
                                                  <td class="labelXsl"  align="center" >930093</td>
                                               <td class="subOne labelXsl"> <xsl:value-of select="$name930093"/>  </td>
                                                <xsl:for-each select="DS_LQA/DS_LQA_Content/ContentRecordGroup/LiquidityAssessmentItem930093">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                             <tr>
                                                  <td class="labelXsl"  align="center" >930094</td>
                                               <td class="subOne labelXsl"> <xsl:value-of select="$name930094"/>  </td>
                                                <xsl:for-each select="DS_LQA/DS_LQA_Content/ContentRecordGroup/LiquidityAssessmentItem930094">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                             <tr>
                                                  <td class="labelXsl"  align="center" >930095</td>
                                               <td class="subOne labelXsl"> <xsl:value-of select="$name930095"/>  </td>
                                                <xsl:for-each select="DS_LQA/LiquidityAssessmentItem930095">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(value,'###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                             <tr>
                                                  <td class="labelXsl"  align="center" >930096</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930096"/>  </td>
                                                <xsl:for-each select="DS_LQA/DS_LQA_Content/ContentRecordGroup/LiquidityAssessmentItem930096">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                  <td class="labelXsl"  align="center" >930097</td>
                                               <td class="subTwo labelXsl"> <xsl:value-of select="$name930097"/>  </td>
                                                <xsl:for-each select="DS_LQA/DS_LQA_Content/ContentRecordGroup/LiquidityAssessmentItem930097">
                                                  <td class="labelXsl"  align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,###,###,###,##0.00')" /></span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>

                                        </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
