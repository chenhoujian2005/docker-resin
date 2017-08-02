<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html> 
                        <xsl:variable name="name502001">	การติดตามผลการดำเนินงานเพื่อจัดการ NPLs จำแนกตามการจัดชั้นสินเชื่อ                     </xsl:variable>

                       <xsl:variable name="name502002">	  สินเชื่อที่ไม่ก่อให้เกิดรายได้ (NPLs)</xsl:variable>


                       <xsl:variable name="name502003">    สินเชื่อจัดชั้นปกติ</xsl:variable>

                       <xsl:variable name="name502004">  สินเชื่อจัดชั้นกล่าวถึงเป็นพิเศษ</xsl:variable>

                       <xsl:variable name="name502005">	    สินเชื่อจัดชั้นต่ำกว่ามาตรฐาน</xsl:variable>

                       <xsl:variable name="name502006">    สินเชื่อจัดชั้นสงสัย</xsl:variable>

                       <xsl:variable name="name502007">	    สินเชื่อจัดชั้นสงสัยจะสูญ</xsl:variable>

                       <xsl:variable name="name502008">	    สินเชื่อจัดชั้นสูญ หรือ สินเชื่อจัดชั้นสงสัยจะสูญ  (ตัดจำหน่าย)</xsl:variable>

                       <xsl:variable name="name502009">	การติดตามผลการดำเนินงานเพื่อจัดการ NPLs จำแนกตามระยะเวลา</xsl:variable>

                       <xsl:variable name="name502010">	  NPL ที่เกิดขึ้นก่อนสิ้นปี 2548</xsl:variable>

                       <xsl:variable name="name502011">	  NPL ที่เกิดขึ้นภายหลังสิ้นปี 2548 เป็นต้นไป</xsl:variable>

                       <xsl:variable name="name502012">	สินเชื่อคงค้าง</xsl:variable>

                       <xsl:variable name="name502013">	  สินเชื่อคงค้างต้นงวด</xsl:variable>

                       <xsl:variable name="name502014">	  สินเชื่อปล่อยใหม่</xsl:variable>

                       <xsl:variable name="name502015">	  จำนวนเงินที่ได้รับชำระหนี้</xsl:variable>

                       <xsl:variable name="name502016">	  สินเชื่อคงค้างปลายงวด</xsl:variable>

                       <xsl:variable name="name502017">	สาเหตุการเปลี่ยนแปลง NPLs</xsl:variable>

                       <xsl:variable name="name502018">	  NPL ต้นงวด</xsl:variable>

                       <xsl:variable name="name502019">	  NPL exit</xsl:variable>

                       <xsl:variable name="name502020">	    ปรับปรุงโครงสร้างหนี้</xsl:variable>

                       <xsl:variable name="name502021">	    ตัดหนี้สูญ</xsl:variable>

                       <xsl:variable name="name502022">	    ขาย AMC</xsl:variable>

                       <xsl:variable name="name502023">	    อื่นๆ เช่น ได้รับชำระหนี้</xsl:variable>

                       <xsl:variable name="name502024">	  NPL ที่เกิดใหม่</xsl:variable>

                       <xsl:variable name="name502025">	  Re-entry NPL</xsl:variable>

                       <xsl:variable name="name502026">	  อื่นๆ เช่นผลการปรับอัตราแลกเปลี่ยน</xsl:variable>

            <xsl:variable name="Val502003" select="DS_NPL/DS_NPL_Content/ContentRecordGroup/NPLItem502003"/>
            <xsl:variable name="Val502004" select="DS_NPL/DS_NPL_Content/ContentRecordGroup/NPLItem502004"/>
            <xsl:variable name="Val502005" select="DS_NPL/DS_NPL_Content/ContentRecordGroup/NPLItem502005"/>
            <xsl:variable name="Val502006" select="DS_NPL/DS_NPL_Content/ContentRecordGroup/NPLItem502006"/>
            <xsl:variable name="Val502007" select="DS_NPL/DS_NPL_Content/ContentRecordGroup/NPLItem502007"/>
            <xsl:variable name="Val502008" select="DS_NPL/DS_NPL_Content/ContentRecordGroup/NPLItem502008"/>
            
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
                                                <td class="bgGreen" width="20%">Organization ID :</td>
                                                <td width="15%" colspan="3">
                                                    <xsl:for-each select="DS_NPL/CommonHeader">
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
                                                    <xsl:value-of select="DS_NPL/@name"/>
                                                </td>
                                            </tr>
                                            <!--<tr>-->
                                                <!--<td class="bgGreen">Branch Number :</td>-->
                                                <!--<td colspan="3">-->
                                                    <!--<xsl:for-each select="DS_NPL/DS_NPL_Content/ContentRecordGroup">-->
                                                        <!--<xsl:value-of select="BranchNumber"/>-->
                                                    <!--</xsl:for-each>-->
                                                <!--</td>-->
                                            <!--</tr>-->
                                            <tr>
                                                <td class="bgGreen"></td>
						<td class="bgGreen" align="center">Day</td>
                                                <td class="bgGreen" align="center">Month</td>
                                                <td class="bgGreen" align="center">Year</td>
                                            </tr>
                                            <tr>
                                                    <td class="bgGreen" >Data Set Date :</td>
                                                            <xsl:variable name="month"><xsl:value-of select="substring-after(substring-before(DataSetDate,'-'),'-')"/></xsl:variable>
                                                            <xsl:for-each select="DS_NPL/CommonHeader">
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
                                        <table class="displayTable" width="100%" border="0">
                                            <tr class="headTableXsl">
                                                <td align="center" colspan="2">NPL</td>
                                            </tr>
                                            <tr class="headTableXsl">
                                                <td width="80%" align="center">NPL Item</td>
                                                <td width="20%" align="center">Amount</td>
                                            </tr>
                                        </table>
                                        <table border="0" width="100%" class="displayTable">
                                            <tr>
                                                <td width="10%" align="center" class="labelXsl">502001</td>
                                                <td width="70%" class="labelXsl">
                                                    <xsl:value-of select="$name502001"/>
                                                </td>

                                                <td align="right" class="labelXsl">
                                                <!--<td align="right" style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">-->
                                                    <!--<xsl:for-each-->
                                                                <!--select="DS_NPL/NPLItem502001">-->
                                                             <!--<span style="color:#1500d4"><xsl:value-of-->
                                                                    <!--select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>-->
                                                        <!--</xsl:for-each>-->
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">502002</td>
                                                <td class="labelXsl paddingSub">
                                                   <xsl:value-of select="$name502002"/>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_NPL/DS_NPL_Content/ContentRecordGroup/NPLItem502002">

                                                    <td align="right" class="labelXsl">
                                                        <xsl:if test="not(Amount='')">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                    
                                                </xsl:for-each>
                                            </tr>

                                            <tr>
                                                <td align="center"  class="labelXsl">502003</td>
                                                <td width="70%"  class="labelXsl paddingSub">
                                                         <xsl:value-of select="$name502003"/>
                                                    </td>

                                                <xsl:for-each
                                                        select="DS_NPL/DS_NPL_Content/ContentRecordGroup/NPLItem502003">

                                                    <td align="right" class="labelXsl">
                                                        <xsl:if test="not(Amount='')">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                    
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">502004</td>
                                                <td width="70%" class="labelXsl paddingSub">
                                                        <xsl:value-of select="$name502004"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_NPL/DS_NPL_Content/ContentRecordGroup/NPLItem502004">
                                                         <td align="right" class="labelXsl">
                                                        <xsl:if test="not(Amount='')">
                                                                <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                    
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">502005</td>
                                                <td width="70%" class="labelXsl paddingSub">
                                                       <xsl:value-of select="$name502005"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_NPL/DS_NPL_Content/ContentRecordGroup/NPLItem502005">

                                                    <td align="right" class="labelXsl">
                                                        <xsl:if test="not(Amount='')">
                                                             <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                    
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">502006</td>
                                                  <td width="70%" class="labelXsl paddingSub">
                                                       <xsl:value-of select="$name502006"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_NPL/DS_NPL_Content/ContentRecordGroup/NPLItem502006">

                                                    <td align="right" class="labelXsl">
                                                        <xsl:if test="not(Amount='')">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                    
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">502007</td>
                                                 <td width="70%" class="labelXsl paddingSub">
                                                         <xsl:value-of select="$name502007"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_NPL/DS_NPL_Content/ContentRecordGroup/NPLItem502007">

                                                    <td align="right" class="labelXsl">
                                                        <xsl:if test="not(Amount='')">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                    
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">502008</td>
                                                <td width="70%" class="paddingSub labelXsl">
                                                         <xsl:value-of select="$name502008"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_NPL/DS_NPL_Content/ContentRecordGroup/NPLItem502008">

                                                    <td align="right" class="labelXsl">
                                                        <xsl:if test="not(Amount='')">
                                                           <span style="color:#1500d4"> <xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                    
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">502009</td>
                                                <td class="labelXsl"><xsl:value-of select="$name502009"/></td>
                                                <td align="right" class="labelXsl">                                                    <xsl:for-each
                                                                select="DS_NPL/NPLItem502009">
                                                             <span style="color:#1500d4"><xsl:value-of
                                                                     select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:for-each>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">502010</td>
                                                <td class="labelXsl paddingSub">
                                                        <xsl:value-of select="$name502010"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_NPL/DS_NPL_Content/ContentRecordGroup/NPLItem502010">

                                                    <td align="right" class="labelXsl">
                                                        <xsl:if test="not(Amount='')">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                    
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">502011</td>
                                                 <td class="labelXsl paddingSub">
                                                        <xsl:value-of select="$name502011"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_NPL/DS_NPL_Content/ContentRecordGroup/NPLItem502011">

                                                    <td align="right" class="labelXsl">
                                                        <xsl:if test="not(Amount='')">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                    
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">502012</td>
                                                 <td class="labelXsl">
                                                        <xsl:value-of select="$name502012"/>
                                                </td>
                                                <td align="right" class="labelXsl">
                                                        <!--<xsl:for-each-->
                                                                <!--select="DS_NPL/NPLItem502012">-->
                                                            <!--<span style="color:#1500d4"><xsl:value-of-->
                                                                    <!--select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>-->
                                                        <!--</xsl:for-each>-->
                                                    </td>
                                                    
