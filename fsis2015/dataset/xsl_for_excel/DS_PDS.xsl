<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <xsl:variable name="name208005">	กำไรสุทธิที่พึงจัดสรรได้</xsl:variable>

            <xsl:variable name="name208001">	  กำไร (ขาดทุน) สุทธิคงเหลือหลังการจัดสรรยกมา</xsl:variable>

            <xsl:variable name="name208002">	  กำไร (ขาดทุน) สุทธิงวดนี้</xsl:variable>

            <xsl:variable name="name208003">	  เงินโอนจากสำรองส่วนทุน</xsl:variable>

            <xsl:variable name="name208004">	  เงินโอนจากสำนักงานใหญ่ในต่างประเทศ</xsl:variable>

            <xsl:variable name="name208006">	การจัดสรร</xsl:variable>

            <xsl:variable name="name208007">	  สำรอง</xsl:variable>

            <xsl:variable name="name208008">	    สำรองตามกฎหมาย</xsl:variable>

            <xsl:variable name="name208009">	    สำรองอื่น ๆ</xsl:variable>

            <xsl:variable name="name208010">	  เงินปันผล</xsl:variable>

            <xsl:variable name="name208011">	    หุ้นสามัญ</xsl:variable>

            <xsl:variable name="name208012">	    หุ้นบุริมสิทธิ</xsl:variable>

            <xsl:variable name="name208013">	  หุ้นปันผล</xsl:variable>

            <xsl:variable name="name208014">	  บำเหน็จกรรมการ</xsl:variable>

            <xsl:variable name="name208015">	  เงินโอนไปสำนักงานใหญ่ในต่างประเทศ    </xsl:variable>

            <xsl:variable name="name208016">	    ภาษีการจำหน่ายเงินกำไรไปต่างประเทศ</xsl:variable>

            <xsl:variable name="name208017">	    เงินกำไรที่จำหน่ายไปต่างประเทศ</xsl:variable>

            <xsl:variable name="name208019">	  กำไรที่ต้องนำส่งเป็นรายได้นำส่งคลังในรอบปี</xsl:variable>

            <xsl:variable name="name208018">	กำไรสุทธิคงเหลือหลังจากการจัดสรร</xsl:variable>


            <xsl:variable name="OrganizationId">Organization ID :</xsl:variable>
            <xsl:variable name="DataSetDate">DataSetDate :</xsl:variable>
            <xsl:variable name="ColumnHeader_Data_Set_Type">Data Set Type :</xsl:variable>
            <xsl:variable name="ColumnHeader_Data_Set_Date">Data Set Date :</xsl:variable>
            <xsl:variable name="SubColumnHeader_Month">Month</xsl:variable>
            <xsl:variable name="SubColumnHeader_Year">Year</xsl:variable>
            <xsl:variable name="FiReportingGroupId">FI Reporting Group ID:</xsl:variable>
            <xsl:variable name="DataSetPeriodMonth">Data Set Period Month :</xsl:variable>

            <xsl:variable name="Amount208001"><xsl:value-of select="DS_PDS/DS_PDS_Content/ContentRecordGroup/NetProfitDistributionItem208001/Amount"/></xsl:variable>
            <xsl:variable name="Amount208002"><xsl:value-of select="DS_PDS/DS_PDS_Content/ContentRecordGroup/NetProfitDistributionItem208002/Amount"/></xsl:variable>
            <xsl:variable name="Amount208003"><xsl:value-of select="DS_PDS/DS_PDS_Content/ContentRecordGroup/NetProfitDistributionItem208003/Amount"/></xsl:variable>
            <xsl:variable name="Amount208004"><xsl:value-of select="DS_PDS/DS_PDS_Content/ContentRecordGroup/NetProfitDistributionItem208004/Amount"/></xsl:variable>
            <xsl:variable name="TotalAmount208005"><xsl:value-of select="$Amount208001 + $Amount208002 + $Amount208003 + $Amount208004"/></xsl:variable>

            <xsl:variable name="Amount208008"><xsl:value-of select="DS_PDS/DS_PDS_Content/ContentRecordGroup/NetProfitDistributionItem208008/Amount"/></xsl:variable>
            <xsl:variable name="Amount208009"><xsl:value-of select="DS_PDS/DS_PDS_Content/ContentRecordGroup/NetProfitDistributionItem208009/Amount"/></xsl:variable>
            <xsl:variable name="TotalAmount208007"><xsl:value-of select="$Amount208008 + $Amount208009"/></xsl:variable>

            <xsl:variable name="Amount208011"><xsl:value-of select="DS_PDS/DS_PDS_Content/ContentRecordGroup/NetProfitDistributionItem208011/Amount"/></xsl:variable>
            <xsl:variable name="Amount208012"><xsl:value-of select="DS_PDS/DS_PDS_Content/ContentRecordGroup/NetProfitDistributionItem208012/Amount"/></xsl:variable>
            <xsl:variable name="TotalAmount208010"><xsl:value-of select="$Amount208011 + $Amount208012"/></xsl:variable>

            <xsl:variable name="Amount208016"><xsl:value-of select="DS_PDS/DS_PDS_Content/ContentRecordGroup/NetProfitDistributionItem208016/Amount"/></xsl:variable>
            <xsl:variable name="Amount208017"><xsl:value-of select="DS_PDS/DS_PDS_Content/ContentRecordGroup/NetProfitDistributionItem208017/Amount"/></xsl:variable>
            <xsl:variable name="TotalAmount208015"><xsl:value-of select="$Amount208016 + $Amount208017"/></xsl:variable>

            <xsl:variable name="Amount208013"><xsl:value-of select="DS_PDS/DS_PDS_Content/ContentRecordGroup/NetProfitDistributionItem208013/Amount"/></xsl:variable>
            <xsl:variable name="Amount208014"><xsl:value-of select="DS_PDS/DS_PDS_Content/ContentRecordGroup/NetProfitDistributionItem208014/Amount"/></xsl:variable>
            <xsl:variable name="Amount208019"><xsl:value-of select="DS_PDS/DS_PDS_Content/ContentRecordGroup/NetProfitDistributionItem208019/Amount"/></xsl:variable>
            <xsl:variable name="Amount208018"><xsl:value-of select="DS_PDS/DS_PDS_Content/ContentRecordGroup/NetProfitDistributionItem208018/Amount"/></xsl:variable>

            <xsl:variable name="TotalAmount208006"><xsl:value-of select="$TotalAmount208007 + $TotalAmount208010 + $Amount208013 + $Amount208014 + $TotalAmount208015 + $Amount208019"/></xsl:variable>
            <head>
                <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            </head>
            <body>

                                        <div class="title">Document Details</div>

                                        <table class="displayTable" width="100%" border="1">
                                            <tr>
                                                <td class="bgGreen" width="20%"><xsl:value-of select="$OrganizationId"/></td>
                                                <td width="15%" colspan="2"><xsl:value-of select="DS_PDS/CommonHeader/OrganizationId"/></td>
                                            </tr>
                                            <tr>
                                                <td class="bgGreen"><xsl:value-of select="$FiReportingGroupId"/></td>
                                                <td colspan="2"> 116003 - ชุดรวมทุกสำนักงานในประเทศ</td>
                                            </tr>
                                            <tr>
                                                <td class="bgGreen"><xsl:value-of select="$ColumnHeader_Data_Set_Type"/></td>
                                                <td colspan="2"><xsl:value-of select="DS_PDS/@name"/></td>
                                            </tr>
                                            <tr>
                                                <td class="bgGreen"><xsl:value-of select="$DataSetPeriodMonth"/></td>
                                                <td colspan="2"><xsl:value-of select="DS_PDS/DS_PDS_Header/DataSetPeriodMonth"/></td>
                                            </tr>
                                            <tr>
                                                <td class="bgGreen"> </td>
                                                <td class="bgGreen" align="center"><xsl:value-of select="$SubColumnHeader_Month"/></td>
                                                <td class="bgGreen" align="center"><xsl:value-of select="$SubColumnHeader_Year"/></td>
                                            </tr>
                                            <tr>
                                                <td class="bgGreen"><xsl:value-of select="$ColumnHeader_Data_Set_Date"/></td>
                                                        <xsl:variable name="month">
                                                            <xsl:value-of select="substring-after(substring-before(DataSetDate,'-'),'-')"/>
                                                        </xsl:variable>
                                                        <xsl:for-each select="DS_PDS/CommonHeader">
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
                                                                        <xsl:when test="$mo = '9' or $mo = '09'">September</xsl:when>
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
                                        <!--******* data in table ******** -->
                                        <table class="displayTable"  width="100%" border="1">
                                            <tr class="headTableXsl">
                                                <td colspan="3">Not Profit Distribution</td>
                                            </tr>
                                            <tr class="headTableXsl">
                                                <td colspan="2" width="80%">Not Profit Distribution Item</td>
                                                <td width="20%">Amount</td>
                                            </tr>
                                            <tr>
                                               <td  class="labelXsl"  width="10%" align="center">208005 </td>
                                               <td width="80%"  class="paddingSub labelXsl" align="left">
                                                  <xsl:value-of select="$name208005"/>
                                               </td>
                                               <td width="10%" class="labelXsl" align="right">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmount208005,'###,###,###,###,###,###,##0.00')"/></span>
                                               </td>
                                            </tr>
                                            <tr>
                                               <td  class="labelXsl"  width="10%" align="center">208001</td>
                                               <td width="80%"  class="subOne labelXsl" align="left">
                                                  <xsl:value-of select="$name208001"/>
                                               </td>
                                               <td width="10%" class="labelXsl" align="right">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number($Amount208001,'###,###,###,###,###,###,##0.00')"/></span>
                                               </td>
                                            </tr>
                                            <tr>
                                               <td  class="labelXsl"  width="10%" align="center">208002</td>
                                               <td width="80%"  class="subOne labelXsl" align="left">
                                                  <xsl:value-of select="$name208002"/>
                                               </td>
                                               <td width="10%" class="labelXsl" align="right">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number($Amount208002,'###,###,###,###,###,###,##0.00')"/></span>
                                               </td>
                                            </tr>
                                            <tr>
                                               <td  class="labelXsl"  width="10%" align="center">208003</td>
                                               <td width="80%"  class="subOne labelXsl" align="left">
                                                  <xsl:value-of select="$name208003"/>
                                               </td>
                                               <td width="10%" class="labelXsl" align="right">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number($Amount208003,'###,###,###,###,###,###,##0.00')"/></span>
                                               </td>
                                            </tr>
                                            <tr>
                                               <td  class="labelXsl"  width="10%" align="center">208004</td>
                                               <td width="80%"  class="subOne labelXsl" align="left">
                                                  <xsl:value-of select="$name208004"/>
                                               </td>
                                               <td width="10%" class="labelXsl" align="right">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number($Amount208004,'###,###,###,###,###,###,##0.00')"/></span>
                                               </td>
                                            </tr>
                                            <tr>
                                               <td  class="labelXsl"  width="10%" align="center">208006 </td>
                                               <td width="80%"  class="paddingSub labelXsl" align="left">
                                                  <xsl:value-of select="$name208006"/>
                                               </td>
                                               <td width="10%" class="labelXsl" align="right">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmount208006,'###,###,###,###,###,###,##0.00')"/></span>
                                               </td>
                                            </tr>
                                            <tr>
                                               <td  class="labelXsl"  width="10%" align="center">208007 </td>
                                               <td width="80%"  class="subOne labelXsl" align="left">
                                                  <xsl:value-of select="$name208007"/>
                                               </td>
                                               <td width="10%" class="labelXsl" align="right">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmount208007,'###,###,###,###,###,###,##0.00')"/></span>
                                               </td>
                                            </tr>
                                            <tr>
                                               <td  class="labelXsl"  width="10%" align="center">208008 </td>
                                               <td width="80%"  class="subTwo labelXsl" align="left">
                                                  <xsl:value-of select="$name208008"/>
                                               </td>
                                               <td width="10%" class="labelXsl" align="right">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number($Amount208008,'###,###,###,###,###,###,##0.00')"/></span>
                                               </td>
                                            </tr>
                                            <tr>
                                               <td  class="labelXsl"  width="10%" align="center">208009 </td>
                                               <td width="80%"  class="subTwo labelXsl" align="left">
                                                  <xsl:value-of select="$name208009"/>
                                               </td>
                                               <td width="10%" class="labelXsl" align="right">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number($Amount208009,'###,###,###,###,###,###,##0.00')"/></span>
                                               </td>
                                            </tr>
                                            <tr>
                                               <td  class="labelXsl"  width="10%" align="center">208010 </td>
                                               <td width="80%"  class="subOne labelXsl" align="left">
                                                  <xsl:value-of select="$name208010"/>
                                               </td>
                                               <td width="10%" class="labelXsl" align="right">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmount208010,'###,###,###,###,###,###,##0.00')"/></span>
                                               </td>
                                            </tr>
                                            <tr>
                                               <td  class="labelXsl"  width="10%" align="center">208011 </td>
                                               <td width="80%"  class="subTwo labelXsl" align="left">
                                                  <xsl:value-of select="$name208011"/>
                                               </td>
                                               <td width="10%" class="labelXsl" align="right">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number($Amount208011,'###,###,###,###,###,###,##0.00')"/></span>
                                               </td>
                                            </tr>
                                            <tr>
                                               <td  class="labelXsl"  width="10%" align="center">208012</td>
                                               <td width="80%"  class="subTwo labelXsl" align="left">
                                                  <xsl:value-of select="$name208012"/>
                                               </td>
                                               <td width="10%" class="labelXsl" align="right">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number($Amount208012,'###,###,###,###,###,###,##0.00')"/></span>
                                               </td>
                                            </tr>
                                            <tr>
                                               <td  class="labelXsl"  width="10%" align="center">208013</td>
                                               <td width="80%"  class="subOne labelXsl" align="left">
                                                  <xsl:value-of select="$name208013"/>
                                               </td>
                                               <td width="10%" class="labelXsl" align="right">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number($Amount208013,'###,###,###,###,###,###,##0.00')"/></span>
                                               </td>
                                            </tr>
                                            <tr>
                                               <td  class="labelXsl"  width="10%" align="center">208014</td>
                                               <td width="80%"  class="subOne labelXsl" align="left">
                                                  <xsl:value-of select="$name208014"/>
                                               </td>
                                               <td width="10%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number($Amount208014,'###,###,###,###,###,###,##0.00')"/></span>
                                               </td>
                                            </tr>
                                            <tr>
                                               <td  class="labelXsl"  width="10%" align="center">208015 </td>
                                               <td width="80%"  class="subOne labelXsl" align="left">
                                                  <xsl:value-of select="$name208015"/>
                                               </td>
                                               <td width="10%" class="labelXsl" align="right">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number($TotalAmount208015,'###,###,###,###,###,###,##0.00')"/></span>
                                               </td>
                                            </tr>
                                            <tr>
                                               <td  class="labelXsl"  width="10%" align="center">208016 </td>
                                               <td width="80%"  class="subTwo labelXsl" align="left">
                                                  <xsl:value-of select="$name208016"/>
                                               </td>
                                               <td width="10%" class="labelXsl" align="right">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number($Amount208016,'###,###,###,###,###,###,##0.00')"/></span>
                                               </td>
                                            </tr>
                                            <tr>
                                               <td  class="labelXsl"  width="10%" align="center">208017</td>
                                               <td width="80%"  class="subTwo labelXsl" align="left">
                                                  <xsl:value-of select="$name208017"/>
                                               </td>
                                               <td width="10%" class="labelXsl" align="right">
                                                     <span style="color:#1500d4"><xsl:value-of select="format-number($Amount208017,'###,###,###,###,###,###,##0.00')"/></span>
                                               </td>
                                            </tr>
                                            <tr>
                                               <td  class="labelXsl"  width="10%" align="center">208019</td>
                                               <td width="80%"  class="subOne labelXsl" align="left">
                                                  <xsl:value-of select="$name208019"/>
                                               </td>
                                               <td width="10%" class="labelXsl" align="right">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number($Amount208019,'###,###,###,###,###,###,##0.00')"/></span>
                                               </td>
                                            </tr>
                                            <tr>
                                               <td  class="labelXsl"  width="10%" align="center">208018</td>
                                               <td width="80%"  class="paddingSub labelXsl" align="left">
                                                  <xsl:value-of select="$name208018"/>
                                               </td>
                                               <td width="10%" class="labelXsl" align="right">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number($Amount208018,'###,###,###,###,###,###,##0.00')"/></span>
                                               </td>
                                            </tr>
                                        </table>

            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
