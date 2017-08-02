<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <xsl:variable name="name73002">บัญชีเงินรับฝากกระแสรายวัน</xsl:variable>
            <xsl:variable name="name73003">บัญชีเงินรับฝากออมทรัพย์         </xsl:variable>
            <xsl:variable name="name73004">บัญชีเงินรับฝากจ่ายคืนเมื่อสิ้นระยะเวลา (ไม่รวมบัตรเงินฝาก)</xsl:variable>
            <xsl:variable name="name73005"> ตั๋วสัญญาใช้เงิน / ตั๋วแลกเงิน</xsl:variable>
            <xsl:variable name="name73006"> บัตรเงินฝาก</xsl:variable>
            <xsl:variable name="name73008">เงินเบิกเกินบัญชี</xsl:variable>
            <xsl:variable name="name73009">เงินให้กู้ยืม</xsl:variable>
            <xsl:variable name="name73010">ตั๋วเงิน</xsl:variable>
            <xsl:variable name="name73012">อื่น ๆ</xsl:variable>
            <xsl:variable name="name73011">สินทรัพย์รวม (สุทธิ</xsl:variable>
            <head>
                <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                <link rel="stylesheet" type="text/css" href="../../includes/css/style.css"/>
            </head>
            <body>
                <table width="98%" cellspacing="0" cellpadding="0" align="center">
                    <tr>
                        <td>
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="43"><img src="../../images/table001.gif" width="43" height="53" /></td>
                                    <td background="../../images/table002.gif"><img src="../../images/table002.gif" width="362" height="53"/></td>
                                    <td width="173"><img src="../../images/table003.gif" width="173" height="53"/></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="43" background="../../images/table004.gif"><img src="../../images/table004.gif" width="43" height="37" /></td>
                                    <td width="95%">
                                            <table  class="displayTable"  width="100%">
                                                <tr>
                                                    <td class="bgGreen" width="20%">Organization Id :</td>
                                                    <td width="15%" colspan="2">
                                                        <xsl:for-each select="DS_BSM/CommonHeader">
                                                             <xsl:value-of select="OrganizationId"/>
                                                        </xsl:for-each>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="bgGreen" width="20%">Data Set Type :</td>
                                                    <td colspan="2">
                                                             <xsl:value-of select="DS_BSM/@name"/>
                                                    </td>
                                                </tr>
                                                <tr>
                                                <td class="bgGreen"></td>
                                                <td class="bgGreen" align="center">Month</td>
                                                <td class="bgGreen" align="center">Year</td>

                                            </tr>
                                            <tr>
                                                <td class="bgGreen">Data Set Date :</td>
                                                        <xsl:variable name="month"><xsl:value-of select="substring-after(substring-before(DataSetDate,'-'),'-')"/></xsl:variable>
                                                            <xsl:for-each select="DS_BSM/CommonHeader">
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
                                             <table class="displayTable"  width="100%" border="0">
                                                             <tr class="headTableXsl">
                                                                 <td align="center" rowspan="2" width="10%">Branch Summary Item</td>
                                                                 <td colspan="5" align="center" width="50%">เงินรับฝาก (หักส่วนลดจ่ายรอตัดบัญชี)</td>
                                                                 <td colspan="5" align="center" width="50%">เงินให้สินเชื่อ </td>
                                                             </tr>
                                                             <tr class="headTableXsl">
                                                                 <td align="center" width="10%">073002</td>
                                                                 <td align="center" width="10%">073003</td>
                                                                 <td align="center" width="10%">073004</td>
                                                                 <td align="center" width="10%">073005</td>
                                                                 <td align="center" width="10%" >073006</td>
                                                                 <td align="center" width="10%">073008</td>
                                                                 <td align="center" width="10%">073009</td>
                                                                 <td align="center" width="10%">073010</td>
                                                                 <td align="center" width="10%">073012</td>
                                                                 <td align="center" width="10%">073011</td>
                                                             </tr>
                                                             <tr class="headTableXsl">
                                                                  <td align="center" width="10%" >Branch Number</td>
                                                                 <td align="center" width="11%">
                                                                     <xsl:value-of select="$name73002"/>
                                                                 </td>
                                                                 <td align="center" width="10%">
                                                                     <xsl:value-of select="$name73003"/>
                                                                 </td>
                                                                 <td align="center" width="10%">
                                                                 <xsl:value-of select="$name73004"/>
                                                                 </td>
                                                                 <td align="center" width="10%">
                                                                 <xsl:value-of select="$name73005"/>
                                                                 </td>
                                                                 <td align="center" width="10%">
                                                                       <xsl:value-of select="$name73006"/>
                                                                 </td>
                                                                 <td align="center" width="10%">
                                                                     <xsl:value-of select="$name73008"/>
                                                                 </td>
                                                                 <td align="center" width="10%">
                                                                    <xsl:value-of select="$name73009"/>
                                                                 </td>
                                                                 <td align="center" width="10%">
                                                                     <xsl:value-of select="$name73010"/>
                                                                 </td>
                                                                 <td align="center" width="10%">
                                                                      <xsl:value-of select="$name73012"/>
                                                                 </td>
                                                                 <td align="center" width="10%">
                                                                    <xsl:value-of select="$name73011"/>
                                                                 </td>
                                                             </tr>
                                                <xsl:for-each select="DS_BSM/DS_BSM_Content/ContentRecordGroup">
                                                    <tr>
                                                        <td width="10%" align="center" class="labelXsl">
                                                            <xsl:value-of select="BranchNumber"/>
                                                        </td>
                                                        <td width="10%" align="right" class="labelXsl">
                                                            <xsl:if test="not(BranchSummaryItem073002 ='')">
                                                            <xsl:value-of select="format-number(BranchSummaryItem073002,'###,###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </td>
                                                        <td width="10%" align="right" class="labelXsl">
                                                            <xsl:if test="not(BranchSummaryItem073003 ='')">
                                                            <xsl:value-of select="format-number(BranchSummaryItem073003,'###,###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </td>
                                                        <td width="10%" align="right" class="labelXsl">
                                                            <xsl:if test="not(BranchSummaryItem073004 ='')">
                                                            <xsl:value-of select="format-number(BranchSummaryItem073004,'###,###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </td>
                                                        <td width="10%" align="right" class="labelXsl">
                                                            <xsl:if test="not(BranchSummaryItem073005 ='')">
                                                            <xsl:value-of select="format-number(BranchSummaryItem073005,'###,###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </td>
                                                        <td width="10%" align="right" class="labelXsl">
                                                            <xsl:if test="not(BranchSummaryItem073006 ='')">
                                                            <xsl:value-of select="format-number(BranchSummaryItem073006,'###,###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </td>
                                                        <td width="10%" align="right" class="labelXsl">
                                                            <xsl:if test="not(BranchSummaryItem073008 ='')">
                                                            <xsl:value-of select="format-number(BranchSummaryItem073008,'###,###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </td>
                                                        <td width="10%" align="right" class="labelXsl">
                                                            <xsl:if test="not(BranchSummaryItem073009 ='')">
                                                            <xsl:value-of select="format-number(BranchSummaryItem073009,'###,###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </td>
                                                        <td width="10%" align="right" class="labelXsl">
                                                            <xsl:if test="not(BranchSummaryItem073010 ='')">
                                                            <xsl:value-of select="format-number(BranchSummaryItem073010,'###,###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </td>
                                                        <td width="10%" align="right" class="labelXsl">
                                                            <xsl:if test="not(BranchSummaryItem073012 ='')">
                                                            <xsl:value-of select="format-number(BranchSummaryItem073012,'###,###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </td>
                                                        <td width="10%" align="right" class="labelXsl">
                                                            <xsl:if test="not(BranchSummaryItem073011 ='')">
                                                             <xsl:value-of select="format-number(BranchSummaryItem073011,'###,###,###,###,###,###,###,###,##0.00')"/>
                                                            </xsl:if>
                                                        </td>
                                                    </tr>
                                                </xsl:for-each>
                                             </table>
                                    </td>
                                    <td width="28" background="../../images/table005.gif"> <img src="../../images/table005.gif" width="28" height="37" /> </td>
                                </tr>
                                <tr>
                                    <td><img src="../../images/table006.gif" width="43" height="23" alt=""/> </td>
                                    <td background="../../images/table007.gif"> </td>
                                    <td><img src="../../images/table008.gif" width="28" height="23" alt=""/> </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>

            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
