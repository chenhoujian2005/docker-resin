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
                                                    <xsl:for-each select="DS_LAR/CommonHeader">
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
                                                    <xsl:value-of select="DS_LAR/@name"/>
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
                                                            <xsl:for-each select="DS_LAR/CommonHeader">
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
                                         <table width="100%" class="displayTable" border="0" >
                                             <tr class="headTableXsl">
                                                 <td colspan="44"  align="center" >Load Arrangement</td>
                                             </tr>
                                             <tr class="headTableXsl" >
                                                <td align="center" rowspan="2">Branch Number</td>
                                                 <td align="center" rowspan="2">FI Arrangement Number</td>
                                                 <td align="center" colspan="22">Loan Type</td>
                                                 <td align="center" colspan="8">TDR Group Info</td>
                                                 <td align="center" colspan="2">Related AR Group Info</td>
                                                 <td align="center"  colspan="7">Related IP Group Info</td>
                                                 <td align="center"  colspan="3">Collateral Group Info</td>
                                             </tr>
                                             <tr class="headTableXsl" >
                                                 <td>Loan Type </td>
                                                 <td >Movement Type </td>
                                                 <td width="20%">Movement Type Description </td>
                                                 <td>Asset Classification Type </td>
                                                 <td>Asset Classification Reason </td>
                                                 <td>Credit Type </td>
                                                 <td>Primary Involved Party Id </td>
                                                 <td>Unique Id Type </td>
                                                 <td>Review Flag </td>
                                                 <td>Arrangement Contract Date </td>
                                                 <td>Arrangement Purpose Code </td>
                                                 <td width="20%">Arrangement Purpose Code Description </td>
                                                 <td>Lending Business Type </td>
                                                 <td width="20%">Lending Business Type Description</td>
                                                 <td>Effective Date </td>
                                                 <td>Maturity Date </td>
                                                 <td>Description </td>
                                                 <td>Operation Progress</td>
                                                 <td>Minimum Interest Rate </td>
                                                 <td>Maximum Interest Rate </td>
                                                 <td>Contract Currency Id </td>
                                                 <td>Contract Amount </td>
                                                 <!--//-->
                                                 <td>TDR Method Type </td>
                                                 <td>TDR Type </td>
                                                 <td>Number of Re-entry </td>
                                                 <td>Principal Hair-Cut Amount </td>
                                                 <td>Interest Hair-Cut Amount </td>
                                                 <td>VAT Waived Amount </td>
                                                 <td>Business Tax Waived Amount </td>
                                                 <td>Other Tax Waived Amount </td>
                                                 <!--//-->
                                                 <td>Other Arrangement Number </td>
                                                 <td>AR AR Relationship Type </td>
                                                  <!--//-->
                                                 <td>Related Involved Party Id </td>
                                                 <td>Unique Id Type </td>
                                                 <td>IP AR Relationship Type </td>
                                                 <td>Outstanding Amount </td>
                                                 <td>Accrued Interest Amount </td>
                                                 <td>Suspended Interest Amount </td>
                                                 <td>Cash Flow Value Amount </td>
                                                 <!--//-->
                                                  <td>Collateral Type </td>
                                                 <td>Collateral Value Amount </td>
                                                 <td>Collateral Pledged Amount </td>
                                             </tr>
                                            <xsl:for-each select="DS_LAR/DS_LAR_Content/ContentRecordGroup">
                                                <tr>
                                                    <td width="10%" class="labelXsl" >
                                                        <xsl:value-of select="BranchNumber"/>
                                                    </td>
                                                    <td width="10%" class="labelXsl" >
                                                        <xsl:value-of select="FiArrangementNumber"/>
                                                    </td>
                                                    <td width="10%" class="labelXsl" >
                                                        <xsl:value-of select="LoanTypeInfo/LoanTypeDetails/LoanTypeValue"/>
                                                    </td>
                                                    <td width="10%" class="labelXsl">
                                                        <xsl:value-of select="LoanTypeInfo/LoanTypeDetails/MovementType"/>
                                                    </td>
                                                    <td width="10%" class="labelXsl">
                                                        <xsl:value-of select="LoanTypeInfo/LoanTypeDetails/MovementTypeValue"/>
                                                    </td>
                                                    <td width="10%" class="labelXsl" >
                                                        <xsl:value-of select="LoanTypeInfo/LoanTypeDetails/AssetClassificationTypeValue"/>
                                                    </td>
                                                    <td width="10%" class="labelXsl" >
                                                        <xsl:value-of select="LoanTypeInfo/LoanTypeDetails/AssetClassificationReasonValue"/>
                                                    </td>
                                                    <td width="10%" class="labelXsl" >
                                                        <xsl:value-of select="CreditTypeValue"/>
                                                    </td>
                                                    <td width="10%" class="labelXsl" >
                                                        <xsl:value-of select="PrimaryInvolvedPartyId"/>
                                                    </td>
                                                    <td width="10%" class="labelXsl" >
                                                        <xsl:value-of select="UniqueIdTypeValue"/>
                                                    </td>
                                                    <td width="10%" class="labelXsl" >
                                                        <xsl:value-of select="ReviewFlag"/>
                                                    </td>
                                                    <td width="10%" class="labelXsl" >
                                                        <xsl:value-of select="ArrangementContractDate"/>
                                                    </td>
                                                     <td width="10%" class="labelXsl" >
                                                        <xsl:value-of select="ArrangementPurposeCode"/>
                                                    </td>
                                                    <td width="10%" class="labelXsl" >
                                                        <xsl:value-of select="ArrangementPurposeCodeValue"/>
                                                    </td>
                                                    <td width="10%" class="labelXsl" >
                                                        <xsl:value-of select="LendingBusinessType"/>
                                                    </td>
                                                    <td width="10%" class="labelXsl" >
                                                        <xsl:value-of select="LendingBusinessTypeValue"/>
                                                    </td>
                                                    <td width="10%" class="labelXsl" >
                                                        <xsl:value-of select="EffectiveDate"/>
                                                    </td>
                                                    <td width="10%" class="labelXsl" >
                                                        <xsl:value-of select="MaturityDate"/>
                                                    </td>
                                                    <td width="10%" class="labelXsl" >
                                                        <xsl:value-of select="Description"/>
                                                    </td>
                                                    <td width="10%" class="labelXsl" >
                                                        <xsl:value-of select="OperationProgressValue"/>
                                                    </td>
                                                    <td width="10%" class="labelXsl" >
                                                        <xsl:value-of select="MinimumInterestRate"/>
                                                    </td>
                                                    <td width="10%" class="labelXsl" >
                                                        <xsl:value-of select="MaximumInterestRate"/>
                                                    </td>
                                                    <td width="10%" class="labelXsl" >
                                                        <xsl:value-of select="ContractCurrencyIdValue"/>
                                                    </td>
                                                    <td width="10%" class="labelXsl" >
                                                        <xsl:value-of select="ContractAmount"/>
                                                    </td>
                                                    <td width="10%" class="labelXsl" >
                                                        <xsl:value-of select="TdrGroupInfo/TdrGroupDetails/TdrMethodTypeValue"/>
                                                    </td>
                                                     <td width="10%" class="labelXsl" >
                                                        <xsl:value-of select="TdrGroupInfo/TdrGroupDetails/TdrTypeValue"/>
                                                    </td>
                                                    <td width="10%" class="labelXsl" >
                                                        <xsl:value-of select="NumberOfReEntry"/>
                                                    </td>
                                                    <xsl:variable name="PrincipalHair-CutAmountVar"><xsl:value-of select="PrincipalHairCutAmount"/></xsl:variable>
                                                    <xsl:if test="$PrincipalHair-CutAmountVar !=''">
                                                    <td width="10%" class="labelXsl" >
                                                        <xsl:value-of select="format-number($PrincipalHair-CutAmountVar,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </td>
                                                     </xsl:if>
                                                     <xsl:if test="$PrincipalHair-CutAmountVar =''">
                                                         <td class="labelXsl" />
                                                    </xsl:if>
                                                     <xsl:variable name="InterestHair-CutAmountVar"><xsl:value-of select="InterestHairCutAmount"/></xsl:variable>
                                                    <xsl:if test="$InterestHair-CutAmountVar !=''">
                                                    <td width="10%" class="labelXsl" >
                                                        <xsl:value-of select="format-number($InterestHair-CutAmountVar,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </td>
                                                    </xsl:if>
                                                     <xsl:if test="$InterestHair-CutAmountVar =''">
                                                         <td class="labelXsl" />
                                                    </xsl:if>
                                                     <xsl:variable name="VATWaivedAmountVar"><xsl:value-of select="VatWaivedAmount"/></xsl:variable>
                                                    <xsl:if test="$VATWaivedAmountVar !=''">
                                                    <td width="10%" class="labelXsl" >
                                                        <xsl:value-of select="format-number($VATWaivedAmountVar,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </td>
                                                    </xsl:if>
                                                     <xsl:if test="$VATWaivedAmountVar =''">
                                                         <td class="labelXsl" />
                                                    </xsl:if>
                                                    <xsl:variable name="BusinessTaxWaivedAmountVar"><xsl:value-of select="BusinessTaxWaivedAmount"/></xsl:variable>
                                                    <xsl:if test="$BusinessTaxWaivedAmountVar !=''">
                                                     <td width="10%" class="labelXsl" >
                                                         <xsl:value-of select="format-number($BusinessTaxWaivedAmountVar,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </td>
                                                    </xsl:if>
                                                     <xsl:if test="$BusinessTaxWaivedAmountVar =''">
                                                         <td class="labelXsl" />
                                                    </xsl:if>
                                                    <xsl:variable name="OtherTaxWaivedAmountVar"><xsl:value-of select="OtherTaxWaivedAmount"/></xsl:variable>
                                                     <xsl:if test="$OtherTaxWaivedAmountVar !=''">
                                                     <td width="10%" class="labelXsl" >
                                                         <xsl:value-of select="format-number($OtherTaxWaivedAmountVar,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </td>
                                                     </xsl:if>
                                                     <xsl:if test="$OtherTaxWaivedAmountVar =''">
                                                         <td class="labelXsl" />
                                                    </xsl:if>
                                                    <xsl:variable name="OtherArrangementNumberVar"><xsl:value-of select="RelatedArGroupInfo/RelatedArGroupDetails/OtherArrangementNumber"/></xsl:variable>
                                                     <xsl:if test="$OtherArrangementNumberVar !=''">
                                                     <td width="10%" class="labelXsl" >
                                                         <xsl:value-of select="format-number($OtherArrangementNumberVar,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </td>
                                                     </xsl:if>
                                                     <xsl:if test="$OtherArrangementNumberVar =''">
                                                         <td class="labelXsl" />
                                                    </xsl:if>
                                                    <td width="10%" class="labelXsl" >
                                                        <xsl:value-of select="RelatedArGroupInfo/RelatedArGroupDetails/ArArRelationshipTypeValue"/>
                                                    </td>
                                                    <td width="10%" class="labelXsl" >
                                                        <xsl:value-of select="RelatedIpGroupInfo/RelatedIpGroupDetails/RelatedInvolvedPartyIdValue"/>
                                                    </td>
                                                    <td width="10%" class="labelXsl" >
                                                        <xsl:value-of select="RelatedIpGroupInfo/RelatedIpGroupDetails/RelatedUniqueIdTypeValue"/>
                                                    </td>
                                                    <td width="10%" class="labelXsl" >
                                                        <xsl:value-of select="RelatedIpGroupInfo/RelatedIpGroupDetails/IpArRelationshipTypeValue"/>
                                                    </td>
                                                     <xsl:variable name="OutstandingAmountVar"><xsl:value-of select="OutstandingAmount"/></xsl:variable>
                                                     <xsl:if test="$OutstandingAmountVar !=''">
                                                    <td width="10%" class="labelXsl" >
                                                        <xsl:value-of select="format-number($OutstandingAmountVar,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </td>
                                                         </xsl:if>
                                                     <xsl:if test="$OutstandingAmountVar =''">
                                                         <td class="labelXsl" />
                                                    </xsl:if>
                                                     <xsl:variable name="AccruedInterestAmountVar"><xsl:value-of select="AccruedInterestAmount"/></xsl:variable>
                                                     <xsl:if test="$AccruedInterestAmountVar !=''">
                                                    <td width="10%" class="labelXsl" >
                                                        <xsl:value-of select="format-number($AccruedInterestAmountVar,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </td>
                                                         </xsl:if>
                                                       <xsl:if test="$AccruedInterestAmountVar =''">
                                                         <td class="labelXsl" />
                                                    </xsl:if>
                                                     <xsl:variable name="SuspendedInterestAmountVar"><xsl:value-of select="SuspendedInterestAmount"/></xsl:variable>
                                                     <xsl:if test="$SuspendedInterestAmountVar !=''">
                                                    <td width="10%" class="labelXsl" >
                                                        <xsl:value-of select="format-number($SuspendedInterestAmountVar,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </td>
                                                         </xsl:if>
                                                     <xsl:if test="$SuspendedInterestAmountVar =''">
                                                         <td class="labelXsl" />
                                                    </xsl:if>
                                                     <xsl:variable name="CashFlowValueAmountVar"><xsl:value-of select="CashFlowValueAmount"/></xsl:variable>
                                                     <xsl:if test="$CashFlowValueAmountVar !=''">
                                                    <td width="10%" class="labelXsl" >
                                                        <xsl:value-of select="format-number($CashFlowValueAmountVar,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </td>
                                                         </xsl:if>
                                                     <xsl:if test="$CashFlowValueAmountVar =''">
                                                         <td class="labelXsl" />
                                                    </xsl:if>
                                                    <td width="10%" class="labelXsl" >
                                                        <xsl:value-of select="CollateralGroupInfo/CollateralGroupDetails/CollateralTypeValue"/>
                                                    </td>

                                                      <xsl:variable name="CollateralValueAmountVar"><xsl:value-of select="CollateralGroupInfo/CollateralGroupDetails/CollateralValueAmount"/></xsl:variable>
                                                     <xsl:if test="$CollateralValueAmountVar !=''">
                                                     <td width="10%" class="labelXsl" >
                                                         <xsl:value-of select="format-number($CollateralValueAmountVar,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </td>
                                                    </xsl:if>
                                                     <xsl:if test="$CollateralValueAmountVar =''">
                                                         <td class="labelXsl" />
                                                    </xsl:if>
                                                     <xsl:variable name="CollateralPledgedAmountVar"><xsl:value-of select="CollateralGroupInfo/CollateralGroupDetails/CollateralPledgedAmount"/></xsl:variable>
                                                     <xsl:if test="$CollateralPledgedAmountVar !=''">
                                                    <td width="10%" class="labelXsl" >
                                                        <xsl:value-of select="format-number($CollateralPledgedAmountVar,'###,###,###,###,###,###,###,##0.00')"/>
                                                    </td>
                                                    </xsl:if>
                                                     <xsl:if test="$CollateralPledgedAmountVar =''">
                                                         <td class="labelXsl" />
                                                    </xsl:if>
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
