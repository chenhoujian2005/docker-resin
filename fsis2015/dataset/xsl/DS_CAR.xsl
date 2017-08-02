<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
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
                                                    <xsl:for-each select="DS_CAR/CommonHeader">
                                                        <xsl:value-of select="OrganizationId"/>
                                                    </xsl:for-each>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="bgGreen" width="20%">FI Reporting Group :</td>
                                                <td width="80%" colspan="2" >
                                                     116003 - ชุดรวมทุกสำนักงานในประเทศ
                                                </td>
                                            </tr>
                                            <tr>
                                                <td bgcolor="#D2FF92" width="20%">Data Set Type :</td>
                                                <td colspan="2">
                                                    <xsl:value-of select="DS_CAR/@name"/>
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
                                                            <xsl:for-each select="DS_CAR/CommonHeader">
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
                                            <tr  class="headTableXsl">
                                                <td colspan="32">Contingent Arrangement</td>
                                            </tr>
                                            <tr class="headTableXsl">
												<td rowspan="3">Branch Number</td>
                                                <td rowspan="3">FI Arrangement Number</td>
                                                <td rowspan="3">Currency Id</td>
                                                <td rowspan="3" colspan="2">Contingent Type</td>
                                                <td rowspan="3">Ccf Rate</td>
                                                <td rowspan="3">Minimum Fee Rate</td>
                                                <td rowspan="3">Minimum Fee Rate Unit</td>
                                                <td rowspan="3">Maximum Fee Rate</td>
                                                <td rowspan="3">Maximum Fee Rate Unit</td>
                                                <td rowspan="3">Primary Involved Party ID</td>
                                                <td rowspan="3">Unique ID Type</td>
                                                <td rowspan="3">Review Flag</td>
                                                <td rowspan="3">Arrangement Contract Date</td>
                                                <td rowspan="3">Arrangement Business Type</td>
                                                <td rowspan="3">Arrangement Business Type Description</td>
                                                <td rowspan="3">Arrangement Term</td>
                                                <td rowspan="3">Arrangement Term Unit</td>
                                                <td rowspan="3">Effective Date</td>
                                                <td rowspan="3">Maturity Date</td>
                                                <td rowspan="3">Buy Currency ID</td>
                                                <td rowspan="3">Sell Currency ID</td>
                                                <td rowspan="3"> Notional Amount</td>
                                                <td rowspan="3">Exposure Method</td>
                                                <td rowspan="3">Profit or Loss from Mark to Market</td>
                                                <td rowspan="3">Outstanding Amount</td>
                                                <td colspan="6">Collateral Group Info</td>
                                            </tr>
                                            <tr class="headTableXsl">
                                                 <td rowspan="2">Collateral Type</td>
                                                 <td rowspan="2">Collateral Value Amount</td>
                                                 <td rowspan="2">Collateral Pledged Amount</td>
                                                 <td colspan="3" >Related Involved Party Info</td>
                                            </tr>
                                            <tr class="headTableXsl">
                                                <td class="headTableXsl" >RelatedInvolvedPartyId</td>
                                                 <td class="headTableXsl">UniqueIdType</td>
                                                 <td class="headTableXsl">IpArRelationshipType</td>
                                            </tr>

                                                    <xsl:for-each select="DS_CAR/DS_CAR_Content/ContentRecordGroup">
                                                        <tr>
                                                           <td class="labelXsl">
                                                               <xsl:value-of select="BranchNumber"/>
                                                            </td>
                                                             <td class="labelXsl">
                                                               <xsl:value-of select="FiArrangementNumber"/>
                                                            </td>
                                                             <td class="labelXsl">
                                                               <xsl:value-of select="CurrencyId"/>
                                                            </td>
                                                            <td class="labelXsl">
                                                               <xsl:value-of select="ContingentType"/>
                                                            </td>
                                                             <td class="labelXsl">
                                                               <xsl:value-of select="ContingentTypeValue"/>
                                                            </td>
                                                             <td class="labelXsl">
                                                               <xsl:value-of select="CcfRate"/>
                                                            </td>
                                                            <td class="labelXsl">
                                                               <xsl:value-of select="MinimumFeeRate"/>
                                                            </td>
                                                             <td class="labelXsl">
                                                               <xsl:value-of select="MinimumFeeRateUnit"/>
                                                            </td>
                                                             <td class="labelXsl">
                                                               <xsl:value-of select="MaximumFeeRate"/>
                                                            </td>
                                                             <td class="labelXsl">
                                                               <xsl:value-of select="MaximumFeeRateUnit"/>
                                                            </td>
                                                             <td class="labelXsl">
                                                               <xsl:value-of select="PrimaryInvolvedPartyId"/>
                                                            </td>
                                                             <td class="labelXsl">
                                                               <xsl:value-of select="UniqueIdType"/>
                                                            </td>
                                                             <td class="labelXsl">
                                                               <xsl:value-of select="ReviewFlag"/>
                                                            </td>
                                                             <td class="labelXsl">
                                                               <xsl:value-of select="ArrangementContractDate"/>
                                                            </td>
                                                             <td class="labelXsl">
                                                               <xsl:value-of select="ArrangementBusinessType"/>
                                                            </td>
                                                            <td class="labelXsl">
                                                               <xsl:value-of select="ArrangementBusinessTypeValue"/>
                                                            </td>
                                                             <td class="labelXsl">
                                                               <xsl:value-of select="ArrangementTerm"/>
                                                            </td>
                                                             <td class="labelXsl">
                                                               <xsl:value-of select="ArrangementTermUnit"/>
                                                            </td>
                                                             <td class="labelXsl">
                                                               <xsl:value-of select="EffectiveDate"/>
                                                            </td>
                                                             <td class="labelXsl">
                                                               <xsl:value-of select="MaturityDate"/>
                                                            </td>
                                                             <td class="labelXsl">
                                                               <xsl:value-of select="BuyCurrencyIdValue"/>
                                                            </td>
                                                             <td class="labelXsl">
                                                               <xsl:value-of select="SellCurrencyIdValue"/>
                                                            </td>
                                                             <td class="labelXsl" align="right">
                                                                 <xsl:if test="NotionalAmount != ''">
                                                                 <span style="color:#1500d4" ><xsl:value-of select="format-number(NotionalAmount,'###,###,###,###,##0.00')" /></span>
                                                                 </xsl:if>
                                                            </td>
                                                             <td class="labelXsl">
                                                               <xsl:value-of select="ExposureMethodValue"/>
                                                            </td>
                                                             <td class="labelXsl">
                                                               <xsl:value-of select="ProfitOrLossFromMarkToMarket"/>
                                                            </td>
                                                             <td class="labelXsl" align="right">
                                                                 <xsl:if test="OutstandingAmount != ''">
                                                                 <span style="color:#1500d4"><xsl:value-of select="format-number(OutstandingAmount,'###,###,###,###,##0.00')" /></span>
                                                                 </xsl:if>
                                                            </td>
                                                            <td class="labelXsl">
                                                                 <table>
                                                                     <xsl:for-each select="CollateralGroupInfo/CollateralGroupDetails">
                                                                        <tr>
                                                                             <td ><xsl:value-of select="CollateralTypeValue"/></td>
                                                                        </tr>
                                                                     </xsl:for-each>
                                                                 </table>
                                                             </td>
                                                              <td class="labelXsl" align="right">
                                                                 <table>
                                                                     <xsl:for-each select="CollateralGroupInfo/CollateralGroupDetails">
                                                                        <tr>
                                                                             <td >
                                                                                 <span style="color:#1500d4"><xsl:value-of select="format-number(CollateralValueAmount,'###,###,###,###,##0.00')" /></span>
                                                                             </td>
                                                                        </tr>
                                                                     </xsl:for-each>
                                                                 </table>
                                                             </td>
                                                            <td class="labelXsl" align="right">
                                                                 <table>
                                                                     <xsl:for-each select="CollateralGroupInfo/CollateralGroupDetails">
                                                                        <tr>
                                                                             <td >
                                                                                 <span style="color:#1500d4"><xsl:value-of select="format-number(CollateralPledgedAmount,'###,###,###,###,##0.00')" /></span>
                                                                             </td>
                                                                        </tr>
                                                                     </xsl:for-each>
                                                                 </table>
                                                             </td>
                                                            <td class="labelXsl"  align="center">
                                                                 <table>
                                                                     <xsl:for-each select="RelatedInvolvedPartyInfo/RelatedInvolvedPartyDetails">
                                                                        <tr>
                                                                             <td ><xsl:value-of select="RelatedInvolvedPartyId"/></td>
                                                                        </tr>
                                                                     </xsl:for-each>
                                                                 </table>
                                                             </td>
                                                             <td class="labelXsl">
                                                                 <xsl:value-of select="UniqueIdTypeValue"/>
                                                             </td>
                                                             <td class="labelXsl">
                                                                 <table>
                                                                     <xsl:for-each select="RelatedInvolvedPartyInfo/RelatedInvolvedPartyDetails">
                                                                        <tr>
                                                                             <td ><xsl:value-of select="IpArRelationshipTypeValue"/></td>
                                                                        </tr>
                                                                     </xsl:for-each>
                                                                 </table>
                                                             </td>
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
