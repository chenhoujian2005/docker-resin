<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <xsl:variable name="OrganizationId">OrganizationId</xsl:variable>
            <xsl:variable name="DataSetDate">DataSetDate</xsl:variable>
            <xsl:variable name="FiReportingGroupId">FiReportingGroupId</xsl:variable>
            <xsl:variable name="CreditRiskMethod">CreditRiskMethod</xsl:variable>
            <xsl:variable name="AddOnOrPotentialFutureCreditExposure">AddOnOrPotentialFutureCreditExposure
            </xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount">RiskWeightedAssetOutstandingAmount</xsl:variable>
            <xsl:variable name="NetProfitAndLossFromMarkToMarket">NetProfitAndLossFromMarkToMarket</xsl:variable>
            <xsl:variable name="DataGroupInfo">DataGroupInfo</xsl:variable>
            <xsl:variable name="CustomerGroup">CustomerGroup</xsl:variable>
            <xsl:variable name="ContingentType">ContingentType</xsl:variable>
            <xsl:variable name="ExposureMethod">ExposureMethod</xsl:variable>
            <xsl:variable name="BookingType">BookingType</xsl:variable>
            <xsl:variable name="NettingType">NettingType</xsl:variable>
            <xsl:variable name="CcfRate">CcfRate</xsl:variable>
            <xsl:variable name="RwaRate">RwaRate</xsl:variable>
            <xsl:variable name="InvolvedPartyType">InvolvedPartyType</xsl:variable>
            <xsl:variable name="ArrangementCurrencyFlag">ArrangementCurrencyFlag</xsl:variable>
            <xsl:variable name="NotionalPrincipalAmount">NotionalPrincipalAmount</xsl:variable>
            <xsl:variable name="SpecificProvision">SpecificProvision</xsl:variable>
            <xsl:variable name="NetCreditEquivalentAmount">NetCreditEquivalentAmount</xsl:variable>
            <xsl:variable name="ProfitFromMarkToMarket">ProfitFromMarkToMarket</xsl:variable>
            <xsl:variable name="LossFromMarkToMarket">LossFromMarkToMarket</xsl:variable>

            <head>
                <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                <link rel="stylesheet" type="text/css" href="../../includes/css/style.css"/>
            </head>
            <title>Specialized Financial Institutions Information System</title>
            <body>


                <table class="displayTable" width="50%" border="1">
                    <tr>
                        <td class="bgGreen" width="20%">Organization Id :</td>
                        <td width="15%" colspan="3">
                            <xsl:for-each select="DS_ARS/CommonHeader">
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
                            <xsl:value-of select="substring-after(substring-before(DataSetDate,'-'),'-')"/>
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
                <table class="displayTable" width="1200px" border="1">
                    <tr class="headTableXsl">
                        <td rowspan="2">
                            <xsl:value-of select="$CreditRiskMethod"/>
                        </td>
                        <td rowspan="2">
                            <xsl:value-of select="$AddOnOrPotentialFutureCreditExposure"/>
                        </td>
                        <td rowspan="2">
                            <xsl:value-of select="$RiskWeightedAssetOutstandingAmount"/>
                        </td>
                        <td rowspan="2">
                            <xsl:value-of select="$NetProfitAndLossFromMarkToMarket"/>
                        </td>
                        <td colspan="14">
                            <xsl:value-of select="$DataGroupInfo"/>
                        </td>

                    </tr>
                    <tr class="headTableXsl">
                        <td>
                            <xsl:value-of select="$CustomerGroup"/>
                        </td>
                        <td>
                            <xsl:value-of select="$ContingentType"/>
                        </td>
                        <td>
                            <xsl:value-of select="$ExposureMethod"/>
                        </td>
                        <td>
                            <xsl:value-of select="$BookingType"/>
                        </td>
                        <td>
                            <xsl:value-of select="$NettingType"/>
                        </td>
                        <td>
                            <xsl:value-of select="$CcfRate"/>
                        </td>
                        <td>
                            <xsl:value-of select="$RwaRate"/>
                        </td>
                        <td>
                            <xsl:value-of select="$InvolvedPartyType"/>
                        </td>
                        <td>
                            <xsl:value-of select="$ArrangementCurrencyFlag"/>
                        </td>
                        <td>
                            <xsl:value-of select="$NotionalPrincipalAmount"/>
                        </td>
                        <td>
                            <xsl:value-of select="$SpecificProvision"/>
                        </td>
                        <td>
                            <xsl:value-of select="$NetCreditEquivalentAmount"/>
                        </td>
                        <td>
                            <xsl:value-of select="$ProfitFromMarkToMarket"/>
                        </td>
                        <td>
                            <xsl:value-of select="$LossFromMarkToMarket"/>
                        </td>
                    </tr>
                    <xsl:for-each select="DS_COS">
                        <xsl:if test="DS_COS447001 != ''">
                            <tr>
                                <td class="labelXsl" align="left">

                                </td>
                                <td class="labelXsl" align="left">

                                </td>

                                <td class="labelXsl " align="left">

                                </td>
                                <td class="labelXsl" align="right">

                                </td>
                                <td class="labelXsl " align="center">

                                </td>
                                <td class="labelXsl" align="left">

                                </td>
                                <td class="labelXsl" align="right">

                                </td>
                                <td class="labelXsl" align="left">

                                </td>
                                <td class="labelXsl " align="center">

                                </td>
                                <td class="labelXsl" align="left">

                                </td>
                                <td class="labelXsl" align="right">

                                </td>
                                <td class="labelXsl" align="left">
                                    <xsl:value-of select="InvolvedPartyType"/>
                                </td>
                                <td class="labelXsl" align="right">

                                </td>
                                <td class="labelXsl " align="center">

                                </td>
                                <td class="labelXsl" align="left">

                                </td>
                                <td class="labelXsl" align="right">

                                </td>
                                <td class="labelXsl" align="left">

                                </td>
                                <td class="labelXsl " align="center">

                                </td>
                            </tr>
                        </xsl:if>

                        <xsl:if test="DS_COS447002 != ''">
                            <tr>
                                <td class="labelXsl" align="left">

                                </td>
                                <td class="labelXsl" align="left">

                                </td>

                                <td class="labelXsl " align="left">

                                </td>
                                <td class="labelXsl" align="right">

                                </td>
                                <td class="labelXsl " align="center">

                                </td>
                                <td class="labelXsl" align="left">

                                </td>
                                <td class="labelXsl" align="right">

                                </td>
                                <td class="labelXsl" align="left">

                                </td>
                                <td class="labelXsl " align="center">

                                </td>
                                <td class="labelXsl" align="left">

                                </td>
                                <td class="labelXsl" align="right">

                                </td>
                                <td class="labelXsl" align="left">
                                    <xsl:value-of select="InvolvedPartyType"/>
                                </td>
                                <td class="labelXsl" align="right">

                                </td>
                                <td class="labelXsl " align="center">

                                </td>
                                <td class="labelXsl" align="left">

                                </td>
                                <td class="labelXsl" align="right">

                                </td>
                                <td class="labelXsl" align="left">

                                </td>
                                <td class="labelXsl " align="center">

                                </td>
                            </tr>
                        </xsl:if>
                        <xsl:if test="DS_COS447003 != ''">
                            <tr>
                                <td class="labelXsl" align="left">

                                </td>
                                <td class="labelXsl" align="left">

                                </td>

                                <td class="labelXsl " align="left">

                                </td>
                                <td class="labelXsl" align="right">

                                </td>
                                <td class="labelXsl " align="center">

                                </td>
                                <td class="labelXsl" align="left">

                                </td>
                                <td class="labelXsl" align="right">

                                </td>
                                <td class="labelXsl" align="left">

                                </td>
                                <td class="labelXsl " align="center">

                                </td>
                                <td class="labelXsl" align="left">

                                </td>
                                <td class="labelXsl" align="right">

                                </td>
                                <td class="labelXsl" align="left">
                                    <xsl:value-of select="InvolvedPartyType"/>
                                </td>
                                <td class="labelXsl" align="right">

                                </td>
                                <td class="labelXsl " align="center">

                                </td>
                                <td class="labelXsl" align="left">

                                </td>
                                <td class="labelXsl" align="right">

                                </td>
                                <td class="labelXsl" align="left">

                                </td>
                                <td class="labelXsl " align="center">

                                </td>
                            </tr>
                        </xsl:if>
                        <xsl:if test="DS_COS447004 != ''">
                            <tr>
                                <td class="labelXsl" align="left">

                                </td>
                                <td class="labelXsl" align="left">

                                </td>

                                <td class="labelXsl " align="left">

                                </td>
                                <td class="labelXsl" align="right">

                                </td>
                                <td class="labelXsl " align="center">

                                </td>
                                <td class="labelXsl" align="left">

                                </td>
                                <td class="labelXsl" align="right">

                                </td>
                                <td class="labelXsl" align="left">

                                </td>
                                <td class="labelXsl " align="center">

                                </td>
                                <td class="labelXsl" align="left">

                                </td>
                                <td class="labelXsl" align="right">

                                </td>
                                <td class="labelXsl" align="left">
                                    <xsl:value-of select="InvolvedPartyType"/>
                                </td>
                                <td class="labelXsl" align="right">

                                </td>
                                <td class="labelXsl " align="center">

                                </td>
                                <td class="labelXsl" align="left">

                                </td>
                                <td class="labelXsl" align="right">

                                </td>
                                <td class="labelXsl" align="left">

                                </td>
                                <td class="labelXsl " align="center">

                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>

    </xsl:template>

</xsl:stylesheet>