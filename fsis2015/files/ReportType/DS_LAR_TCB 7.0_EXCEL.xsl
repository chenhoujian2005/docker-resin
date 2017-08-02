<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head></head>
            <body>
                <table class="displayTable" width="15%" border="1">
					<tr>
						<td class="bgGreen" width="20%">Organization ID :  </td>
						<td width="80%" colspan="3">
							<xsl:for-each select="DS_LAR/CommonHeader">
								<xsl:value-of select="OrganizationId"/>
							</xsl:for-each>
						</td>
					</tr>
					<tr>
						<td class="bgGreen">FI Reporting Group :</td>
						<td colspan="3">
						   116003 - ชุดรวมทุกสำนักงานในประเทศ
						</td>
					</tr>
					<tr>
						<td>Data Set Type :</td>
						<td colspan="3">
							<xsl:value-of select="DS_LAR/@name"/>
						</td>
					</tr>
					<tr>
						<td class="bgGreen"></td>
						<td class="bgGreen" align="center">Day</td>
						<td class="bgGreen" align="center">Month</td>
						<td class="bgGreen" align="center">Year</td>
					</tr>
					<tr>
						<td class="bgGreen" >Data Set Date :</td>
						<xsl:variable name="month"><xsl:value-of select="substring-after(substring-before(DataSetDate,'-'),'-')"/></xsl:variable>
						<xsl:for-each select="DS_LAR/CommonHeader">
							<td width="20%" hight="15px" align="center">
								<xsl:value-of select="substring(DataSetDate,9,2)"/>
							</td>
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
				<table width="4900px" class="displayTable" border="1">
					<tr class="headTableXsl">
						<td colspan="44" align="center">Load Arrangement</td>
					</tr>
					<tr class="headTableXsl">
						<td align="center" width="100px" rowspan="2">Branch Number</td>
						<td align="center" width="100px" rowspan="2">FI Arrangement Number</td>
						<td align="center" colspan="22">Loan Type</td>
						<td align="center" colspan="8">TDR Group Info</td>
						<td align="center" colspan="2">Related AR Group Info</td>
						<td align="center" colspan="7">Related IP Group Info</td>
						<td align="center" colspan="3">Collateral Group Info</td>
					</tr>
					<tr class="headTableXsl" >
						<td width="100px" align="center">Loan Type</td>
						<td width="100px" align="center">Movement Type</td>
						<td width="200px" align="center">Movement Type Description</td>
						<td width="100px" align="center">Asset Classification Type</td>
						<td width="200px" align="center">Asset Classification Reason</td>
						<td width="100px" align="center">Credit Type</td>
						<td width="100px" align="center">Primary Involved Party Id</td>
						<td width="100px" align="center">Unique Id Type</td>
						<td width="100px" align="center">Review Flag</td>
						<td width="100px" align="center">Arrangement Contract Date</td>
						<td width="100px" align="center">Arrangement Purpose Code</td>
						<td width="200px" align="center">Arrangement Purpose Code Description</td>
						<td width="100px" align="center">Lending Business Type</td>
						<td width="100px" align="center">Lending Business Type Description</td>
						<td width="100px" align="center">Effective Date</td>
						<td width="100px" align="center">Maturity Date</td>
						<td width="100px" align="center">Description </td>
						<td width="100px" align="center">Operation Progress</td>
						<td width="100px" align="center">Minimum Interest Rate</td>
						<td width="100px" align="center">Maximum Interest Rate</td>
						<td width="100px" align="center">Contract Currency Id</td>
						<td width="100px" align="center">Contract Amount </td>
						
						<td width="100px" align="center">TDR Method Type</td>
						<td width="200px" align="center">TDR Type</td>
						<td width="100px" align="center">Number of Re-entry</td>
						<td width="100px" align="center">Principal Hair-Cut Amount</td>
						<td width="100px" align="center">Interest Hair-Cut Amount</td>
						<td width="100px" align="center">VAT Waived Amount</td>
						<td width="100px" align="center">Business Tax Waived Amount</td>
						<td width="100px" align="center">Other Tax Waived Amount</td>
						
						<td width="100px" align="center">Other Arrangement Number</td>
						<td width="100px" align="center">AR AR Relationship Type</td>
						
						<td width="100px" align="center">Related Involved Party Id</td>
						<td width="100px" align="center">Unique Id Type</td>
						<td width="100px" align="center">IP AR Relationship Type</td>
						<td width="100px" align="center">Outstanding Amount</td>
						<td width="100px" align="center">Accrued Interest Amount</td>
						<td width="100px" align="center">Suspended Interest Amount</td>
						<td width="100px" align="center">Cash Flow Value Amount</td>
						
						<td width="200px" align="center">Collateral Type</td>
						<td width="100px" align="center">Collateral Value Amount</td>
						<td width="100px" align="center">Collateral Pledged Amount</td>
					</tr>
					<xsl:for-each select="DS_LAR/DS_LAR_Content/ContentRecordGroup">
						<tr>
							<td class="labelXsl">
								<xsl:value-of select="BranchNumber"/>
							</td>
							<td class="labelXsl">
								<xsl:value-of select="FiArrangementNumber"/>
							</td>
							<td class="labelXsl">
								<xsl:value-of select="LoanTypeInfo/LoanTypeDetails/LoanTypeValue"/>
							</td>
							<td class="labelXsl">
								<xsl:value-of select="LoanTypeInfo/LoanTypeDetails/MovementType"/>
							</td>
							<td class="labelXsl">
								<xsl:value-of select="LoanTypeInfo/LoanTypeDetails/MovementTypeValue"/>
							</td>
							<td class="labelXsl">
								<xsl:value-of select="LoanTypeInfo/LoanTypeDetails/AssetClassificationTypeValue"/>
							</td>
							<td class="labelXsl">
								<xsl:value-of select="LoanTypeInfo/LoanTypeDetails/AssetClassificationReasonValue"/>
							</td>
							<td class="labelXsl">
								<xsl:value-of select="CreditTypeValue"/>
							</td>
							<td class="labelXsl">
								<xsl:value-of select="PrimaryInvolvedPartyId"/>
							</td>
							<td class="labelXsl">
								<xsl:value-of select="UniqueIdTypeValue"/>
							</td>
							<td class="labelXsl">
								<xsl:value-of select="ReviewFlag"/>
							</td>
							<td class="labelXsl">
								<xsl:value-of select="ArrangementContractDate"/>
							</td>
							<td class="labelXsl">
								<xsl:value-of select="ArrangementPurposeCode"/>
							</td>
							<td class="labelXsl">
								<xsl:value-of select="ArrangementPurposeCodeValue"/>
							</td>
							<td class="labelXsl">
								<xsl:value-of select="LendingBusinessType"/>
							</td>
							<td class="labelXsl">
								<xsl:value-of select="LendingBusinessTypeValue"/>
							</td>
							<td class="labelXsl">
								<xsl:value-of select="EffectiveDate"/>
							</td>
							<td class="labelXsl">
								<xsl:value-of select="MaturityDate"/>
							</td>
							<td class="labelXsl">
								<xsl:value-of select="Description"/>
							</td>
							<td class="labelXsl">
								<xsl:value-of select="OperationProgressValue"/>
							</td>

							<xsl:variable name="MinimumInterestRate"><xsl:value-of select="MinimumInterestRate"/></xsl:variable>
                            <xsl:if test="$MinimumInterestRate !=''">
							    <td class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00000'">
								    <xsl:value-of select="format-number($MinimumInterestRate,'##0.00000')"/>
								</td>
							</xsl:if>
							<xsl:if test="$MinimumInterestRate =''">
							    <td class="labelXsl" align="right" style="mso-number-format:'\#\,\#\#0\.00000'">0.00000</td>
							</xsl:if>

                            <xsl:variable name="MaximumInterestRate"><xsl:value-of select="MaximumInterestRate"/></xsl:variable>
                            <xsl:if test="$MaximumInterestRate !=''">
							    <td class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00000'">
								    <xsl:value-of select="format-number($MaximumInterestRate,'##0.00000')"/>
								</td>
                            </xsl:if>
							<xsl:if test="$MaximumInterestRate =''">
							    <td class="labelXsl" align="right" style="mso-number-format:'\#\,\#\#0\.00000'">0.00000</td>
							</xsl:if>

							<td class="labelXsl">
								<xsl:value-of select="ContractCurrencyIdValue"/>
							</td>

                           <xsl:variable name="ContractAmount"><xsl:value-of select="ContractAmount"/></xsl:variable>
                           <xsl:if test="$ContractAmount !=''">
								<td class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
								    <xsl:value-of select="format-number($ContractAmount,'###,###,###,###,###,###,###,##0.00')"/>
							    </td>
							</xsl:if>
							<xsl:if test="$ContractAmount =''">
							    <td class="labelXsl" align="right" style="mso-number-format:'\#\,\#\#0\.00'">0.00</td>
							</xsl:if>
                            
							<td class="labelXsl">
								<xsl:value-of select="TdrGroupInfo/TdrGroupDetails/TdrMethodTypeValue"/>
							</td>
							<td class="labelXsl">
								<xsl:value-of select="TdrGroupInfo/TdrGroupDetails/TdrTypeValue"/>
							</td>
							<td class="labelXsl" align="right">
								<xsl:value-of select="NumberOfReEntry"/>
							</td>                            
							<xsl:variable name="PrincipalHair-CutAmountVar"><xsl:value-of select="PrincipalHairCutAmount"/></xsl:variable>
							<xsl:if test="$PrincipalHair-CutAmountVar !=''">
								<td class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
									<xsl:value-of select="format-number($PrincipalHair-CutAmountVar,'###,###,###,###,###,###,###,##0.00')"/>
								</td>
							</xsl:if>
							<xsl:if test="$PrincipalHair-CutAmountVar =''">
								<td class="labelXsl" align="right" style="mso-number-format:'\#\,\#\#0\.00'">0.00</td>
							</xsl:if>
							<xsl:variable name="InterestHair-CutAmountVar"><xsl:value-of select="InterestHairCutAmount"/></xsl:variable>
							<xsl:if test="$InterestHair-CutAmountVar !=''">
								<td class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
									<xsl:value-of select="format-number($InterestHair-CutAmountVar,'###,###,###,###,###,###,###,##0.00')"/>
								</td>
							</xsl:if>
							<xsl:if test="$InterestHair-CutAmountVar =''">
								<td class="labelXsl" align="right" style="mso-number-format:'\#\,\#\#0\.00'">0.00</td>
							</xsl:if>
							<xsl:variable name="VATWaivedAmountVar"><xsl:value-of select="VatWaivedAmount"/></xsl:variable>
							<xsl:if test="$VATWaivedAmountVar !=''">
								<td class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
									<xsl:value-of select="format-number($VATWaivedAmountVar,'###,###,###,###,###,###,###,##0.00')"/>
								</td>
							</xsl:if>
							<xsl:if test="$VATWaivedAmountVar =''">
								<td class="labelXsl" align="right" style="mso-number-format:'\#\,\#\#0\.00'">0.00</td>
							</xsl:if>
							<xsl:variable name="BusinessTaxWaivedAmountVar"><xsl:value-of select="BusinessTaxWaivedAmount"/></xsl:variable>
							<xsl:if test="$BusinessTaxWaivedAmountVar !=''">
								<td class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
									<xsl:value-of select="format-number($BusinessTaxWaivedAmountVar,'###,###,###,###,###,###,###,##0.00')"/>
								</td>
							</xsl:if>
							<xsl:if test="$BusinessTaxWaivedAmountVar =''">
								<td class="labelXsl" align="right" style="mso-number-format:'\#\,\#\#0\.00'">0.00</td>
							</xsl:if>
							<xsl:variable name="OtherTaxWaivedAmountVar"><xsl:value-of select="OtherTaxWaivedAmount"/></xsl:variable>
							<xsl:if test="$OtherTaxWaivedAmountVar !=''">
								<td class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
									<xsl:value-of select="format-number($OtherTaxWaivedAmountVar,'###,###,###,###,###,###,###,##0.00')"/>
								</td>
							</xsl:if>
							<xsl:if test="$OtherTaxWaivedAmountVar =''">
								<td class="labelXsl" align="right" style="mso-number-format:'\#\,\#\#0\.00'">0.00</td>
							</xsl:if>
							
							<!--
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
							-->
							<td class="labelXsl">
								<table width="100%" style="height:100%;" border="1">
									<xsl:for-each select="RelatedArGroupInfo/RelatedArGroupDetails">
										<tr>
											<td class="labelXsl">
												<xsl:value-of select="OtherArrangementNumber"/>
											</td>
										</tr>
									</xsl:for-each>
								</table>
							</td>
							<td class="labelXsl">
								<table width="100%" style="height:100%;" border="1">
									<xsl:for-each select="RelatedArGroupInfo/RelatedArGroupDetails">
										<tr>
											<td class="labelXsl">
												<xsl:value-of select="ArArRelationshipTypeValue"/>
											</td>
										</tr>
									</xsl:for-each>
								</table>
							</td>
							
							<!--
							<td width="10%" class="labelXsl" >
								<xsl:value-of select="RelatedIpGroupInfo/RelatedIpGroupDetails/RelatedInvolvedPartyIdValue"/>
							</td>
							<td width="10%" class="labelXsl" >
								<xsl:value-of select="RelatedIpGroupInfo/RelatedIpGroupDetails/RelatedUniqueIdTypeValue"/>
							</td>
							<td width="10%" class="labelXsl" >
								<xsl:value-of select="RelatedIpGroupInfo/RelatedIpGroupDetails/IpArRelationshipTypeValue"/>
							</td>
							-->
							<td class="labelXsl">
								<table width="100%" style="height:100%;" border="1">
									<xsl:for-each select="RelatedIpGroupInfo/RelatedIpGroupDetails">
										<tr>
											<td class="labelXsl">
												<xsl:value-of select="RelatedInvolvedPartyId"/>
											</td>
										</tr>
									</xsl:for-each>
								</table>
							</td>
							<td class="labelXsl">
								<table width="100%" style="height:100%;" border="1">
									<xsl:for-each select="RelatedIpGroupInfo/RelatedIpGroupDetails">
										<tr>
											<td class="labelXsl">
												<xsl:value-of select="RelatedUniqueIdTypeValue"/>
											</td>
										</tr>
									</xsl:for-each>
								</table>
							</td>
							<td class="labelXsl">
								<table width="100%" style="height:100%;" border="1">
									<xsl:for-each select="RelatedIpGroupInfo/RelatedIpGroupDetails">
										<tr>
											<td class="labelXsl">
												<xsl:value-of select="IpArRelationshipTypeValue"/>
											</td>
										</tr>
									</xsl:for-each>
								</table>
							</td>
							
							<xsl:variable name="OutstandingAmountVar"><xsl:value-of select="OutstandingAmount"/></xsl:variable>
							<xsl:if test="$OutstandingAmountVar !=''">
								<td class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
									<xsl:value-of select="format-number($OutstandingAmountVar,'###,###,###,###,###,###,###,##0.00')"/>
								</td>
							</xsl:if>
							<xsl:if test="$OutstandingAmountVar =''">
								<td class="labelXsl"/>
							</xsl:if>
							<xsl:variable name="AccruedInterestAmountVar"><xsl:value-of select="AccruedInterestAmount"/></xsl:variable>
							<xsl:if test="$AccruedInterestAmountVar !=''">
								<td class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
									<xsl:value-of select="format-number($AccruedInterestAmountVar,'###,###,###,###,###,###,###,##0.00')"/>
								</td>
							</xsl:if>
							<xsl:if test="$AccruedInterestAmountVar =''">
								<td class="labelXsl"/>
							</xsl:if>
							<xsl:variable name="SuspendedInterestAmountVar"><xsl:value-of select="SuspendedInterestAmount"/></xsl:variable>
							<xsl:if test="$SuspendedInterestAmountVar !=''">
								<td class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
									<xsl:value-of select="format-number($SuspendedInterestAmountVar,'###,###,###,###,###,###,###,##0.00')"/>
								</td>
							</xsl:if>
							<xsl:if test="$SuspendedInterestAmountVar =''">
								<td class="labelXsl" align="right" style="mso-number-format:'\#\,\#\#0\.00'">0.00</td>
							</xsl:if>
							<xsl:variable name="CashFlowValueAmountVar"><xsl:value-of select="CashFlowValueAmount"/></xsl:variable>
							<xsl:if test="$CashFlowValueAmountVar !=''">
								<td class="labelXsl" align="right"  style="mso-number-format:'\#\,\#\#0\.00'">
									<xsl:value-of select="format-number($CashFlowValueAmountVar,'###,###,###,###,###,###,###,##0.00')"/>
								</td>
							</xsl:if>
							<xsl:if test="$CashFlowValueAmountVar =''">
								<td class="labelXsl" align="right" style="mso-number-format:'\#\,\#\#0\.00'">0.00</td>
							</xsl:if>

							<!--
							<td  colspan="3" class="labelXsl" >
								<table>
									<xsl:for-each select="CollateralGroupInfo/CollateralGroupDetails">
										<tr  class="labelXsl" >
											<td width="10%" >
												<xsl:value-of select="CollateralTypeValue"/>
											</td>
											<td width="10%" >
												<xsl:variable name="CollateralValueAmountVar"><xsl:value-of select="CollateralValueAmount"/></xsl:variable>
												<xsl:if test="$CollateralValueAmountVar !=''">
												<td width="10%" class="labelXsl" >
												<xsl:value-of select="format-number($CollateralValueAmountVar,'###,###,###,###,###,###,###,##0.00')"/>
												</td>
												</xsl:if>
												<xsl:if test="$CollateralValueAmountVar =''">
												<td class="labelXsl" />
												</xsl:if>
											</td>
											<td width="10%" >
												<xsl:variable name="CollateralPledgedAmountVar"><xsl:value-of select="CollateralPledgedAmount"/></xsl:variable>
												<xsl:if test="$CollateralPledgedAmountVar !=''">
												<td width="10%" class="labelXsl" >
												<xsl:value-of select="format-number($CollateralPledgedAmountVar,'###,###,###,###,###,###,###,##0.00')"/>
												</td>
												</xsl:if>
												<xsl:if test="$CollateralPledgedAmountVar =''">
												<td class="labelXsl" />
												</xsl:if>
											</td>
										</tr>
									</xsl:for-each>
								</table>
							</td>
							-->
							<td class="labelXsl">
								<table width="100%" style="height:100%;" border="1">
									<xsl:for-each select="CollateralGroupInfo/CollateralGroupDetails">
										<tr>
											<td class="labelXsl">
												<xsl:value-of select="CollateralTypeValue"/>
											</td>
										</tr>
									</xsl:for-each>
								</table>
							</td>
							<td class="labelXsl">
								<table width="100%" style="height:100%;" border="1">
									<xsl:for-each select="CollateralGroupInfo/CollateralGroupDetails">
										<tr>
											<td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
												<xsl:variable name="CollateralValueAmountVar"><xsl:value-of select="CollateralValueAmount"/></xsl:variable>
												<xsl:if test="$CollateralValueAmountVar !=''">
													<xsl:value-of select="format-number($CollateralValueAmountVar,'###,###,###,###,###,###,###,##0.00')"/>
												</xsl:if>
											</td>
										</tr>
									</xsl:for-each>
								</table>
							</td>
							<td class="labelXsl">
								<table width="100%" style="height:100%;" border="1">
									<xsl:for-each select="CollateralGroupInfo/CollateralGroupDetails">
										<tr>
											<td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
												<xsl:variable name="CollateralPledgedAmountVar"><xsl:value-of select="CollateralPledgedAmount"/></xsl:variable>
												<xsl:if test="$CollateralPledgedAmountVar !=''">
													<xsl:value-of select="format-number($CollateralPledgedAmountVar,'###,###,###,###,###,###,###,##0.00')"/>
												</xsl:if>
											</td>
										</tr>
									</xsl:for-each>
								</table>
							</td>
						</tr>
					</xsl:for-each>
				</table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
