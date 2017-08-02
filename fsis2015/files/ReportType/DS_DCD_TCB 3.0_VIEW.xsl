<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
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
                                                <td class="bgGreen" width="20%">Organization ID :</td>
                                                <td width="80%" colspan="3">
                                                    <xsl:for-each select="DS_DCD/CommonHeader">
                                                        <xsl:value-of select="OrganizationId"/>
                                                    </xsl:for-each>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="20%" class="bgGreen">FI Reporting Group :</td>
                                                <td colspan="3">
                                                    116003 - ชุดรวมทุกสำนักงานในประเทศ
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="bgGreen" width="20%">Data Set Type :</td>
                                                <td colspan="3" width="80%">
                                                    <xsl:value-of select="DS_DCD/@name"/>
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
                                                    <xsl:value-of
                                                            select="substring-after(substring-before(DataSetDate,'-'),'-')"/>
                                                </xsl:variable>
                                                <xsl:for-each select="DS_DCD/CommonHeader">
                                                    <td hight="15px" align="center">
                                                        <xsl:value-of select="substring(DataSetDate,9,2)"/>
                                                    </td>
                                                    <td hight="15px" align="center">
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
                                                            <xsl:when test="$mo = '9' or $mo = '09'">September
                                                            </xsl:when>
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
                                                    <td hight="15px" align="center">
                                                        <xsl:value-of select="substring(DataSetDate,1,4)"/>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                        </table>
                                        <table width="100%" class="displayTable" border="0">
                                            <tr class="headTableXsl">
                                                <td align="center">
                                                    Involved Party Type
                                                </td>
                                                <td align="center">
                                                    Involved Party Type Description
                                                </td>
                                                <td align="center">
                                                    Protection Flag
                                                </td>
                                                <td align="center">
                                                    Outstanding Amount Range
                                                </td>
                                                <td align="center">
                                                    Number of Customers
                                                </td>
                                                <td align="center">
                                                    Arrangement Type
                                                </td>
                                                <td align="center">
                                                    Arrangement Type Description
                                                </td>
                                                <td align="center">
                                                    Total Outstanding Amount
                                                </td>
                                            </tr>
                                            <xsl:for-each select="DS_DCD/DS_DCD_Content/ContentRecordGroup">
                                                <xsl:variable name="indexGroup" select="position()"/>
                                                <xsl:for-each
                                                        select="/DS_DCD/DS_DCD_Content/ContentRecordGroup[$indexGroup]/ArrangementOutstandingInfo/ArrangementOutstandingDetails">
                                                    <tr>
                                                        <td align="center" class="labelXsl">
                                                            <xsl:value-of
                                                                    select="/DS_DCD/DS_DCD_Content/ContentRecordGroup[$indexGroup]/InvolvedPartyType"/>
                                                        </td>
                                                        <td align="left" class="labelXsl" alight="left">
                                                            <xsl:value-of
                                                                    select="/DS_DCD/DS_DCD_Content/ContentRecordGroup[$indexGroup]/InvolvedPartyTypeValue"/>
                                                        </td>
                                                        <td align="center" class="labelXsl">
                                                            <xsl:value-of
                                                                    select="/DS_DCD/DS_DCD_Content/ContentRecordGroup[$indexGroup]/ProtectionFlag"/>
                                                        </td>
                                                        <td align="left" class="labelXsl">
                                                            <xsl:value-of
                                                                    select="/DS_DCD/DS_DCD_Content/ContentRecordGroup[$indexGroup]/OutstandingAmountRangeValue/@name"/>
                                                        </td>
                                                        <td align="right" class="labelXsl">
                                                            <span style="color:#1500d4">
                                                                <xsl:value-of
                                                                        select="format-number(/DS_DCD/DS_DCD_Content/ContentRecordGroup[$indexGroup]/NumberOfCustomers,'###,###,###,###,###,###,###,###')"/>
                                                            </span>
                                                        </td>
                                                        <td align="center" class="labelXsl">
                                                            <xsl:value-of select="ArrangementType"/>
                                                        </td>
                                                        <td align="left" class="labelXsl">
                                                            <xsl:value-of select="ArrangementTypeValue"/>
                                                        </td>
                                                        <td align="right" class="labelXsl">
                                                            <span style="color:#1500d4">
                                                                <xsl:value-of
                                                                        select="format-number(TotalOutstandingAmount,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </span>
                                                        </td>
                                                    </tr>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </table>
                                        <table width="100%" class="displayTable">
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
