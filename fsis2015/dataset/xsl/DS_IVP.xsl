<?xml version="1.0" encoding="UTF-8"?>      
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <META http-equiv="Content-Type" content="text/html; charset=TIS-620"/>
                <link rel="stylesheet" type="text/css" href="../../includes/css/style.css"/>
            </head>
            <body>
                <table width="98%" cellspacing="0" cellpadding="0" align="center">
                    <tr>
                        <td>
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="43"><img src="../../images/table001.gif" width="43" height="53" /></td>
                                    <td background="../../images/table002.gif"><img src="../../images/table002.gif" width="362" height="53"/></td>
                                    <td width="173"><img src="../../images/table003.gif" width="173" height="53"/></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="43" background="../../images/table004.gif"><img src="../../images/table004.gif" width="43" height="37" /></td>
                                    <td width="95%">
                                            <table  class="displayTable"  width="50%" border="0">
                                                <tr>
                                                    <td class="bgGreen" >Organization :</td>
                                                    <td width="90%" colspan="2">
                                                        <xsl:for-each select="DS_IVP/CommonHeader">
                                                             <xsl:value-of select="OrganizationId"/>
                                                        </xsl:for-each>
                                                    </td>
                                                </tr>
                                                 <tr>
                                                <td class="bgGreen">FI Reporting Group :</td>
                                                <td colspan="2">
                                                        116003 - ชุดรวมทุกสำนักงานในประเทศ
                                                </td>
                                            </tr>
                                                <tr>
                                                    <td bgcolor="#D2FF92">Data Set Type :</td>
                                                    <td width="90%" colspan="2">
                                                        <xsl:for-each select="DS_IVP">
                                                             <xsl:value-of select="@name"/>
                                                        </xsl:for-each>
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
                                                            <xsl:for-each select="DS_IVP/CommonHeader">
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

                                            <table class="displayTable" width="100%" border="0">
                                                <tr>
                                                    <td class="headTableXsl" colspan="39">FI Invesment Position</td>
                                                </tr>
                                                 <tr>
                                                    <td class="headTableXsl" rowspan="3">Branch Number</td>
                                                     <td class="headTableXsl" rowspan="3" >Investment Type	</td>
                                                     <td class="headTableXsl" rowspan="3" >Investment Type Description</td>
                                                     <td class="headTableXsl" rowspan="3">Returns Type </td>
                                                     <td class="headTableXsl" rowspan="3">Coupon Rate	</td>
                                                     <td class="headTableXsl" rowspan="3"> Maturity Date </td>
                                                     <td class="headTableXsl" rowspan="3">Investment Country Id</td>
                                                     <td class="headTableXsl" rowspan="3">Issuing Organization Id	</td>
                                                     <td class="headTableXsl" rowspan="3">Unique Id Type</td>
                                                     <td class="headTableXsl" rowspan="3">Investment Purpose Type</td>
                                                     <td class="headTableXsl" rowspan="3">Stock Acronym</td>
                                                     <td class="headTableXsl" rowspan="3">Paid up Share Unit</td>
                                                     <td class="headTableXsl" rowspan="3" >Investment Devalue Amount</td>
                                                     <td class="headTableXsl" rowspan="3">Total Increased Units</td>
                                                     <td class="headTableXsl" rowspan="3">Total Increased Value</td>
                                                     <td class="headTableXsl" rowspan="3">Total Decreased Units</td>
                                                     <td class="headTableXsl" rowspan="3">Total Decreased Value</td>
                                                     <td class="headTableXsl" rowspan="3">Price per Unit at Par</td>
                                                     <td class="headTableXsl" colspan="21">Outstanding Unit Group Info</td>
                                                </tr>
                                                 <tr>
                                                    <td class="headTableXsl" colspan="3">การถือครองที่ได้มาจากการปรับโครงสร้างหนี้	      </td>
                                                    <td class="headTableXsl" colspan="3">การถือครองที่ได้รับการยกเว้นให้ถือครองได้เกิน 10% (ไม่นับรวม TDR)	     </td>
                                                     <td class="headTableXsl" colspan="3">การถือครองที่ให้ยืม	     </td>
                                                     <td class="headTableXsl" colspan="3">การถือครองที่ให้ยืมจากหลักทรัพย์ที่ได้มาจากการปรัยปรุงโครงสร้างหนี้	     </td>
                                                     <td class="headTableXsl" colspan="3">การถือครองที่วางเป็นหลักประกันในตลาดซื้อคืนภาคเอกชน    </td>
                                                     <td class="headTableXsl" colspan="3">ได้มาจากการซื้อ		     </td>
                                                     <td class="headTableXsl" colspan="3">	การถือครองประเภทอื่น ๆ		   </td>
                                                </tr>
                                                 <tr>
                                                     <td class="headTableXsl"  alight="center" >Outstanding Units</td>
                                                     <td class="headTableXsl"  alight="center" >Cost Value of Investment Outstanding Units</td>
                                                     <td class="headTableXsl"  alight="center" >Market/Fair/Equity Value of Investment Outstanding Units</td>
                                                     <td class="headTableXsl">Outstanding Units</td>
                                                     <td class="headTableXsl"  alight="center" >Cost Value of Investment Outstanding Units</td>
                                                     <td class="headTableXsl"  alight="center" >Market/Fair/Equity Value of Investment Outstanding Units</td>
                                                     <td class="headTableXsl"  alight="center" >Outstanding Units</td>
                                                     <td class="headTableXsl"  alight="center" >Cost Value of Investment Outstanding Units</td>
                                                     <td class="headTableXsl"  alight="center" >Market/Fair/Equity Value of Investment Outstanding Units</td>
                                                     <td class="headTableXsl"  alight="center" >Outstanding Units</td>
                                                     <td class="headTableXsl"  alight="center" >Cost Value of Investment Outstanding Units</td>
                                                     <td class="headTableXsl"  alight="center" >Market/Fair/Equity Value of Investment Outstanding Units</td>
                                                     <td class="headTableXsl"  alight="center" >Outstanding Units</td>
                                                     <td class="headTableXsl"  alight="center" >Cost Value of Investment Outstanding Units</td>
                                                     <td class="headTableXsl" alight="center" >Market/Fair/Equity Value of Investment Outstanding Units</td>
                                                     <td class="headTableXsl"  alight="center" >Outstanding Units</td>
                                                     <td class="headTableXsl"  alight="center" >Cost Value of Investment Outstanding Units</td>
                                                     <td class="headTableXsl"  alight="center" >Market/Fair/Equity Value of Investment Outstanding Units</td>
                                                     <td class="headTableXsl" alight="center" >Outstanding Units</td>
                                                     <td class="headTableXsl" alight="center" >Cost Value of Investment Outstanding Units</td>
                                                     <td class="headTableXsl"  alight="center" >Market/Fair/Equity Value of Investment Outstanding Units</td>
                                                </tr>
                                                 <xsl:for-each select="DS_IVP/DS_IVP_Content/ContentRecordGroup">
                                                <tr>

                                                        <td  alight="center" class="labelXsl"><xsl:value-of select="BranchNumber"/></td>
                                                        <td  alight="center"  class="labelXsl"><xsl:value-of select="InvestmentType"/></td>
                                                        <td  alight="center"  class="labelXsl"><xsl:value-of select="InvestmentTypeValue"/></td>
                                                        <td  alight="center"  class="labelXsl"><xsl:value-of select="ReturnsTypeValue"/></td>
                                                        <td  alight="center"  class="labelXsl"><xsl:value-of select="CouponRate"/></td>
                                                        <td  alight="center"  class="labelXsl"><xsl:value-of select="MaturityDate"/></td>
                                                        <td  alight="center"  class="labelXsl"><xsl:value-of select="InvestmentCountryIdValue"/></td>
                                                        <td  alight="center"  class="labelXsl"><xsl:value-of select="IssuingOrganizationId"/></td>
                                                        <td  alight="center"  class="labelXsl"><xsl:value-of select="UniqueIdTypeValue"/></td>
                                                        <td  alight="center"  class="labelXsl"><xsl:value-of select="InvestmentPurposeTypeValue"/></td>
                                                        <td  alight="center"  class="labelXsl"><xsl:value-of select="StockAcronym"/></td>
                                                        <td  alight="center"  class="labelXsl">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number(PaidUpShareUnit,'###,###,###,###,###,##0')"/></span>
                                                        </td>
                                                        <td  alight="center"  class="labelXsl">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number(InvestmentDevalueAmount,'###,###,###,###,###,##0.00')"/></span>
                                                        </td>
                                                        <td  alight="center"  class="labelXsl">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number(TotalIncreasedUnits,'###,###,###,###,###,##0')"/></span>
                                                        </td>
                                                        <td  alight="center"  class="labelXsl">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number(TotalIncreasedValue,'###,###,###,###,###,##0.00')"/></span>
                                                        </td>
                                                        <td  alight="center"  class="labelXsl">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number(TotalDecreasedUnits,'###,###,###,###,###,##0')"/></span>
                                                        </td>
                                                        <td  alight="center"  class="labelXsl">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number(TotalDecreasedValue,'###,###,###,###,###,##0.00')"/></span>
                                                        </td>
                                                        <td  alight="center"  class="labelXsl">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number(PricePerUnitAtPar,'###,###,###,###,###,##0')"/></span>
                                                        </td>
                                                            <xsl:if test="OutstandingUnitGroupInfo/OutstandingUnitGroupDetails/InvestmentOutstandingUnitType = '164002'">
                                                                   <td  alight="center"  class="labelXsl">
                                                                       <span style="color:#1500d4"><xsl:value-of select="format-number(OutstandingUnitGroupInfo/OutstandingUnitGroupDetails/OutstandingUnits,'###,###,###,###,###,##0')"/></span>
                                                                   </td>
                                                                   <td  alight="center"  class="labelXsl">
                                                                       <span style="color:#1500d4"><xsl:value-of select="format-number(OutstandingUnitGroupInfo/OutstandingUnitGroupDetails/CostValueOfInvestmentOutstandingUnits,'###,###,###,###,###,##0')"/></span>
                                                                   </td>
                                                                   <td  alight="center"  class="labelXsl">
                                                                       <span style="color:#1500d4"><xsl:value-of select="format-number(OutstandingUnitGroupInfo/OutstandingUnitGroupDetails/MarketOrFairOrEquityValueOfInvestmentOutstandingUnits,'###,###,###,###,###,##0')"/></span>
                                                                   </td>
                                                            </xsl:if>
                                                             <xsl:if test="not(OutstandingUnitGroupInfo/OutstandingUnitGroupDetails/InvestmentOutstandingUnitType = '164002')">
                                                                   <td  alight="center"  class="labelXsl"></td>
                                                                   <td  alight="center"  class="labelXsl"></td>
                                                                   <td  alight="center"  class="labelXsl"></td>
                                                            </xsl:if>
                                                            <xsl:if test="OutstandingUnitGroupInfo/OutstandingUnitGroupDetails/InvestmentOutstandingUnitType = '164003'">
                                                                   <td  alight="center"  class="labelXsl">
                                                                       <span style="color:#1500d4"><xsl:value-of select="format-number(OutstandingUnitGroupInfo/OutstandingUnitGroupDetails/OutstandingUnits,'###,###,###,###,###,##0')"/></span>
                                                                   </td>
                                                                   <td  alight="center"  class="labelXsl">
                                                                       <span style="color:#1500d4"><xsl:value-of select="format-number(OutstandingUnitGroupInfo/OutstandingUnitGroupDetails/CostValueOfInvestmentOutstandingUnits,'###,###,###,###,###,##0')"/></span>
                                                                   </td>
                                                                   <td  alight="center"  class="labelXsl">
                                                                       <span style="color:#1500d4"><xsl:value-of select="format-number(OutstandingUnitGroupInfo/OutstandingUnitGroupDetails/MarketOrFairOrEquityValueOfInvestmentOutstandingUnits,'###,###,###,###,###,##0')"/></span>
                                                                   </td>
                                                            </xsl:if>
                                                           <xsl:if test="not(OutstandingUnitGroupInfo/OutstandingUnitGroupDetails/InvestmentOutstandingUnitType = '164003')">
                                                                   <td  alight="center"  class="labelXsl"></td>
                                                                   <td  alight="center"  class="labelXsl"></td>
                                                                   <td  alight="center"  class="labelXsl"></td>
                                                            </xsl:if>
                                                            <xsl:if test="OutstandingUnitGroupInfo/OutstandingUnitGroupDetails/InvestmentOutstandingUnitType = '164004'">
                                                                  <td  alight="center"  class="labelXsl">
                                                                       <span style="color:#1500d4"><xsl:value-of select="format-number(OutstandingUnitGroupInfo/OutstandingUnitGroupDetails/OutstandingUnits,'###,###,###,###,###,##0')"/></span>
                                                                   </td>
                                                                   <td  alight="center"  class="labelXsl">
                                                                       <span style="color:#1500d4"><xsl:value-of select="format-number(OutstandingUnitGroupInfo/OutstandingUnitGroupDetails/CostValueOfInvestmentOutstandingUnits,'###,###,###,###,###,##0')"/></span>
                                                                   </td>
                                                                   <td  alight="center"  class="labelXsl">
                                                                       <span style="color:#1500d4"><xsl:value-of select="format-number(OutstandingUnitGroupInfo/OutstandingUnitGroupDetails/MarketOrFairOrEquityValueOfInvestmentOutstandingUnits,'###,###,###,###,###,##0')"/></span>
                                                                   </td>
                                                            </xsl:if>
                                                     <xsl:if test="not(OutstandingUnitGroupInfo/OutstandingUnitGroupDetails/InvestmentOutstandingUnitType = '164004')">
                                                                   <td  alight="center"  class="labelXsl"></td>
                                                                   <td  alight="center"  class="labelXsl"></td>
                                                                   <td  alight="center"  class="labelXsl"></td>
                                                            </xsl:if>
                                                            <xsl:if test="OutstandingUnitGroupInfo/OutstandingUnitGroupDetails/InvestmentOutstandingUnitType = '164005'">
                                                                  <td  alight="center"  class="labelXsl">
                                                                       <span style="color:#1500d4"><xsl:value-of select="format-number(OutstandingUnitGroupInfo/OutstandingUnitGroupDetails/OutstandingUnits,'###,###,###,###,###,##0')"/></span>
                                                                   </td>
                                                                   <td  alight="center"  class="labelXsl">
                                                                       <span style="color:#1500d4"><xsl:value-of select="format-number(OutstandingUnitGroupInfo/OutstandingUnitGroupDetails/CostValueOfInvestmentOutstandingUnits,'###,###,###,###,###,##0')"/></span>
                                                                   </td>
                                                                   <td  alight="center"  class="labelXsl">
                                                                       <span style="color:#1500d4"><xsl:value-of select="format-number(OutstandingUnitGroupInfo/OutstandingUnitGroupDetails/MarketOrFairOrEquityValueOfInvestmentOutstandingUnits,'###,###,###,###,###,##0')"/></span>
                                                                   </td>
                                                            </xsl:if>
                                                      <xsl:if test="not(OutstandingUnitGroupInfo/OutstandingUnitGroupDetails/InvestmentOutstandingUnitType = '164005')">
                                                                   <td  alight="center"  class="labelXsl"></td>
                                                                   <td  alight="center"  class="labelXsl"></td>
                                                                   <td  alight="center"  class="labelXsl"></td>
                                                      </xsl:if>
                                                            <xsl:if test="OutstandingUnitGroupInfo/OutstandingUnitGroupDetails/InvestmentOutstandingUnitType = '164006'">
                                                                  <td  alight="center"  class="labelXsl">
                                                                       <span style="color:#1500d4"><xsl:value-of select="format-number(OutstandingUnitGroupInfo/OutstandingUnitGroupDetails/OutstandingUnits,'###,###,###,###,###,##0')"/></span>
                                                                   </td>
                                                                   <td  alight="center"  class="labelXsl">
                                                                       <span style="color:#1500d4"><xsl:value-of select="format-number(OutstandingUnitGroupInfo/OutstandingUnitGroupDetails/CostValueOfInvestmentOutstandingUnits,'###,###,###,###,###,##0')"/></span>
                                                                   </td>
                                                                   <td  alight="center"  class="labelXsl">
                                                                       <span style="color:#1500d4"><xsl:value-of select="format-number(OutstandingUnitGroupInfo/OutstandingUnitGroupDetails/MarketOrFairOrEquityValueOfInvestmentOutstandingUnits,'###,###,###,###,###,##0')"/></span>
                                                                   </td>
                                                            </xsl:if>
                                                     <xsl:if test="not(OutstandingUnitGroupInfo/OutstandingUnitGroupDetails/InvestmentOutstandingUnitType = '164006')">
                                                                   <td  alight="center"  class="labelXsl"></td>
                                                                   <td  alight="center"  class="labelXsl"></td>
                                                                   <td  alight="center"  class="labelXsl"></td>
                                                            </xsl:if>

                                                            <xsl:if test="OutstandingUnitGroupInfo/OutstandingUnitGroupDetails/InvestmentOutstandingUnitType = '164008'">
                                                                  <td  alight="center"  class="labelXsl">
                                                                       <span style="color:#1500d4"><xsl:value-of select="format-number(OutstandingUnitGroupInfo/OutstandingUnitGroupDetails/OutstandingUnits,'###,###,###,###,###,##0')"/></span>
                                                                   </td>
                                                                   <td  alight="center"  class="labelXsl">
                                                                       <span style="color:#1500d4"><xsl:value-of select="format-number(OutstandingUnitGroupInfo/OutstandingUnitGroupDetails/CostValueOfInvestmentOutstandingUnits,'###,###,###,###,###,##0')"/></span>
                                                                   </td>
                                                                   <td  alight="center"  class="labelXsl">
                                                                       <span style="color:#1500d4"><xsl:value-of select="format-number(OutstandingUnitGroupInfo/OutstandingUnitGroupDetails/MarketOrFairOrEquityValueOfInvestmentOutstandingUnits,'###,###,###,###,###,##0')"/></span>
                                                                   </td>
                                                            </xsl:if>
                                                     <xsl:if test="not(OutstandingUnitGroupInfo/OutstandingUnitGroupDetails/InvestmentOutstandingUnitType = '164008')">
                                                                    <td  alight="center"  class="labelXsl"></td>
                                                                   <td  alight="center"  class="labelXsl"></td>
                                                                   <td  alight="center"  class="labelXsl"></td>
                                                                  </xsl:if>
                                                            <xsl:if test="OutstandingUnitGroupInfo/OutstandingUnitGroupDetails/InvestmentOutstandingUnitType = '164007'">
                                                                   <td  alight="right"  class="labelXsl">
                                                                       <span style="color:#1500d4"><xsl:value-of select="format-number(OutstandingUnitGroupInfo/OutstandingUnitGroupDetails/OutstandingUnits,'###,###,###,###,###,##0')"/></span>
                                                                   </td>
                                                                   <td  alight="right"  class="labelXsl">
                                                                       <span style="color:#1500d4"><xsl:value-of select="format-number(OutstandingUnitGroupInfo/OutstandingUnitGroupDetails/CostValueOfInvestmentOutstandingUnits,'###,###,###,###,###,##0')"/></span>
                                                                   </td>
                                                                   <td  alight="right"  class="labelXsl">
                                                                       <span style="color:#1500d4"><xsl:value-of select="format-number(OutstandingUnitGroupInfo/OutstandingUnitGroupDetails/MarketOrFairOrEquityValueOfInvestmentOutstandingUnits,'###,###,###,###,###,##0')"/></span>
                                                                   </td>
                                                            </xsl:if>
                                                            <xsl:if test="not(OutstandingUnitGroupInfo/OutstandingUnitGroupDetails/InvestmentOutstandingUnitType = '164007')">
                                                                    <td  alight="center"  class="labelXsl"></td>
                                                                   <td  alight="center"  class="labelXsl"></td>
                                                                   <td  alight="center"  class="labelXsl"></td>
                                                            </xsl:if>
                                                </tr>
                                                 </xsl:for-each>
                                        </table>
                                    </td>
                                    <td width="28" background="../../images/table005.gif"> <img src="../../images/table005.gif" width="28" height="37" /> </td>
                                </tr>
                                <tr>
                                    <td><img src="../../images/table006.gif" width="43" height="23" alt=""/> </td>
                                    <td background="../../images/table007.gif"> </td>
                                    <td><img src="../../images/table008.gif" width="28" height="23" alt=""/> </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