</tr>
                                            <tr>
                                                <td align="center" class="labelXsl">502013</td>
                                                 <td class="labelXsl paddingSub">
                                                        <xsl:value-of select="$name502013"/>
                                                   </td>
                                                <xsl:for-each
                                                        select="DS_NPL/DS_NPL_Content/ContentRecordGroup/NPLItem502013">

                                                   <td align="right" class="labelXsl">
                                                        <xsl:if test="not(Amount='')">
                                                           <span style="color:#1500d4"> <xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                    
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">502014</td>
                                                 <td class="labelXsl paddingSub">
                                                        <xsl:value-of select="$name502014"/>
                                                   </td>
                                                <xsl:for-each
                                                        select="DS_NPL/DS_NPL_Content/ContentRecordGroup/NPLItem502014">

                                                   <td align="right" class="labelXsl">
                                                        <xsl:if test="not(Amount='')">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                    
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">502015</td>
                                                <td class="labelXsl paddingSub">
                                                        <xsl:value-of select="$name502015"/>
                                                   </td>
                                                <xsl:for-each
                                                        select="DS_NPL/DS_NPL_Content/ContentRecordGroup/NPLItem502015">

                                                   <td align="right" class="labelXsl">
                                                        <xsl:if test="not(Amount='')">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                    
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">502016</td>
                                                 <td class="labelXsl paddingSub">
                                                        <xsl:value-of select="$name502016"/>
                                                   </td>
                                                <!--<xsl:for-each-->
                                                        <!--select="DS_NPL/DS_NPL_Content/ContentRecordGroup/NPLItem502016">-->

                                                   <!--<td align="right" class="labelXsl">-->
                                                        <!--<xsl:if test="not(Amount='')">-->
                                                            <!--<span style="color:#1500d4"><xsl:value-of-->
                                                                    <!--select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>-->
                                                        <!--</xsl:if>-->
                                                    <!--</td>-->
                                                    <!---->
                                                <!--</xsl:for-each>-->
                                        <td align="right" class="labelXsl">
                                            <span style="color:#1500d4"><xsl:value-of
                                            select="format-number($Val502003 + $Val502004 + $Val502005 + $Val502006 + $Val502007 + $Val502008,'###,###,###,###,###,###,##0.00')"/></span>
                                        </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">502017</td>
                                                <td class="labelXsl">
                                                        <xsl:value-of select="$name502017"/>
                                                    </td>
                                                <td align="right" class="labelXsl">
                                                    <xsl:for-each
                                                        select="DS_NPL/NPLItem502017">
                                                    <span style="color:#1500d4">
