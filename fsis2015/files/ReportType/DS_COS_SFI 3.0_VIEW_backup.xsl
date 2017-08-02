<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>

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
                                                <td width="15%" colspan="2">
                                                    <xsl:for-each select="DS_COS/CommonHeader">
                                                        <xsl:value-of select="OrganizationId"/>
                                                    </xsl:for-each>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="bgGreen">FI Reporting Group ID :</td>
                                                <td colspan="2">
                                                    116003 - ชุดรวมทุกสำนักงานในประเทศ
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="bgGreen">Data Set Type :</td>
                                                <td colspan="2">
                                                    <xsl:value-of select="DS_COS/@name"/>
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
                                                    <xsl:value-of select="substring-after(substring-before(DataSetDate,'-'),'-')"/>
                                                </xsl:variable>
                                                <xsl:for-each select="DS_COS/CommonHeader">
                                                    <td width="20%" hight="15px" align="center">
                                                        <xsl:variable name="mo">
                                                            <xsl:value-of select="substring(DataSetDate,6,2)"/></xsl:variable>
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
                                                <td rowspan="2">CreditRiskMethod</td>
                                                <td rowspan="2">AddOnOrPotentialFutureCreditExposure</td>
                                                <td rowspan="2">RiskWeightedAssetOutstandingAmount</td>
                                                <td rowspan="2">NetProfitAndLossFromMarkToMarket</td>
                                                <td colspan="14">DataGroupInfo</td>

                                            </tr>
                                            <tr class="headTableXsl">
                                                <td >CustomerGroup</td>
                                                <td >ContingentType</td>
                                                <td >ExposureMethod</td>
                                                <td >BookingType</td>
                                                <td >NettingType</td>
                                                <td >CcfRate</td>
                                                <td >RwaRate</td>
                                                <td >InvolvedPartyType</td>
                                                <td >ArrangementCurrencyFlag</td>
                                                <td >NotionalPrincipalAmount</td>
                                                <td >SpecificProvision</td>
                                                <td >NetCreditEquivalentAmount</td>
                                                <td >ProfitFromMarkToMarket</td>
                                                <td >LossFromMarkToMarket</td>
                                            </tr>

                                            <xsl:for-each select="DS_COS/DS_COS_Content/ContentRecordGroup">

                                            <xsl:variable name="CreditRiskMethod" select="CreditRiskMethod"/>
                                            <xsl:variable name="AddOnOrPotentialFutureCreditExposure" select="AddOnOrPotentialFutureCreditExposure"/>
                                            <xsl:variable name="RiskWeightedAssetOutstandingAmount" select="RiskWeightedAssetOutstandingAmount"/>
                                            <xsl:variable name="NetProfitAndLossFromMarkToMarket" select="NetProfitAndLossFromMarkToMarket"/>


                                            <xsl:for-each select="DataGroupInfo/DataGroupDetails">
                                                    <tr>
                                                        <td class="labelXsl" align="left">
                                                            <xsl:value-of select="$CreditRiskMethod"/>
                                                        </td>
                                                        <td class="labelXsl" align="right">

                                                            <xsl:if test="$AddOnOrPotentialFutureCreditExposure !=''">
                                                                <xsl:if test="number($AddOnOrPotentialFutureCreditExposure)!='NaN'">
                                                                    <xsl:value-of select="format-number($AddOnOrPotentialFutureCreditExposure,'###,###,###,###,###,###,###,##0.00')"/>
                                                                </xsl:if>
                                                                <xsl:if test="number($AddOnOrPotentialFutureCreditExposure)='NaN'">
                                                                    <xsl:value-of select="format-number(0,'###,###,##0.00')"/>
                                                                </xsl:if>
                                                            </xsl:if>
                                                        </td>
                                                        <td  class="labelXsl " align="right">
                                                           <xsl:value-of  select="format-number($RiskWeightedAssetOutstandingAmount,'###,###,###,###,###,###,###,##0.00')"/>
                                                        </td>
                                                        <td class="labelXsl" align="right">
                                                           <xsl:value-of  select="format-number($NetProfitAndLossFromMarkToMarket,'###,###,###,###,###,###,###,##0.00')"/>
                                                        </td>
                                                        <td  class="labelXsl " align="left">
                                                            <xsl:value-of select="CustomerGroupValue"/>
                                                        </td>
                                                        <td class="labelXsl" align="left">
                                                            <xsl:value-of select="ContingentTypeValue"/>
                                                        </td>
                                                        <td class="labelXsl" align="left">
                                                            <xsl:value-of select="ExposureMethodValue"/>
                                                        </td>
                                                        <td class="labelXsl" align="left">
                                                            <xsl:value-of select="BookingTypeValue"/>
                                                        </td>
                                                        <td  class="labelXsl " align="left">
                                                            <xsl:value-of select="NettingTypeValue"/>
                                                        </td>
                                                        <td class="labelXsl" align="right">
                                                            <xsl:value-of  select="format-number(CcfRate,'###,###,###,###,###,###,###,##0.00')"/>
                                                        </td>
                                                        <td class="labelXsl" align="right">
                                                            <xsl:value-of  select="format-number(RwaRate,'###,###,###,###,###,###,###,##0.00')"/>
                                                        </td>
                                                        <td class="labelXsl" align="left">
                                                            <xsl:value-of select="InvolvedPartyTypeValue"/>
                                                        </td>
                                                        <td class="labelXsl" align="left">
                                                            <xsl:value-of select="ArrangementCurrencyFlagValue"/>
                                                        </td>
                                                        <td  class="labelXsl " align="right">
                                                            <xsl:value-of  select="format-number(NotionalPrincipalAmount,'###,###,###,###,###,###,###,##0.00')"/>
                                                        </td>
                                                        <td class="labelXsl" align="right">
                                                            <xsl:value-of  select="format-number(SpecificProvision,'###,###,###,###,###,###,###,##0.00')"/>
                                                        </td>
                                                        <td class="labelXsl" align="right">
                                                            <xsl:value-of  select="format-number(NetCreditEquivalentAmount,'###,###,###,###,###,###,###,##0.00')"/>
                                                        </td>
                                                        <td class="labelXsl" align="right">
                                                            <xsl:if test="ProfitFromMarkToMarket !=''">
                                                                <xsl:if test="number(ProfitFromMarkToMarket)!='NaN'">
                                                                    <xsl:value-of select="format-number(ProfitFromMarkToMarket,'###,###,###,###,###,###,###,##0.00')"/>
                                                                </xsl:if>
                                                                <xsl:if test="number(ProfitFromMarkToMarket)='NaN'">
                                                                    <xsl:value-of select="format-number(0,'###,###,##0.00')"/>
                                                                </xsl:if>
                                                            </xsl:if>
                                                         </td>
                                                        <td  class="labelXsl " align="right">
                                                            <xsl:if test="LossFromMarkToMarket !=''">
                                                                <xsl:if test="number(LossFromMarkToMarket)!='NaN'">
                                                                    <xsl:value-of select="format-number(LossFromMarkToMarket,'###,###,###,###,###,###,###,##0.00')"/>
                                                                </xsl:if>
                                                                <xsl:if test="number(LossFromMarkToMarket)='NaN'">
                                                                    <xsl:value-of select="format-number(0,'###,###,##0.00')"/>
                                                                </xsl:if>
                                                            </xsl:if>
                                                        </td>
                                                    </tr>
                                            </xsl:for-each>
                                            </xsl:for-each>

                                        </table>
                                    </td>
                                    <td width="28" background="../../images/table005.gif"> <img src="../../images/table005.gif" width="28" height="37"/> </td>
                                </tr>
                                <tr>
                                    <td> <img src="../../images/table006.gif" width="43" height="23" alt=""/>
                                    </td> <td background="../../images/table007.gif"></td>
                                    <td> <img src="../../images/table008.gif" width="28" height="23" alt=""/> </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>

            </body>
        </html>


    </xsl:template>

</xsl:stylesheet>