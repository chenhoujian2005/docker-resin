<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <xsl:variable name="name990001">	รายการด้านสินทรัพย์	                                               </xsl:variable>
            <xsl:variable name="name990002">	  รายการระหว่างธนาคารและตลาดเงิน	                               </xsl:variable>
            <xsl:variable name="name990003">	    รายการระหว่างธนาคารและตลาดเงินที่อ่อนไหวต่ออัตราดอกเบี้ย	   </xsl:variable>
            <xsl:variable name="name990004">	    รายการระหว่างธนาคารและตลาดเงินที่ไม่อ่อนไหวต่ออัตราดอกเบี้ย	   </xsl:variable>
            <xsl:variable name="name990005">	  หลักทรัพย์ซื้อโดยมีสัญญาขายคืน	                               </xsl:variable>
            <xsl:variable name="name990006">	  เงินลงทุน (สุทธิ)	                                               </xsl:variable>
            <xsl:variable name="name990007">	    เงินลงทุนที่อ่อนไหวต่ออัตราดอกเบี้ย	                           </xsl:variable>
            <xsl:variable name="name990007_1">	    เงินลงทุนที่อ่อนไหวต่ออัตราดอกเบี้ย                            </xsl:variable>
            <xsl:variable name="name990007_2">	    เงินลงทุนที่อ่อนไหวต่ออัตราดอกเบี้ย	                           </xsl:variable>
            <xsl:variable name="name990007_3">	    เงินลงทุนที่อ่อนไหวต่ออัตราดอกเบี้ย                            </xsl:variable>
            <xsl:variable name="name990007_4">	    เงินลงทุนที่อ่อนไหวต่ออัตราดอกเบี้ย                            </xsl:variable>
            <xsl:variable name="name990007_5">	    เงินลงทุนที่อ่อนไหวต่ออัตราดอกเบี้ย	                           </xsl:variable>
            <xsl:variable name="name990007_6">	    เงินลงทุนที่อ่อนไหวต่ออัตราดอกเบี้ย                            </xsl:variable>
            <xsl:variable name="name990007_7">	    เงินลงทุนที่อ่อนไหวต่ออัตราดอกเบี้ย                            </xsl:variable>
            <xsl:variable name="name990007_8">	    เงินลงทุนที่อ่อนไหวต่ออัตราดอกเบี้ย                            </xsl:variable>
            <xsl:variable name="name990008">	    เงินลงทุนที่ไม่อ่อนไหวต่ออัตราดอกเบี้ย                         </xsl:variable>
            <xsl:variable name="name990009">	  เงินให้สินเชื่อ	                                               </xsl:variable>
            <xsl:variable name="name990010">	    สินเชื่อปกติและกล่าวถึงเป็นพิเศษ	                           </xsl:variable>
            <xsl:variable name="name990011">	    สินเชื่อด้อยคุณภาพ	                                           </xsl:variable>
            <xsl:variable name="name990012">	      สินเชื่อด้อยคุณภาพที่อ่อนไหวต่ออัตราดอกเบี้ย	               </xsl:variable>
            <xsl:variable name="name990013">	      สินเชื่อด้อยคุณภาพที่ไม่อ่อนไหวต่ออัตราดอกเบี้ย	           </xsl:variable>
            <xsl:variable name="name990014">	  สินทรัพย์อื่น	                                                   </xsl:variable>
            <xsl:variable name="name990015">	    สินทรัพย์อื่นที่อ่อนไหวต่ออัตราดอกเบี้ย	                       </xsl:variable>
            <xsl:variable name="name990016">	    สินทรัพย์อื่นที่ไม่อ่อนไหวต่ออัตราดอกเบี้ย	                   </xsl:variable>
            <xsl:variable name="name990017">	รายการด้านหนี้สิน	                                               </xsl:variable>
            <xsl:variable name="name990018">	  เงินรับฝาก	                                                   </xsl:variable>
            <xsl:variable name="name990019">	    เงินรับฝากที่อ่อนไหวต่ออัตราดอกเบี้ย	                       </xsl:variable>
            <xsl:variable name="name990020">	    เงินรับฝากที่ไม่อ่อนไหวต่ออัตราดอกเบี้ย	                       </xsl:variable>
            <xsl:variable name="name990021">	  รายการระหว่างธนาคารและตลาดเงิน                                   </xsl:variable>
            <xsl:variable name="name990022">	    รายการระหว่างธนาคารและตลาดเงินที่อ่อนไหวต่ออัตราดอกเบี้ย       </xsl:variable>
            <xsl:variable name="name990023">	    รายการระหว่างธนาคารและตลาดเงินที่ไม่อ่อนไหวต่ออัตราดอกเบี้ย    </xsl:variable>
            <xsl:variable name="name990024">	  หลักทรัพย์ขายโดยมีสัญญาซื้อคืน	                               </xsl:variable>
            <xsl:variable name="name990025">	  เงินกู้ยืม	                                                   </xsl:variable>
            <xsl:variable name="name990025_1">	  เงินกู้ยืม	                                                   </xsl:variable>
            <xsl:variable name="name990025_2">	  เงินกู้ยืม	                                                   </xsl:variable>
            <xsl:variable name="name990025_3">	  เงินกู้ยืม	                                                   </xsl:variable>
            <xsl:variable name="name990026">	  หนี้สินอื่น	                                                   </xsl:variable>
            <xsl:variable name="name990027">	    หนี้สินอื่นที่อ่อนไหวต่ออัตราดอกเบี้ย	                       </xsl:variable>
            <xsl:variable name="name990028">	    หนี้สินอื่นที่ไม่อ่อนไหวต่ออัตราดอกเบี้ย	                   </xsl:variable>
            <xsl:variable name="name990029">	ฐานะสุทธิของรายการนอกงบดุลที่ไม่ใช่รายการ Options	               </xsl:variable>
            <xsl:variable name="name990030">	  ฐานะเกินดุลของรายการนอกงบดุลที่ไม่ใช่รายการ Options              </xsl:variable>
            <xsl:variable name="name990031">	  ฐานะขาดดุลของรายการนอกงบดุลที่ไม่ใช่รายการ Options               </xsl:variable>
            <xsl:variable name="name990032">	ฐานะสุทธิของรายการนอกงบดุลที่เป็นรายการ Options	                   </xsl:variable>
            <xsl:variable name="name990033">	  ฐานะเกินดุลของรายการนอกงบดุลที่เป็นรายการ Options                </xsl:variable>
            <xsl:variable name="name990034">	  ฐานะขาดดุลของรายการนอกงบดุลที่เป็นรายการ Options                 </xsl:variable>
            <xsl:variable name="name990035">	ประมาณการรายได้ดอกเบี้ยสุทธิในอีก 1 ปีข้างหน้า                     </xsl:variable>



            <!--rowUp-->
            <!--2.-->
            <xsl:variable name="TotalAmount990003"><xsl:value-of select="sum(DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990003/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <xsl:variable name="TotalAmount990004"><xsl:value-of select="sum(DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990004/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <xsl:variable name="TotalAmount990002"><xsl:value-of select="$TotalAmount990003 + $TotalAmount990004"/></xsl:variable>
            <!--5.-->
            <xsl:variable name="TotalAmount990005"><xsl:value-of select="sum(DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990005/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <!--6.-->
            <xsl:variable name="TotalAmount990007"><xsl:value-of select="sum(DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990007/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <xsl:variable name="TotalAmount990008"><xsl:value-of select="sum(DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990008/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <xsl:variable name="TotalAmount990006"><xsl:value-of select="$TotalAmount990007 + $TotalAmount990008"/></xsl:variable>
            <!--9.-->
            <xsl:variable name="TotalAmount990012"><xsl:value-of select="sum(DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990012/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <xsl:variable name="TotalAmount990013"><xsl:value-of select="sum(DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990013/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <xsl:variable name="TotalAmount990011"><xsl:value-of select="$TotalAmount990012 + $TotalAmount990013"/></xsl:variable>
            <xsl:variable name="TotalAmount990010"><xsl:value-of select="sum(DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990010/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <xsl:variable name="TotalAmount990009"><xsl:value-of select="$TotalAmount990010 + $TotalAmount990011"/></xsl:variable>
            <!--14.-->
            <xsl:variable name="TotalAmount990015"><xsl:value-of select="sum(DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990015/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <xsl:variable name="TotalAmount990016"><xsl:value-of select="sum(DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990016/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <xsl:variable name="TotalAmount990014"><xsl:value-of select="$TotalAmount990015 + $TotalAmount990016"/></xsl:variable>
            <xsl:variable name="TotalAmount990001"><xsl:value-of select="$TotalAmount990002 + $TotalAmount990005 + $TotalAmount990006 + $TotalAmount990009 + $TotalAmount990014"/></xsl:variable>
            <!--18.-->
            <xsl:variable name="TotalAmount990019"><xsl:value-of select="sum(DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990019/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <xsl:variable name="TotalAmount990020"><xsl:value-of select="sum(DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990020/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <xsl:variable name="TotalAmount990018"><xsl:value-of select="$TotalAmount990019 + $TotalAmount990020"/></xsl:variable>
            <!--21.-->
            <xsl:variable name="TotalAmount990022"><xsl:value-of select="sum(DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990022/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <xsl:variable name="TotalAmount990023"><xsl:value-of select="sum(DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990023/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <xsl:variable name="TotalAmount990021"><xsl:value-of select="$TotalAmount990022 + $TotalAmount990023"/></xsl:variable>
            <!--24,25-->
            <xsl:variable name="TotalAmount990024"><xsl:value-of select="sum(DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990024/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <xsl:variable name="TotalAmount990025"><xsl:value-of select="sum(DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990025/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <!--26.-->
            <xsl:variable name="TotalAmount990027"><xsl:value-of select="sum(DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990027/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <xsl:variable name="TotalAmount990028"><xsl:value-of select="sum(DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990028/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <xsl:variable name="TotalAmount990026"><xsl:value-of select="$TotalAmount990027 + $TotalAmount990028"/></xsl:variable>
            <xsl:variable name="TotalAmount990017"><xsl:value-of select="$TotalAmount990018 + $TotalAmount990021 + $TotalAmount990024 + $TotalAmount990025 + $TotalAmount990026"/></xsl:variable>
            <!--29.-->
            <xsl:variable name="TotalAmount990030"><xsl:value-of select="sum(DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990030/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <xsl:variable name="TotalAmount990031"><xsl:value-of select="sum(DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990031/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <xsl:variable name="TotalAmount990029"><xsl:value-of select="$TotalAmount990030 + $TotalAmount990031"/></xsl:variable>
            <!--32.-->
            <xsl:variable name="TotalAmount990033"><xsl:value-of select="sum(DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990033/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <xsl:variable name="TotalAmount990034"><xsl:value-of select="sum(DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990034/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <xsl:variable name="TotalAmount990032"><xsl:value-of select="$TotalAmount990033 + $TotalAmount990034"/></xsl:variable>
            <!--35.-->
            <xsl:variable name="TotalAmount990035"><xsl:value-of select="sum(DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990035/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <!---->
            <head>
                <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                <link rel="stylesheet" type="text/css" href="../../includes/css/style.css"/>
		<title>Specialized Financial Institutions Information System</title>
            </head>
            <body>
                 <table width="98%" cellspacing="0" cellpadding="0" align="center">
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
                                    <td width="95%">
	    			        <table>
					    <tr>
						<td align="left">
						    <button onclick="window.print()">Print</button>
						</td>
					    </tr>
					</table>

                                        <table class="displayTable" width="50%" border="0">
                                            <tr>
                                                <td class="bgGreen" >Organization Id :</td>
                                                <td width="15%" colspan="3">
                                                    <xsl:for-each select="DS_IRR/CommonHeader">
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
                                                <td class="bgGreen">Data Set Type :</td>
                                                <td colspan="3">
                                                    <xsl:value-of select="DS_IRR/@name"/>
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
                                                            <xsl:for-each select="DS_IRR/CommonHeader">
							     <td  align="center">
                                                                      <xsl:value-of select="substring(DataSetDate,9,2)"/>
                                                                </td>
                                                                <td  align="center">
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
                                                                <td  align="center">
                                                                      <xsl:value-of select="substring(DataSetDate,1,4)"/>
                                                                </td>
                                                            </xsl:for-each>
                                                </tr>

                                        </table>
                                        <table class="displayTable" width="100%" >
                                            <tr class="headTableXsl">
                                                 <td align="center" colspan="5">PSA/Financial Performance Data</td>
                                            </tr>
                                            <tr class="headTableXsl">
                                                <td align="center" colspan="2" >
                                                    Banking Book Position Item Banking
                                                </td>
                                                <td  align="center">
                                                    Repricing Term Range
                                                </td>
                                                <td  align="center">
                                                    Currency Id
                                                </td>
                                                <td  align="center">
                                                    Amount
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="labelXsl" align="center">990001</td>
                                                    <td class="labelXsl">
                                                        <xsl:value-of select="$name990001"/>
                                                    </td>
                                                    <td class="labelXsl"></td>
                                                    <td class="labelXsl"></td>
                                                    <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmount990001,'###,###,###,###,###,##0.00')"/></span>
                                                         <!--<xsl:value-of select="$TotalAmount990001"/>-->
                                                    </td>

                                            </tr>
                                            <tr>
                                                <td class="labelXsl" align="center">990002</td>
                                                    <td class="paddingSub labelXsl">
                                                        <xsl:value-of select="$name990002"/>
                                                    </td>
                                                    <td class="labelXsl"></td>
                                                    <td class="labelXsl"></td>
                                                    <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmount990002,'###,###,###,###,###,##0.00')"/></span>
                                                         <!--<xsl:value-of select="$TotalAmount990002"/>-->
                                                    </td>

                                            </tr>

                                            <xsl:for-each
                                                    select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990003/BankingBookPositionItemInfo">
                                                <tr>
                                                    <td class="labelXsl" align="center">990003</td>
                                                    <td class="labelXsl subOne">
                                                        <xsl:value-of select="$name990003"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="RepricingTermRangeValue"/>
                                                    </td>
                                                    <td width="15%" align="center" class="labelXsl">
                                                        <xsl:value-of select="CurrencyIdValue"/>
                                                    </td>
                                                    <td width="15%" align="right" class="labelXsl">
                                                        <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                                </tr>
                                            </xsl:for-each>
                                            <xsl:for-each
                                                    select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990004/BankingBookPositionItemInfo">
                                                <tr>
                                                    <td class="labelXsl"  align="center">990004</td>
                                                    <td class="labelXsl subOne">
                                                         <xsl:value-of select="$name990004"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="RepricingTermRangeValue"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="CurrencyIdValue"/>
                                                    </td>
                                                    <td width="15%" align="right" class="labelXsl">
                                                        <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                                </tr>
                                            </xsl:for-each>
                                                    <!--</table>-->
                                                <!--</td>-->
                                                <!--<td class="labelXsl" valign="top">-->
                                                    <!--<table width="100%">-->
                                                        <!--<xsl:for-each-->
                                                                <!--select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990004/BankingBookPositionItemInfo">-->
                                                            <!--<tr>-->
                                                                <!--<td width="20%" align="center">-->
                                                                    <!--<xsl:value-of select="CurrencyIdValue"/>-->
                                                                <!--</td>-->
                                                            <!--</tr>-->
                                                        <!--</xsl:for-each>-->
                                                    <!--</table>-->
                                                <!--</td>-->
                                                <!--<td class="labelXsl" valign="top">-->
                                                    <!--<table width="100%" border="0">-->
                                                        <!--<xsl:for-each-->
                                                                <!--select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990003/BankingBookPositionItemInfo">-->
                                                            <!--<tr>-->
                                                                <!--<td width="15%" align="right">-->
                                                                    <!--<span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>-->
                                                                <!--</td>-->
                                                            <!--</tr>-->
                                                        <!--</xsl:for-each>-->
                                                    <!--</table>-->
                                                <!--</td>-->
                                            <!--</tr>-->
                                            <!--<tr>-->

                                                <!--<td class="labelXsl" valign="top">-->
                                                    <!--<table width="100%">-->
                                                        <xsl:for-each
                                                                select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990005/BankingBookPositionItemInfo">
                                                            <tr>
                                                                 <td class="labelXsl"  align="center">990005</td>
                                                                <td class="labelXsl paddingSub">
                                                                    <xsl:value-of select="$name990005"/>
                                                                </td>
                                                                <td width="20%" align="center" class="labelXsl">
                                                                    <xsl:value-of select="RepricingTermRangeValue"/>
                                                                </td>
                                                                <td width="20%" align="center" class="labelXsl">
                                                                    <xsl:value-of select="CurrencyIdValue"/>
                                                                </td>
                                                                <td width="15%" align="right" class="labelXsl">
                                                                     <span style="color:#1500d4"><xsl:value-of
                                                                            select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                                </td>
                                                            </tr>
                                                        </xsl:for-each>
                                                    <!--</table>-->
                                                <!--</td>-->

                                                <!--<td class="labelXsl" valign="top">-->
                                                    <!--<table width="100%">-->
                                                        <!--<xsl:for-each-->
                                                                <!--select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990005/BankingBookPositionItemInfo">-->
                                                            <!--<tr>-->
                                                                <!--<td width="20%" align="center">-->
                                                                    <!--<xsl:value-of select="CurrencyIdValue"/>-->
                                                                <!--</td>-->
                                                            <!--</tr>-->
                                                        <!--</xsl:for-each>-->
                                                    <!--</table>-->
                                                <!--</td>-->
                                                <!--<td class="labelXsl" valign="top">-->
                                                    <!--<table width="100%">-->
                                                        <!--<xsl:for-each-->
                                                                <!--select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990004/BankingBookPositionItemInfo">-->
                                                            <!--<tr>-->
                                                                <!--<td width="15%" align="right">-->
                                                                     <!--<span style="color:#1500d4"><xsl:value-of-->
                                                                            <!--select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>-->
                                                                <!--</td>-->
                                                            <!--</tr>-->
                                                        <!--</xsl:for-each>-->
                                                    <!--</table>-->
                                                <!--</td>-->
                                            <!--</tr>-->
                                            <tr>
                                                <td class="labelXsl" align="center">990006</td>
                                                    <td class="labelXsl paddingSub">
                                                        <xsl:value-of select="$name990006"/>
                                                    </td>
                                                    <td class="labelXsl" valign="top"></td>
                                                    <td class="labelXsl" valign="top"></td>
                                                    <td class="labelXsl" align="right">
                                                         <span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmount990006,'###,###,###,###,###,##0.00')"/></span>
                                                    </td>

                                            </tr>
                                           <!--<tr>-->

                                                <!--<td class="labelXsl" valign="top">-->
                                                    <!--<table width="100%">-->
                                                        <xsl:for-each
                                                                select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990007/BankingBookPositionItemInfo">
                                                            <tr>
                                                                <td class="labelXsl"  align="center">990007</td>
                                                                <td class="labelXsl subOne">
                                                                    <xsl:value-of select="$name990007"/>
                                                                </td>
                                                                <td width="20%" align="center" class="labelXsl subOne">
                                                                    <xsl:value-of select="RepricingTermRangeValue"/>
                                                                </td>
                                                                <td width="20%" align="center" class="labelXsl">
                                                                    <xsl:value-of select="CurrencyIdValue"/>
                                                                </td>
                                                                 <td width="15%" align="right" class="labelXsl">
                                                                     <span style="color:#1500d4"><xsl:value-of
                                                                            select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                                </td>
                                                            </tr>
                                                        </xsl:for-each>
                                                    <!--</table>-->
                                                <!--</td>-->
                                                <!--<td class="labelXsl" valign="top">-->
                                                    <!--<table width="100%">-->
                                                        <!--<xsl:for-each-->
                                                                <!--select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990007/BankingBookPositionItemInfo">-->
                                                            <!--<tr>-->
                                                                <!--<td width="20%" align="center">-->
                                                                    <!--<xsl:value-of select="CurrencyIdValue"/>-->
                                                                <!--</td>-->
                                                            <!--</tr>-->
                                                        <!--</xsl:for-each>-->
                                                    <!--</table>-->
                                                <!--</td>-->
                                                <!--<td class="labelXsl" valign="top">-->
                                                    <!--<table width="100%">-->
                                                        <!--<xsl:for-each-->
                                                                <!--select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990007/BankingBookPositionItemInfo">-->
                                                            <!--<tr>-->
                                                                <!--<td width="15%" align="right">-->
                                                                     <!--<span style="color:#1500d4"><xsl:value-of-->
                                                                            <!--select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>-->
                                                                <!--</td>-->
                                                            <!--</tr>-->
                                                        <!--</xsl:for-each>-->
                                                    <!--</table>-->
                                                <!--</td>-->
                                            <!--</tr>-->

                                            <!--<tr>-->

                                               <!--<td class="labelXsl" valign="top">-->
                                                    <!--<table width="100%">-->
                                                        <xsl:for-each
                                                                select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990008/BankingBookPositionItemInfo">
                                                            <tr>
                                                                 <td class="labelXsl" align="center">990008</td>
                                                                <td class="labelXsl subOne">
                                                                    <xsl:value-of select="$name990008"/>
                                                                </td>
                                                                <td width="20%" align="center" class="labelXsl">
                                                                    <xsl:value-of select="RepricingTermRangeValue"/>
                                                                </td>
                                                                 <td width="20%" align="center" class="labelXsl">
                                                                    <xsl:value-of select="CurrencyIdValue"/>
                                                                </td>
                                                                <td width="15%" align="right" class="labelXsl">
                                                                    <span style="color:#1500d4"><xsl:value-of
                                                                            select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>
                                                                </td>
                                                            </tr>
                                                        </xsl:for-each>
                                                    <!--</table>-->
                                                <!--</td>-->
                                                <!--<td class="labelXsl" valign="top">-->
                                                    <!--<table width="100%">-->
                                                        <!--<xsl:for-each-->
                                                                <!--select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990008/BankingBookPositionItemInfo">-->
                                                            <!--<tr>-->
                                                                <!--<td width="20%" align="center">-->
                                                                    <!--<xsl:value-of select="CurrencyIdValue"/>-->
                                                                <!--</td>-->
                                                            <!--</tr>-->
                                                        <!--</xsl:for-each>-->
                                                    <!--</table>-->
                                                <!--</td>-->
                                                <!--<td class="labelXsl" valign="top">-->
                                                    <!--<table width="100%">-->
                                                        <!--<xsl:for-each-->
                                                                <!--select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990008/BankingBookPositionItemInfo">-->
                                                            <!--<tr>-->
                                                                <!--<td width="15%" align="right">-->
                                                                    <!--<span style="color:#1500d4"><xsl:value-of-->
                                                                            <!--select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>-->
                                                                <!--</td>-->
                                                            <!--</tr>-->
                                                        <!--</xsl:for-each>-->
                                                    <!--</table>-->
                                                <!--</td>-->
                                            <!--</tr>-->
                                            <tr>
                                                <td class="labelXsl"  align="center">990009</td>
                                                    <td class="labelXsl paddingSub">
                                                         <xsl:value-of select="$name990009"/>
                                                    </td>
                                                    <td class="labelXsl" valign="top"></td>
                                                    <td class="labelXsl" valign="top"></td>
                                                    <td class="labelXsl" valign="top" align="right">
                                                            <!--<xsl:variable name="Total"><xsl:value-of select="sum(DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990010/BankingBookPositionItemInfo/Amount)"/></xsl:variable>-->
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmount990009,'###,###,###,###,##0.00')" /></span>
                                                    </td>

                                            </tr>
                                            <!--<tr>-->

                                                 <!--<td class="labelXsl" valign="top">-->
                                                    <!--<table width="100%">-->
                                                        <xsl:for-each
                                                                select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990010/BankingBookPositionItemInfo">
                                                            <tr>
                                                                 <td class="labelXsl"  align="center">990010</td>
                                                                <td class="labelXsl subOne">
                                                                    <xsl:value-of select="$name990010"/>
                                                                </td>
                                                                <td width="20%" align="center" class="labelXsl">
                                                                    <xsl:value-of select="RepricingTermRangeValue"/>
                                                                </td>
                                                                 <td width="20%" align="center" class="labelXsl">
                                                                    <xsl:value-of select="CurrencyIdValue"/>
                                                                </td>
                                                                <td width="15%" align="right" class="labelXsl">
                                                                     <span style="color:#1500d4"><xsl:value-of
                                                                            select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                                </td>
                                                            </tr>
                                                        </xsl:for-each>
                                                    <!--</table>-->
                                                <!--</td>-->
                                                <!--<td class="labelXsl" valign="top">-->
                                                    <!--<table width="100%">-->
                                                        <!--<xsl:for-each-->
                                                                <!--select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990010/BankingBookPositionItemInfo">-->
                                                            <!--<tr>-->
                                                                <!--<td width="20%" align="center">-->
                                                                    <!--<xsl:value-of select="CurrencyIdValue"/>-->
                                                                <!--</td>-->
                                                            <!--</tr>-->
                                                        <!--</xsl:for-each>-->
                                                    <!--</table>-->
                                                <!--</td>-->
                                                <!--<td class="labelXsl" valign="top">-->
                                                    <!--<table width="100%">-->
                                                        <!--<xsl:for-each-->
                                                                <!--select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990010/BankingBookPositionItemInfo">-->
                                                            <!--<tr>-->
                                                                <!--<td width="15%" align="right">-->
                                                                     <!--<span style="color:#1500d4"><xsl:value-of-->
                                                                            <!--select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>-->
                                                                <!--</td>-->
                                                            <!--</tr>-->
                                                        <!--</xsl:for-each>-->
                                                    <!--</table>-->
                                                <!--</td>-->
                                            <!--</tr>-->

                                            <tr>
                                                <td class="labelXsl"  align="center">990011</td>
                                                    <td class="labelXsl subOne">
                                                         <xsl:value-of select="$name990011"/>
                                                    </td>
                                                    <td class="labelXsl" valign="top"></td>
                                                    <td class="labelXsl" valign="top"></td>
                                                    <td class="labelXsl" valign="top" align="right">
                                                    <!--<xsl:variable name="TotalAmount990012"><xsl:value-of select="sum(DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990012/BankingBookPositionItemInfo/Amount)"/></xsl:variable>-->
                                                    <!--<xsl:variable name="TotalAmount990013"><xsl:value-of select="sum(DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990013/BankingBookPositionItemInfo/Amount)"/></xsl:variable>-->
                                                    <!--<xsl:variable name="TotalAmount990011"><xsl:value-of select="$TotalAmount990012 + $TotalAmount990013"/></xsl:variable>-->
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmount990011,'###,###,###,###,##0.00')" /></span>
                                                    </td>

                                            </tr>
                                            <!--<tr>-->

                                               <!--<td class="labelXsl" valign="top">-->
                                                    <!--<table width="100%">-->
                                                        <xsl:for-each
                                                                select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990012/BankingBookPositionItemInfo">
                                                            <tr>
                                                                 <td class="labelXsl"  align="center">990012</td>
                                                                <td class="labelXsl subTwo">
                                                                    <xsl:value-of select="$name990012"/>
                                                                </td>
                                                                <td width="20%" align="center" class="labelXsl">
                                                                    <xsl:value-of select="RepricingTermRangeValue"/>
                                                                </td>
                                                                <td width="20%" align="center" class="labelXsl">
                                                                    <xsl:value-of select="CurrencyIdValue"/>
                                                                </td>
                                                                <td width="15%" align="right" class="labelXsl">
                                                                    <span style="color:#1500d4"> <xsl:value-of
                                                                            select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>
                                                                </td>
                                                            </tr>
                                                        </xsl:for-each>
                                                    <!--</table>-->
                                                <!--</td>-->
                                                <!--<td class="labelXsl" valign="top">-->
                                                    <!--<table width="100%">-->
                                                        <!--<xsl:for-each-->
                                                                <!--select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990012/BankingBookPositionItemInfo">-->
                                                            <!--<tr>-->
                                                                <!--<td width="20%" align="center">-->
                                                                    <!--<xsl:value-of select="CurrencyIdValue"/>-->
                                                                <!--</td>-->
                                                            <!--</tr>-->
                                                        <!--</xsl:for-each>-->
                                                    <!--</table>-->
                                                <!--</td>-->
                                                <!--<td class="labelXsl" valign="top">-->
                                                    <!--<table width="100%">-->
                                                        <!--<xsl:for-each-->
                                                                <!--select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990012/BankingBookPositionItemInfo">-->
                                                            <!--<tr>-->
                                                                <!--<td width="15%" align="right">-->
                                                                    <!--<span style="color:#1500d4"> <xsl:value-of-->
                                                                            <!--select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>-->
                                                                <!--</td>-->
                                                            <!--</tr>-->
                                                        <!--</xsl:for-each>-->
                                                    <!--</table>-->
                                                <!--</td>-->
                                            <!--</tr>-->
                                            <!--<tr>-->

                                                <xsl:for-each
                                                        select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990013/BankingBookPositionItemInfo">
                                                    <tr>
                                                        <td class="labelXsl"  align="center">990013</td>
                                                        <td class="labelXsl subTwo">
                                                            <xsl:value-of select="$name990013"/>
                                                        </td>
                                                        <td width="20%" align="center" class="labelXsl">
                                                            <xsl:value-of select="RepricingTermRangeValue"/>
                                                        </td>

                                                         <td width="20%" align="center" class="labelXsl">
                                                            <xsl:value-of select="CurrencyIdValue"/>
                                                        </td>
                                                        <td width="15%" align="right" class="labelXsl">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>
                                                        </td>
                                                    </tr>
                                                </xsl:for-each>
                                                    <!--</table>-->
                                                <!--</td>-->
                                                <!--<td class="labelXsl" valign="top">-->
                                                    <!--<table width="100%">-->
                                                        <!--<xsl:for-each-->
                                                                <!--select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990013/BankingBookPositionItemInfo">-->
                                                            <!--<tr>-->
                                                                <!--<td width="20%" align="center">-->
                                                                    <!--<xsl:value-of select="CurrencyIdValue"/>-->
                                                                <!--</td>-->
                                                            <!--</tr>-->
                                                        <!--</xsl:for-each>-->
                                                    <!--</table>-->
                                                <!--</td>-->
                                                <!--<td class="labelXsl" valign="top">-->
                                                    <!--<table width="100%">-->
                                                        <!--<xsl:for-each-->
                                                                <!--select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem99013/BankingBookPositionItemInfo">-->
                                                            <!--<tr>-->
                                                                <!--<td width="15%" align="right">-->
                                                                    <!--<span style="color:#1500d4"><xsl:value-of-->
                                                                            <!--select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>-->
                                                                <!--</td>-->
                                                            <!--</tr>-->
                                                        <!--</xsl:for-each>-->
                                                    <!--</table>-->
                                                <!--</td>-->
                                            <!--</tr>-->
                                            <tr>
                                                <td class="labelXsl"  align="center">990014</td>
                                                    <td class="labelXsl paddingSub">
                                                         <xsl:value-of select="$name990014"/>
                                                    </td>
                                                    <td class="labelXsl" valign="top"></td>
                                                    <td class="labelXsl" valign="top"></td>
                                                    <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmount990014,'###,###,###,###,###,##0.00')"/></span>
                                                    </td>

                                            </tr>

                                                <xsl:for-each
                                                        select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990015/BankingBookPositionItemInfo">
                                                    <tr>
                                                        <td class="labelXsl"  align="center">990015</td>
                                                        <td class="labelXsl subOne">
                                                           <xsl:value-of select="$name990015"/>
                                                        </td>
                                                        <td width="20%" align="center" class="labelXsl">
                                                            <xsl:value-of select="RepricingTermRangeValue"/>
                                                        </td>
                                                         <td width="20%" align="center" class="labelXsl">
                                                            <xsl:value-of select="CurrencyIdValue"/>
                                                        </td>
                                                         <td width="15%" align="right" class="labelXsl">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>
                                                        </td>
                                                    </tr>
                                                </xsl:for-each>
                                                <!--<td class="labelXsl" valign="top">-->
                                                    <!--<table width="100%">-->
                                                        <!--<xsl:for-each-->
                                                                <!--select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990015/BankingBookPositionItemInfo">-->
                                                            <!--<tr>-->
                                                                <!--<td width="20%" align="center">-->
                                                                    <!--<xsl:value-of select="CurrencyIdValue"/>-->
                                                                <!--</td>-->
                                                            <!--</tr>-->
                                                        <!--</xsl:for-each>-->
                                                    <!--</table>-->
                                                <!--</td>-->
                                                <!--<td class="labelXsl" valign="top">-->
                                                    <!--<table width="100%">-->
                                                        <!--<xsl:for-each-->
                                                                <!--select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem99015/BankingBookPositionItemInfo">-->
                                                            <!--<tr>-->
                                                                <!--<td width="15%" align="right">-->
                                                                    <!--<span style="color:#1500d4"><xsl:value-of-->
                                                                            <!--select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>-->
                                                                <!--</td>-->
                                                            <!--</tr>-->
                                                        <!--</xsl:for-each>-->
                                                    <!--</table>-->
                                                <!--</td>-->
                                            <!--</tr>-->

                                                    <xsl:for-each
                                                                select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990016/BankingBookPositionItemInfo">
                                                            <tr>
                                                               <td class="labelXsl"   align="center">990016</td>
                                                                <td class="labelXsl  subOne" valign="top">
                                                                     <xsl:value-of select="$name990016"/>
                                                                </td>
                                                                 <td width="20%" align="center" class="labelXsl">
                                                                    <xsl:value-of select="RepricingTermRangeValue"/>
                                                                </td>
                                                                <td width="20%" align="center" class="labelXsl">
                                                                    <xsl:value-of select="CurrencyIdValue"/>
                                                                </td>
                                                                <td width="15%" align="right" class="labelXsl">
                                                                    <span style="color:#1500d4"><xsl:value-of
                                                                            select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>
                                                                </td>
                                                            </tr>
                                                        </xsl:for-each>
                                            <tr>
                                                <td class="labelXsl"  align="center">990017</td>
                                                    <td class="labelXsl" valign="top">
                                                         <xsl:value-of select="$name990017"/>
                                                    </td>
                                                    <td class="labelXsl" valign="top"></td>
                                                    <td class="labelXsl" valign="top"></td>
                                                    <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmount990017,'###,###,###,###,###,##0.00')"/></span>
                                                    </td>

                                            </tr>
                                            <tr>
                                                <td class="labelXsl" align="center">990018</td>
                                                    <td class="labelXsl paddingSub">
                                                         <xsl:value-of select="$name990018"/>
                                                    </td>
                                                    <td class="labelXsl" valign="top"></td>
                                                    <td class="labelXsl" valign="top"></td>
                                                    <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmount990018,'###,###,###,###,###,##0.00')"/></span>
                                                    </td>

                                            </tr>
                                            <!--<tr>-->

                                                <xsl:for-each
                                                                select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990019/BankingBookPositionItemInfo">
                                                            <tr>
                                                                <td class="labelXsl"  align="center">990019</td>
                                                                <td class="labelXsl subOne">
                                                                     <xsl:value-of select="$name990019"/>
                                                                </td>
                                                                 <td width="20%" align="center" class="labelXsl">
                                                                    <xsl:value-of select="RepricingTermRangeValue"/>
                                                                </td>
                                                                <td width="20%" align="center" class="labelXsl">
                                                                    <xsl:value-of select="CurrencyIdValue"/>
                                                                </td>
                                                                <td width="15%" align="right" class="labelXsl">
                                                                    <span style="color:#1500d4"><xsl:value-of
                                                                            select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>
                                                                </td>
                                                            </tr>
                                                        </xsl:for-each>



                                                <xsl:for-each
                                                        select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990020/BankingBookPositionItemInfo">
                                                    <tr>
                                                        <td class="labelXsl"  align="center">990020</td>
                                                        <td class="labelXsl subOne">
                                                             <xsl:value-of select="$name990020"/>
                                                        </td>
                                                        <td width="20%" align="center" class="labelXsl" >
                                                            <xsl:value-of select="RepricingTermRangeValue"/>
                                                        </td>
                                                        <td width="20%" align="center" class="labelXsl" >
                                                            <xsl:value-of select="CurrencyIdValue"/>
                                                        </td>
                                                        <td width="15%" align="right" class="labelXsl" >
                                                        <span style="color:#1500d4"><xsl:value-of
                                                                select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>
                                                        </td>
                                                    </tr>
                                                </xsl:for-each>

                                            <tr>
                                                <td class="labelXsl"  align="center">990021</td>
                                                    <td class="labelXsl paddingSub">
                                                        <xsl:value-of select="$name990021"/>
                                                    </td>
                                                    <td class="labelXsl" valign="top"></td>
                                                    <td class="labelXsl" valign="top"></td>
                                                    <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmount990021,'###,###,###,###,###,##0.00')"/></span>
                                                    </td>

                                            </tr>

                                            <xsl:for-each
                                                    select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990022/BankingBookPositionItemInfo">
                                                <tr>
                                                    <td class="labelXsl"  align="center">990022</td>
                                                    <td class="labelXsl subOne">
                                                                <xsl:value-of select="$name990022"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl" >
                                                        <xsl:value-of select="RepricingTermRangeValue"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl" >
                                                        <xsl:value-of select="CurrencyIdValue"/>
                                                    </td>
                                                     <td width="15%" align="right" class="labelXsl" >
                                                        <span style="color:#1500d4"><xsl:value-of
                                                                select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>
                                                    </td>
                                                </tr>
                                            </xsl:for-each>
                                                <!--<td class="labelXsl" valign="top">-->
                                                    <!--<table width="100%">-->
                                                        <!--<xsl:for-each-->
                                                                <!--select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990022/BankingBookPositionItemInfo">-->
                                                            <!--<tr>-->
                                                                <!--<td width="20%" align="center">-->
                                                                    <!--<xsl:value-of select="CurrencyIdValue"/>-->
                                                                <!--</td>-->
                                                            <!--</tr>-->
                                                        <!--</xsl:for-each>-->
                                                    <!--</table>-->
                                                <!--</td>-->
                                                <!--<td class="labelXsl" valign="top">-->
                                                    <!--<table width="100%">-->
                                                        <!--<xsl:for-each-->
                                                                <!--select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990022/BankingBookPositionItemInfo">-->
                                                            <!--<tr>-->
                                                                <!--<td width="15%" align="right">-->
                                                                    <!--<span style="color:#1500d4"><xsl:value-of-->
                                                                            <!--select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>-->
                                                                <!--</td>-->
                                                            <!--</tr>-->
                                                        <!--</xsl:for-each>-->
                                                    <!--</table>-->
                                                <!--</td>-->
                                            <!--</tr>-->

                                                <xsl:for-each
                                                        select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990023/BankingBookPositionItemInfo">
                                                    <tr>
                                                         <td class="labelXsl"  align="center">990023</td>
                                                        <td class="labelXsl subOne">
                                                                    <xsl:value-of select="$name990023"/>
                                                        </td>
                                                        <td width="20%" align="center" class="labelXsl">
                                                            <xsl:value-of select="RepricingTermRangeValue"/>
                                                        </td>
                                                        <td width="20%" align="center" class="labelXsl">
                                                            <xsl:value-of select="CurrencyIdValue"/>
                                                        </td>
                                                        <td width="15%" align="right" class="labelXsl">
                                                        <span style="color:#1500d4"><xsl:value-of
                                                                select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>
                                                    </td>
                                                    </tr>
                                                </xsl:for-each>
                                                <!--<td class="labelXsl" valign="top">-->
                                                    <!--<table width="100%">-->
                                                        <!--<xsl:for-each-->
                                                                <!--select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990023/BankingBookPositionItemInfo">-->
                                                            <!--<tr>-->
                                                                <!--<td width="20%" align="center">-->
                                                                    <!--<xsl:value-of select="CurrencyIdValue"/>-->
                                                                <!--</td>-->
                                                            <!--</tr>-->
                                                        <!--</xsl:for-each>-->
                                                    <!--</table>-->
                                                <!--</td>-->
                                                <!--<td class="labelXsl" valign="top">-->
                                                    <!--<table width="100%">-->
                                                        <!--<xsl:for-each-->
                                                                <!--select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990023/BankingBookPositionItemInfo">-->
                                                            <!--<tr>-->
                                                                <!--<td width="15%" align="right">-->
                                                                    <!--<span style="color:#1500d4"><xsl:value-of-->
                                                                            <!--select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>-->
                                                                <!--</td>-->
                                                            <!--</tr>-->
                                                        <!--</xsl:for-each>-->
                                                    <!--</table>-->
                                                <!--</td>-->
                                            <!--</tr>-->

                                                <xsl:for-each
                                                        select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990024/BankingBookPositionItemInfo">
                                                    <tr>
                                                        <td class="labelXsl"  align="center">990024</td>
                                                        <td class="labelXsl paddingSub">
                                                            <xsl:value-of select="$name990024"/>
                                                        </td>
                                                        <td width="20%" align="center" class="labelXsl" >
                                                            <xsl:value-of select="RepricingTermRangeValue"/>
                                                        </td>
                                                        <td width="20%" align="center" class="labelXsl" >
                                                            <xsl:value-of select="CurrencyIdValue"/>
                                                        </td>
                                                        <td width="15%" align="right" class="labelXsl" >
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>
                                                        </td>
                                                    </tr>
                                                </xsl:for-each>
                                                <!--<td class="labelXsl" valign="top">-->
                                                    <!--<table width="100%">-->
                                                        <!--<xsl:for-each-->
                                                                <!--select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990024/BankingBookPositionItemInfo">-->
                                                            <!--<tr>-->
                                                                <!--<td width="20%" align="center">-->
                                                                    <!--<xsl:value-of select="CurrencyIdValue"/>-->
                                                                <!--</td>-->
                                                            <!--</tr>-->
                                                        <!--</xsl:for-each>-->
                                                    <!--</table>-->
                                                <!--</td>-->
                                                <!--<td class="labelXsl" valign="top">-->
                                                    <!--<table width="100%">-->
                                                        <!--<xsl:for-each-->
                                                                <!--select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990024/BankingBookPositionItemInfo">-->
                                                            <!--<tr>-->
                                                                <!--<td width="15%" align="right">-->
                                                                    <!--<span style="color:#1500d4"><xsl:value-of-->
                                                                            <!--select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>-->
                                                                <!--</td>-->
                                                            <!--</tr>-->
                                                        <!--</xsl:for-each>-->
                                                    <!--</table>-->
                                                <!--</td>-->
                                            <!--</tr>-->

                                                <xsl:for-each
                                                        select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990025/BankingBookPositionItemInfo">
                                                    <tr>
                                                        <td class="labelXsl"  align="center">990025</td>
                                                        <td class="labelXsl paddingSub">
                                                            <xsl:value-of select="$name990025"/>
                                                        </td>
                                                        <td width="20%" align="center" class="labelXsl">
                                                            <xsl:value-of select="RepricingTermRangeValue"/>
                                                        </td>
                                                         <td width="20%" align="center" class="labelXsl">
                                                            <xsl:value-of select="CurrencyIdValue"/>
                                                        </td>
                                                         <td width="15%" align="right" class="labelXsl">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>
                                                        </td>
                                                    </tr>
                                                </xsl:for-each>
                                                <!--<td class="labelXsl" valign="top">-->
                                                    <!--<table width="100%">-->
                                                        <!--<xsl:for-each-->
                                                                <!--select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990025/BankingBookPositionItemInfo">-->
                                                            <!--<tr>-->
                                                                <!--<td width="20%" align="center">-->
                                                                    <!--<xsl:value-of select="CurrencyIdValue"/>-->
                                                                <!--</td>-->
                                                            <!--</tr>-->
                                                        <!--</xsl:for-each>-->
                                                    <!--</table>-->
                                                <!--</td>-->
                                                <!--<td class="labelXsl" valign="top">-->
                                                    <!--<table width="100%">-->
                                                        <!--<xsl:for-each-->
                                                                <!--select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990025/BankingBookPositionItemInfo">-->
                                                            <!--<tr>-->
                                                                <!--<td width="15%" align="right">-->
                                                                    <!--<span style="color:#1500d4"><xsl:value-of-->
                                                                            <!--select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>-->
                                                                <!--</td>-->
                                                            <!--</tr>-->
                                                        <!--</xsl:for-each>-->
                                                    <!--</table>-->
                                                <!--</td>-->
                                            <!--</tr>-->
                                            <tr>
                                                <td class="labelXsl" valign="top"  align="center">990026</td>
                                                    <td class="labelXsl paddingSub">
                                                        <xsl:value-of select="$name990026"/>
                                                    </td>
                                                    <td class="labelXsl" valign="top"></td>
                                                    <td class="labelXsl" valign="top"></td>
                                                    <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmount990026,'###,###,###,###,###,##0.00')"/></span>
                                                    </td>

                                            </tr>

                                                <xsl:for-each
                                                        select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990027/BankingBookPositionItemInfo">
                                                    <tr>
                                                         <td class="labelXsl"  align="center">990027</td>
                                                        <td class="labelXsl subOne">
                                                            <xsl:value-of select="$name990027"/>
                                                        </td>
                                                        <td width="20%" align="center" class="labelXsl" >
                                                            <xsl:value-of select="RepricingTermRangeValue"/>
                                                        </td>
                                                        <td width="20%" align="center" class="labelXsl" >
                                                            <xsl:value-of select="CurrencyIdValue"/>
                                                        </td>
                                                         <td width="15%" align="right" class="labelXsl" >
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>
                                                        </td>
                                                    </tr>
                                                </xsl:for-each>
                                                <!--<td class="labelXsl" valign="top">-->
                                                    <!--<table width="100%">-->
                                                        <!--<xsl:for-each-->
                                                                <!--select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990027/BankingBookPositionItemInfo">-->
                                                            <!--<tr>-->
                                                                <!---->
                                                            <!--</tr>-->
                                                        <!--</xsl:for-each>-->
                                                    <!--</table>-->
                                                <!--</td>-->
                                                <!--<td class="labelXsl" valign="top">-->
                                                    <!--<table width="100%">-->
                                                        <!--<xsl:for-each-->
                                                                <!--select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990027/BankingBookPositionItemInfo">-->
                                                            <!--<tr>-->
                                                                <!--<td width="15%" align="right">-->
                                                                    <!--<span style="color:#1500d4"><xsl:value-of-->
                                                                            <!--select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>-->
                                                                <!--</td>-->
                                                            <!--</tr>-->
                                                        <!--</xsl:for-each>-->
                                                    <!--</table>-->
                                                <!--</td>-->
                                            <!--</tr>-->

                                                <xsl:for-each
                                                        select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990028/BankingBookPositionItemInfo">
                                                    <tr>
                                                        <td class="labelXsl"  align="center">990028</td>
                                                        <td class="labelXsl subOne">
                                                            <xsl:value-of select="$name990028"/>
                                                        </td>
                                                        <td width="20%" align="center" class="labelXsl">
                                                            <xsl:value-of select="RepricingTermRangeValue"/>
                                                        </td>
                                                        <td width="20%" align="center" class="labelXsl">
                                                            <xsl:value-of select="CurrencyIdValue"/>
                                                        </td>
                                                        <td width="15%" align="right" class="labelXsl">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>
                                                        </td>
                                                    </tr>
                                                </xsl:for-each>
                                                <!--<td class="labelXsl" valign="top">-->
                                                    <!--<table width="100%">-->
                                                        <!--<xsl:for-each-->
                                                                <!--select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990028/BankingBookPositionItemInfo">-->
                                                            <!--<tr>-->
                                                                <!--<td width="20%" align="center">-->
                                                                    <!--<xsl:value-of select="CurrencyIdValue"/>-->
                                                                <!--</td>-->
                                                            <!--</tr>-->
                                                        <!--</xsl:for-each>-->
                                                    <!--</table>-->
                                                <!--</td>-->
                                                <!--<td class="labelXsl" valign="top">-->
                                                    <!--<table width="100%">-->
                                                        <!--<xsl:for-each-->
                                                                <!--select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990028/BankingBookPositionItemInfo">-->
                                                            <!--<tr>-->
                                                                <!--<td width="15%" align="right">-->
                                                                    <!--<span style="color:#1500d4"><xsl:value-of-->
                                                                            <!--select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>-->
                                                                <!--</td>-->
                                                            <!--</tr>-->
                                                        <!--</xsl:for-each>-->
                                                    <!--</table>-->
                                                <!--</td>-->
                                            <!--</tr>-->
                                            <tr>
                                                <td class="labelXsl"   align="center">990029</td>
                                                    <td class="labelXsl" >
                                                        <xsl:value-of select="$name990029"/>
                                                    </td>
                                                    <td class="labelXsl" valign="top"></td>
                                                    <td class="labelXsl" valign="top"></td>
                                                    <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmount990029,'###,###,###,###,###,##0.00')"/></span>
                                                    </td>

                                            </tr>

                                                <xsl:for-each
                                                        select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990030/BankingBookPositionItemInfo">
                                                    <tr>
                                                        <td class="labelXsl"  align="center">990030</td>
                                                        <td class="labelXsl paddingSub">
                                                            <xsl:value-of select="$name990030"/>
                                                        </td>
                                                        <td width="20%" align="center" class="labelXsl" >
                                                            <xsl:value-of select="RepricingTermRangeValue"/>
                                                        </td>
                                                         <td width="20%" align="center" class="labelXsl" >
                                                            <xsl:value-of select="CurrencyIdValue"/>
                                                        </td>
                                                        <td width="15%" align="right" class="labelXsl" >
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>
                                                        </td>
                                                    </tr>
                                                </xsl:for-each>
                                                <!--<td class="labelXsl" valign="top">-->
                                                    <!--<table width="100%">-->
                                                        <!--<xsl:for-each-->
                                                                <!--select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990030/BankingBookPositionItemInfo">-->
                                                            <!--<tr>-->
                                                                <!--<td width="20%" align="center">-->
                                                                    <!--<xsl:value-of select="CurrencyIdValue"/>-->
                                                                <!--</td>-->
                                                            <!--</tr>-->
                                                        <!--</xsl:for-each>-->
                                                    <!--</table>-->
                                                <!--</td>-->
                                                <!--<td class="labelXsl" valign="top">-->
                                                    <!--<table width="100%">-->
                                                        <!--<xsl:for-each-->
                                                                <!--select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990030/BankingBookPositionItemInfo">-->
                                                            <!--<tr>-->
                                                                <!--<td width="15%" align="right">-->
                                                                    <!--<span style="color:#1500d4"><xsl:value-of-->
                                                                            <!--select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>-->
                                                                <!--</td>-->
                                                            <!--</tr>-->
                                                        <!--</xsl:for-each>-->
                                                    <!--</table>-->
                                                <!--</td>-->
                                            <!--</tr>-->

                                                <xsl:for-each
                                                        select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990031/BankingBookPositionItemInfo">
                                                    <tr>
                                                        <td class="labelXsl"  align="center">990031</td>
                                                        <td class="labelXsl paddingSub">
                                                           <xsl:value-of select="$name990031"/>
                                                        </td>
                                                        <td width="20%" align="center" class="labelXsl">
                                                            <xsl:value-of select="RepricingTermRangeValue"/>
                                                        </td>
                                                         <td width="20%" align="center" class="labelXsl">
                                                            <xsl:value-of select="CurrencyIdValue"/>
                                                        </td>
                                                        <td width="15%" align="right" class="labelXsl">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>
                                                        </td>
                                                    </tr>
                                                </xsl:for-each>
                                                <!--<td class="labelXsl" valign="top">-->
                                                    <!--<table width="100%">-->
                                                        <!--<xsl:for-each-->
                                                                <!--select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990031/BankingBookPositionItemInfo">-->
                                                            <!--<tr>-->
                                                                <!--<td width="20%" align="center">-->
                                                                    <!--<xsl:value-of select="CurrencyIdValue"/>-->
                                                                <!--</td>-->
                                                            <!--</tr>-->
                                                        <!--</xsl:for-each>-->
                                                    <!--</table>-->
                                                <!--</td>-->
                                                <!--<td class="labelXsl" valign="top">-->
                                                    <!--<table width="100%">-->
                                                        <!--<xsl:for-each-->
                                                                <!--select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990031/BankingBookPositionItemInfo">-->
                                                            <!--<tr>-->
                                                                <!--<td width="15%" align="right">-->
                                                                    <!--<span style="color:#1500d4"><xsl:value-of-->
                                                                            <!--select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>-->
                                                                <!--</td>-->
                                                            <!--</tr>-->
                                                        <!--</xsl:for-each>-->
                                                    <!--</table>-->
                                                <!--</td>-->
                                            <!--</tr>-->
                                            <tr>
                                                <td class="labelXsl"   align="center">990032</td>
                                                    <td class="labelXsl" >
                                                          <xsl:value-of select="$name990032"/>
                                                    </td>
                                                    <td class="labelXsl" valign="top"></td>
                                                    <td class="labelXsl" valign="top"></td>
                                                    <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmount990032,'###,###,###,###,###,##0.00')"/></span>
                                                    </td>

                                            </tr>

                                                <xsl:for-each
                                                        select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990033/BankingBookPositionItemInfo">
                                                    <tr>
                                                         <td class="labelXsl"  align="center">990033</td>
                                                        <td class="labelXsl paddingSub">
                                                            <xsl:value-of select="$name990033"/>
                                                        </td>
                                                        <td width="20%" align="center" class="labelXsl">
                                                            <xsl:value-of select="RepricingTermRangeValue"/>
                                                        </td>
                                                        <td width="20%" align="center" class="labelXsl">
                                                            <xsl:value-of select="CurrencyIdValue"/>
                                                        </td>
                                                        <td width="15%" align="right" class="labelXsl">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>
                                                        </td>
                                                    </tr>
                                                </xsl:for-each>
                                                <!--<td class="labelXsl" valign="top">-->
                                                    <!--<table width="100%">-->
                                                        <!--<xsl:for-each-->
                                                                <!--select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990033/BankingBookPositionItemInfo">-->
                                                            <!--<tr>-->
                                                                <!--<td width="20%" align="center">-->
                                                                    <!--<xsl:value-of select="CurrencyIdValue"/>-->
                                                                <!--</td>-->
                                                            <!--</tr>-->
                                                        <!--</xsl:for-each>-->
                                                    <!--</table>-->
                                                <!--</td>-->
                                                <!--<td class="labelXsl" valign="top">-->
                                                    <!--<table width="100%">-->
                                                        <!--<xsl:for-each-->
                                                                <!--select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990033/BankingBookPositionItemInfo">-->
                                                            <!--<tr>-->
                                                                <!--<td width="15%" align="right">-->
                                                                    <!--<span style="color:#1500d4"><xsl:value-of-->
                                                                            <!--select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>-->
                                                                <!--</td>-->
                                                            <!--</tr>-->
                                                        <!--</xsl:for-each>-->
                                                    <!--</table>-->
                                                <!--</td>-->
                                            <!--</tr>-->

                                                <xsl:for-each
                                                        select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990034/BankingBookPositionItemInfo">
                                                    <tr>
                                                        <td class="labelXsl"  align="center">990034</td>
                                                        <td class="labelXsl paddingSub">
                                                           <xsl:value-of select="$name990034"/>
                                                        </td>
                                                        <td width="20%" align="center" class="labelXsl">
                                                            <xsl:value-of select="RepricingTermRangeValue"/>
                                                        </td>
                                                        <td width="20%" align="center" class="labelXsl">
                                                            <xsl:value-of select="CurrencyIdValue"/>
                                                        </td>
                                                        <td width="15%" align="right" class="labelXsl">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>
                                                        </td>
                                                    </tr>
                                                </xsl:for-each>
                                                <!--<td class="labelXsl" valign="top">-->
                                                    <!--<table width="100%">-->
                                                        <!--<xsl:for-each-->
                                                                <!--select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990034/BankingBookPositionItemInfo">-->
                                                            <!--<tr>-->
                                                                <!--<td width="20%" align="center">-->
                                                                    <!--<xsl:value-of select="CurrencyIdValue"/>-->
                                                                <!--</td>-->
                                                            <!--</tr>-->
                                                        <!--</xsl:for-each>-->
                                                    <!--</table>-->
                                                <!--</td>-->
                                                <!--<td class="labelXsl" valign="top">-->
                                                    <!--<table width="100%">-->
                                                        <!--<xsl:for-each-->
                                                                <!--select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990034/BankingBookPositionItemInfo">-->
                                                            <!--<tr>-->
                                                                <!--<td width="15%" align="right">-->
                                                                    <!--<span style="color:#1500d4"><xsl:value-of-->
                                                                            <!--select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>-->
                                                                <!--</td>-->
                                                            <!--</tr>-->
                                                        <!--</xsl:for-each>-->
                                                    <!--</table>-->
                                                <!--</td>-->

                                            <!--</tr>-->
                                                <xsl:for-each
                                                        select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990035/BankingBookPositionItemInfo">
                                                    <tr>
                                                         <td class="labelXsl"  align="center">990035</td>
                                                        <td class="labelXsl" >
                                                             <xsl:value-of select="$name990035"/>
                                                        </td>
                                                        <td width="20%" align="center" class="labelXsl">
                                                            <xsl:value-of select="RepricingTermRangeValue"/>
                                                        </td>
                                                         <td width="20%" align="center" class="labelXsl">
                                                            <xsl:value-of select="CurrencyIdValue"/>
                                                        </td>
                                                        <td width="15%" align="right" class="labelXsl">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>
                                                        </td>
                                                    </tr>
                                                </xsl:for-each>
                                                <!--<td class="labelXsl" valign="top">-->
                                                    <!--<table width="100%">-->
                                                        <!--<xsl:for-each-->
                                                                <!--select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990035/BankingBookPositionItemInfo">-->
                                                            <!--<tr>-->
                                                                <!--<td width="20%" align="center">-->
                                                                    <!--<xsl:value-of select="CurrencyIdValue"/>-->
                                                                <!--</td>-->
                                                            <!--</tr>-->
                                                        <!--</xsl:for-each>-->
                                                    <!--</table>-->
                                                <!--</td>-->
                                                <!--<td class="labelXsl" valign="top">-->
                                                    <!--<table width="100%">-->
                                                        <!--<xsl:for-each-->
                                                                <!--select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990035/BankingBookPositionItemInfo">-->
                                                            <!--<tr>-->
                                                                <!--<td width="15%" align="right">-->
                                                                    <!--<span style="color:#1500d4"><xsl:value-of-->
                                                                            <!--select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>-->
                                                                <!--</td>-->
                                                            <!--</tr>-->
                                                        <!--</xsl:for-each>-->
                                                    <!--</table>-->
                                                <!--</td>-->
                                            <!--</tr>-->
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
