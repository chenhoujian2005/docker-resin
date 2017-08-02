<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <xsl:variable name="ChangeMethod">ChangeMethod</xsl:variable>
            <xsl:variable name="OperationalRiskMethod">OperationalRiskMethod</xsl:variable>
            <xsl:variable name="OperationalRiskMethodDescription">OperationalRiskMethod Description</xsl:variable>
            <xsl:variable name="DataGroupInfo">DataGroupInfo</xsl:variable>
            <xsl:variable name="PeriodDate">PeriodDate</xsl:variable>
            <xsl:variable name="OperationalRiskItem">OperationalRiskItem</xsl:variable>
            <xsl:variable name="OperationalRiskItemDescription">OperationalRiskItem Description</xsl:variable>
            <xsl:variable name="Amount">Amount</xsl:variable>


            <head>
                <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                <link rel="stylesheet" type="text/css" href="../../includes/css/style.css"/>
            </head>
            <title>Specialized Financial Institutions Information System</title>
            <body>
                <table width="100%" cellspacing="0" cellpadding="0" align="center">
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
                                    <td width="100%">
                                        <table>
                                            <tr>
                                                <td align="left">
                                                    <button onclick="window.print()">Print</button>
                                                </td>
                                            </tr>
                                        </table>

                                        <table class="displayTable" width="50%">
                                            <tr>
                                                <td class="bgGreen" width="20%">Organization Id :</td>
                                                <td width="15%" colspan="3">
                                                    <xsl:for-each select="DS_OPR/CommonHeader">
                                                        <xsl:value-of select="OrganizationId"/>
                                                    </xsl:for-each>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="bgGreen">FI Reporting Group ID :</td>
                                                <td colspan="3">
                                                    116003 - ชุดรวมทุกสำนักงานในประเทศ
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="bgGreen">Data Set Type :</td>
                                                <td colspan="3">
                                                    <xsl:value-of select="DS_OPR/@name"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="bgGreen"></td>
                                                <td class="bgGreen" align="center">Month</td>
                                                <td class="bgGreen" align="center">Year</td>
                                            </tr>
                                            <tr>
                                                <td class="bgGreen">Data Set Date :</td>
                                                <xsl:variable name="month">
                                                    <xsl:value-of
                                                            select="substring-after(substring-before(DataSetDate,'-'),'-')"/>
                                                </xsl:variable>
                                                <xsl:for-each select="DS_OPR/CommonHeader">
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
                                                    <td width="20%" hight="15px" align="center">
                                                        <xsl:value-of select="substring(DataSetDate,1,4)"/>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                        </table>
                                        <table class="displayTable" width="100%">
                                            <tr class="headTableXsl">
                                                <td width="20%" rowspan="2">
                                                    <xsl:value-of select="$ChangeMethod"/>
                                                </td>
                                                <td width="10%" rowspan="2">
                                                    <xsl:value-of select="$OperationalRiskMethod"/>
                                                </td>
                                                <td width="20%" rowspan="2">
                                                    <xsl:value-of select="$OperationalRiskMethodDescription"/>
                                                </td>
                                                <td colspan="4">
                                                    <xsl:value-of select="$DataGroupInfo"/>
                                                </td>
                                            </tr>
                                            <tr class="headTableXsl">
                                                <td width="10%">
                                                    <xsl:value-of select="$PeriodDate"/>
                                                </td>
                                                <td width="10%">
                                                    <xsl:value-of select="$OperationalRiskItem"/>
                                                </td>
                                                <td width="20%">
                                                    <xsl:value-of select="$OperationalRiskItemDescription"/>
                                                </td>
                                                <td width="10%">
                                                    <xsl:value-of select="$Amount"/>
                                                </td>
                                            </tr>

                                            <xsl:for-each select="DS_OPR/DS_OPR_Content/ContentRecordGroup">
                                                <xsl:variable name="ChangeMethodValue" select="ChangeMethodValue"/>
                                                <xsl:variable name="OperationalRisk" select="OperationalRiskMethod"/>
                                                <xsl:variable name="OperationalRiskMethodValue" select="OperationalRiskMethodValue"/>

                                                <xsl:for-each select="DataGroupInfo/DataGroupDetails">
                                                    <tr>
                                                        <td class="labelXsl" align="left">
                                                            <xsl:value-of select="$ChangeMethodValue"/>
                                                        </td>
                                                        <td class="labelXsl" align="center">
                                                            <xsl:value-of select="$OperationalRisk"/>
                                                        </td>
                                                        <td class="labelXsl" align="left">
                                                            <xsl:value-of select="$OperationalRiskMethodValue"/>
                                                        </td>
                                                        <td class="labelXsl" align="center">
                                                            <xsl:value-of select="PeriodDate"/>
                                                        </td>
                                                        <td class="labelXsl" align="center">
                                                            <xsl:value-of select="OperationalRiskItem"/>
                                                        </td>
                                                        <td class="labelXsl" align="left">
                                                            <xsl:value-of select="OperationalRiskItemValue"/>
                                                        </td>
                                                        <td class="labelXsl" align="right">
                                                            <xsl:value-of  select="format-number(AmountValue,'###,###,###,###,###,###,###,##0.00')"/>
                                                        </td>
                                                    </tr>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                            <tr>
                                                <td colspan="7"></td>
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