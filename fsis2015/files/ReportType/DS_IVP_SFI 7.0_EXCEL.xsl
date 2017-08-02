<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
	<META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
</head>
<body>
	<table  class="displayTable"  width="30%" border="1">
		<tr>
			<td class="bgGreen" >Organization :</td>
			<td width="90%" colspan="3">
				<xsl:for-each select="DS_IVP/CommonHeader">
					<xsl:value-of select="OrganizationId"/>
				</xsl:for-each>
			</td>
		</tr>
		<tr>
			<td >Data Set Type :</td>
			<td width="90%" colspan="3">
				<xsl:for-each select="DS_IVP">
					<xsl:value-of select="@name"/>
				</xsl:for-each>
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

			<xsl:variable name="month"><xsl:value-of select="substring-after(substring-before(DataSetDate,'-'),'-')"/></xsl:variable>
			<xsl:for-each select="DS_IVP/CommonHeader">
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

	<table class="displayTable" width="100%" border="1">
		<tr>
			<td class="headTableXsl" colspan="38" align="center">FI Invesment Position</td>
		</tr>
		<tr>
			<!--<td class="headTableXsl" rowspan="3" align="center">Branch Number</td>-->
			<td class="headTableXsl" rowspan="3" align="center">Investment Type	</td>
			<td class="headTableXsl" rowspan="3" align="center">Investment Type Description</td>
			<td class="headTableXsl" rowspan="3" align="center">Returns Type </td>
			<td class="headTableXsl" rowspan="3" align="center">Coupon Rate	</td>
			<td class="headTableXsl" rowspan="3" align="center"> Maturity Date </td>
			<td class="headTableXsl" rowspan="3" align="center">Investment Country Id</td>
			<td class="headTableXsl" rowspan="3" align="center">Issuing Organization Id	</td>
			<td class="headTableXsl" rowspan="3" align="center">Unique Id Type</td>
			<td class="headTableXsl" rowspan="3" align="center">Investment Purpose Type</td>
			<td class="headTableXsl" rowspan="3" align="center">	Stock Acronym</td>
			<td class="headTableXsl" rowspan="3" align="center">Paid up Share Unit</td>
			<td class="headTableXsl" rowspan="3" align="center">Investment Devalue Amount</td>
			<td class="headTableXsl" rowspan="3" align="center">Total Increased Units</td>
			<td class="headTableXsl" rowspan="3" align="center">Total Increased Value</td>
			<td class="headTableXsl" rowspan="3" align="center">Total Decreased Units</td>
			<td class="headTableXsl" rowspan="3" align="center" >Total Decreased Value</td>
			<td class="headTableXsl" rowspan="3" align="center">Price per Unit at Par</td>
			<td class="headTableXsl" colspan="21" align="center">Outstanding Unit Group Info</td>
		</tr>
		<tr>
			<td class="headTableXsl" colspan="3" align="center">การถือครองที่ได้มาจากการปรับโครงสร้างหนี้	      </td>
			<td class="headTableXsl" colspan="3" align="center">การถือครองที่ได้รับการยกเว้นให้ถือครองได้เกิน 10% (ไม่นับรวม TDR)	     </td>
			<td class="headTableXsl" colspan="3" align="center">การถือครองที่ให้ยืม	     </td>
			<td class="headTableXsl" colspan="3" align="center">การถือครองที่ให้ยืมจากหลักทรัพย์ที่ได้มาจากการปรัยปรุงโครงสร้างหนี้	     </td>
			<td class="headTableXsl" colspan="3" align="center">การถือครองที่วางเป็นหลักประกันในตลาดซื้อคืนภาคเอกชน    </td>
			<td class="headTableXsl" colspan="3" align="center">ได้มาจากการซื้อ		     </td>
			<td class="headTableXsl" colspan="3" align="center">	การถือครองประเภทอื่น ๆ		   </td>
		</tr>
		<tr>
			<td class="headTableXsl"  align="center" >Outstanding Units</td>
			<td class="headTableXsl"  align="center" >Cost Value of Investment Outstanding Units</td>
			<td class="headTableXsl"  align="center" >Market/Fair/Equity Value of Investment Outstanding Units</td>
			<td class="headTableXsl">Outstanding Units</td>
			<td class="headTableXsl"  align="center" >Cost Value of Investment Outstanding Units</td>
			<td class="headTableXsl"  align="center" >Market/Fair/Equity Value of Investment Outstanding Units</td>
			<td class="headTableXsl"  align="center" >Outstanding Units</td>
			<td class="headTableXsl"  align="center" >Cost Value of Investment Outstanding Units</td>
			<td class="headTableXsl"  align="center" >Market/Fair/Equity Value of Investment Outstanding Units</td>
			<td class="headTableXsl"  align="center" >Outstanding Units</td>
			<td class="headTableXsl"  align="center" >Cost Value of Investment Outstanding Units</td>
			<td class="headTableXsl"  align="center" >Market/Fair/Equity Value of Investment Outstanding Units</td>
			<td class="headTableXsl"  align="center" >Outstanding Units</td>
			<td class="headTableXsl"  align="center" >Cost Value of Investment Outstanding Units</td>
			<td class="headTableXsl" align="center" >Market/Fair/Equity Value of Investment Outstanding Units</td>
			<td class="headTableXsl"  align="center" >Outstanding Units</td>
			<td class="headTableXsl"  align="center" >Cost Value of Investment Outstanding Units</td>
			<td class="headTableXsl"  align="center" >Market/Fair/Equity Value of Investment Outstanding Units</td>
			<td class="headTableXsl" align="center" >Outstanding Units</td>
			<td class="headTableXsl" align="center" >Cost Value of Investment Outstanding Units</td>
			<td class="headTableXsl"  align="center" >Market/Fair/Equity Value of Investment Outstanding Units</td>
		</tr>
		<xsl:for-each select="DS_IVP/DS_IVP_Content/ContentRecordGroup">
			<tr>
				<!--<td  align="center" class="labelXsl"><xsl:value-of select="BranchNumber"/></td>-->
				<td  align="center"  class="labelXsl"><xsl:value-of select="InvestmentType"/></td>
				<td  align="center"  class="labelXsl"><xsl:value-of select="InvestmentTypeValue"/></td>
				<td  align="center"  class="labelXsl"><xsl:value-of select="ReturnsTypeValue"/></td>
				<td  align="center"  class="labelXsl"><xsl:value-of select="CouponRate"/></td>
				<td  align="center"  class="labelXsl"><xsl:value-of select="MaturityDate"/></td>
				<td  align="center"  class="labelXsl"><xsl:value-of select="InvestmentCountryIdValue"/></td>
				<td  align="center"  class="labelXsl" style="mso-number-format:'\@'" >
                    <xsl:value-of select="IssuingOrganizationIdValue"/>
                    <!--<xsl:value-of select="IssuingOrganizationId"/>-->
                </td>
				<td  align="center"  class="labelXsl"><xsl:value-of select="UniqueIdTypeValue"/></td>
				<td  align="center"  class="labelXsl"><xsl:value-of select="InvestmentPurposeTypeValue"/></td>
				<td  align="center"  class="labelXsl"><xsl:value-of select="StockAcronymValue"/></td>
				<xsl:variable name="PaidUpShareUnits" select="PaidUpShareUnit"/>
				<xsl:if test="$PaidUpShareUnits = ''">
					<td  align="right"  class="labelXsl"><span style="color:#1500d4">0</span></td>
				</xsl:if>
				<xsl:if test="$PaidUpShareUnits != ''">
					<td  align="right"  class="labelXsl">
						<span style="color:#1500d4"><xsl:value-of select="format-number(PaidUpShareUnit,'###,###,###,###,###,##0')"/></span>
						<!--<xsl:value-of select="PaidUpShareUnit"/>-->
					</td>
				</xsl:if>
				<xsl:variable name="InvestmentDevalueAmounts" select="InvestmentDevalueAmount"/>
				<xsl:if test="$InvestmentDevalueAmounts = ''">
					<td  align="right"  class="labelXsl" style="mso-number-format:'\#\,\#\#0\.00'"><span style="color:#1500d4">0.00</span></td>
				</xsl:if>
				<xsl:if test="$InvestmentDevalueAmounts != ''">
				<td  align="right"  class="labelXsl" style="mso-number-format:'\#\,\#\#0\.00'">
					<span style="color:#1500d4" ><xsl:value-of select="InvestmentDevalueAmount"/></span>
					<!--<xsl:value-of select="InvestmentDevalueAmount"/>-->
				</td>
				</xsl:if>
				<xsl:variable name="TotalIncreasedUnitss" select="TotalIncreasedUnits"/>
				<xsl:if test="$TotalIncreasedUnitss = ''">
					<td  align="right"  class="labelXsl"><span style="color:#1500d4">0</span></td>
				</xsl:if>
				<xsl:if test="$TotalIncreasedUnitss != ''">
				<td  align="right"  class="labelXsl">
					<span style="color:#1500d4"><xsl:value-of select="format-number(TotalIncreasedUnits,'###,###,###,###,###,##0')"/></span>
					<!--<xsl:value-of select="TotalIncreasedUnits"/>-->
				</td>
				</xsl:if>
				<xsl:variable name="TotalIncreasedValues" select="TotalIncreasedValue"/>
				<xsl:if test="$TotalIncreasedValues = ''">
					<td  align="right"  class="labelXsl" style="mso-number-format:'\#\,\#\#0\.00'"><span style="color:#1500d4">0.00</span></td>
				</xsl:if>
				<xsl:if test="$TotalIncreasedValues != ''">
				<td  align="right"  class="labelXsl" style="mso-number-format:'\#\,\#\#0\.00'">
					<span style="color:#1500d4"><xsl:value-of select="TotalIncreasedValue"/></span>
					<!--<xsl:value-of select="TotalIncreasedValue"/>-->
				</td>
				</xsl:if>
				<xsl:variable name="TotalDecreasedUnitss" select="TotalDecreasedUnits"/>
				<xsl:if test="$TotalDecreasedUnitss = ''">
					<td  align="right"  class="labelXsl"><span style="color:#1500d4">0</span></td>
				</xsl:if>
				<xsl:if test="$TotalDecreasedUnitss != ''">
				<td  align="right"  class="labelXsl">
					<span style="color:#1500d4"><xsl:value-of select="format-number(TotalDecreasedUnits,'###,###,###,###,###,##0')"/></span>
					<!--<xsl:value-of select="TotalDecreasedUnits"/>-->
				</td>
				</xsl:if>
				<xsl:variable name="TotalDecreasedValues" select="TotalDecreasedValue"/>
				<xsl:if test="$TotalDecreasedValues = ''">
					<td  align="right"  class="labelXsl" style="mso-number-format:'\#\,\#\#0\.00'"><span style="color:#1500d4">0.00</span></td>
				</xsl:if>
				<xsl:if test="$TotalDecreasedValues != ''">
				<td  align="right"  class="labelXsl" style="mso-number-format:'\#\,\#\#0\.00'">
					<span style="color:#1500d4" ><xsl:value-of select="TotalDecreasedValue"/></span>
					<!--<xsl:value-of select="TotalDecreasedValue"/>-->
				</td>
				</xsl:if>
				<xsl:variable name="PricePerUnitAtPars" select="PricePerUnitAtPar"/>
				<xsl:if test="$PricePerUnitAtPars = ''">
				   <td  align="right"  class="labelXsl" style="mso-number-format:'\#\,\#\#0\.00'"><span style="color:#1500d4">0.00</span></td>
				</xsl:if>
				<xsl:if test="$PricePerUnitAtPars != ''">
				<td  align="right"  class="labelXsl" style="mso-number-format:'\#\,\#\#0\.00'">
					<span style="color:#1500d4"><xsl:value-of select="PricePerUnitAtPar"/></span>
					<!--<xsl:value-of select="PricePerUnitAtPar"/>-->
				</td>
				</xsl:if>
														
				<xsl:for-each select="OutstandingUnitGroupInfo/OutstandingUnitGroupDetails[InvestmentOutstandingUnitType = '164002']">										
					<td align="right" class="labelXsl">
						<span style="color:#1500d4"><xsl:value-of select="format-number(OutstandingUnits,'###,###,###,###,###,##0')"/></span>
					</td>
					<td align="right" class="labelXsl" style="mso-number-format:'\#\,\#\#0\.00'">
						<span style="color:#1500d4"><xsl:value-of select="CostValueOfInvestmentOutstandingUnits"/></span>
					</td>
					<td align="right" class="labelXsl" style="mso-number-format:'\#\,\#\#0\.00'">
						<span style="color:#1500d4"><xsl:value-of select="MarketOrFairOrEquityValueOfInvestmentOutstandingUnits"/></span>
					</td>
				</xsl:for-each>
				<xsl:if test="not(OutstandingUnitGroupInfo/OutstandingUnitGroupDetails[InvestmentOutstandingUnitType = '164002'])">
					<td align="right" class="labelXsl"><span style="color:#1500d4">0</span></td>
					<td align="right" class="labelXsl" style="mso-number-format:'\#\,\#\#0\.00'" ><span style="color:#1500d4">0.00</span></td>
					<td align="right" class="labelXsl" style="mso-number-format:'\#\,\#\#0\.00'" ><span style="color:#1500d4">0.00</span></td>
				</xsl:if>	

				<xsl:for-each select="OutstandingUnitGroupInfo/OutstandingUnitGroupDetails[InvestmentOutstandingUnitType = '164003']">										
					<td align="right" class="labelXsl">
						<span style="color:#1500d4"><xsl:value-of select="format-number(OutstandingUnits,'###,###,###,###,###,##0')"/></span>
					</td>
					<td align="right" class="labelXsl" style="mso-number-format:'\#\,\#\#0\.00'">
						<span style="color:#1500d4"><xsl:value-of select="CostValueOfInvestmentOutstandingUnits"/></span>
					</td>
					<td align="right" class="labelXsl" style="mso-number-format:'\#\,\#\#0\.00'">
						<span style="color:#1500d4"><xsl:value-of select="MarketOrFairOrEquityValueOfInvestmentOutstandingUnits"/></span>
					</td>
				</xsl:for-each>
				<xsl:if test="not(OutstandingUnitGroupInfo/OutstandingUnitGroupDetails[InvestmentOutstandingUnitType = '164003'])">
					<td align="right" class="labelXsl"><span style="color:#1500d4">0</span></td>
					<td align="right" class="labelXsl" style="mso-number-format:'\#\,\#\#0\.00'" ><span style="color:#1500d4">0.00</span></td>
					<td align="right" class="labelXsl" style="mso-number-format:'\#\,\#\#0\.00'" ><span style="color:#1500d4">0.00</span></td>
				</xsl:if>		

				<xsl:for-each select="OutstandingUnitGroupInfo/OutstandingUnitGroupDetails[InvestmentOutstandingUnitType = '164004']">										
					<td align="right" class="labelXsl">
						<span style="color:#1500d4"><xsl:value-of select="format-number(OutstandingUnits,'###,###,###,###,###,##0')"/></span>
					</td>
					<td align="right" class="labelXsl" style="mso-number-format:'\#\,\#\#0\.00'">
						<span style="color:#1500d4"><xsl:value-of select="CostValueOfInvestmentOutstandingUnits"/></span>
					</td>
					<td align="right" class="labelXsl" style="mso-number-format:'\#\,\#\#0\.00'">
						<span style="color:#1500d4"><xsl:value-of select="MarketOrFairOrEquityValueOfInvestmentOutstandingUnits"/></span>
					</td>
				</xsl:for-each>
				<xsl:if test="not(OutstandingUnitGroupInfo/OutstandingUnitGroupDetails[InvestmentOutstandingUnitType = '164004'])">
					<td align="right" class="labelXsl"><span style="color:#1500d4">0</span></td>
					<td align="right" class="labelXsl" style="mso-number-format:'\#\,\#\#0\.00'" ><span style="color:#1500d4">0.00</span></td>
					<td align="right" class="labelXsl" style="mso-number-format:'\#\,\#\#0\.00'" ><span style="color:#1500d4">0.00</span></td>
				</xsl:if>	
				
				<xsl:for-each select="OutstandingUnitGroupInfo/OutstandingUnitGroupDetails[InvestmentOutstandingUnitType = '164005']">										
					<td align="right" class="labelXsl">
						<span style="color:#1500d4"><xsl:value-of select="format-number(OutstandingUnits,'###,###,###,###,###,##0')"/></span>
					</td>
					<td align="right" class="labelXsl" style="mso-number-format:'\#\,\#\#0\.00'">
						<span style="color:#1500d4"><xsl:value-of select="CostValueOfInvestmentOutstandingUnits"/></span>
					</td>
					<td align="right" class="labelXsl" style="mso-number-format:'\#\,\#\#0\.00'">
						<span style="color:#1500d4"><xsl:value-of select="MarketOrFairOrEquityValueOfInvestmentOutstandingUnits"/></span>
					</td>
				</xsl:for-each>
				<xsl:if test="not(OutstandingUnitGroupInfo/OutstandingUnitGroupDetails[InvestmentOutstandingUnitType = '164005'])">
					<td align="right" class="labelXsl"><span style="color:#1500d4">0</span></td>
					<td align="right" class="labelXsl" style="mso-number-format:'\#\,\#\#0\.00'" ><span style="color:#1500d4">0.00</span></td>
					<td align="right" class="labelXsl" style="mso-number-format:'\#\,\#\#0\.00'" ><span style="color:#1500d4">0.00</span></td>
				</xsl:if>	
				
				<xsl:for-each select="OutstandingUnitGroupInfo/OutstandingUnitGroupDetails[InvestmentOutstandingUnitType = '164006']">										
					<td align="right" class="labelXsl">
						<span style="color:#1500d4"><xsl:value-of select="format-number(OutstandingUnits,'###,###,###,###,###,##0')"/></span>
					</td>
					<td align="right" class="labelXsl" style="mso-number-format:'\#\,\#\#0\.00'">
						<span style="color:#1500d4"><xsl:value-of select="CostValueOfInvestmentOutstandingUnits"/></span>
					</td>
					<td align="right" class="labelXsl" style="mso-number-format:'\#\,\#\#0\.00'">
						<span style="color:#1500d4"><xsl:value-of select="MarketOrFairOrEquityValueOfInvestmentOutstandingUnits"/></span>
					</td>
				</xsl:for-each>
				<xsl:if test="not(OutstandingUnitGroupInfo/OutstandingUnitGroupDetails[InvestmentOutstandingUnitType = '164006'])">
					<td align="right" class="labelXsl"><span style="color:#1500d4">0</span></td>
					<td align="right" class="labelXsl" style="mso-number-format:'\#\,\#\#0\.00'" ><span style="color:#1500d4">0.00</span></td>
					<td align="right" class="labelXsl" style="mso-number-format:'\#\,\#\#0\.00'" ><span style="color:#1500d4">0.00</span></td>
				</xsl:if>	
				
				<xsl:for-each select="OutstandingUnitGroupInfo/OutstandingUnitGroupDetails[InvestmentOutstandingUnitType = '164008']">										
					<td align="right" class="labelXsl">
						<span style="color:#1500d4"><xsl:value-of select="format-number(OutstandingUnits,'###,###,###,###,###,##0')"/></span>
					</td>
					<td align="right" class="labelXsl" style="mso-number-format:'\#\,\#\#0\.00'">
						<span style="color:#1500d4"><xsl:value-of select="CostValueOfInvestmentOutstandingUnits"/></span>
					</td>
					<td align="right" class="labelXsl" style="mso-number-format:'\#\,\#\#0\.00'">
						<span style="color:#1500d4"><xsl:value-of select="MarketOrFairOrEquityValueOfInvestmentOutstandingUnits"/></span>
					</td>
				</xsl:for-each>
				<xsl:if test="not(OutstandingUnitGroupInfo/OutstandingUnitGroupDetails[InvestmentOutstandingUnitType = '164008'])">
					<td align="right" class="labelXsl"><span style="color:#1500d4">0</span></td>
					<td align="right" class="labelXsl" style="mso-number-format:'\#\,\#\#0\.00'" ><span style="color:#1500d4">0.00</span></td>
					<td align="right" class="labelXsl" style="mso-number-format:'\#\,\#\#0\.00'" ><span style="color:#1500d4">0.00</span></td>
				</xsl:if>	
				
				<xsl:for-each select="OutstandingUnitGroupInfo/OutstandingUnitGroupDetails[InvestmentOutstandingUnitType = '164007']">										
					<td align="right" class="labelXsl">
						<span style="color:#1500d4"><xsl:value-of select="format-number(OutstandingUnits,'###,###,###,###,###,##0')"/></span>
					</td>
					<td align="right" class="labelXsl" style="mso-number-format:'\#\,\#\#0\.00'">
						<span style="color:#1500d4"><xsl:value-of select="CostValueOfInvestmentOutstandingUnits"/></span>
					</td>
					<td align="right" class="labelXsl" style="mso-number-format:'\#\,\#\#0\.00'">
						<span style="color:#1500d4"><xsl:value-of select="MarketOrFairOrEquityValueOfInvestmentOutstandingUnits"/></span>
					</td>
				</xsl:for-each>
				<xsl:if test="not(OutstandingUnitGroupInfo/OutstandingUnitGroupDetails[InvestmentOutstandingUnitType = '164007'])">
					<td align="right" class="labelXsl"><span style="color:#1500d4">0</span></td>
					<td align="right" class="labelXsl" style="mso-number-format:'\#\,\#\#0\.00'" ><span style="color:#1500d4">0.00</span></td>
					<td align="right" class="labelXsl" style="mso-number-format:'\#\,\#\#0\.00'" ><span style="color:#1500d4">0.00</span></td>
				</xsl:if>
														
														
			</tr>
		</xsl:for-each>
	</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
