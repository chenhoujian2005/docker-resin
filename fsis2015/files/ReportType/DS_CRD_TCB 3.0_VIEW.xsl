<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <xsl:variable name="name501001">	สินเชื่ออนุมัติใหม่ในแต่ละเดือน(ค้ำประกัน)</xsl:variable>

            <xsl:variable name="name501002">  ลูกค้า/โครงการในประเทศ</xsl:variable>

            <xsl:variable name="name501003">  ลูกค้า/โครงการต่างประเทศ</xsl:variable>

            <xsl:variable name="name501004">  สินเชื่อปล่อยใหม่</xsl:variable>

            <xsl:variable name="name501005">เป้าหมายของสินเชื่ออนุมัติใหม่ในแต่ละเดือน</xsl:variable>

            <xsl:variable name="name501006">  เป้าหมายสินเชื่ออนุมัติใหม่</xsl:variable>

            <xsl:variable name="name501007">สินเชื่ออนุมัติใหม่ในแต่ละเดือน จำแนกเฉพาะลูกค้าและโครงการในประเทศ</xsl:variable>

            <xsl:variable name="name501008">  ลูกค้าเอกชน</xsl:variable>

            <xsl:variable name="name501009">    ภาคเกษตรกรรม</xsl:variable>

             <xsl:variable name="name501010">   ภาคอสังหาริมทรัพย์และก่อสร้าง</xsl:variable>

             <xsl:variable name="name501011">   ภาคอุตสาหกรรมการผลิต</xsl:variable>

            <xsl:variable name="name501012">    ภาคการพาณิชย์</xsl:variable>

             <xsl:variable name="name501013">  ภาคการบริการ</xsl:variable>

            <xsl:variable name="name501014">    อื่นๆ</xsl:variable>

            <xsl:variable name="name501015">  ลูกค้ารัฐวิสาหกิจและภาครัฐ</xsl:variable>

            <xsl:variable name="name501016">สินเชื่อปล่อยใหม่ในแต่ละเดือน (เม็ดเงินออกสู่ระบบ)</xsl:variable>

            <xsl:variable name="name501017">  ลูกค้า / โครงการในประเทศ</xsl:variable>

            <xsl:variable name="name501018">  ลูกค้า / โครงการต่างประเทศ</xsl:variable>

            <xsl:variable name="name501019">รวมสินเชื่อปล่อยใหม่ในแต่ละเดือน</xsl:variable>

            <xsl:variable name="name501020">สินเชื่อสุทธิ (Loan outstanding)</xsl:variable>

            <xsl:variable name="name501021">การวิเคราะห์สินเชื่อ (ค้ำประกัน)- สกุลเงิน</xsl:variable>

            <xsl:variable name="name501022">  สินเชื่อ ต่างประเทศ</xsl:variable>

            <xsl:variable name="name501023">  สินเชื่อ ในประเทศ</xsl:variable>

            <xsl:variable name="name501024">  สินเชื่อรวม (ค้ำประกัน)</xsl:variable>

            <xsl:variable name="name501025">สินเชื่อคงค้าง (ก่อนหักค่าเผื่อหนี้สงสัยจะสูญ)</xsl:variable>

            <xsl:variable name="name501026">  สินเชื่อคงค้างในส่วนของต้นเงินคงค้าง</xsl:variable>

            <xsl:variable name="name501027">   ลูกค้าเอกชน</xsl:variable>

             <xsl:variable name="name501028">     ภาคเกษตรกรรม</xsl:variable>

            <xsl:variable name="name501029">     ภาคอสังหาริมทรัพย์และก่อสร้าง</xsl:variable>

            <xsl:variable name="name501030">    ภาคอุตสาหกรรมการผลิต</xsl:variable>

             <xsl:variable name="name501031">    ภาคการพาณิชย์</xsl:variable>

             <xsl:variable name="name501032">     ภาคการบริการ</xsl:variable>

             <xsl:variable name="name501033">     อื่นๆ</xsl:variable>

             <xsl:variable name="name501034">   ลูกค้ารัฐวิสาหกิจและภาครัฐ</xsl:variable>

            <xsl:variable name="name501035">  สินเชื่อคงค้างในส่วนของดอกเบี้ยรับคงค้าง</xsl:variable>

            <xsl:variable name="name501036">การจัดชั้นสินเชื่อ - ตามมาตรฐาน ธ.พ.  8.</xsl:variable>

             <xsl:variable name="name501037"> ลูกหนี้ปกติ</xsl:variable>

             <xsl:variable name="name501038"> ลูกหนี้กล่าวถึงเป็นพิเศษ</xsl:variable>

             <xsl:variable name="name501039"> ลูกหนี้จัดชั้นต่ำกว่ามาตรฐาน</xsl:variable>

            <xsl:variable name="name501040">  ลูกหนี้จัดชั้นสงสัย</xsl:variable>

            <xsl:variable name="name501041">  ลูกหนี้จัดชั้นสงสัยจะสูญ</xsl:variable>

            <xsl:variable name="name501042">  สินเชื่อรวม (ค้ำประกัน)</xsl:variable>

            <xsl:variable name="name501043"> มูลค่าหลักประกันที่จะนำมาหักออกจากมูลหนี้ก่อนการกันสำรอง</xsl:variable>

            <xsl:variable name="name501044">  ลูกหนี้ปกติ</xsl:variable>

            <xsl:variable name="name501045">  ลูกหนี้กล่าวถึงเป็นพิเศษ</xsl:variable>

             <xsl:variable name="name501046"> ลูกหนี้จัดชั้นต่ำกว่ามาตรฐาน</xsl:variable>

            <xsl:variable name="name501047">  ลูกหนี้จัดชั้นสงสัย</xsl:variable>

            <xsl:variable name="name501048"> ลูกหนี้จัดชั้นสงสัยจะสูญ</xsl:variable>

            <xsl:variable name="name501049">  รวมมูลค่าหลักประกัน</xsl:variable>

            <xsl:variable name="name501050"> สินเชื่อสุทธิหลังหักหลักประกัน</xsl:variable>

            <xsl:variable name="name501051">  ลูกหนี้ปกติ</xsl:variable>

            <xsl:variable name="name501052">  ลูกหนี้กล่าวถึงเป็นพิเศษ</xsl:variable>

            <xsl:variable name="name501053">  ลูกหนี้จัดชั้นต่ำกว่ามาตรฐาน</xsl:variable>

            <xsl:variable name="name501054">  ลูกหนี้จัดชั้นสงสัย</xsl:variable>

            <xsl:variable name="name501055">  ลูกหนี้จัดชั้นสงสัยจะสูญ</xsl:variable>

            <xsl:variable name="name501056">  สินเชื่อสุทธิหลังหักหลักประกัน</xsl:variable>

            <xsl:variable name="name501057">สำรองสินทรัพย์จัดชั้น</xsl:variable>

            <xsl:variable name="name501058">  ลูกหนี้ปกติ - สำรอง 1%</xsl:variable>

            <xsl:variable name="name501059">  ลูกหนี้กล่าวถึงเป็นพิเศษ - สำรอง 2%</xsl:variable>

             <xsl:variable name="name501060"> ลูกหนี้จัดชั้นต่ำกว่ามาตรฐาน - สำรอง 20%</xsl:variable>

             <xsl:variable name="name501061"> ลูกหนี้จัดชั้นสงสัย - สำรอง 50%</xsl:variable>

            <xsl:variable name="name501062">  ลูกหนี้จัดชั้นสงสัยจะสูญ - สำรอง 100%</xsl:variable>

            <xsl:variable name="name501063">การ์กันสำรองขั้นต่ำ (ธ.พ.)</xsl:variable>

            <xsl:variable name="name501064"> สินเชื่อสุทธิ (ค้ำประกัน)</xsl:variable>

            <xsl:variable name="name501065"> หนี้ที่ไม่ก่อให้เกิดรายได้ (ค้ำประกัน)</xsl:variable>

            <xsl:variable name="name501066">อายุเฉลี่ยของสินเชื่อ (ค้ำประกัน)</xsl:variable>

            <xsl:variable name="name501067">การคำนวณเงินกองทุนต่อสินทรัพย์เสี่ยง</xsl:variable>

            <xsl:variable name="name501068">รายการระหว่างธนาคาร และ เงินลงทุน (น้ำหนัก20%)</xsl:variable>

            <xsl:variable name="name501069">รายการระหว่างธนาคาร - ในประเทศ</xsl:variable>

            <xsl:variable name="name501070">รายการระหว่างธนาคาร - ต่างประเทศv</xsl:variable>

            <xsl:variable name="name501071">หลักทรัพย์ซื้อโดยมีสัญญาขายคืน</xsl:variable>

            <xsl:variable name="name501072">หลักทรัพย์ที่ไม่ใช่ของรัฐบาล และหลักทรัพย์อื่นๆ</xsl:variable>

            <xsl:variable name="name501073">รวมรายการระหว่างธนาคาร และ เงินลงทุน</xsl:variable>

            <xsl:variable name="name501074">สินเชื่อ</xsl:variable>

            <xsl:variable name="name501075">สินเชื่อ - ที่อยู่อาศัย หรือสินทรัพย์ที่มีน้ำหนัก 50 %                   </xsl:variable>

            <xsl:variable name="name501076">สินเชื่อ - อื่นๆ (น้ำหนัก 100%)</xsl:variable>

            <xsl:variable name="name501077">รวมสินเชื่อ</xsl:variable>

            <xsl:variable name="name501078">สินทรัพย์เสี่ยง (ธ.พ.) - (ไม่รวมภาระผูกพัน)</xsl:variable>

            <xsl:variable name="name501079">รายการนอกงบดุล - ภาระผูกพัน</xsl:variable>

            <xsl:variable name="name501080">ภาระผูกพันที่มีน้ำหนัก 20%</xsl:variable>

            <xsl:variable name="name501081">ภาระผูกพันที่มีน้ำหนัก 50%</xsl:variable>

            <xsl:variable name="name501082">ภาระผูกพันที่มีน้ำหนัก 100%</xsl:variable>

            <xsl:variable name="name501083">รวมสินทรัพย์เสี่ยง</xsl:variable>

            <xsl:variable name="name501084">เงินกองทุน</xsl:variable>

            <xsl:variable name="name501085">เงินกองทุนชั้นที่ 1</xsl:variable>

            <xsl:variable name="name501086">หัก Goodwill และ Intangibles</xsl:variable>

            <xsl:variable name="name501087">เงินกองทุนชั้นที่ 1 - สุทธิ</xsl:variable>

            <xsl:variable name="name501088">เงินกองทุนชั้นที่ 2</xsl:variable>

            <xsl:variable name="name501089">รวมเงินกองทุน (Adjusted Capital)</xsl:variable>

            <xsl:variable name="name501090">อัตราเงินกองทุนต่อสินทรัพย์เสี่ยง</xsl:variable>

            <xsl:variable name="name501091">เงินกองทุนต่อสินทรัพย์เสี่ยง</xsl:variable>

            <xsl:variable name="name501092">เงินกองทุนชั้นที่ 1  สินทรัพย์เสี่ยง - สุทธิ</xsl:variable>

            <xsl:variable name="name501093">เงินกองทุนชั้นที่ 2  สินทรัพย์เสี่ยง</xsl:variable>


            <head>
                <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
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
                                                <td class="bgGreen">Organization :</td>
                                                <td width="80%" colspan="3">
                                                    <xsl:for-each select="DS_CRD/CommonHeader">
                                                        <xsl:value-of select="OrganizationId"/>
                                                    </xsl:for-each>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="bgGreen">FI Reporting Group :</td>
                                                <td width="80%" colspan="3">
					                               116003 - ชุดรวมทุกสำนักงานในประเทศ
                                                </td>
                                            </tr>
                                               <tr>
                                                <td  class="bgGreen">Data Set Type :</td>
                                                <td colspan="3">
                                                    <xsl:value-of select="DS_CRD/@name"/>
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
                                                            <xsl:variable name="month"><xsl:value-of select="substring-after(substring-before(DataSetDate,'-'),'-')"/></xsl:variable>
                                                            <xsl:for-each select="DS_CRD/CommonHeader">
							    <td width="20%" hight="15px" align="center">
                                                                      <xsl:value-of select="substring(DataSetDate,9,2)"/>
                                                                </td>
                                                                <td align="center">
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
                                        <table class="displayTable" width="100%">
                                            <tr class="headTableXsl">
                                                <td colspan="3" align="center">Credit</td>
                                            </tr>
                                            <tr class="headTableXsl">
                                                <td align="center" colspan="2">Credit Item</td>
                                                <td align="center">Amount</td>
                                            </tr>

                                            <tr>
                                                <td width="10%" align="center" class="labelXsl">501001</td>
                                                <td class="labelXsl">
                                                    <xsl:value-of select="$name501001"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501002">
                                                    <td align="right" class="labelXsl"></td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501002</td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name501002"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501002">
                                                    <td align="right" class="labelXsl">
                                                        <xsl:if test="not(Amount ='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501003</td>
                                                <td class="paddingSub labelXsl">
                                                   <xsl:value-of select="$name501003"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501003">
                                                    <td align="right" class="labelXsl">
                                                        <xsl:if test="not(Amount ='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501004</td>
                                                <td class="paddingSub labelXsl">
                                                     <xsl:value-of select="$name501004"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501004">
                                                    <td align="right" class="labelXsl">
                                                        <xsl:if test="not(Amount ='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501005</td>
                                                <td class="labelXsl">
                                                     <xsl:value-of select="$name501005"/>
                                                </td>

                                                <td align="right" class="labelXsl">
                                                    <xsl:if test="not(Amount ='')">
                                                        <xsl:for-each
                                                                select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501005">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:for-each>
                                                    </xsl:if>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501006</td>
                                                <td class="paddingSub labelXsl">
                                                   <xsl:value-of select="$name501006"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501006">
                                                    <td align="right" class="labelXsl">
                                                        <xsl:if test="not(Amount ='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501007</td>
                                                <td class="labelXsl">
                                                    <xsl:value-of select="$name501007"/>
                                                </td>

                                                <td align="right" class="labelXsl">
                                                    <xsl:if test="not(Amount ='')">
                                                        <xsl:for-each
                                                                select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501007">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:for-each>
                                                    </xsl:if>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501008</td>
                                                <td class="paddingSub labelXsl">
                                                   <xsl:value-of select="$name501008"/>
                                                </td>
                                                <td align="right" class="labelXsl">
                                                    <xsl:if test="not(Amount ='')">
                                                        <xsl:for-each
                                                                select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501008">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:for-each>
                                                    </xsl:if>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501009</td>
                                                <td class="subOne labelXsl">
                                                    <xsl:value-of select="$name501009"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501009">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test="not(Amount ='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501010</td>
                                                <td class="subOne labelXsl">
                                                     <xsl:value-of select="$name501010"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501010">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test="not(Amount ='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501011</td>
                                                <td class="subOne labelXsl">
                                                     <xsl:value-of select="$name501011"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501011">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test="not(Amount ='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501012</td>
                                                <td class="subOne labelXsl">
                                                     <xsl:value-of select="$name501012"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501012">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test="not(Amount ='')">
                                                            <span style="color:#1500d4"><xsl:value-of  select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501013</td>
                                                <td class="subOne labelXsl">
                                                     <xsl:value-of select="$name501013"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501013">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test="not(Amount ='')">
                                                            <span style="color:#1500d4"><xsl:value-of  select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501014</td>
                                                <td class="subOne labelXsl">
                                                     <xsl:value-of select="$name501014"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501014">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test="not(Amount ='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501015</td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name501015"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501015">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test="not(Amount ='')">
                                                            <span style="color:#1500d4"><xsl:value-of  select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501016</td>
                                                <td class="labelXsl">
                                                     <xsl:value-of select="$name501016"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501017">
                                                    <td class="labelXsl" align="right"></td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501017</td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name501017"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501017">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test="not(Amount ='')">
                                                             <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501018</td>
                                                <td class="paddingSub labelXsl">
                                                     <xsl:value-of select="$name501018"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501018">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test="not(Amount ='')">
                                                            <span style="color:#1500d4"><xsl:value-of   select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501019</td>
                                                <td class="labelXsl">
                                                   <xsl:value-of select="$name501019"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501019">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test="not(Amount ='')">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501020</td>
                                                <td class="labelXsl">
                                                     <xsl:value-of select="$name501020"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501020">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test="not(Amount ='')">
                                                            <span style="color:#1500d4"><xsl:value-of   select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501021</td>
                                                <td class="labelXsl">
                                                     <xsl:value-of select="$name501021"/>
                                                </td>
                                                <td align="right" class="labelXsl">
                                                    <xsl:if test="not(Amount ='')">
                                                        <xsl:for-each
                                                                select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501021">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:for-each>
                                                    </xsl:if>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501022</td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name501022"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501022">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test="not(Amount ='')">
                                                            <span style="color:#1500d4"><xsl:value-of   select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501023</td>
                                                <td class="paddingSub labelXsl">
                                                   <xsl:value-of select="$name501023"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501023">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test="not(Amount ='')">
                                                            <span style="color:#1500d4"><xsl:value-of  select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501024</td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name501024"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501024">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test="not(Amount ='')">
                                                            <span style="color:#1500d4"><xsl:value-of    select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501025</td>
                                                <td class="labelXsl">
                                                    <xsl:value-of select="$name501025"/>
                                                </td>

                                                <td class="labelXsl" align="right">
                                                    <xsl:if test="not(Amount ='')">
                                                        <xsl:for-each
                                                                select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501024">
                                                            <span style="color:#1500d4"><xsl:value-of  select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:for-each>
                                                    </xsl:if>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501026</td>
                                                <td class="paddingSub labelXsl">
                                                    <xsl:value-of select="$name501026"/>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <xsl:if test="not(Amount ='')">
                                                        <xsl:for-each
                                                                select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501024">
                                                            <span style="color:#1500d4"><xsl:value-of  select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:for-each>
                                                    </xsl:if>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501027</td>
                                                <td class="subOne labelXsl">
                                                    <xsl:value-of select="$name501027"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501024">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test="not(Amount ='')">
                                                            <span style="color:#1500d4"><xsl:value-of  select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501028</td>
                                                <td class="subTwo labelXsl">
                                                   <xsl:value-of select="$name501028"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501024">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test="not(Amount ='')">
                                                            <span style="color:#1500d4"><xsl:value-of   select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501029</td>
                                                <td class="subTwo labelXsl">
                                                    <xsl:value-of select="$name501029"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501029">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test="not(Amount ='')">
                                                            <span style="color:#1500d4"><xsl:value-of    select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501030</td>
                                                <td class="subTwo labelXsl">
                                                     <xsl:value-of select="$name501030"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501030">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test="not(Amount ='')">
                                                            <span style="color:#1500d4"><xsl:value-of   select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501031</td>
                                                <td class="subTwo labelXsl">
                                                    <xsl:value-of select="$name501031"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501031">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test="not(Amount ='')">
                                                            <span style="color:#1500d4"><xsl:value-of   select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501032</td>
                                                <td class="subTwo labelXsl">
                                                    <xsl:value-of select="$name501032"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501032">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test="not(Amount ='')">
                                                            <span style="color:#1500d4"><xsl:value-of   select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501033</td>
                                                <td class="subTwo labelXsl">
                                                    <xsl:value-of select="$name501033"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501033">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test="not(Amount ='')">
                                                            <span style="color:#1500d4"><xsl:value-of  select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501034</td>
                                                <td class="subOne labelXsl">
                                                    <xsl:value-of select="$name501034"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501034">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test="not(Amount ='')">
                                                            <span style="color:#1500d4"><xsl:value-of    select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501035</td>
                                                <td class="paddingSub labelXsl">
                                                   <xsl:value-of select="$name501035"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501035">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test="not(Amount ='')">
                                                            <span style="color:#1500d4"><xsl:value-of   select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501036</td>
                                                <td class="labelXsl labelXsl">
                                                   <xsl:value-of select="$name501036"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501037">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test="not(Amount ='')">
                                                            <span style="color:#1500d4"><xsl:value-of    select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501037</td>
                                                <td class="labelXsl">
                                                    <xsl:value-of select="$name501037"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501037">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test="not(Amount ='')">
                                                            <span style="color:#1500d4"><xsl:value-of    select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501038</td>
                                                <td class="labelXsl">
                                                    <xsl:value-of select="$name501038"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501038">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test="not(Amount ='')">
                                                            <span style="color:#1500d4"><xsl:value-of    select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501039</td>
                                                <td class="labelXsl">
                                                    <xsl:value-of select="$name501039"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501039">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test="not(Amount ='')">
                                                            <span style="color:#1500d4"><xsl:value-of    select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501040</td>
                                                <td class="labelXsl">
                                                   <xsl:value-of select="$name501040"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501040">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test="not(Amount ='')">
                                                            <span style="color:#1500d4"><xsl:value-of    select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501041</td>
                                                <td class="labelXsl">
                                                    <xsl:value-of select="$name501041"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501041">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test="not(Amount ='')">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501042</td>
                                                <td class="labelXsl">
                                                    <xsl:value-of select="$name501042"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501042">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <xsl:if test="not(Amount ='')">
                                                                <span style="color:#1500d4"><xsl:value-of
                                                                        select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                            </xsl:if>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501043</td>
                                                <!--<td class="labelXsl"><xsl:value-of select="substring(DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501044/@name,1,56)"/></td>-->
                                                <td class="labelXsl">
                                                   <xsl:value-of select="$name501043"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501042">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <xsl:if test="not(Amount ='')">
                                                                <span style="color:#1500d4"><xsl:value-of
                                                                        select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                            </xsl:if>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501044</td>
                                                <td class="labelXsl">
                                                   <xsl:value-of select="$name501044"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501044">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <xsl:if test="not(Amount ='')">
                                                                <span style="color:#1500d4"><xsl:value-of
                                                                        select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                            </xsl:if>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501045</td>
                                                <td class="labelXsl">
                                                  <xsl:value-of select="$name501045"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501045">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <xsl:if test="not(Amount ='')">
                                                                <span style="color:#1500d4"><xsl:value-of
                                                                        select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                            </xsl:if>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501046</td>
                                                <td class="labelXsl">
                                                   <xsl:value-of select="$name501046"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501046">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <xsl:if test="not(Amount ='')">
                                                                <span style="color:#1500d4"><xsl:value-of
                                                                        select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                            </xsl:if>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501047</td>
                                                <td class="labelXsl">
                                                   <xsl:value-of select="$name501047"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501047">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <xsl:if test="not(Amount ='')">
                                                                <span style="color:#1500d4"><xsl:value-of
                                                                        select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                            </xsl:if>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501048</td>
                                                <td class="labelXsl">
                                                     <xsl:value-of select="$name501048"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501048">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <xsl:if test="not(Amount ='')">
                                                                <span style="color:#1500d4"><xsl:value-of
                                                                        select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                            </xsl:if>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501049</td>
                                                <td class="labelXsl">
                                                    <xsl:value-of select="$name501049"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501049">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <xsl:if test="not(Amount ='')">
                                                                <span style="color:#1500d4"><xsl:value-of
                                                                        select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                            </xsl:if>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501050</td>
                                                <td class="labelXsl">
                                                    <xsl:value-of select="$name501050"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501051">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <xsl:if test="not(Amount ='')">
                                                                <span style="color:#1500d4"><xsl:value-of
                                                                        select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                            </xsl:if>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501051</td>
                                                <td class="labelXsl">
                                                    <xsl:value-of select="$name501051"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501051">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <xsl:if test="not(Amount ='')">
                                                                <span style="color:#1500d4"><xsl:value-of
                                                                        select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                            </xsl:if>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501052</td>
                                                <td class="labelXsl">
                                                    <xsl:value-of select="$name501052"/>
                                                </td>
                                                <xsl:variable name="var2">
                                                    <xsl:value-of
                                                            select="substring-after(DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501052/@name,'\')"/>
                                                </xsl:variable>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501052">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <xsl:if test="not(Amount ='')">
                                                                <span style="color:#1500d4"><xsl:value-of
                                                                        select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                            </xsl:if>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501053</td>
                                                <td class="labelXsl">
                                                   <xsl:value-of select="$name501053"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501053">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <xsl:if test="not(Amount ='')">
                                                                <span style="color:#1500d4"><xsl:value-of
                                                                        select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                            </xsl:if>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501054</td>
                                                <td class="labelXsl">
                                                     <xsl:value-of select="$name501054"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501054">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <xsl:if test="not(Amount ='')">
                                                                <span style="color:#1500d4"><xsl:value-of
                                                                        select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                            </xsl:if>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501055</td>
                                                <td class="labelXsl">
                                                    <xsl:value-of select="$name501055"/>
                                                </td>

                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501055">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <xsl:if test="not(Amount ='')">
                                                                <span style="color:#1500d4"><xsl:value-of
                                                                        select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                            </xsl:if>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501056</td>
                                                <td class="labelXsl">
                                                    <xsl:value-of select="$name501056"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501056">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <xsl:if test="not(Amount ='')">
                                                                <span style="color:#1500d4"><xsl:value-of
                                                                        select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                            </xsl:if>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501057</td>
                                                <td class="labelXsl">
                                                     <xsl:value-of select="$name501057"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501058">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <xsl:if test="not(Amount ='')">
                                                                <span style="color:#1500d4"><xsl:value-of
                                                                        select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                            </xsl:if>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501058</td>
                                                <td class="labelXsl">
                                                   <xsl:value-of select="$name501058"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501058">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <xsl:if test="not(Amount ='')">
                                                                <span style="color:#1500d4"><xsl:value-of
                                                                        select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                            </xsl:if>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501059</td>
                                                <td class="labelXsl">
                                                    <xsl:value-of select="$name501059"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501059">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <xsl:if test="not(Amount ='')">
                                                                <span style="color:#1500d4"><xsl:value-of
                                                                        select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                            </xsl:if>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501060</td>
                                                <td class="labelXsl">
                                                    <xsl:value-of select="$name501060"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501060">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <xsl:if test="not(Amount ='')">
                                                                <span style="color:#1500d4"><xsl:value-of
                                                                        select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                            </xsl:if>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501061</td>
                                                <td class="labelXsl">
                                                    <xsl:value-of select="$name501061"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501061">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <xsl:if test="not(Amount ='')">
                                                                <span style="color:#1500d4"><xsl:value-of
                                                                        select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                            </xsl:if>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501062</td>
                                                <td class="labelXsl">
                                                    <xsl:value-of select="$name501062"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501062">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>

                                                <td align="center" class="labelXsl">501063</td>
                                                    <td class="labelXsl">
                                                        <xsl:value-of select="$name501063"/>

                                                    </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501063">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>

                                                <td align="center" class="labelXsl">501064</td>
                                                 <td class="labelXsl">
                                                        <xsl:value-of select="$name501064"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501064">

                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>

                                                <td align="center" class="labelXsl">501065</td>
                                                <td class="labelXsl">
                                                       <xsl:value-of select="$name501065"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501065">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>

                                                <td align="center" class="labelXsl">501066</td>
                                                <td class="labelXsl">
                                                        <xsl:value-of select="$name501066"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501066">

                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>

                                                <td align="center" class="labelXsl">501067</td>
                                                <td class="labelXsl">
                                                        <xsl:value-of select="$name501067"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501067">

                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>

                                                <td align="center" class="labelXsl">501068</td>
                                                 <td class="labelXsl">
                                                        <xsl:value-of select="$name501068"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501068">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>

                                                <td align="center" class="labelXsl">501069</td>
                                                <td class="labelXsl">
                                                        <xsl:value-of select="$name501069"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501069">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>

                                                <td align="center" class="labelXsl">501070</td>
                                                <td class="labelXsl">
                                                        <xsl:value-of select="$name501070"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501070">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>

                                                <td align="center" class="labelXsl">501071</td>
                                                 <td class="labelXsl">
                                                        <xsl:value-of select="$name501071"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501071">

                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>

                                                <td align="center" class="labelXsl">501072</td>
                                                 <td class="labelXsl">
                                                        <xsl:value-of select="$name501072"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501072">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>

                                                <td align="center" class="labelXsl">501073</td>
                                                <td class="labelXsl">
                                                       <xsl:value-of select="$name501073"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501073">

                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>

                                                <td align="center" class="labelXsl">501074</td>
                                                <td class="labelXsl">
                                                       <xsl:value-of select="$name501074"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501074">

                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>

                                                <td align="center" class="labelXsl">501075</td>
                                                <td class="labelXsl">
                                                         <xsl:value-of select="$name501075"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501075">

                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>

                                                <td align="center" class="labelXsl">501076</td>
                                                <td class="labelXsl" >
                                                        <xsl:value-of select="$name501076"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501076">

                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>

                                                <td align="center" class="labelXsl">501077</td>
                                                 <td class="labelXsl">
                                                         <xsl:value-of select="$name501077"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501077">

                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>

                                                <td align="center" class="labelXsl">501078</td>
                                                 <td class="labelXsl">
                                                         <xsl:value-of select="$name501078"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501078">

                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>

                                                <td align="center" class="labelXsl">501079</td>
                                                 <td class="labelXsl">
                                                        <xsl:value-of select="$name501079"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501079">

                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>

                                                <td align="center" class="labelXsl">501080</td>
                                                 <td class="labelXsl">
                                                        <xsl:value-of select="$name501080"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501080">

                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>

                                                <td align="center" class="labelXsl">501081</td>
                                                <td class="labelXsl">
                                                        <xsl:value-of select="$name501081"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501081">

                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>

                                                <td align="center" class="labelXsl">501082</td>
                                                 <td class="labelXsl">
                                                        <xsl:value-of select="$name501082"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501082">

                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>

                                                <td align="center" class="labelXsl">501083</td>
                                                 <td class="labelXsl">
                                                        <xsl:value-of select="$name501083"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501083">

                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>

                                                <td align="center" class="labelXsl">501084</td>
                                                <td class="labelXsl">
                                                        <xsl:value-of select="$name501084"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501084">

                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>

                                                <td align="center" class="labelXsl">501085</td>
                                                <td class="labelXsl">
                                                        <xsl:value-of select="$name501085"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501085">

                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>

                                                <td align="center" class="labelXsl">501086</td>
                                                 <td class="labelXsl">
                                                        <xsl:value-of select="$name501086"/>
                                                 </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501086">

                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>

                                                <td align="center" class="labelXsl">501087</td>
                                                 <td class="labelXsl">
                                                       <xsl:value-of select="$name501087"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501087">

                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>

                                                <td align="center" class="labelXsl">501088</td>
                                                <td class="labelXsl">
                                                        <xsl:value-of select="$name501088"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501088">

                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>

                                                <td align="center" class="labelXsl">501089</td>
                                                <td class="labelXsl">
                                                        <xsl:value-of select="$name501089"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501089">

                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>

                                                <td align="center" class="labelXsl">501090</td>
                                                <td class="labelXsl">
                                                        <xsl:value-of select="$name501090"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501090">

                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>

                                                <td align="center" class="labelXsl">501091</td>
                                                <td class="labelXsl">
                                                         <xsl:value-of select="$name501091"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501091">

                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>

                                                <td align="center" class="labelXsl">501092</td>
                                                 <td class="labelXsl">
                                                       <xsl:value-of select="$name501092"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501092">

                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">501093</td>
                                                <td class="labelXsl">
                                                        <xsl:value-of select="$name501093"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_CRD/DS_CRD_Content/ContentRecordGroup/CreditItem501093">

                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test=" not(Amount = '')">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
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
