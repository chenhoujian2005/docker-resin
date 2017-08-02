<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <xsl:variable name="OrganizationId">Organization ID</xsl:variable>
            <xsl:variable name="DataSetDate">Data Set Date</xsl:variable>
            <xsl:variable name="FiReportingGroupId">Fi Reporting Group ID</xsl:variable>
            <xsl:variable name="CreditRiskMethod">Credit Risk Method</xsl:variable>
            <xsl:variable name="CreditRiskMethodDesc">Credit Risk Method Description</xsl:variable>
            <xsl:variable name="CrmMethod">Crm Method</xsl:variable>
            <xsl:variable name="CrmMethodDesc">Crm Method Description</xsl:variable>
            <xsl:variable name="DataGroupInfo">Data Group Info</xsl:variable>
            <xsl:variable name="CreditRiskType">Credit Risk Type</xsl:variable>
            <xsl:variable name="CreditRiskTypeDesc">Credit Risk Type Description</xsl:variable>
            <xsl:variable name="CreditRiskItem">Credit Risk Item</xsl:variable>
            <xsl:variable name="CreditRiskItemDesc">Credit Risk Item Description</xsl:variable>
            <xsl:variable name="FtdAdjustment">Ftd Adjustment</xsl:variable>
            <xsl:variable name="CcfRate">Ccf Rate</xsl:variable>
            <xsl:variable name="BusinessGroupInfo">Business Group Info</xsl:variable>
            <xsl:variable name="RwaRate">Rwa Rate</xsl:variable>
            <xsl:variable name="NotionalPrincipalAmount">Notional Principal Amount</xsl:variable>
            <xsl:variable name="GrossCreditEquivalentAmount">Gross CreditEquivalent Amount</xsl:variable>
            <xsl:variable name="SpecificProvision">Specific Provision</xsl:variable>
            <xsl:variable name="AdjustmentItem">Adjustment Item</xsl:variable>
            <xsl:variable name="NetCreditEquivalentAmount">Net Credit Equivalent Amount</xsl:variable>
            <xsl:variable name="DecreaseInCrm">Decrease In Crm</xsl:variable>
            <xsl:variable name="IncreaseInCrm">Increase In Crm</xsl:variable>
            <xsl:variable name="PotentialLoss">Potential Loss</xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount">Risk Weighted Asset Outstanding Amount</xsl:variable>

            <head>
            </head>
            <body>

                <table class="displayTable" width="50%" border="1">
                    <tr>
                        <td class="bgGreen" width="20%">Organization Id :</td>
                        <td width="15%" colspan="3">
                            <xsl:for-each select="DS_CRS/CommonHeader">
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
                            <xsl:value-of select="DS_CRS/@name"/>
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
                        <xsl:for-each select="DS_CRS/CommonHeader">
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

                <table class="displayTable" width="1800px" border="1">
                    <tr class="headTableXsl">
                        <td rowspan="3" width="100px">
                            <xsl:value-of select="$CreditRiskMethod"/>
                        </td>
                        <td rowspan="3" width="200px">
                            <xsl:value-of select="$CreditRiskMethodDesc"/>
                        </td>
                        <td rowspan="3" width="100px">
                            <xsl:value-of select="$CrmMethod"/>
                        </td>
                        <td rowspan="3" width="200px">
                            <xsl:value-of select="$CrmMethodDesc"/>
                        </td>
                        <td colspan="16">
                            <xsl:value-of select="$DataGroupInfo"/>
                        </td>
                    </tr>
                    <tr class="headTableXsl">
                        <td  rowspan="2" width="100px">
                            <xsl:value-of select="$CreditRiskType"/>
                        </td>
                        <td  rowspan="2" width="200px">
                            <xsl:value-of select="$CreditRiskTypeDesc"/>
                        </td>
                        <td  rowspan="2" width="100px">
                            <xsl:value-of select="$CreditRiskItem"/>
                        </td>
                        <td  rowspan="2" width="200px">
                            <xsl:value-of select="$CreditRiskItemDesc"/>
                        </td>
                        <td  rowspan="2" width="100px">
                            <xsl:value-of select="$FtdAdjustment"/>
                        </td>
                        <td  rowspan="2" width="100px">
                            <xsl:value-of select="$CcfRate"/>
                        </td>
                        <td colspan="10">
                            <xsl:value-of select="$BusinessGroupInfo"/>
                        </td>

                    </tr>
                    <tr class="headTableXsl">
                        <td width="100px">
                            <xsl:value-of select="$RwaRate"/>
                        </td>
                        <td width="100px">
                            <xsl:value-of select="$NotionalPrincipalAmount"/>
                        </td>
                        <td width="100px">
                            <xsl:value-of select="$GrossCreditEquivalentAmount"/>
                        </td>
                        <td width="100px">
                            <xsl:value-of select="$SpecificProvision"/>
                        </td>
                        <td width="100px">
                            <xsl:value-of select="$AdjustmentItem"/>
                        </td>
                        <td width="100px">
                            <xsl:value-of select="$NetCreditEquivalentAmount"/>
                        </td>
                        <td width="100px">
                            <xsl:value-of select="$DecreaseInCrm"/>
                        </td>
                        <td width="100px">
                            <xsl:value-of select="$IncreaseInCrm"/>
                        </td>
                        <td width="100px">
                            <xsl:value-of select="$PotentialLoss"/>
                        </td>
                        <td width="100px">
                            <xsl:value-of select="$RiskWeightedAssetOutstandingAmount"/>
                        </td>
                    </tr>
                    <xsl:for-each select="DS_CRS/DS_CRS_Content/ContentRecordGroup">
                        <xsl:variable name="v_CreditRiskMethod"><xsl:value-of select="CreditRiskMethod"/></xsl:variable>
                        <xsl:variable name="v_CreditRiskMethodValue"><xsl:value-of select="CreditRiskMethodValue"/></xsl:variable>
                        <xsl:variable name="v_CrmMethod"><xsl:value-of select="CrmMethod"/></xsl:variable>
                        <xsl:variable name="v_CrmMethodValue"><xsl:value-of select="CrmMethodValue"/></xsl:variable>
                        <xsl:for-each select="DataGroupInfo/DataGroupDetails">
                            <xsl:variable name="v_CreditRiskType"><xsl:value-of select="CreditRiskType"/></xsl:variable>
                            <xsl:variable name="v_CreditRiskTypeValue"><xsl:value-of select="CreditRiskTypeValue"/></xsl:variable>
                            <xsl:variable name="v_CreditRiskItem"><xsl:value-of select="CreditRiskItem"/></xsl:variable>
                            <xsl:variable name="v_CreditRiskItemValue"><xsl:value-of select="CreditRiskItemValue"/></xsl:variable>
                            <xsl:variable name="v_FtdAdjustment"><xsl:value-of select="FtdAdjustment"/></xsl:variable>
                            <xsl:variable name="v_CcfRate"><xsl:value-of select="CcfRate"/></xsl:variable>
                            <xsl:for-each select="BusinessGroupInfo/BusinessGroupDetails">
                                <tr>
                                    <td class="labelXsl" align="left" width="100px">
                                        <xsl:value-of select="$v_CreditRiskMethod"/>
                                    </td>
                                    <td class="labelXsl" align="left" width="200px">
                                        <xsl:value-of select="$v_CreditRiskMethodValue"/>
                                    </td>
                                    <td  class="labelXsl " align="left" width="100px">
                                        <xsl:value-of select="$v_CrmMethod"/>
                                    </td>
                                    <td class="labelXsl" align="left" width="200px">
                                        <xsl:value-of select="$v_CrmMethodValue"/>
                                    </td>
                                    <td  class="labelXsl " align="left" width="100px">
                                        <xsl:value-of select="$v_CreditRiskType"/>
                                    </td>
                                    <td class="labelXsl" align="left" width="200px">
                                        <xsl:value-of select="$v_CreditRiskTypeValue"/>
                                    </td>
                                    <td class="labelXsl" align="left" width="100px">
                                        <xsl:value-of select="$v_CreditRiskItem"/>
                                    </td>
                                    <td class="labelXsl" align="left" width="200px">
                                        <xsl:value-of select="$v_CreditRiskItemValue"/>
                                    </td>
                                    <xsl:if test="$v_FtdAdjustment !=''">
                                        <td class="labelXsl" align="right" width="100px" style="mso-number-format:'\#\,\#\#0\.00'">
                                            <xsl:value-of select="format-number($v_FtdAdjustment,'###,###,###,###,###,###,###,##0.00')"/>
                                        </td>
                                    </xsl:if>
                                    <xsl:if test="$v_FtdAdjustment =''">
                                        <td class="labelXsl" align="right" width="100px"> </td>
                                    </xsl:if>
                                    <!--<xsl:variable name="var_CcfRate"><xsl:value-of select="$v_CcfRate"/></xsl:variable>-->
                                    <xsl:if test="$v_CcfRate !=''">
                                        <td class="labelXsl" align="right" width="100px" style="mso-number-format:'\#\,\#\#0\.00000'">
                                            <xsl:value-of select="format-number($v_CcfRate,'###,###,###,###,###,###,###,##0.00000')"/>
                                        </td>
                                    </xsl:if>
                                    <xsl:if test="$v_CcfRate =''">
                                        <td class="labelXsl" align="right" width="100px"> </td>
                                    </xsl:if>
                                    <xsl:variable name="v_RwaRate"><xsl:value-of select="RwaRate"/></xsl:variable>
                                    <xsl:if test="$v_RwaRate !=''">
                                        <td class="labelXsl" align="right" width="100px" style="mso-number-format:'\#\,\#\#0\.00000'">
                                            <xsl:value-of select="format-number($v_RwaRate,'###,###,###,###,###,###,###,##0.00000')"/>
                                        </td>
                                    </xsl:if>
                                    <xsl:if test="$v_RwaRate =''">
                                        <td class="labelXsl" align="right" width="100px"> </td>
                                    </xsl:if>
                                    <xsl:variable name="v_NotionalPrincipalAmount"><xsl:value-of select="NotionalPrincipalAmount"/></xsl:variable>
                                    <xsl:if test="$v_NotionalPrincipalAmount !=''">
                                        <td class="labelXsl" align="right" width="100px" style="mso-number-format:'\#\,\#\#0\.00'">
                                            <xsl:value-of select="format-number($v_NotionalPrincipalAmount,'###,###,###,###,###,###,###,##0.00')"/>
                                        </td>
                                    </xsl:if>
                                    <xsl:if test="$v_NotionalPrincipalAmount =''">
                                        <td class="labelXsl" align="right" width="100px"> </td>
                                    </xsl:if>
                                    <xsl:variable name="v_GrossCreditEquivalentAmount"><xsl:value-of select="GrossCreditEquivalentAmount"/></xsl:variable>
                                    <xsl:if test="$v_GrossCreditEquivalentAmount !=''">
                                        <td class="labelXsl" align="right" width="100px" style="mso-number-format:'\#\,\#\#0\.00'">
                                            <xsl:value-of select="format-number($v_GrossCreditEquivalentAmount,'###,###,###,###,###,###,###,##0.00')"/>
                                        </td>
                                    </xsl:if>
                                    <xsl:if test="$v_GrossCreditEquivalentAmount =''">
                                        <td class="labelXsl" align="right" width="100px"> </td>
                                    </xsl:if>
                                    <xsl:variable name="v_SpecificProvision"><xsl:value-of select="SpecificProvision"/></xsl:variable>
                                    <xsl:if test="$v_SpecificProvision !=''">
                                        <td class="labelXsl" align="right" width="100px" style="mso-number-format:'\#\,\#\#0\.00'">
                                            <xsl:value-of select="format-number($v_SpecificProvision,'###,###,###,###,###,###,###,##0.00')"/>
                                        </td>
                                    </xsl:if>
                                    <xsl:if test="$v_SpecificProvision =''">
                                        <td class="labelXsl" align="right" width="100px"> </td>
                                    </xsl:if>
                                    <xsl:variable name="v_AdjustmentItem"><xsl:value-of select="AdjustmentItem"/></xsl:variable>
                                    <xsl:if test="$v_AdjustmentItem !=''">
                                        <td class="labelXsl" align="right" width="100px" style="mso-number-format:'\#\,\#\#0\.00'">
                                            <xsl:value-of select="format-number($v_AdjustmentItem,'###,###,###,###,###,###,###,##0.00')"/>
                                        </td>
                                    </xsl:if>
                                    <xsl:if test="$v_AdjustmentItem =''">
                                        <td class="labelXsl" align="right" width="100px"> </td>
                                    </xsl:if>
                                    <xsl:variable name="v_NetCreditEquivalentAmount"><xsl:value-of select="NetCreditEquivalentAmount"/></xsl:variable>
                                    <xsl:if test="$v_NetCreditEquivalentAmount !=''">
                                        <td class="labelXsl" align="right" width="100px" style="mso-number-format:'\#\,\#\#0\.00'">
                                            <xsl:value-of select="format-number($v_NetCreditEquivalentAmount,'###,###,###,###,###,###,###,##0.00')"/>
                                        </td>
                                    </xsl:if>
                                    <xsl:if test="$v_NetCreditEquivalentAmount =''">
                                        <td class="labelXsl" align="right" width="100px"> </td>
                                    </xsl:if>
                                    <xsl:variable name="v_DecreaseInCrm"><xsl:value-of select="DecreaseInCrm"/></xsl:variable>
                                    <xsl:if test="$v_DecreaseInCrm !=''">
                                        <td class="labelXsl" align="right" width="100px" style="mso-number-format:'\#\,\#\#0\.00'">
                                            <xsl:value-of select="format-number($v_DecreaseInCrm,'###,###,###,###,###,###,###,##0.00')"/>
                                        </td>
                                    </xsl:if>
                                    <xsl:if test="$v_DecreaseInCrm =''">
                                        <td class="labelXsl" align="right" width="100px"> </td>
                                    </xsl:if>
                                    <xsl:variable name="v_IncreaseInCrm"><xsl:value-of select="IncreaseInCrm"/></xsl:variable>
                                    <xsl:if test="$v_IncreaseInCrm !=''">
                                        <td class="labelXsl" align="right" width="100px" style="mso-number-format:'\#\,\#\#0\.00'">
                                            <xsl:value-of select="format-number($v_IncreaseInCrm,'###,###,###,###,###,###,###,##0.00')"/>
                                        </td>
                                    </xsl:if>
                                    <xsl:if test="$v_IncreaseInCrm =''">
                                        <td class="labelXsl" align="right" width="100px"> </td>
                                    </xsl:if>
                                    <xsl:variable name="v_PotentialLoss"><xsl:value-of select="PotentialLoss"/></xsl:variable>
                                    <xsl:if test="$v_PotentialLoss !=''">
                                        <xsl:if test="number($v_PotentialLoss) !='NaN'">
                                            <td class="labelXsl" align="right" width="100px" style="mso-number-format:'\#\,\#\#0\.00'">
                                                <xsl:value-of select="format-number($v_PotentialLoss,'###,###,###,###,###,###,###,##0.00')"/>
                                            </td>
                                        </xsl:if>
                                        <xsl:if test="number($v_PotentialLoss) ='NaN'">
                                            <td class="labelXsl" align="right" width="100px"> </td>
                                        </xsl:if>
                                    </xsl:if>
                                    <xsl:if test="$v_PotentialLoss =''">
                                        <td class="labelXsl" align="right" width="100px"> </td>
                                    </xsl:if>
                                    <xsl:variable name="v_RiskWeightedAssetOutstandingAmount"><xsl:value-of select="RiskWeightedAssetOutstandingAmount"/></xsl:variable>
                                    <xsl:if test="$v_RiskWeightedAssetOutstandingAmount !=''">
                                        <xsl:if test="number($v_RiskWeightedAssetOutstandingAmount)!='NaN'">
                                            <td class="labelXsl" align="right" width="100px" style="mso-number-format:'\#\,\#\#0\.00'">
                                                <xsl:value-of select="format-number($v_RiskWeightedAssetOutstandingAmount,'###,###,###,###,###,###,###,##0.00')"/>
                                            </td>
                                        </xsl:if>
                                        <xsl:if test="number($v_RiskWeightedAssetOutstandingAmount)='NaN'">
                                            <td class="labelXsl" align="right" width="100px"> </td>
                                        </xsl:if>
                                    </xsl:if>
                                    <xsl:if test="$v_RiskWeightedAssetOutstandingAmount =''">
                                        <td class="labelXsl" align="right" width="100px"> </td>
                                    </xsl:if>
                                </tr>
                            </xsl:for-each>
                        </xsl:for-each>
                    </xsl:for-each>
                </table>

            </body>
        </html>

    </xsl:template>

</xsl:stylesheet>