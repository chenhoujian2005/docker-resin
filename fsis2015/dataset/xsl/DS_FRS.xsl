<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <META http-equiv="Content-Type" content="text/html; charset=TIS-620"/>
                <link rel="stylesheet" type="text/css" href="../../includes/css/style.css"/>
            </head>
            <body>
                <table width="98%" cellspacing="0" cellpadding="0" align="center">
                    <tr>
                        <td>
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="43">
                                        <img src="../../images/table001.gif" width="43" height="53"/>
                                    </td>
                                    <td background="../../images/table002.gif">
                                        <img src="../../images/table002.gif" width="362" height="53"/>
                                    </td>
                                    <td width="173">
                                        <img src="../../images/table003.gif" width="173" height="53"/>
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
                                        <table class="displayTable" width="50%">
                                            <tr>
                                                <td class="bgGreen" width="20%">Organization ID :  </td>
                                                <td width="15%" colspan="2">
                                                    <xsl:for-each select="DS_FRS/CommonHeader">
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
                                                <td bgcolor="#D2FF92" width="20%">Data Set Type :</td>
                                                <td colspan="2">
                                                    <xsl:value-of select="DS_FRS/@name"/>
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
                                                            <xsl:for-each select="DS_FRS/CommonHeader">
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
                                        <table width="100%" class="displayTable" border="0">
                                            <tr class="headTableXsl">
                                                <td colspan="8" width="20%" align="center">
                                                    FRS
                                                </td>
                                            </tr>
                                           <tr class="headTableXsl">
                                                <td  align="center">
                                                    Fee Type
                                                </td>
                                                <td  align="center">
                                                    Fee Type Description
                                                </td>
                                                <td  align="center">
                                                     Minimum Fee Rate Amount
                                                </td>
                                                <td  align="center">
                                                    Minimum Fee Rate Unit
                                                </td>
                                                <td  align="center">
                                                    Maximum Fee Rate Amount
                                                </td>
                                                <td  align="center">
                                                    Maximum Fee Rate Unit
                                                </td>
                                                <td  align="center">
                                                     Effective Date
                                                </td>
                                                <td  align="center">
                                                   End Date
                                                </td>
                                            </tr>
                                            <xsl:for-each select="DS_FRS/DS_FRS_Content/ContentRecordGroup">
                                                 <tr>
                                                     <td align="center" class="labelXsl"><xsl:value-of select="FeeType"/></td>
                                                    <td  align="left" class="labelXsl"><xsl:value-of select="FeeTypeValue"/></td>
                                                    <td align="right" class="labelXsl" >
                                                        <span style="color:#1500d4"><xsl:value-of select="format-number(MinimumFeeRateAmount,'###,###,###,###,##0.00')" /></span>
                                                    </td>
                                                     <td  align="center" class="labelXsl"><xsl:value-of select="MinimumFeeRateUnitValue"/></td>
                                                     <td  align="right" class="labelXsl">
                                                         <span style="color:#1500d4"><xsl:value-of select="format-number(MaximumFeeRateAmount,'###,###,###,###,##0.00')" /></span>
                                                     </td>
                                                     <td  align="left" class="labelXsl"><xsl:value-of select="MaximumFeeRateUnitValue"/></td>
                                                     <td  align="center" class="labelXsl"><xsl:value-of select="EffectiveDate"/></td>
                                                     <td align="center" class="labelXsl"><xsl:value-of select="EndDate"/></td>
                                            </tr>
                                            </xsl:for-each>
                                        </table>
                                    </td>
                                    <td width="28" background="../../images/table005.gif">
                                        <img src="../../images/table005.gif" width="28" height="37"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <img src="../../images/table006.gif" width="43" height="23" alt=""/>
                                    </td>
                                    <td background="../../images/table007.gif"></td>
                                    <td align="right">
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
