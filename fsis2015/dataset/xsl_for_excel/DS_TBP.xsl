<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <xsl:variable name="name970001"> 1.ปริมาณธุรกรรมในบัญชีเพื่อการค้าทั้งสิ้น               </xsl:variable>
            <xsl:variable name="name970002"> 1.1 ปริมาณธุรกรรมของฐานะในงบดุลที่อยู่ในบัญชีเพื่อการค้า              </xsl:variable>
            <xsl:variable name="name970003">	    1.1.1 ฐานะในตราสารหนี้</xsl:variable>
            <xsl:variable name="name970004">	    1.1.2 ฐานะจาก Repo / Reverse Repo และ Security Borrowing / Lening               </xsl:variable>
            <xsl:variable name="name970005">	    1.1.3 ฐานะในตราสารทุน</xsl:variable>
            <xsl:variable name="name970006"> 	1.2 ปริมาณธุรกรรมของอนุพันธ์ทางการเงินในบัญชีเพื่อการค้า               </xsl:variable>
            <xsl:variable name="name970007">	    1.2.1 อนุพันธ์ทางการเงินที่อ้างอิงอัตราดอกเบี้ยและตราสารหนี้          </xsl:variable>
            <xsl:variable name="name970008">	    1.2.2 อนุพันธ์ทางการเงินที่อ้างอิงราคาตราสารทุนและดัชนีราคาตลาดทุน        </xsl:variable>
            <xsl:variable name="name970009">	    1.2.3 อนุพันธ์ทางการเงินที่อ้างอิงอัตราแลกเปลี่ยน             </xsl:variable>
            <xsl:variable name="name970010">	    1.2.4 อนุพันธ์ทางการเงินที่อ้างอิงราคาสินค้าโภคภัณฑ์              </xsl:variable>
            <xsl:variable name="name970011">	  1.3 ฐานะเงินตราต่างประเทศรวมทุกสกุลเงิน                      </xsl:variable>
            <xsl:variable name="name970012">	2. อนุพันธ์ทางการเงินในบัญชีเพื่อการธนาคาร                        </xsl:variable>

           <xsl:variable name="OutstandingAmount970003"><xsl:value-of select="DS_TBP/DS_TBP_Content/ContentRecordGroup/TradingBookPosition970003/OutstandingAmount"/></xsl:variable>
           <xsl:variable name="OutstandingAmount970004"><xsl:value-of select="DS_TBP/DS_TBP_Content/ContentRecordGroup/TradingBookPosition970004/OutstandingAmount"/></xsl:variable>
           <xsl:variable name="OutstandingAmount970005"><xsl:value-of select="DS_TBP/DS_TBP_Content/ContentRecordGroup/TradingBookPosition970005/OutstandingAmount"/></xsl:variable>
           <xsl:variable name="TotalOutstandingAmount970002"><xsl:value-of select="$OutstandingAmount970003 + $OutstandingAmount970004 + $OutstandingAmount970005"/></xsl:variable>

           <xsl:variable name="OutstandingAmount970007"><xsl:value-of select="DS_TBP/DS_TBP_Content/ContentRecordGroup/TradingBookPosition970007/OutstandingAmount"/></xsl:variable>
           <xsl:variable name="OutstandingAmount970008"><xsl:value-of select="DS_TBP/DS_TBP_Content/ContentRecordGroup/TradingBookPosition970008/OutstandingAmount"/></xsl:variable>
           <xsl:variable name="OutstandingAmount970009"><xsl:value-of select="DS_TBP/DS_TBP_Content/ContentRecordGroup/TradingBookPosition970009/OutstandingAmount"/></xsl:variable>
           <xsl:variable name="OutstandingAmount970010"><xsl:value-of select="DS_TBP/DS_TBP_Content/ContentRecordGroup/TradingBookPosition970010/OutstandingAmount"/></xsl:variable>
           <xsl:variable name="TotalOutstandingAmount970006"><xsl:value-of select="$OutstandingAmount970007 + $OutstandingAmount970008 + $OutstandingAmount970009 + $OutstandingAmount970010"/></xsl:variable>
           <xsl:variable name="OutstandingAmount970011"><xsl:value-of select="DS_TBP/DS_TBP_Content/ContentRecordGroup/TradingBookPosition970011/OutstandingAmount"/></xsl:variable>

           <xsl:variable name="OutstandingAmount970012"><xsl:value-of select="DS_TBP/DS_TBP_Content/ContentRecordGroup/TradingBookPosition970012/OutstandingAmount"/></xsl:variable>
           <xsl:variable name="TotalOutstandingAmount970001"><xsl:value-of select="$TotalOutstandingAmount970002 + $TotalOutstandingAmount970006 + $OutstandingAmount970011"/></xsl:variable>

            <head>
                <META http-equiv="Content-Type" content="text/html; charset=TIS-620"/>
            </head>
            <body>


                                        <table class="displayTable" width="50%" border="1">
                                            <tr>
                                                <td class="bgGreen" width="20%">Organization Id:</td>
                                                <td width="15%" colspan="2">
                                                    <xsl:for-each select="DS_TBP/CommonHeader">
                                                        <xsl:value-of select="OrganizationId"/>
                                                    </xsl:for-each>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td  width="20%">FI Reporting Group :</td>
                                                <td colspan="2">
                                                    116003 - ชุดรวมทุกสำนักงานในประเทศ
                                                </td>
                                            </tr>
                                            <tr>
                                                <td  width="20%">Data Set Type :</td>
                                                <td colspan="2">
                                                    <xsl:value-of select="DS_TBP/@name"/>
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
                                                            <xsl:for-each select="DS_TBP/CommonHeader">
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
                                            <tr class="headTableXsl">
                                                <td align="center" width="30%" colspan="8" >Trading Book Position</td>
                                                </tr>
                                            <tr  class="headTableXsl">
                                                <td  rowspan="2" align="center" colspan="2">Trading Book Position</td>
                                                <td align="center" colspan="6">Month / Outstanding Amount</td>
                                            </tr>
                                            <tr class="headTableXsl">
                                                <xsl:for-each select="DS_TBP/DS_TBP_Content/ContentRecordGroup">
                                                    <td>
                                                   <xsl:variable name="mo"><xsl:value-of select="Month"/></xsl:variable>
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
                                                        </xsl:otherwise>
                                                     </xsl:choose>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td class="labelXsl">970001</td>
                                                <td class="labelXsl" >
                                                    <xsl:value-of select="$name970001"/>
                                                </td>
                                                <xsl:for-each select="DS_TBP/DS_TBP_Content/ContentRecordGroup/Month">
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalOutstandingAmount970001,'###,###,###,###,###,###,###,###,##0.00')"/> </span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td class="labelXsl">970002</td>
                                                <td class="paddingSub labelXsl" >
                                                   <xsl:value-of select="$name970002"/>
                                                </td>
                                                <xsl:for-each select="DS_TBP/DS_TBP_Content/ContentRecordGroup/Month">
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalOutstandingAmount970002,'###,###,###,###,###,###,###,###,##0.00')"/> </span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td class="labelXsl" >
                                                    970003
                                                </td>
                                                <td class="labelXsl subOne" >
                                                   <xsl:value-of select="$name970003"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_TBP/DS_TBP_Content/ContentRecordGroup/TradingBookPosition970003">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test="not(OutstandingAmount= '') ">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number($OutstandingAmount970003,'###,###,###,###,###,###,###,###,##0.00')"/> </span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>

                                            <tr>
                                                <td class="labelXsl" >
                                                    970004
                                                </td>
                                                <td class="labelXsl subOne" >
                                                     <xsl:value-of select="$name970004"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_TBP/DS_TBP_Content/ContentRecordGroup/TradingBookPosition970004">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test="not(OutstandingAmount= '') ">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number($OutstandingAmount970004,'###,###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td class="labelXsl" >
                                                    970005
                                                </td>
                                                <td class="labelXsl subOne" >
                                                     <xsl:value-of select="$name970005"/>
                                                 </td>
                                                <xsl:for-each
                                                        select="DS_TBP/DS_TBP_Content/ContentRecordGroup/TradingBookPosition970005">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test="not(OutstandingAmount= '') ">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number($OutstandingAmount970005,'###,###,###,###,###,###,###,###,##0.00')"/> </span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td class="labelXsl" >
                                                    970006
                                                </td>
                                                <td class="labelXsl paddingSub" align="left" >
                                                     <xsl:value-of select="$name970006"/>
                                                </td>
                                                <xsl:for-each select="DS_TBP/DS_TBP_Content/ContentRecordGroup/Month">
                                                <td class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($TotalOutstandingAmount970006,'###,###,###,###,###,###,###,###,##0.00')"/> </span>
                                                </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td class="labelXsl" >
                                                    970007
                                                </td>
                                                <td class="labelXsl subOne" >
                                                     <xsl:value-of select="$name970007"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_TBP/DS_TBP_Content/ContentRecordGroup/TradingBookPosition970007">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test="not(OutstandingAmount= '') ">
                                                             <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number($OutstandingAmount970007,'###,###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td class="labelXsl" >
                                                    970008
                                                </td>
                                                <td class="labelXsl subOne" >
                                                     <xsl:value-of select="$name970008"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_TBP/DS_TBP_Content/ContentRecordGroup/TradingBookPosition970008">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test="not(OutstandingAmount= '') ">
                                                             <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number($OutstandingAmount970008,'###,###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td class="labelXsl" >
                                                    970009
                                                </td>
                                                <td class="labelXsl subOne" >
                                                    <xsl:value-of select="$name970009"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_TBP/DS_TBP_Content/ContentRecordGroup/TradingBookPosition970009">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test="not(OutstandingAmount= '') ">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number($OutstandingAmount970009,'###,###,###,###,###,###,###,###,##0.00')"/> </span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td class="labelXsl" >
                                                    970010
                                                </td>
                                                <td class="labelXsl subOne" >
                                                    <xsl:value-of select="$name970010"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_TBP/DS_TBP_Content/ContentRecordGroup/TradingBookPosition970010">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test="not(OutstandingAmount= '') ">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number($OutstandingAmount970010,'###,###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td class="labelXsl" >
                                                    970011
                                                </td>
                                                <td class="labelXsl paddingSub" >
                                                    <xsl:value-of select="$name970011"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_TBP/DS_TBP_Content/ContentRecordGroup/TradingBookPosition970011">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test="not(OutstandingAmount= '') ">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number($OutstandingAmount970011,'###,###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>

                                                <td class="labelXsl" >
                                                    970012
                                                </td>
                                                <td class="labelXsl" >
                                                    <xsl:value-of select="$name970012"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_TBP/DS_TBP_Content/ContentRecordGroup/TradingBookPosition970012">
                                                    <td class="labelXsl" align="right">
                                                        <xsl:if test="not(OutstandingAmount= '') ">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number($OutstandingAmount970012,'###,###,###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                        </table>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
