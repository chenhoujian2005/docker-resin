<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <xsl:variable name="name990001">	รายการด้านสินทรัพย์				                                                                          </xsl:variable>
            <xsl:variable name="name990002">&#160;&#160;		รายการระหว่างธนาคารและตลาดเงินสุทธิ		                                                              </xsl:variable>
            <xsl:variable name="name990003">&#160;&#160;&#160;&#160;				รายการระหว่างธนาคารและตลาดเงินที่อ่อนไหวต่ออัตราดอกเบี้ย	                                          </xsl:variable>
            <xsl:variable name="name990004">&#160;&#160;&#160;&#160;				รายการระหว่างธนาคารและตลาดเงินที่ไม่อ่อนไหวต่ออัตราดอกเบี้ย	                                          </xsl:variable>
            <xsl:variable name="name990006">&#160;&#160;		เงินลงทุนสุทธิ                                                                                        </xsl:variable>
            <xsl:variable name="name990007">&#160;&#160;&#160;&#160;				เงินลงทุนที่อ่อนไหวต่ออัตราดอกเบี้ย	                                                              </xsl:variable>
            <xsl:variable name="name990008">&#160;&#160;&#160;&#160;				เงินลงทุนที่ไม่อ่อนไหวต่ออัตราดอกเบี้ย	                                                              </xsl:variable>
            <xsl:variable name="name990009">&#160;&#160;		เงินให้สินเชื่อแก่ลูกหนี้สุทธิ                                                                               </xsl:variable>
            <xsl:variable name="name990010">&#160;&#160;&#160;&#160;				สินเชื่อปกติและกล่าวถึงเป็นพิเศษ	                                                                  </xsl:variable>
            <xsl:variable name="name990042">&#160;&#160;&#160;&#160;&#160;&#160;					สินเชื่อปกติและกล่าวถึงเป็นพิเศษที่อ่อนไหวต่ออัตราดอกเบี้ย                                            </xsl:variable>
            <xsl:variable name="name990043">&#160;&#160;&#160;&#160;&#160;&#160;					สินเชื่อปกติและกล่าวถึงเป็นพิเศษที่ไม่อ่อนไหวต่ออัตราดอกเบี้ย                                          </xsl:variable>
            <xsl:variable name="name990011">&#160;&#160;&#160;&#160;				สินเชื่อด้อยคุณภาพ	                                                                          </xsl:variable>
            <xsl:variable name="name990012">&#160;&#160;&#160;&#160;&#160;&#160;					สินเชื่อด้อยคุณภาพที่อ่อนไหวต่ออัตราดอกเบี้ย                                                     </xsl:variable>
            <xsl:variable name="name990013">&#160;&#160;&#160;&#160;&#160;&#160;					สินเชื่อด้อยคุณภาพที่ไม่อ่อนไหวต่ออัตราดอกเบี้ย                                                   </xsl:variable>
            <!--<xsl:variable name="name990036">&#160;&#160;		รายการระหว่างกันที่สาขาเป็นเจ้าหนี้สำนักงานใหญ่และสาขาอื่นที่เป็นนิติบุคคลเดียวกัน			                          </xsl:variable>-->
            <xsl:variable name="name990037">&#160;&#160;&#160;&#160;				รายการระหว่างกันที่สาขาเป็นเจ้าหนี้สำนักงานใหญ่และสาขาอื่นที่เป็นนิติบุคคลเดียวกันที่อ่อนไหวต่ออัตราดอกเบี้ย	      </xsl:variable>
            <xsl:variable name="name990038">&#160;&#160;&#160;&#160;				รายการระหว่างกันที่สาขาเป็นเจ้าหนี้สำนักงานใหญ่และสาขาอื่นที่เป็นนิติบุคคลเดียวกันที่ไม่อ่อนไหวต่ออัตราดอกเบี้ย	  </xsl:variable>
            <xsl:variable name="name990014">&#160;&#160;		สินทรัพย์อื่นสุทธิ				                                                                      </xsl:variable>
            <xsl:variable name="name990015">&#160;&#160;&#160;&#160;				สินทรัพย์อื่นที่อ่อนไหวต่ออัตราดอกเบี้ย	                                                              </xsl:variable>
            <xsl:variable name="name990016">&#160;&#160;&#160;&#160;				สินทรัพย์อื่นที่ไม่อ่อนไหวต่ออัตราดอกเบี้ย	                                                          </xsl:variable>
            <xsl:variable name="name990017">	รายการด้านหนี้สิน				                                                                          </xsl:variable>
            <xsl:variable name="name990018">&#160;&#160;		เงินรับฝาก			                                                                                  </xsl:variable>
            <xsl:variable name="name990019">&#160;&#160;&#160;&#160;				เงินรับฝากที่อ่อนไหวต่ออัตราดอกเบี้ย	                                                              </xsl:variable>
            <xsl:variable name="name990020">&#160;&#160;&#160;&#160;				เงินรับฝากที่ไม่อ่อนไหวต่ออัตราดอกเบี้ย	                                                          </xsl:variable>
            <xsl:variable name="name990021">&#160;&#160;		รายการระหว่างธนาคารและตลาดเงินสุทธิ			                                                          </xsl:variable>
            <xsl:variable name="name990022">&#160;&#160;&#160;&#160;				รายการระหว่างธนาคารและตลาดเงินที่อ่อนไหวต่ออัตราดอกเบี้ย	                                          </xsl:variable>
            <xsl:variable name="name990023">&#160;&#160;&#160;&#160;			           รายการระหว่างธนาคารและตลาดเงินที่ไม่อ่อนไหวต่ออัตราดอกเบี้ย	                                          </xsl:variable>
            <xsl:variable name="name990044">&#160;&#160;		หนี้สินทางการเงินที่กำหนดให้แสดงด้วยมูลค่ายุติธรรม			                                                  </xsl:variable>
            <xsl:variable name="name990045">&#160;&#160;&#160;&#160;				หนี้สินทางการเงินที่กำหนดให้แสดงด้วยมูลค่ายุติธรรมที่อ่อนไหวต่ออัตราดอกเบี้ย	                              </xsl:variable>
            <xsl:variable name="name990046">&#160;&#160;&#160;&#160;				หนี้สินทางการเงินที่กำหนดให้แสดงด้วยมูลค่ายุติธรรมที่ไม่อ่อนไหวต่ออัตราดอกเบี้ย	                              </xsl:variable>
            <xsl:variable name="name990025">&#160;&#160;		ตราสารหนี้ที่ออกและเงินกู้ยืม			                                                                  </xsl:variable>
            <xsl:variable name="name990047">&#160;&#160;&#160;&#160;				ตราสารหนี้ที่ออกและเงินกู้ยืมทีอ่อนไหวต่ออัตราดอกเบี้ย	                                                  </xsl:variable>
            <xsl:variable name="name990048">&#160;&#160;&#160;&#160;				ตราสารหนี้ที่ออกและเงินกู้ยืมที่ไม่อ่อนไหวต่ออัตราดอกเบี้ย	                                              </xsl:variable>
            <xsl:variable name="name990049">&#160;&#160;		ประมาณการหนี้สิน			                                                                          </xsl:variable>
            <xsl:variable name="name990050">&#160;&#160;&#160;&#160;				ประมาณการหนี้สินที่อ่อนไหวต่ออัตราดอกเบี้ย	                                                      </xsl:variable>
            <xsl:variable name="name990051">&#160;&#160;&#160;&#160;				ประมาณการหนี้สินที่ไม่อ่อนไหวต่ออัตราดอกเบี้ย	                                                      </xsl:variable>
            <!--<xsl:variable name="name990039">&#160;&#160;		รายการระหว่างกันที่สาขาเป็นลูกหนี้สำนักงานใหญ่และสาขาอื่นที่เป็นนิติบุคคลเดียวกัน			                          </xsl:variable>-->
            <xsl:variable name="name990040">&#160;&#160;&#160;&#160;				รายการระหว่างกันที่สาขาเป็นลูกหนี้สำนักงานใหญ่และสาขาอื่นที่เป็นนิติบุคคลเดียวกันที่อ่อนไหวต่ออัตราดอกเบี้ย	          </xsl:variable>
            <xsl:variable name="name990041">&#160;&#160;&#160;&#160;				รายการระหว่างกันที่สาขาเป็นลูกหนี้สำนักงานใหญ่และสาขาอื่นที่เป็นนิติบุคคลเดียวกันที่ไม่อ่อนไหวต่ออัตราดอกเบี้ย	      </xsl:variable>
            <xsl:variable name="name990026">&#160;&#160;		หนี้สินอื่น			                                                                                  </xsl:variable>
            <xsl:variable name="name990027">&#160;&#160;&#160;&#160;				หนี้สินอื่นที่อ่อนไหวต่ออัตราดอกเบี้ย	                                                              </xsl:variable>
            <xsl:variable name="name990028">&#160;&#160;&#160;&#160;				หนี้สินอื่นที่ไม่อ่อนไหวต่ออัตราดอกเบี้ย	                                                              </xsl:variable>
            <xsl:variable name="name990029">	ฐานะสุทธิของรายการนอกงบดุลที่ไม่ใช่รายการ Options							                                  </xsl:variable>
            <xsl:variable name="name990030">&#160;&#160;		ฐานะเกินดุลของรายการนอกงบดุลที่ไม่ใช่รายการ Options			                                              </xsl:variable>
            <xsl:variable name="name990031">&#160;&#160;		ฐานะขาดดุลของรายการนอกงบดุลที่ไม่ใช่รายการ Options			                                              </xsl:variable>
            <xsl:variable name="name990032">	ฐานะสุทธิของรายการนอกงบดุลที่เป็นรายการ Options							                                      </xsl:variable>
            <xsl:variable name="name990033">&#160;&#160;    	ฐานะเกินดุลของรายการนอกงบดุลที่เป็นรายการ Options			                                              </xsl:variable>
            <xsl:variable name="name990034">&#160;&#160;    	ฐานะขาดดุลของรายการนอกงบดุลที่เป็นรายการ Options			                                              </xsl:variable>
            <xsl:variable name="name990035">    ประมาณการรายได้ดอกเบี้ยสุทธิในอีก 1 ปีข้างหน้า								                                      </xsl:variable>
             <!--rowUp-->
            <!--2.-->
            <xsl:variable name="Amount990003"><xsl:value-of select="sum(DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990003/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <xsl:variable name="Amount990004"><xsl:value-of select="sum(DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990004/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <xsl:variable name="TotalAmount990002"><xsl:value-of select="$Amount990003 + $Amount990004"/></xsl:variable>
            <!--5.-->
            <!-- <xsl:variable name="TotalAmount990005"><xsl:value-of select="sum(DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990005/BankingBookPositionItemInfo/Amount)"/></xsl:variable> -->
            <!--6.-->
            <xsl:variable name="Amount990007"><xsl:value-of select="sum(DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990007/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <xsl:variable name="Amount990008"><xsl:value-of select="sum(DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990008/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <xsl:variable name="TotalAmount990006"><xsl:value-of select="$Amount990007 + $Amount990008"/></xsl:variable>
            <!--9.-->
            <xsl:variable name="Amount990012"><xsl:value-of select="sum(DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990012/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <xsl:variable name="Amount990013"><xsl:value-of select="sum(DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990013/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <xsl:variable name="TotalAmount990011"><xsl:value-of select="$Amount990012 + $Amount990013"/></xsl:variable>
			
			<xsl:variable name="Amount990042"><xsl:value-of select="sum(DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990042/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
			<xsl:variable name="Amount990043"><xsl:value-of select="sum(DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990043/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <xsl:variable name="TotalAmount990010"><xsl:value-of select="$Amount990042+ $Amount990043"/></xsl:variable>
            
			<xsl:variable name="TotalAmount990009"><xsl:value-of select="$TotalAmount990010 + $TotalAmount990011"/></xsl:variable>
			<!--36.-->
			<xsl:variable name="Amount990037"><xsl:value-of select="sum(DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990037/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
			<xsl:variable name="Amount990038"><xsl:value-of select="sum(DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990038/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <!--<xsl:variable name="TotalAmount990036"><xsl:value-of select="$Amount990037+ $Amount990038"/></xsl:variable>-->
            <!--14.-->
            <xsl:variable name="Amount990015"><xsl:value-of select="sum(DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990015/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <xsl:variable name="Amount990016"><xsl:value-of select="sum(DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990016/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <xsl:variable name="TotalAmount990014"><xsl:value-of select="$Amount990015 + $Amount990016"/></xsl:variable>
            <xsl:variable name="TotalAmount990001"><xsl:value-of select="$TotalAmount990002 + $TotalAmount990006 + $TotalAmount990009 + $TotalAmount990014"/></xsl:variable>
            <!--18.-->
            <xsl:variable name="Amount990019"><xsl:value-of select="sum(DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990019/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <xsl:variable name="Amount990020"><xsl:value-of select="sum(DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990020/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <xsl:variable name="TotalAmount990018"><xsl:value-of select="$Amount990019 + $Amount990020"/></xsl:variable>
            <!--21.-->
            <xsl:variable name="Amount990022"><xsl:value-of select="sum(DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990022/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <xsl:variable name="Amount990023"><xsl:value-of select="sum(DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990023/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <xsl:variable name="TotalAmount990021"><xsl:value-of select="$Amount990022 + $Amount990023"/></xsl:variable>
			<!--44.-->
			<xsl:variable name="Amount990045"><xsl:value-of select="sum(DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990045/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <xsl:variable name="Amount990046"><xsl:value-of select="sum(DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990046/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <xsl:variable name="TotalAmount990044"><xsl:value-of select="$Amount990045 + $Amount990046"/></xsl:variable>
            <!--25-->
            <xsl:variable name="Amount990047"><xsl:value-of select="sum(DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990047/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <xsl:variable name="Amount990048"><xsl:value-of select="sum(DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990048/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
			<xsl:variable name="TotalAmount990025"><xsl:value-of select="$Amount990047 + $Amount990048"/></xsl:variable>
			<!--49.-->
			<xsl:variable name="Amount990050"><xsl:value-of select="sum(DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990050/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <xsl:variable name="Amount990051"><xsl:value-of select="sum(DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990051/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
			<xsl:variable name="TotalAmount990049"><xsl:value-of select="$Amount990050 + $Amount990051"/></xsl:variable>
			<!--39.-->
			<xsl:variable name="Amount990040"><xsl:value-of select="sum(DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990040/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <xsl:variable name="Amount990041"><xsl:value-of select="sum(DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990041/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
			<!--<xsl:variable name="TotalAmount990039"><xsl:value-of select="$Amount990040 + $Amount990041"/></xsl:variable>-->
            <!--26.-->
            <xsl:variable name="Amount990027"><xsl:value-of select="sum(DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990027/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <xsl:variable name="Amount990028"><xsl:value-of select="sum(DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990028/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <xsl:variable name="TotalAmount990026"><xsl:value-of select="$Amount990027 + $Amount990028"/></xsl:variable>
            <xsl:variable name="TotalAmount990017"><xsl:value-of select="$TotalAmount990018 + $TotalAmount990021 + $TotalAmount990044 + $TotalAmount990025 + $TotalAmount990049 + $TotalAmount990026"/></xsl:variable>
            <!--29.-->
            <xsl:variable name="Amount990030"><xsl:value-of select="sum(DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990030/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <xsl:variable name="Amount990031"><xsl:value-of select="sum(DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990031/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <xsl:variable name="TotalAmount990029"><xsl:value-of select="$Amount990030 - $Amount990031"/></xsl:variable>
            <!--32.-->
            <xsl:variable name="Amount990033"><xsl:value-of select="sum(DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990033/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <xsl:variable name="Amount990034"><xsl:value-of select="sum(DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990034/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <xsl:variable name="TotalAmount990032"><xsl:value-of select="$Amount990033 - $Amount990034"/></xsl:variable>
            <!--35.-->
            <xsl:variable name="Amount990035"><xsl:value-of select="sum(DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990035/BankingBookPositionItemInfo/Amount)"/></xsl:variable>
            <!---->
            <head>
                <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            </head>
            <body>
                <table class="displayTable" width="50%" border="1">
                    <tr>
                        <td class="bgGreen" >Organization Id :</td>
                        <td width="15%" colspan="3">
                            <xsl:for-each select="DS_IRRC/CommonHeader">
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
                            <xsl:value-of select="DS_IRRC/@name"/>
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
                        <xsl:for-each select="DS_IRRC/CommonHeader">
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
                  <table class="displayTable" width="100%" border="1">
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
                                                <td class="paddingSub labelXsl">
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
                                                <td class="subOne labelXsl">
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
                                                    select="DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990003/BankingBookPositionItemInfo">
                                                <tr>
                                                    <td class="labelXsl" align="center">990003</td>
                                                    <td class="subTwo labelXsl ">
                                                        <xsl:value-of select="$name990003"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="RepricingTermRange"/>
                                                    </td>
                                                    <td width="15%" align="center" class="labelXsl">
                                                        <xsl:value-of select="CurrencyId"/>
                                                    </td>
                                                    <td width="15%" align="right" class="labelXsl">
                                                        <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                                </tr>
                                            </xsl:for-each>
                                            <xsl:for-each
                                                    select="DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990004/BankingBookPositionItemInfo">
                                                <tr>
                                                    <td class="labelXsl"  align="center">990004</td>
                                                    <td class="subTwo labelXsl">
                                                        <xsl:value-of select="$name990004"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="RepricingTermRange"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="CurrencyId"/>
                                                    </td>
                                                    <td width="15%" align="right" class="labelXsl">
                                                        <span style="color:#1500d4"><xsl:value-of select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                                </tr>
                                            </xsl:for-each>

                                            <tr>
                                                <td class="labelXsl" align="center">990006</td>
                                                <td class="subOne labelXsl">
                                                    <xsl:value-of select="$name990006"/>
                                                </td>
                                                <td class="labelXsl" valign="top"></td>
                                                <td class="labelXsl" valign="top"></td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmount990006,'###,###,###,###,###,##0.00')"/></span>
                                                </td>

                                            </tr>

                                            <xsl:for-each
                                                    select="DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990007/BankingBookPositionItemInfo">
                                                <tr>
                                                    <td class="labelXsl"  align="center">990007</td>
                                                    <td class="subTwo labelXsl">
                                                        <xsl:value-of select="$name990007"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl subOne">
                                                        <xsl:value-of select="RepricingTermRange"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="CurrencyId"/>
                                                    </td>
                                                    <td width="15%" align="right" class="labelXsl">
                                                        <span style="color:#1500d4"><xsl:value-of
                                                                select="format-number(Amount,'###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                                </tr>
                                            </xsl:for-each>

                                            <xsl:for-each
                                                    select="DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990008/BankingBookPositionItemInfo">
                                                <tr>
                                                    <td class="labelXsl" align="center">990008</td>
                                                    <td class="labelXsl subOne">
                                                        <xsl:value-of select="$name990008"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="RepricingTermRange"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="CurrencyId"/>
                                                    </td>
                                                    <td width="15%" align="right" class="labelXsl">
                                                        <span style="color:#1500d4"><xsl:value-of
                                                                select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>
                                                    </td>
                                                </tr>
                                            </xsl:for-each>

                                            <tr>
                                                <td class="labelXsl"  align="center">990009</td>
                                                <td class="subOne labelXsl">
                                                    <xsl:value-of select="$name990009"/>
                                                </td>
                                                <td class="labelXsl" valign="top"></td>
                                                <td class="labelXsl" valign="top"></td>
                                                <td class="labelXsl" valign="top" align="right">
                                                    <!--<xsl:variable name="Total"><xsl:value-of select="sum(DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990010/BankingBookPositionItemInfo/Amount)"/></xsl:variable>-->
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmount990009,'###,###,###,###,##0.00')" /></span>
                                                </td>

                                            </tr>

                                                <tr>
                                                    <td class="labelXsl"  align="center">990010</td>
                                                    <td class="subTwo labelXsl">
                                                        <xsl:value-of select="$name990010"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <!--<xsl:value-of select="RepricingTermRangeValue"/>-->
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <!--<xsl:value-of select="CurrencyIdValue"/>-->
                                                    </td>
                                                    <td width="15%" align="right" class="labelXsl">
                                                        <span style="color:#1500d4"><xsl:value-of
                                                                select="format-number($TotalAmount990010,'###,###,###,###,###,##0.00')"/></span>
                                                    </td>
                                                </tr>


                                            <xsl:for-each
                                                    select="DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990042/BankingBookPositionItemInfo">
                                                <tr>
                                                    <td class="labelXsl" align="center">990042</td>
                                                    <td class="subThree labelXsl ">
                                                        <xsl:value-of select="$name990042"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="RepricingTermRange"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="CurrencyId"/>
                                                    </td>
                                                    <td width="15%" align="right" class="labelXsl">
                                                        <span style="color:#1500d4"><xsl:value-of
                                                                select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>
                                                    </td>
                                                </tr>
                                            </xsl:for-each>
                                            <xsl:for-each
                                                    select="DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990043/BankingBookPositionItemInfo">
                                                <tr>
                                                    <td class="labelXsl" align="center">990043</td>
                                                    <td class="subThree labelXsl">
                                                        <xsl:value-of select="$name990043"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="RepricingTermRange"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="CurrencyId"/>
                                                    </td>
                                                    <td width="15%" align="right" class="labelXsl">
                                                        <span style="color:#1500d4"><xsl:value-of
                                                                select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>
                                                    </td>
                                                </tr>
                                            </xsl:for-each>

                                            <tr>
                                                <td class="labelXsl"  align="center">990011</td>
                                                <td class="subTwo labelXsl">
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
                                            <xsl:for-each
                                                    select="DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990012/BankingBookPositionItemInfo">
                                                <tr>
                                                    <td class="labelXsl"  align="center">990012</td>
                                                    <td class=" subThree labelXsl">
                                                        <xsl:value-of select="$name990012"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="RepricingTermRange"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="CurrencyId"/>
                                                    </td>
                                                    <td width="15%" align="right" class="labelXsl">
                                                        <span style="color:#1500d4"> <xsl:value-of
                                                                select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>
                                                    </td>
                                                </tr>
                                            </xsl:for-each>
                                            <xsl:for-each
                                                    select="DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990013/BankingBookPositionItemInfo">
                                                <tr>
                                                    <td class="labelXsl"  align="center">990013</td>
                                                    <td class="subThree labelXsl">
                                                        <xsl:value-of select="$name990013"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="RepricingTermRange"/>
                                                    </td>

                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="CurrencyId"/>
                                                    </td>
                                                    <td width="15%" align="right" class="labelXsl">
                                                        <span style="color:#1500d4"><xsl:value-of
                                                                select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>
                                                    </td>
                                                </tr>
                                            </xsl:for-each>

                                            <!--<tr>-->
                                                <!--<td class="labelXsl"  align="center">990036</td>-->
                                                <!--<td class="subOne labelXsl">-->
                                                    <!--<xsl:value-of select="$name990036"/>-->
                                                <!--</td>-->
                                                <!--<td class="labelXsl" valign="top"></td>-->
                                                <!--<td class="labelXsl" valign="top"></td>-->
                                                <!--<td class="labelXsl" valign="top" align="right">-->
                                                    <!--&lt;!&ndash;<xsl:variable name="TotalAmount990012"><xsl:value-of select="sum(DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990012/BankingBookPositionItemInfo/Amount)"/></xsl:variable>&ndash;&gt;-->
                                                    <!--&lt;!&ndash;<xsl:variable name="TotalAmount990013"><xsl:value-of select="sum(DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990013/BankingBookPositionItemInfo/Amount)"/></xsl:variable>&ndash;&gt;-->
                                                    <!--&lt;!&ndash;<xsl:variable name="TotalAmount990011"><xsl:value-of select="$TotalAmount990012 + $TotalAmount990013"/></xsl:variable>&ndash;&gt;-->
                                                    <!--<span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmount990036,'###,###,###,###,##0.00')" /></span>-->
                                                <!--</td>-->

                                            <!--</tr>-->
                                            <xsl:for-each
                                                    select="DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990037/BankingBookPositionItemInfo">
                                                <tr>
                                                    <td class="labelXsl"  align="center">990037</td>
                                                    <td class="subTwo labelXsl">
                                                        <xsl:value-of select="$name990037"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="RepricingTermRange"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="CurrencyId"/>
                                                    </td>
                                                    <td width="15%" align="right" class="labelXsl">
                                                        <span style="color:#1500d4"> <xsl:value-of
                                                                select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>
                                                    </td>
                                                </tr>
                                            </xsl:for-each>
                                            <xsl:for-each
                                                    select="DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990038/BankingBookPositionItemInfo">
                                                <tr>
                                                    <td class="labelXsl"  align="center">990038</td>
                                                    <td class="subTwo labelXsl">
                                                        <xsl:value-of select="$name990038"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="RepricingTermRange"/>
                                                    </td>

                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="CurrencyId"/>
                                                    </td>
                                                    <td width="15%" align="right" class="labelXsl">
                                                        <span style="color:#1500d4"><xsl:value-of
                                                                select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>
                                                    </td>
                                                </tr>
                                            </xsl:for-each>

                                            <tr>
                                                <td class="labelXsl"  align="center">990014</td>
                                                <td class="subOne labelXsl">
                                                    <xsl:value-of select="$name990014"/>
                                                </td>
                                                <td class="labelXsl" valign="top"></td>
                                                <td class="labelXsl" valign="top"></td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmount990014,'###,###,###,###,###,##0.00')"/></span>
                                                </td>

                                            </tr>

                                            <xsl:for-each
                                                    select="DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990015/BankingBookPositionItemInfo">
                                                <tr>
                                                    <td class="labelXsl"  align="center">990015</td>
                                                    <td class="subTwo labelXsl">
                                                        <xsl:value-of select="$name990015"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="RepricingTermRange"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="CurrencyId"/>
                                                    </td>
                                                    <td width="15%" align="right" class="labelXsl">
                                                        <span style="color:#1500d4"><xsl:value-of
                                                                select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>
                                                    </td>
                                                </tr>
                                            </xsl:for-each>


                                            <xsl:for-each
                                                    select="DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990016/BankingBookPositionItemInfo">
                                                <tr>
                                                    <td class="labelXsl"   align="center">990016</td>
                                                    <td class="subTwo labelXsl" valign="top">
                                                        <xsl:value-of select="$name990016"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="RepricingTermRange"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="CurrencyId"/>
                                                    </td>
                                                    <td width="15%" align="right" class="labelXsl">
                                                        <span style="color:#1500d4"><xsl:value-of
                                                                select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>
                                                    </td>
                                                </tr>
                                            </xsl:for-each>

                                            <tr>
                                                <td class="labelXsl"  align="center">990017</td>
                                                <td class="paddingSub labelXsl" valign="top">
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
                                                <td class="subOne labelXsl">
                                                    <xsl:value-of select="$name990018"/>
                                                </td>
                                                <td class="labelXsl" valign="top"></td>
                                                <td class="labelXsl" valign="top"></td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmount990018,'###,###,###,###,###,##0.00')"/></span>
                                                </td>

                                            </tr>

                                            <xsl:for-each
                                                    select="DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990019/BankingBookPositionItemInfo">
                                                <tr>
                                                    <td class="labelXsl"  align="center">990019</td>
                                                    <td class="subTwo labelXsl">
                                                        <xsl:value-of select="$name990019"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="RepricingTermRange"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="CurrencyId"/>
                                                    </td>
                                                    <td width="15%" align="right" class="labelXsl">
                                                        <span style="color:#1500d4"><xsl:value-of
                                                                select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>
                                                    </td>
                                                </tr>
                                            </xsl:for-each>

                                            <xsl:for-each
                                                    select="DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990020/BankingBookPositionItemInfo">
                                                <tr>
                                                    <td class="labelXsl"  align="center">990020</td>
                                                    <td class="subtWO labelXsl ">
                                                        <xsl:value-of select="$name990020"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl" >
                                                        <xsl:value-of select="RepricingTermRange"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl" >
                                                        <xsl:value-of select="CurrencyId"/>
                                                    </td>
                                                    <td width="15%" align="right" class="labelXsl" >
                                                        <span style="color:#1500d4"><xsl:value-of
                                                                select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>
                                                    </td>
                                                </tr>
                                            </xsl:for-each>

                                            <tr>
                                                <td class="labelXsl"  align="center">990021</td>
                                                <td class="subOne labelXsl ">
                                                    <xsl:value-of select="$name990021"/>
                                                </td>
                                                <td class="labelXsl" valign="top"></td>
                                                <td class="labelXsl" valign="top"></td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmount990021,'###,###,###,###,###,##0.00')"/></span>
                                                </td>

                                            </tr>

                                            <xsl:for-each
                                                    select="DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990022/BankingBookPositionItemInfo">
                                                <tr>
                                                    <td class="labelXsl"  align="center">990022</td>
                                                    <td class="subTwo labelXsl">
                                                        <xsl:value-of select="$name990022"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl" >
                                                        <xsl:value-of select="RepricingTermRange"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl" >
                                                        <xsl:value-of select="CurrencyId"/>
                                                    </td>
                                                    <td width="15%" align="right" class="labelXsl" >
                                                        <span style="color:#1500d4"><xsl:value-of
                                                                select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>
                                                    </td>
                                                </tr>
                                            </xsl:for-each>

                                            <xsl:for-each
                                                    select="DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990023/BankingBookPositionItemInfo">
                                                <tr>
                                                    <td class="labelXsl"  align="center">990023</td>
                                                    <td class="subTwo labelXsl">
                                                        <xsl:value-of select="$name990023"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="RepricingTermRange"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="CurrencyId"/>
                                                    </td>
                                                    <td width="15%" align="right" class="labelXsl">
                                                        <span style="color:#1500d4"><xsl:value-of
                                                                select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>
                                                    </td>
                                                </tr>
                                            </xsl:for-each>
                                            <tr>
                                                <td class="labelXsl"  align="center">990044</td>
                                                <td class="subOne labelXsl">
                                                    <xsl:value-of select="$name990044"/>
                                                </td>
                                                <td class="labelXsl" valign="top"></td>
                                                <td class="labelXsl" valign="top"></td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmount990044,'###,###,###,###,###,##0.00')"/></span>
                                                </td>

                                            </tr>

                                            <xsl:for-each
                                                    select="DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990045/BankingBookPositionItemInfo">
                                                <tr>
                                                    <td class="labelXsl"  align="center">990045</td>
                                                    <td class="subTwo labelXsl">
                                                        <xsl:value-of select="$name990045"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl" >
                                                        <xsl:value-of select="RepricingTermRange"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl" >
                                                        <xsl:value-of select="CurrencyId"/>
                                                    </td>
                                                    <td width="15%" align="right" class="labelXsl" >
                                                        <span style="color:#1500d4"><xsl:value-of
                                                                select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>
                                                    </td>
                                                </tr>
                                            </xsl:for-each>

                                            <xsl:for-each
                                                    select="DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990046/BankingBookPositionItemInfo">
                                                <tr>
                                                    <td class="labelXsl"  align="center">990046</td>
                                                    <td class="subTwo labelXsl">
                                                        <xsl:value-of select="$name990046"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="RepricingTermRange"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="CurrencyId"/>
                                                    </td>
                                                    <td width="15%" align="right" class="labelXsl">
                                                        <span style="color:#1500d4"><xsl:value-of
                                                                select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>
                                                    </td>
                                                </tr>
                                            </xsl:for-each>



                                            <!--<xsl:for-each-->
                                                    <!--select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990025/BankingBookPositionItemInfo">-->
                                                <tr>
                                                    <td class="labelXsl"  align="center">990025</td>
                                                    <td class="subOne labelXsl">
                                                        <xsl:value-of select="$name990025"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <!--<xsl:value-of select="RepricingTermRangeValue"/>-->
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <!--<xsl:value-of select="CurrencyIdValue"/>-->
                                                    </td>
                                                    <td width="15%" align="right" class="labelXsl">
                                                        <span style="color:#1500d4"><xsl:value-of
                                                                select="format-number($TotalAmount990025,'###,###,###,###,###,##0.00')"/> </span>
                                                    </td>
                                                </tr>
                                            <!--</xsl:for-each>-->
                                            <xsl:for-each
                                                    select="DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990047/BankingBookPositionItemInfo">
                                                <tr>
                                                    <td class="labelXsl"  align="center">990047</td>
                                                    <td class="subTwo labelXsl">
                                                        <xsl:value-of select="$name990047"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl" >
                                                        <xsl:value-of select="RepricingTermRange"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl" >
                                                        <xsl:value-of select="CurrencyId"/>
                                                    </td>
                                                    <td width="15%" align="right" class="labelXsl" >
                                                        <span style="color:#1500d4"><xsl:value-of
                                                                select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>
                                                    </td>
                                                </tr>
                                            </xsl:for-each>

                                            <xsl:for-each
                                                    select="DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990048/BankingBookPositionItemInfo">
                                                <tr>
                                                    <td class="labelXsl"  align="center">990048</td>
                                                    <td class="subTwo labelXsl ">
                                                        <xsl:value-of select="$name990048"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="RepricingTermRange"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="CurrencyId"/>
                                                    </td>
                                                    <td width="15%" align="right" class="labelXsl">
                                                        <span style="color:#1500d4"><xsl:value-of
                                                                select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>
                                                    </td>
                                                </tr>
                                            </xsl:for-each>

                                            <!--<xsl:for-each-->
                                            <!--select="DS_IRR/DS_IRR_Content/ContentRecordGroup/BankingBookPositionItem990025/BankingBookPositionItemInfo">-->
                                            <tr>
                                                <td class="labelXsl"  align="center">990049</td>
                                                <td class="subOne labelXsl">
                                                    <xsl:value-of select="$name990049"/>
                                                </td>
                                                <td width="20%" align="center" class="labelXsl">
                                                    <!--<xsl:value-of select="RepricingTermRangeValue"/>-->
                                                </td>
                                                <td width="20%" align="center" class="labelXsl">
                                                    <!--<xsl:value-of select="CurrencyIdValue"/>-->
                                                </td>
                                                <td width="15%" align="right" class="labelXsl">
                                                    <span style="color:#1500d4"><xsl:value-of
                                                            select="format-number($TotalAmount990049,'###,###,###,###,###,##0.00')"/> </span>
                                                </td>
                                            </tr>
                                            <!--</xsl:for-each>-->
                                            <xsl:for-each
                                                    select="DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990050/BankingBookPositionItemInfo">
                                                <tr>
                                                    <td class="labelXsl"  align="center">990050</td>
                                                    <td class="subTwo labelXsl">
                                                        <xsl:value-of select="$name990050"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl" >
                                                        <xsl:value-of select="RepricingTermRange"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl" >
                                                        <xsl:value-of select="CurrencyId"/>
                                                    </td>
                                                    <td width="15%" align="right" class="labelXsl" >
                                                        <span style="color:#1500d4"><xsl:value-of
                                                                select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>
                                                    </td>
                                                </tr>
                                            </xsl:for-each>

                                            <xsl:for-each
                                                    select="DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990051/BankingBookPositionItemInfo">
                                                <tr>
                                                    <td class="labelXsl"  align="center">990051</td>
                                                    <td class="subTwo labelXsl">
                                                        <xsl:value-of select="$name990051"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="RepricingTermRange"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="CurrencyId"/>
                                                    </td>
                                                    <td width="15%" align="right" class="labelXsl">
                                                        <span style="color:#1500d4"><xsl:value-of
                                                                select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>
                                                    </td>
                                                </tr>
                                            </xsl:for-each>
                                            <!--<tr>-->
                                                <!--<td class="labelXsl"  align="center">990039</td>-->
                                                <!--<td class="subOne labelXsl">-->
                                                    <!--<xsl:value-of select="$name990039"/>-->
                                                <!--</td>-->
                                                <!--<td width="20%" align="center" class="labelXsl">-->
                                                    <!--&lt;!&ndash;<xsl:value-of select="RepricingTermRangeValue"/>&ndash;&gt;-->
                                                <!--</td>-->
                                                <!--<td width="20%" align="center" class="labelXsl">-->
                                                    <!--&lt;!&ndash;<xsl:value-of select="CurrencyIdValue"/>&ndash;&gt;-->
                                                <!--</td>-->
                                                <!--<td width="15%" align="right" class="labelXsl">-->
                                                    <!--<span style="color:#1500d4"><xsl:value-of-->
                                                            <!--select="format-number($TotalAmount990039,'###,###,###,###,###,##0.00')"/> </span>-->
                                                <!--</td>-->
                                            <!--</tr>-->
                                            <!--</xsl:for-each>-->
                                            <xsl:for-each
                                                    select="DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990040/BankingBookPositionItemInfo">
                                                <tr>
                                                    <td class="labelXsl"  align="center">990040</td>
                                                    <td class="subTwo labelXsl">
                                                        <xsl:value-of select="$name990040"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl" >
                                                        <xsl:value-of select="RepricingTermRange"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl" >
                                                        <xsl:value-of select="CurrencyId"/>
                                                    </td>
                                                    <td width="15%" align="right" class="labelXsl" >
                                                        <span style="color:#1500d4"><xsl:value-of
                                                                select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>
                                                    </td>
                                                </tr>
                                            </xsl:for-each>

                                            <xsl:for-each
                                                    select="DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990041/BankingBookPositionItemInfo">
                                                <tr>
                                                    <td class="labelXsl"  align="center">990041</td>
                                                    <td class="subTwo labelXsl">
                                                        <xsl:value-of select="$name990041"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="RepricingTermRange"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="CurrencyId"/>
                                                    </td>
                                                    <td width="15%" align="right" class="labelXsl">
                                                        <span style="color:#1500d4"><xsl:value-of
                                                                select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>
                                                    </td>
                                                </tr>
                                            </xsl:for-each>

                                            <tr>
                                                <td class="labelXsl" valign="top"  align="center">990026</td>
                                                <td class="subOne labelXsl">
                                                    <xsl:value-of select="$name990026"/>
                                                </td>
                                                <td class="labelXsl" valign="top"></td>
                                                <td class="labelXsl" valign="top"></td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmount990026,'###,###,###,###,###,##0.00')"/></span>
                                                </td>

                                            </tr>

                                            <xsl:for-each
                                                    select="DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990027/BankingBookPositionItemInfo">
                                                <tr>
                                                    <td class="labelXsl"  align="center">990027</td>
                                                    <td class="subTwo labelXsl">
                                                        <xsl:value-of select="$name990027"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl" >
                                                        <xsl:value-of select="RepricingTermRange"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl" >
                                                        <xsl:value-of select="CurrencyId"/>
                                                    </td>
                                                    <td width="15%" align="right" class="labelXsl" >
                                                        <span style="color:#1500d4"><xsl:value-of
                                                                select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>
                                                    </td>
                                                </tr>
                                            </xsl:for-each>

                                            <xsl:for-each
                                                    select="DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990028/BankingBookPositionItemInfo">
                                                <tr>
                                                    <td class="labelXsl"  align="center">990028</td>
                                                    <td class="subTwo labelXsl">
                                                        <xsl:value-of select="$name990028"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="RepricingTermRange"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="CurrencyId"/>
                                                    </td>
                                                    <td width="15%" align="right" class="labelXsl">
                                                        <span style="color:#1500d4"><xsl:value-of
                                                                select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>
                                                    </td>
                                                </tr>
                                            </xsl:for-each>

                                            <tr>
                                                <td class="labelXsl"   align="center">990029</td>
                                                <td class="paddingSub labelXsl" >
                                                    <xsl:value-of select="$name990029"/>
                                                </td>
                                                <td class="labelXsl" valign="top"></td>
                                                <td class="labelXsl" valign="top"></td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmount990029,'###,###,###,###,###,##0.00')"/></span>
                                                </td>

                                            </tr>

                                            <xsl:for-each
                                                    select="DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990030/BankingBookPositionItemInfo">
                                                <tr>
                                                    <td class="labelXsl"  align="center">990030</td>
                                                    <td class="subOne labelXsl">
                                                        <xsl:value-of select="$name990030"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl" >
                                                        <xsl:value-of select="RepricingTermRange"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl" >
                                                        <xsl:value-of select="CurrencyId"/>
                                                    </td>
                                                    <td width="15%" align="right" class="labelXsl" >
                                                        <span style="color:#1500d4"><xsl:value-of
                                                                select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>
                                                    </td>
                                                </tr>
                                            </xsl:for-each>


                                            <xsl:for-each
                                                    select="DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990031/BankingBookPositionItemInfo">
                                                <tr>
                                                    <td class="labelXsl"  align="center">990031</td>
                                                    <td class="subOne labelXsl">
                                                        <xsl:value-of select="$name990031"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="RepricingTermRange"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="CurrencyId"/>
                                                    </td>
                                                    <td width="15%" align="right" class="labelXsl">
                                                        <span style="color:#1500d4"><xsl:value-of
                                                                select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>
                                                    </td>
                                                </tr>
                                            </xsl:for-each>

                                            <tr>
                                                <td class="labelXsl"   align="center">990032</td>
                                                <td class="paddingSub labelXsl" >
                                                    <xsl:value-of select="$name990032"/>
                                                </td>
                                                <td class="labelXsl" valign="top"></td>
                                                <td class="labelXsl" valign="top"></td>
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmount990032,'###,###,###,###,###,##0.00')"/></span>
                                                </td>

                                            </tr>

                                            <xsl:for-each
                                                    select="DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990033/BankingBookPositionItemInfo">
                                                <tr>
                                                    <td class="labelXsl"  align="center">990033</td>
                                                    <td class="subOne labelXsl">
                                                        <xsl:value-of select="$name990033"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="RepricingTermRange"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="CurrencyId"/>
                                                    </td>
                                                    <td width="15%" align="right" class="labelXsl">
                                                        <span style="color:#1500d4"><xsl:value-of
                                                                select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>
                                                    </td>
                                                </tr>
                                            </xsl:for-each>


                                            <xsl:for-each
                                                    select="DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990034/BankingBookPositionItemInfo">
                                                <tr>
                                                    <td class="labelXsl"  align="center">990034</td>
                                                    <td class="subOne labelXsl">
                                                        <xsl:value-of select="$name990034"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="RepricingTermRange"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="CurrencyId"/>
                                                    </td>
                                                    <td width="15%" align="right" class="labelXsl">
                                                        <span style="color:#1500d4"><xsl:value-of
                                                                select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>
                                                    </td>
                                                </tr>
                                            </xsl:for-each>

                                            <xsl:for-each
                                                    select="DS_IRRC/DS_IRRC_Content/ContentRecordGroup/BankingBookPositionItem990035/BankingBookPositionItemInfo">
                                                <tr>
                                                    <td class="labelXsl"  align="center">990035</td>
                                                    <td class="paddingSub labelXsl" >
                                                        <xsl:value-of select="$name990035"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="RepricingTermRange"/>
                                                    </td>
                                                    <td width="20%" align="center" class="labelXsl">
                                                        <xsl:value-of select="CurrencyId"/>
                                                    </td>
                                                    <td width="15%" align="right" class="labelXsl">
                                                        <span style="color:#1500d4"><xsl:value-of
                                                                select="format-number(Amount,'###,###,###,###,###,##0.00')"/> </span>
                                                    </td>
                                                </tr>
                                            </xsl:for-each>

                                        </table>



            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
