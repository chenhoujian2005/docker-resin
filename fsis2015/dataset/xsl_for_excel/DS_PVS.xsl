<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
                        <xsl:variable name="OrganizationId">OrganizationId</xsl:variable>
                        <xsl:variable name="DataSetDate">DataSetDate</xsl:variable>
                        <xsl:variable name="FiReportingGroupId">FiReportingGroupId</xsl:variable>
                        <xsl:variable name="ArrangementType">ArrangementType</xsl:variable>
                        <xsl:variable name="InvolvedPartyType">InvolvedPartyType</xsl:variable>
                        <xsl:variable name="RwaRate">RwaRate</xsl:variable>
                        <xsl:variable name="CcfRate">CcfRate</xsl:variable>
                        <xsl:variable name="ArrangementTermRange">ArrangementTermRange</xsl:variable>
                        <xsl:variable name="RemainingTermRange">RemainingTermRange</xsl:variable>
                        <xsl:variable name="RepricingTermRange">RepricingTermRange</xsl:variable>
                        <xsl:variable name="AssetClassificationType">AssetClassificationType / Amount</xsl:variable>
                        <xsl:variable name="ProvisionSummaryItem">Provision Summary Item</xsl:variable>
                        <xsl:variable name="ProvisionSummaryItemInfo">Provision Summary Item Info</xsl:variable>
                        <xsl:variable name="ProvisionSummary">Provision Summary</xsl:variable>
                        <xsl:variable name="var18">2. สำรองส่วนเกิน (ขาด)</xsl:variable>
                        <xsl:variable name="var12">2.1 เงินสำรองที่ต้องกันทั้งสิ้น</xsl:variable>

                        <xsl:variable name="name960001">	1. สินทรัพย์จัดชั้น (สุทธิ)</xsl:variable>

                        <xsl:variable name="name960009">	  1.1 ลูกหนี้จัดชั้นส่วนที่ต้องกันสำรองตามเกณฑ์จัดชั้น                  </xsl:variable>

                        <xsl:variable name="name960002">	    1.1.1 ลูกหนี้จัดชั้น</xsl:variable>

                        <xsl:variable name="name960003">	       1.1.1.1 สินเชื่อจัดชั้น</xsl:variable>

                        <xsl:variable name="name960005">	           1.1.1.1.1 เกณฑ์ PV ลูกหนี้</xsl:variable>

                        <xsl:variable name="name960019">	           1.1.1.1.2 เกณฑ์ PV หลักประกัน</xsl:variable>

                        <xsl:variable name="name960020">	           1.1.1.1.3 เกณฑ์ Collective Approach</xsl:variable>

                        <xsl:variable name="name960004">	      1.1.1.2 สินทรัพย์อื่นที่เกี่ยวข้อง</xsl:variable>

                        <xsl:variable name="name960006">	    1.1.2 หัก หนี้จัดชั้นที่ไม่ต้องกันสำรอง</xsl:variable>

                        <xsl:variable name="name960007">	    1.1.3 หัก หนี้ปรับปรุงโครงสร้างระหว่างติดตามผลที่ใช้เกณฑ์ส่วนสูญเสีย           </xsl:variable>

                        <xsl:variable name="name960008">	     1.1.4 หัก หลักประกัน      </xsl:variable>

                        <xsl:variable name="name960021">	           1.1.4.1 เกณฑ์ PV ลูกหนี้ </xsl:variable>

                        <xsl:variable name="name960022">	           1.1.4.2 เกณฑ์ PV หลักประกัน </xsl:variable>

                        <xsl:variable name="name960023">	           1.1.4.3  เกณฑ์  Collective Approach </xsl:variable>

                        <xsl:variable name="name960010">	  1.2 เงินลงทุนในหลักทรัพย์ </xsl:variable>

                        <xsl:variable name="name960011">	  1.3 สินทรัพย์อื่น </xsl:variable>

                        <xsl:variable name="name960018">	2. สำรองส่วนเกิน (ขาด) </xsl:variable>

                        <xsl:variable name="name960012">	  2.1 เงินสำรองที่ต้องกันทั้งสิ้น </xsl:variable>

                        <xsl:variable name="name960013">	    2.1.1 ลูกหนี้ตามเกณฑ์การจัดชั้น </xsl:variable>

                        <xsl:variable name="name960024">	        2.1.1.1 สินเชื่อจัดชั้น </xsl:variable>

                        <xsl:variable name="name960025">	            2.1.1.1.1 เกณฑ์ PV ลูกหนี้ </xsl:variable>

                        <xsl:variable name="name960026">	            2.1.1.1.2 เกณฑ์ PV หลักประกัน </xsl:variable>

                        <xsl:variable name="name960027">	            2.1.1.1.3 เกณฑ์ Collective Approach </xsl:variable>

                        <xsl:variable name="name960028">	       2.1.1.2    สินทรัพย์อื่นที่เกี่ยวข้อง   </xsl:variable>

                        <xsl:variable name="name960014">	    2.1.2 ส่วนสูญเสียทั้งสิ้น </xsl:variable>

                        <xsl:variable name="name960015">	    2.1.3 เงินลงทุนในหลักทรัพย์ </xsl:variable>

                        <xsl:variable name="name960016">	    2.1.4 สินทรัพย์อื่น </xsl:variable>

                        <xsl:variable name="name960017">	  2.2 เงินสำรองที่มีอยู่ </xsl:variable>

                        <xsl:variable name="name960029">	     2.2.1 ลูกหนี้จัดชั้น </xsl:variable>

                        <xsl:variable name="name960030">	        2.2.1.1  สินเชื่อจัดชั้น </xsl:variable>

                        <xsl:variable name="name960031">	            2.2.1.1.1  เกณฑ์ PV ลูกหนี้ </xsl:variable>

                        <xsl:variable name="name960032">	            2.2.1.1.2  เกณฑ์ PV หลักประก้น </xsl:variable>

                        <xsl:variable name="name960033">	            2.2.1.1.3  เกณฑ์ Collective Approach   </xsl:variable>

                        <xsl:variable name="name960034">	        2.2.1.2  สินทรัพย์อื่นที่เกี่ยวข้อง </xsl:variable>

                        <xsl:variable name="name960035">	    2.2.2 ส่วนสูญเสียทั้งสิ้น </xsl:variable>

                        <xsl:variable name="name960036">	    2.2.3 เงินลงทุนในหลักทรัพย ์           </xsl:variable>

                        <xsl:variable name="name960037">	    2.2.4  สินทรัพทย์อื่น         </xsl:variable>

            <xsl:variable name="Amount960005"><xsl:value-of  select="DS_PVS/DS_PVS_Content/ContentRecordGroup/ProvisionSummaryItem960005/ProvisionSummaryItemInfo/Amount"/></xsl:variable>
            <xsl:variable name="Amount960019"><xsl:value-of  select="DS_PVS/DS_PVS_Content/ContentRecordGroup/ProvisionSummaryItem960019/ProvisionSummaryItemInfo/Amount"/></xsl:variable>
            <xsl:variable name="Amount960020"><xsl:value-of  select="DS_PVS/DS_PVS_Content/ContentRecordGroup/ProvisionSummaryItem960020/ProvisionSummaryItemInfo/Amount"/></xsl:variable>
            <xsl:variable name="Amount960003"><xsl:value-of  select="DS_PVS/DS_PVS_Content/ContentRecordGroup/ProvisionSummaryItem960003/ProvisionSummaryItemInfo/Amount"/></xsl:variable>
            <xsl:variable name="TotalAmount960003"><xsl:value-of  select="$Amount960005 + $Amount960019 + $Amount960020"/></xsl:variable>

            <xsl:variable name="Amount960004"><xsl:value-of  select="DS_PVS/DS_PVS_Content/ContentRecordGroup/ProvisionSummaryItem960004/ProvisionSummaryItemInfo/Amount"/></xsl:variable>
            <xsl:variable name="TotalAmount960002"><xsl:value-of  select="$Amount960003 + $Amount960004"/></xsl:variable>

            <xsl:variable name="Amount960006"><xsl:value-of  select="DS_PVS/DS_PVS_Content/ContentRecordGroup/ProvisionSummaryItem960006/ProvisionSummaryItemInfo/Amount"/></xsl:variable>
            <xsl:variable name="Amount960007"><xsl:value-of  select="DS_PVS/DS_PVS_Content/ContentRecordGroup/ProvisionSummaryItem960007/ProvisionSummaryItemInfo/Amount"/></xsl:variable>

            <xsl:variable name="Amount960021"><xsl:value-of  select="DS_PVS/DS_PVS_Content/ContentRecordGroup/ProvisionSummaryItem960021/ProvisionSummaryItemInfo/Amount"/></xsl:variable>
            <xsl:variable name="Amount960022"><xsl:value-of  select="DS_PVS/DS_PVS_Content/ContentRecordGroup/ProvisionSummaryItem960022/ProvisionSummaryItemInfo/Amount"/></xsl:variable>
            <xsl:variable name="Amount960023"><xsl:value-of  select="DS_PVS/DS_PVS_Content/ContentRecordGroup/ProvisionSummaryItem960023/ProvisionSummaryItemInfo/Amount"/></xsl:variable>
            <xsl:variable name="Amount960008"><xsl:value-of  select="DS_PVS/DS_PVS_Content/ContentRecordGroup/ProvisionSummaryItem960008/ProvisionSummaryItemInfo/Amount"/></xsl:variable>
            <xsl:variable name="TotalAmount960008"><xsl:value-of  select="$Amount960021 + $Amount960022 + $Amount960023"/></xsl:variable>
            <xsl:variable name="TotalAmount960009"><xsl:value-of  select="$TotalAmount960002 - $Amount960006 - $Amount960007 - $TotalAmount960008"/></xsl:variable>


            <xsl:variable name="Amount960010"><xsl:value-of  select="DS_PVS/DS_PVS_Content/ContentRecordGroup/ProvisionSummaryItem960010/ProvisionSummaryItemInfo/Amount"/></xsl:variable>
            <xsl:variable name="Amount960011"><xsl:value-of  select="DS_PVS/DS_PVS_Content/ContentRecordGroup/ProvisionSummaryItem960011/ProvisionSummaryItemInfo/Amount"/></xsl:variable>
            <xsl:variable name="TotalAmount960001"><xsl:value-of  select="$TotalAmount960009 + $Amount960010 + $Amount960011"/></xsl:variable>



            <xsl:variable name="Amount960025"><xsl:value-of  select="DS_PVS/DS_PVS_Content/ContentRecordGroup/ProvisionSummaryItem960025/ProvisionSummaryItemInfo/Amount"/></xsl:variable>
            <xsl:variable name="Amount960026"><xsl:value-of  select="DS_PVS/DS_PVS_Content/ContentRecordGroup/ProvisionSummaryItem960026/ProvisionSummaryItemInfo/Amount"/></xsl:variable>
            <xsl:variable name="Amount960027"><xsl:value-of  select="DS_PVS/DS_PVS_Content/ContentRecordGroup/ProvisionSummaryItem960027/ProvisionSummaryItemInfo/Amount"/></xsl:variable>
            <xsl:variable name="TotalAmount960024"><xsl:value-of  select="$Amount960025 + $Amount960026 + $Amount960027"/></xsl:variable>

            <xsl:variable name="Amount960028"><xsl:value-of  select="DS_PVS/DS_PVS_Content/ContentRecordGroup/ProvisionSummaryItem960028/ProvisionSummaryItemInfo/Amount"/></xsl:variable>
            <xsl:variable name="Amount960013"><xsl:value-of  select="DS_PVS/DS_PVS_Content/ContentRecordGroup/ProvisionSummaryItem960013/ProvisionSummaryItemInfo/Amount"/></xsl:variable>
            <xsl:variable name="TotalAmount960013"><xsl:value-of  select="$TotalAmount960024 + $Amount960028"/></xsl:variable>

            <xsl:variable name="Amount960014"><xsl:value-of  select="DS_PVS/DS_PVS_Content/ContentRecordGroup/ProvisionSummaryItem960014/ProvisionSummaryItemInfo/Amount"/></xsl:variable>
            <xsl:variable name="Amount960015"><xsl:value-of  select="DS_PVS/DS_PVS_Content/ContentRecordGroup/ProvisionSummaryItem960015/ProvisionSummaryItemInfo/Amount"/></xsl:variable>
            <xsl:variable name="Amount960016"><xsl:value-of  select="DS_PVS/DS_PVS_Content/ContentRecordGroup/ProvisionSummaryItem960016/ProvisionSummaryItemInfo/Amount"/></xsl:variable>
            <xsl:variable name="TotalAmount960012"><xsl:value-of  select="$Amount960013 + $Amount960014 + $Amount960015 + $Amount960016"/></xsl:variable>

            <xsl:variable name="Amount960031"><xsl:value-of  select="DS_PVS/DS_PVS_Content/ContentRecordGroup/ProvisionSummaryItem960031/ProvisionSummaryItemInfo/Amount"/></xsl:variable>
            <xsl:variable name="Amount960032"><xsl:value-of  select="DS_PVS/DS_PVS_Content/ContentRecordGroup/ProvisionSummaryItem960032/ProvisionSummaryItemInfo/Amount"/></xsl:variable>
            <xsl:variable name="Amount960033"><xsl:value-of  select="DS_PVS/DS_PVS_Content/ContentRecordGroup/ProvisionSummaryItem960033/ProvisionSummaryItemInfo/Amount"/></xsl:variable>
            <xsl:variable name="TotalAmount960030"><xsl:value-of  select="$Amount960031 + $Amount960032 + $Amount960033"/></xsl:variable>

            <xsl:variable name="Amount960034"><xsl:value-of  select="DS_PVS/DS_PVS_Content/ContentRecordGroup/ProvisionSummaryItem960034/ProvisionSummaryItemInfo/Amount"/></xsl:variable>
            <xsl:variable name="TotalAmount960029"><xsl:value-of  select="$TotalAmount960030 + $Amount960034"/></xsl:variable>

            <xsl:variable name="Amount960035"><xsl:value-of  select="DS_PVS/DS_PVS_Content/ContentRecordGroup/ProvisionSummaryItem960035/ProvisionSummaryItemInfo/Amount"/></xsl:variable>
            <xsl:variable name="Amount960036"><xsl:value-of  select="DS_PVS/DS_PVS_Content/ContentRecordGroup/ProvisionSummaryItem960036/ProvisionSummaryItemInfo/Amount"/></xsl:variable>
            <xsl:variable name="Amount960037"><xsl:value-of  select="DS_PVS/DS_PVS_Content/ContentRecordGroup/ProvisionSummaryItem960037/ProvisionSummaryItemInfo/Amount"/></xsl:variable>
            <xsl:variable name="TotalAmount960017"><xsl:value-of  select="$TotalAmount960029 + $Amount960035 + $Amount960036 + $Amount960037"/></xsl:variable>
            <xsl:variable name="Amount960017"><xsl:value-of  select="DS_PVS/DS_PVS_Content/ContentRecordGroup/ProvisionSummaryItem960017/ProvisionSummaryItemInfo/Amount"/></xsl:variable>
            <xsl:variable name="TotalAmount960018"><xsl:value-of  select="$TotalAmount960012 + $TotalAmount960017"/></xsl:variable>



            <head>
                <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            </head>
            <body>


                                        <table class="displayTable" width="50%" border="1">
                                            <tr>
                                                <td class="bgGreen" width="20%">Organization :</td>
                                                <td width="80%" colspan="2">
                                                    <xsl:for-each select="DS_PVS/CommonHeader">
                                                        <xsl:value-of select="OrganizationId"/>
                                                    </xsl:for-each>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="bgGreen" width="20%">FI Reporting Group :</td>
                                                <td width="80%" colspan="2">
                                                     116003 - ชุดรวมทุกสำนักงานในประเทศ
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="bgGreen" width="20%">Data Set Type :</td>
                                                <td width="80%" colspan="2">
                                                    <xsl:value-of select="DS_PVS/@name"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                    <td class="bgGreen"> </td>
                                                    <td class="bgGreen" align="center"> Month</td>
                                                    <td class="bgGreen" align="center"> Year</td>
                                                </tr>
                                                <tr>
                                                    <td class="bgGreen" >Data Set Date :</td>
                                                            <xsl:variable name="month"><xsl:value-of select="substring-after(substring-before(DataSetDate,'-'),'-')"/></xsl:variable>
                                                            <xsl:for-each select="DS_PVS/CommonHeader">
                                                                <td  hight="15px" align="center">
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
                                                                <td  hight="15px" align="center">
                                                                      <xsl:value-of select="substring(DataSetDate,1,4)"/>
                                                                </td>
                                                            </xsl:for-each>
                                                </tr>
                                        </table>
                                        <table class="displayTable" width="100%" border="1">

                                            <tr class="headTableXsl">
                                            <td width="100%" align="center" colspan="7" ><xsl:value-of select="$ProvisionSummary"/></td>
                                            </tr>
                                            <tr class="headTableXsl">
                                                <td width="50%" align="right">
                                                    <xsl:value-of select="$ProvisionSummaryItemInfo"/>
                                                </td>
                                                <td width="50%" align="center" colspan="6">
                                                    <xsl:value-of select="$AssetClassificationType"/>
                                                </td>
                                            </tr>
                                            <tr class="headTableXsl">
                                                <td align="center" colspan="1" width="50%">
                                                    <xsl:value-of select="$ProvisionSummaryItem"/>
                                                </td>
                                                            <td align="center" width="10%">ปกติ</td>
                                                            <td align="center" width="10%">กล่าวถึงเป็นพิเศษ</td>
                                                            <td align="center" width="10%">ต่ำกว่ามาตราฐาน</td>
                                                            <td align="center" width="10%">สงสัย</td>
                                                            <td align="center" width="10%">สงสัยจะสูญ</td>
                                                            <td align="center" width="10%">สูญ</td>
                                            </tr>

                                            <tr>
                                                <td valign="top" class="labelXsl">
                                                    <table width="100%">
                                                        <tr>
                                                            <td class="labelXsl"  align="center">960001</td>
                                                                <td  width="80%" class="labelXsl">
                                                                    <xsl:value-of select="$name960001"/>
                                                                </td>

                                                        </tr>
                                                    </table>
                                                </td>
                                                <td width="15%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(DS_PVS/AssetClassificationType960001020001,'###,###,###,###,##0.00')"/></span>
                                                 </td>
                                                 <td width="15%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(DS_PVS/AssetClassificationType960001020002,'###,###,###,###,##0.00')"/></span>
                                                 </td>
                                                <td width="15%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(DS_PVS/AssetClassificationType960001020003,'###,###,###,###,##0.00')"/></span>
                                                 </td>
                                                <td width="15%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(DS_PVS/AssetClassificationType960001020004,'###,###,###,###,##0.00')"/></span>
                                                 </td>
                                                <td width="15%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(DS_PVS/AssetClassificationType960001020005,'###,###,###,###,##0.00')"/></span>
                                                 </td>
                                                <td width="15%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(DS_PVS/AssetClassificationType960001020006,'###,###,###,###,##0.00')"/></span>
                                                 </td>

                                            </tr>
                                            <tr>
                                                <td valign="top" class="labelXsl">
                                                    <table width="100%">
                                                        <tr>
                                                             <td class="labelXsl"  align="center">960009</td>
                                                                <td  width="80%" class="subOne labelXsl">
                                                                   <xsl:value-of select="$name960009"/>
                                                                </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <td width="15%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(DS_PVS/AssetClassificationType960009020001,'###,###,###,###,##0.00')"/></span>
                                                 </td>
                                                 <td width="15%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(DS_PVS/AssetClassificationType960009020002,'###,###,###,###,##0.00')"/></span>
                                                 </td>
                                                <td width="15%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(DS_PVS/AssetClassificationType960009020003,'###,###,###,###,##0.00')"/></span>
                                                 </td>
                                                <td width="15%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(DS_PVS/AssetClassificationType960009020004,'###,###,###,###,##0.00')"/></span>
                                                 </td>
                                                <td width="15%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(DS_PVS/AssetClassificationType960009020005,'###,###,###,###,##0.00')"/></span>
                                                 </td>
                                                <td width="15%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(DS_PVS/AssetClassificationType960009020006,'###,###,###,###,##0.00')"/></span>
                                                 </td>
                                            </tr>
                                            <tr>
                                                <td class="labelXsl">
                                                    <table width="100%">
                                                        <tr>
                                                            <td class="labelXsl"  align="center">960002</td>
                                                                <td width="80%" class="subTwo  labelXsl">
                                                                     <xsl:value-of select="$name960002"/>
                                                                </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <td width="15%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(DS_PVS/AssetClassificationType960002020001,'###,###,###,###,##0.00')"/></span>
                                                 </td>
                                                 <td width="15%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(DS_PVS/AssetClassificationType960002020002,'###,###,###,###,##0.00')"/></span>
                                                 </td>
                                                <td width="15%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(DS_PVS/AssetClassificationType960002020003,'###,###,###,###,##0.00')"/></span>
                                                 </td>
                                                <td width="15%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(DS_PVS/AssetClassificationType960002020004,'###,###,###,###,##0.00')"/></span>
                                                 </td>
                                                <td width="15%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(DS_PVS/AssetClassificationType960002020005,'###,###,###,###,##0.00')"/></span>
                                                 </td>
                                                <td width="15%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(DS_PVS/AssetClassificationType960002020006,'###,###,###,###,##0.00')"/></span>
                                                 </td>

                                            </tr>
                                            <tr>
                                                <td >
                                                    <table width="100%">
                                                        <tr>
                                                            <td align="center">960003</td>
                                                            <td width="80%" class="subThree  labelXsl">
                                                               <xsl:value-of select="$name960003"/>
                                                                </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_PVS/DS_PVS_Content/ContentRecordGroup/ProvisionSummaryItem960003/ProvisionSummaryItemInfo">
                                                    <td width="15%" class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number(Amount,'###,###,###,###,##0.00')"/>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>


                                            <tr>
                                                <td >
                                                    <table width="100%">
                                                        <tr>
                                                            <td align="center">960004</td>
                                                                <td width="80%" class="subThree  labelXsl">
                                                                 <xsl:value-of select="$name960004"/>
                                                                </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_PVS/DS_PVS_Content/ContentRecordGroup/ProvisionSummaryItem960004/ProvisionSummaryItemInfo">
                                                    <td width="5%" class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number(Amount,'###,###,###,###,##0.00')"/>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td >
                                                    <table width="100%">
                                                        <tr>
                                                            <td align="center">960006</td>
                                                                <td width="80%" class="subTwo labelXsl">
                                                                   <xsl:value-of select="$name960006"/>
                                                                </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_PVS/DS_PVS_Content/ContentRecordGroup/ProvisionSummaryItem960006/ProvisionSummaryItemInfo">
                                                    <td width="5%" class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number(Amount,'###,###,###,###,##0.00')"/>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td >
                                                    <table width="100%">
                                                        <tr>
                                                            <td align="center">960007</td>
                                                                <td width="80%" class="subTwo labelXsl">
                                                                   <xsl:value-of select="$name960007"/>
                                                                </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_PVS/DS_PVS_Content/ContentRecordGroup/ProvisionSummaryItem960007/ProvisionSummaryItemInfo">
                                                    <td width="5%" class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number(Amount,'###,###,###,###,##0.00')"/>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td >
                                                    <table width="100%">
                                                        <tr>
                                                            <td align="center">960008</td>
                                                                <td width="80%" class="subTwo labelXsl">
                                                                   <xsl:value-of select="$name960008"/>
                                                                </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_PVS/DS_PVS_Content/ContentRecordGroup/ProvisionSummaryItem960008/ProvisionSummaryItemInfo">
                                                    <td width="5%" class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number(Amount,'###,###,###,###,##0.00')"/>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>

                                            <tr>
                                                <td >
                                                    <table width="100%">
                                                        <tr>
                                                            <td align="center">960010</td>
                                                                <td width="80%" class="subOne  labelXsl">
                                                                       <xsl:value-of select="$name960010"/>
                                                                </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_PVS/DS_PVS_Content/ContentRecordGroup/ProvisionSummaryItem960010/ProvisionSummaryItemInfo">
                                                    <td width="5%" class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number(Amount ,'###,###,###,###,##0.00')"/>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td >
                                                    <table width="100%">
                                                        <tr>
                                                            <td align="center">960011</td>
                                                                <td width="80%" class="subOne  labelXsl">
                                                                  <xsl:value-of select="$name960011"/>
                                                                </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_PVS/DS_PVS_Content/ContentRecordGroup/ProvisionSummaryItem960011/ProvisionSummaryItemInfo">
                                                    <td width="5%" class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number(Amount,'###,###,###,###,##0.00')"/>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>


                                            <tr>
                                                <td class="labelXsl">
                                                    <table width="100%">
                                                        <tr>
                                                            <td align="center">960018</td>
                                                                <td width="80%" class="labelXsl">
                                                                   <xsl:value-of select="$name960018"/>
                                                                </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <td width="15%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(DS_PVS/AssetClassificationType960018020001,'###,###,###,###,##0.00')"/></span>
                                                 </td>
                                                 <td width="15%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(DS_PVS/AssetClassificationType960018020002,'###,###,###,###,##0.00')"/></span>
                                                 </td>
                                                <td width="15%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(DS_PVS/AssetClassificationType960018020003,'###,###,###,###,##0.00')"/></span>
                                                 </td>
                                                <td width="15%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(DS_PVS/AssetClassificationType960018020004,'###,###,###,###,##0.00')"/></span>
                                                 </td>
                                                <td width="15%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(DS_PVS/AssetClassificationType960018020005,'###,###,###,###,##0.00')"/></span>
                                                 </td>
                                                <td width="15%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(DS_PVS/AssetClassificationType960018020006,'###,###,###,###,##0.00')"/></span>
                                                 </td>

                                            </tr>
                                            <tr>
                                                <td >
                                                    <table width="100%">
                                                        <tr>
                                                            <td align="center">960012</td>
                                                                <td width="80%" class="subOne labelXsl">
                                                                      <xsl:value-of select="$name960012"/>
                                                                </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                   <td width="15%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(DS_PVS/AssetClassificationType960012020001,'###,###,###,###,##0.00')"/></span>
                                                 </td>
                                                 <td width="15%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(DS_PVS/AssetClassificationType960012020002,'###,###,###,###,##0.00')"/></span>
                                                 </td>
                                                <td width="15%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(DS_PVS/AssetClassificationType960012020003,'###,###,###,###,##0.00')"/></span>
                                                 </td>
                                                <td width="15%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(DS_PVS/AssetClassificationType960012020004,'###,###,###,###,##0.00')"/></span>
                                                 </td>
                                                <td width="15%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(DS_PVS/AssetClassificationType960012020005,'###,###,###,###,##0.00')"/></span>
                                                 </td>
                                                <td width="15%" class="labelXsl" align="right">
                                                    <span style="color:#1500d4"><xsl:value-of select="format-number(DS_PVS/AssetClassificationType960012020006,'###,###,###,###,##0.00')"/></span>
                                                 </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                    <table width="100%">
                                                        <tr>
                                                            <td align="center">960013</td>
                                                                <td width="80%" class="subTwo labelXsl">
                                                                    <xsl:value-of select="$name960013"/>
                                                                </td>
                                                        </tr>
                                                    </table>
                                                </td>

                                                <xsl:for-each
                                                        select="DS_PVS/DS_PVS_Content/ContentRecordGroup/ProvisionSummaryItem960013/ProvisionSummaryItemInfo">
                                                    <td width="5%" class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number(Amount,'###,###,###,###,##0.00')"/>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>

                                            <tr>
                                                <td >
                                                    <table width="100%">
                                                        <tr>
                                                            <td align="center">960014</td>
                                                                <td width="80%" class="subTwo  labelXsl">
                                                                    <xsl:value-of select="$name960014"/>
                                                                </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_PVS/DS_PVS_Content/ContentRecordGroup/ProvisionSummaryItem960014/ProvisionSummaryItemInfo">
                                                    <td width="5%" class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number(Amount,'###,###,###,###,##0.00')"/>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td >
                                                    <table width="100%">
                                                        <tr>
                                                            <td align="center">960015</td>
                                                                <td width="80%" class="subTwo  labelXsl">
                                                                    <xsl:value-of select="$name960015"/>
                                                                </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_PVS/DS_PVS_Content/ContentRecordGroup/ProvisionSummaryItem960015/ProvisionSummaryItemInfo">
                                                    <td width="5%" class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number(Amount,'###,###,###,###,##0.00')"/>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                            <tr>
                                                <td >
                                                    <table width="100%">
                                                        <tr>
                                                            <td align="center">960016</td>
                                                                <td width="80%" class="subTwo  labelXsl">
                                                                    <xsl:value-of select="$name960016"/>
                                                                </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <xsl:for-each
                                                        select="DS_PVS/DS_PVS_Content/ContentRecordGroup/ProvisionSummaryItem960016/ProvisionSummaryItemInfo">
                                                    <td width="5%" class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number(Amount,'###,###,###,###,##0.00')"/>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                             <tr>
                                                <td >
                                                    <table width="100%">
                                                        <tr>
                                                            <td align="center">960017</td>
                                                                <td width="80%" class="subOne  labelXsl">
                                                                    <xsl:value-of select="$name960017"/>
                                                                </td>
                                                        </tr>
                                                    </table>
                                                </td>

                                                <xsl:for-each
                                                        select="DS_PVS/DS_PVS_Content/ContentRecordGroup/ProvisionSummaryItem960017/ProvisionSummaryItemInfo">
                                                    <td width="5%" class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                        <xsl:value-of
                                                                select="format-number(Amount,'###,###,###,###,##0.00')"/>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>

                                        </table>


            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