<xsl:value-of
                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                </xsl:for-each>
                                            </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">502018</td>
                                                 <td width="70%" class="paddingSub labelXsl">
                                                        <xsl:value-of select="$name502018"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_NPL/DS_NPL_Content/ContentRecordGroup/NPLItem502018">

                                                    <td align="right" class="labelXsl">
                                                        <xsl:if test="not(Amount='')">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                    
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">502019</td>
                                                <td class="labelXsl paddingSub">
                                                        <xsl:value-of select="$name502019"/>
                                                   </td>
                                                <td align="right" class="labelXsl">
                                                    <xsl:for-each
                                                        select="DS_NPL/NPLItem502019">
                                                    <span style="color:#1500d4">
<xsl:value-of
                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                </xsl:for-each>
                                            </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">502020</td>
                                                <td class="labelXsl  subOne">
                                                        <xsl:value-of select="$name502020"/>
                                                   </td>
                                                <xsl:for-each
                                                        select="DS_NPL/DS_NPL_Content/ContentRecordGroup/NPLItem502020">

                                                    <td align="right" class="labelXsl">
                                                        <xsl:if test="not(Amount='')">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                    
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">502021</td>
                                                 <td class="labelXsl subOne">
                                                        <xsl:value-of select="$name502021"/>
                                                   </td>
                                                <xsl:for-each
                                                        select="DS_NPL/DS_NPL_Content/ContentRecordGroup/NPLItem502021">

                                                    <td align="right" class="labelXsl">
                                                        <xsl:if test="not(Amount='')">
                                                             <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                    
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">502022</td>
                                                 <td class="labelXsl subOne">
                                                        <xsl:value-of select="$name502022"/>
                                                   </td>
                                                <xsl:for-each
                                                        select="DS_NPL/DS_NPL_Content/ContentRecordGroup/NPLItem502022">

                                                    <td align="right" class="labelXsl">
                                                        <xsl:if test="not(Amount='')">
                                                            <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                    
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">502023</td>
                                                 <td class="labelXsl subOne">
                                                        <xsl:value-of select="$name502023"/>
                                                   </td>
                                                <xsl:for-each
                                                        select="DS_NPL/DS_NPL_Content/ContentRecordGroup/NPLItem502023">
                                                    <td align="right" class="labelXsl">
                                                        <xsl:if test="not(Amount='')">
                                                             <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span> 
                                                        </xsl:if>

                                                    </td>

                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">502024</td>
                                                 <td class="labelXsl paddingSub">
                                                        <xsl:value-of select="$name502024"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_NPL/DS_NPL_Content/ContentRecordGroup/NPLItem502024">

                                                    <td align="right" class="labelXsl">
                                                        <xsl:if test="not(Amount='')">
                                                           <span style="color:#1500d4"> <xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                    
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">502025</td>
                                                 <td class="labelXsl paddingSub">
                                                        <xsl:value-of select="$name502025"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_NPL/DS_NPL_Content/ContentRecordGroup/NPLItem502025">

                                                    <td align="right" class="labelXsl">
                                                        <xsl:if test="not(Amount='')">
                                                             <span style="color:#1500d4"><xsl:value-of
                                                                    select="format-number(Amount,'###,###,###,###,###,###,##0.00')"/></span>
                                                        </xsl:if>
                                                    </td>
                                                    
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td align="center" class="labelXsl">502026</td>
                                                <td class="labelXsl paddingSub">
                                                        <xsl:value-of select="$name502026"/>
                                                    </td>
                                                <xsl:for-each
                                                        select="DS_NPL/DS_NPL_Content/ContentRecordGroup/NPLItem502026">

                                                    <td align="right" class="labelXsl">
                                                        <span style="color:#1500d4"><xsl:value-of
                                                                select="format-number(Amount,'###,###,###,###,##0.00')"/> </span>
                                                    </td>
                                                   
                                                </xsl:for-each>
                                            </tr>
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
