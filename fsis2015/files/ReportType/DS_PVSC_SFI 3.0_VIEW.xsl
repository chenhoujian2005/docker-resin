<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
		    <xsl:variable name="FiReportingGroupInfo">Fi Reporting Group Info</xsl:variable>
			<xsl:variable name="FulllConsolidatedGroupDetails">Fulll Consolidated Group Details</xsl:variable>
			
			
            <xsl:variable name="Remark">Remark</xsl:variable>
			<xsl:variable name="FullConsolidatedDataGroupInfo">Full Consolidated Data Group Info</xsl:variable>
			<xsl:variable name="FullConsolidatedDataGroupDetails">Full Consolidated Data Group Details</xsl:variable>
            <xsl:variable name="ProvisionSummaryItem">Provision Summary Item</xsl:variable>
            <xsl:variable name="ProvisionSummaryItemDesc">Provision Summary Item Description</xsl:variable>
			<xsl:variable name="AssetClassificationType">Asset Classification Type</xsl:variable>
			<xsl:variable name="AssetClassificationTypeDesc">AssetClassificationType Description</xsl:variable>
			<xsl:variable name="Amount">Amount</xsl:variable>
			
			<xsl:variable name="SoloConsolidatedGroupDetails">Solo Consolidated Group Details</xsl:variable>
			<xsl:variable name="ProvisionSummaryItemA">Provision Summary Item</xsl:variable>
            <xsl:variable name="ProvisionSummaryItemDescA">Provision Summary Item Description</xsl:variable>
			<xsl:variable name="AssetClassificationTypeA">Asset Classification Type</xsl:variable>
			<xsl:variable name="AssetClassificationTypeDescA">AssetClassificationType Description</xsl:variable>
			<xsl:variable name="AmountA">Amount</xsl:variable>
			
            <xsl:variable name="SoloConsolidatedCompanyGroupDetails">Solo Consolidated Company Group Details</xsl:variable>
			<xsl:variable name="SoloConsolidatedDataGroupInfo">Solo Consolidated Data Group Info</xsl:variable>
            <xsl:variable name="SoloConsolidatedDataGroupDetails">Solo Consolidated Data Group Details</xsl:variable>
			<xsl:variable name="SoloConsolidatedCompanyId">Solo Consolidated Company Id</xsl:variable>
            <xsl:variable name="SoloConsolidatedCompanyUniqueIdType">Solo Consolidated Company Unique Id Type</xsl:variable>
			<xsl:variable name="SoloConsolidatedCompanyUniqueIdTypeDesc">Solo Consolidated Company Unique Id Type Description</xsl:variable>
            <xsl:variable name="ProvisionSummaryDataGroupInfo">Provision Summary Data Group Info</xsl:variable>
			<xsl:variable name="ProvisionSummaryDataGroupDetails">Provision Summary Data Group Details</xsl:variable>
            
			<xsl:variable name="ProvisionSummaryItemB">Provision Summary Item</xsl:variable>
            <xsl:variable name="ProvisionSummaryItemDescB">Provision Summary Item Description</xsl:variable>
			<xsl:variable name="AssetClassificationTypeB">Asset Classification Type</xsl:variable>
			<xsl:variable name="AssetClassificationTypeDescB">AssetClassificationType Description</xsl:variable>
			<xsl:variable name="AmountB">Amount</xsl:variable>


            <head>
                <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                <link rel="stylesheet" type="text/css" href="../../includes/css/style.css"/>
            </head>
            <title>Provision Summary Conso</title>
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
                                                    <xsl:for-each select="DS_PVSC/CommonHeader">
                                                        <xsl:value-of select="OrganizationId"/>
                                                    </xsl:for-each>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="bgGreen">FI Reporting Group ID :</td>
                                                <td colspan="3">
                                                     116028 - ชุด Full Consolidated
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="bgGreen">Data Set Type :</td>
                                                <td colspan="3">
                                                    <xsl:value-of select="DS_PVSC/@name"/>
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
                                                <xsl:for-each select="DS_PVSC/CommonHeader">
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
                                <xsl:for-each select="DS_PVSC/DS_PVSC_Content/ContentRecordGroup">
                                    <xsl:if test="FiReportingGroupInfo/FulllConsolidatedGroupDetails">
                                        <table class="displayTable" width="100%">
                                        <tr class="headTableXsl">
                                            <td colspan="4">
                                                <xsl:value-of select="$FiReportingGroupInfo"/>
                                            </td>
                                        </tr>
                                        <tr class="headTableXsl">
                                            <td colspan="4">
                                                <xsl:value-of select="$FulllConsolidatedGroupDetails"/>
                                            </td>
                                        </tr>
                                        <tr class="headTableXsl">
                                            <td rowspan="3">
                                                <xsl:value-of select="$Remark"/>
                                            </td>
                                            <td colspan="3">
                                                <xsl:value-of select="$FullConsolidatedDataGroupInfo"/>
                                            </td>
                                        </tr>
                                        <tr class="headTableXsl">
                                            <td colspan="3">
                                                <xsl:value-of select="$FullConsolidatedDataGroupDetails"/>
                                            </td>
                                        </tr>
                                        <tr class="headTableXsl">
                                            <td >
                                                <xsl:value-of select="$ProvisionSummaryItem"/>
                                            </td>
                                            <td >
                                                <xsl:value-of select="$AssetClassificationType"/>
                                            </td>
                                            <td>
                                                <xsl:value-of select="$Amount"/>
                                            </td>

                                        </tr>

                                            <xsl:for-each select="FiReportingGroupInfo/FulllConsolidatedGroupDetails">

                                                <tr>
                                                    <td class="labelXsl" align="left">
                                                        <xsl:value-of select="Remark"/>
                                                    </td>
                                                    <td class="labelXsl" align="left"/>
                                                    <td class="labelXsl" align="left"/>
                                                    <td class="labelXsl" align="left"/>
                                                    <xsl:for-each select="FullConsolidatedDataGroupInfo/FullConsolidatedDataGroupDetails">
                                                        <tr>
                                                            <!--<xsl:value-of select="position()"/>-->
                                                            <!--<td class="labelXsl">-->
                                                                <!--<xsl:value-of select="$VarRemark"/>-->
                                                            <!--</td>-->
                                                            <td class="labelXsl" align="left"/>
                                                            <td class="labelXsl" align="left">
                                                                <xsl:value-of select="ProvisionSummaryItem"/>
                                                            </td>
                                                            <td class="labelXsl" align="left">
                                                                <xsl:value-of select="AssetClassificationType"/>
                                                            </td>
                                                            <td class="labelXsl" align="right">
                                                                <xsl:value-of  select="format-number(Amount,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </td>
                                                        </tr>
                                                    </xsl:for-each>
                                                </tr>
                                            </xsl:for-each>


                                        <tr>
                                            <td colspan="7"></td>
                                        </tr>
                                    </table>
                                    </xsl:if>
                                    <xsl:if test="FiReportingGroupInfo/SoloConsolidatedGroupDetails">
                                    <table class="displayTable" width="100%">
                                    <!--<tr class="headTableXsl">-->
                                        <!--<td colspan="3">-->
                                            <!--<xsl:value-of select="$FiReportingGroupInfo"/>-->
                                        <!--</td>-->
                                    <!--</tr>-->
                                        <tr class="headTableXsl">
                                            <td >
                                                <xsl:value-of select="$ProvisionSummaryItem"/>
                                            </td>
                                            <td >
                                                <xsl:value-of select="$AssetClassificationType"/>
                                            </td>
                                            <td>
                                                <xsl:value-of select="$Amount"/>
                                            </td>
                                        </tr>
                                        <xsl:for-each select="FiReportingGroupInfo/SoloConsolidatedGroupDetails">
                                            <tr>
                                                <td class="labelXsl" align="left">
                                                    <xsl:value-of select="ProvisionSummaryItem"/>
                                                </td>
                                                <td class="labelXsl" align="left">
                                                    <xsl:value-of select="AssetClassificationType"/>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                    <xsl:value-of  select="format-number(Amount,'###,###,###,###,###,###,###,##0.00')"/>
                                                </td>
                                            </tr>
                                        </xsl:for-each>
                                        <tr>
                                            <td colspan="7"></td>
                                        </tr>
                                    </table>
                                    </xsl:if>
                                    <xsl:if test="FiReportingGroupInfo/SoloConsolidatedCompanyGroupDetails">
                                        <table class="displayTable" width="100%">
                                            <!--<tr class="headTableXsl">-->
                                                <!--<td colspan="5">-->
                                                    <!--<xsl:value-of select="$FiReportingGroupInfo"/>-->
                                                <!--</td>-->
                                            <!--</tr>-->
                                            <tr class="headTableXsl">
                                                <td colspan="5">
                                                    <xsl:value-of select="$SoloConsolidatedCompanyGroupDetails"/>
                                                </td>
                                            </tr>
                                            <tr class="headTableXsl">
                                                <td colspan="5">
                                                    <xsl:value-of select="$SoloConsolidatedDataGroupInfo"/>
                                                </td>
                                            </tr>
                                            <tr class="headTableXsl">
                                                <td colspan="5">
                                                    <xsl:value-of select="$SoloConsolidatedDataGroupDetails"/>
                                                </td>
                                            </tr>
                                            <tr class="headTableXsl">
                                                <td rowspan="3">
                                                    <xsl:value-of select="$SoloConsolidatedCompanyId"/>
                                                </td>
                                                <td rowspan="3">
                                                    <xsl:value-of select="$SoloConsolidatedCompanyUniqueIdType"/>
                                                </td>
                                                <td colspan="3">
                                                    <xsl:value-of select="$ProvisionSummaryDataGroupInfo"/>
                                                </td>
                                            </tr>
                                            <tr class="headTableXsl">
                                                <td colspan="3">
                                                    <xsl:value-of select="$ProvisionSummaryDataGroupDetails"/>
                                                </td>
                                            </tr>
                                            <tr class="headTableXsl">
                                                <td >
                                                    <xsl:value-of select="$ProvisionSummaryItem"/>
                                                </td>
                                                <td >
                                                    <xsl:value-of select="$AssetClassificationType"/>
                                                </td>
                                                <td>
                                                    <xsl:value-of select="$Amount"/>
                                                </td>
                                            </tr>

                                            <xsl:for-each select="FiReportingGroupInfo/SoloConsolidatedCompanyGroupDetails">
                                                <xsl:for-each select="SoloConsolidatedDataGroupInfo/SoloConsolidatedDataGroupDetails">
                                                    <tr>
                                                        <td class="labelXsl" align="left">
                                                            <xsl:value-of select="SoloConsolidatedCompanyId"/>
                                                        </td>
                                                        <td class="labelXsl" align="left">
                                                            <xsl:value-of select="SoloConsolidatedCompanyUniqueIdType"/>
                                                        </td>
                                                        <td class="labelXsl" align="center"/>
                                                        <td class="labelXsl" align="center"/>
                                                        <td class="labelXsl" align="center"/>
                                                        <xsl:for-each select="ProvisionSummaryDataGroupInfo/ProvisionSummaryDataGroupDetails">
                                                            <tr>
                                                            <td class="labelXsl" align="center"/>
                                                            <td class="labelXsl" align="center"/>
                                                            <td class="labelXsl" align="left">
                                                                <xsl:value-of select="ProvisionSummaryItem"/>
                                                            </td>
                                                            <td class="labelXsl" align="left">
                                                                <xsl:value-of select="AssetClassificationType"/>
                                                            </td>
                                                            <td class="labelXsl" align="right">
                                                                <xsl:value-of  select="format-number(Amount,'###,###,###,###,###,###,###,##0.00')"/>
                                                            </td>
                                                            </tr>
                                                        </xsl:for-each>
                                                    </tr>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                            <tr>
                                                <td colspan="7"></td>
                                            </tr>
                                        </table>
                                    </xsl:if>
                                </xsl:for-each>
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