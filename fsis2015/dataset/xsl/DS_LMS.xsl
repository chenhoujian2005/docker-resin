<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <xsl:variable name="OrganizationId">OrganizationId</xsl:variable>

            <xsl:variable name="RiskWeightedAssetsItem">Risk Weighted Assets Item</xsl:variable>
            <xsl:variable name="RiskWeightedAssets">Risk Weighted AssetsItem</xsl:variable>
            <xsl:variable name="AssetOutstandingAmount">Asset Outstanding Amount</xsl:variable>
            <xsl:variable name="RiskWeightedAssetOutstandingAmount">Risk Weighted Asset Outstanding Amount
            </xsl:variable>
            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                <xsl:if test="ArrangementType = '018002'">
                     <xsl:variable name="main">2</xsl:variable>
                </xsl:if>
            </xsl:for-each>
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
                                        <table class="displayTable" width="100%">
                                            <tr>
                                                <td class="bgGreen" width="20%">Organization ID :  </td>
                                                <td width="15%" colspan="2">
                                                    <xsl:for-each select="DS_LMS/CommonHeader">
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
                                                    <xsl:value-of select="DS_LMS/@name"/>
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
                                                            <xsl:for-each select="DS_LMS/CommonHeader">
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
                                                <td></td>
                                                </tr>
                                        </table>
                                        <table width="100%" class="displayTable" border="0">
                                            <tr class="headTableXsl">
                                                <td  align="center" >
                                                     Arrangement Type
                                                </td>
                                                <td  align="center" >
                                                     Arrangement Type Description
                                                </td>
                                                <td  align="center" >
                                                    Lending Business Type
                                                </td>
                                                <td  align="center" >
                                                    Lending Business Type Description
                                                </td>
                                                <td align="center">
                                                     NPL Flag
                                                </td>
                                                <td  align="center" >
                                                     Movement Type
                                                </td>
                                                 <td  align="center" >
                                                     Movement Type Description
                                                </td>
                                                <td  align="center">
                                                     Movement Amount
                                                </td>
                                            </tr>


                                           <xsl:for-each select="DS_LMS">
                    		        <xsl:if test="MovementAmount018001 != ''">
                                            <tr>
                                                    <td class="labelXsl" align="center">
                                                         018001
                                                    </td>
                                                     <td class="labelXsl" align="left">
                                                         Account Arrangement
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                    <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <xsl:value-of select="format-number(MovementAmount018001,'###,##0.00')"/>
                                                        </span>
                                                    </td>
                                                </tr>
                                            </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS">
                               		  <xsl:if test="MovementAmount018002 != ''">
                                             <tr>
                                                    <td class="labelXsl" align="center">
                                                         018002
                                                    </td>
                                                     <td class="labelXsl subOne" align="left">
                                                         เงินให้สินเชื่อ
                                                    </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <xsl:value-of select="format-number(MovementAmount018002,'###,##0.00')"/>
                                                        </span>
                                                    </td>
                                                </tr>
                                             </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                            <xsl:if test="ArrangementType = '018003'">
                                                  <tr>
                                                    <td class="labelXsl" align="center">
                                                         018003
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                         เงินเบิกเกินบัญชี
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS">
                               	<xsl:if test="MovementAmount018004 != ''">
                                            <tr>
                                                    <td class="labelXsl" align="center">
                                                         018004
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                         เงินให้กู้ยืม
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <xsl:value-of select="format-number(MovementAmount018004,'###,##0.00')"/>
                                                        </span>
                                                    </td>
                                                </tr>
                                            </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                <xsl:if test="ArrangementType = '018005'">
                                                  <tr>
                                                    <td class="labelXsl" align="center">
                                                        018011

                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                         เงินให้สินเชื่อเพื่อเตรียมการส่งออก
                                                    </td>
                                                      <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                </xsl:if>
                                                </xsl:for-each>
                                             <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                <xsl:if test="ArrangementType = '018011'">
                                                  <tr>
                                                    <td class="labelXsl" align="center">
                                                        018011

                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                         สินเชื่อบัตรเครดิต
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                </xsl:if>
                                                 </xsl:for-each>
                                             <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                <xsl:if test="ArrangementType = '018012'">
                                                  <tr>
                                                    <td class="labelXsl" align="center">
                                                         018012
                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                         เงินให้กู้ยืมเพื่อการเคหะ
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                </xsl:if>
                                                 </xsl:for-each>
                                             <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018013'">
                                                  <tr>
                                                    <td class="labelXsl" align="center">
                                                         018013
                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                         การให้กู้ยืมโดยรับโอนลูกหนี้ (Factoring)
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS">
                               	                <xsl:if test="MovementAmount018014 != ''">
                                            <tr>
                                                    <td class="labelXsl" align="center">
                                                         018014
                                                    </td>
                                                     <td class="labelXsl SubThree" align="left">
                                                        ลูกหนี้
                                                    </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <xsl:value-of select="format-number(MovementAmount018014,'###,##0.00')"/>
                                                            <!--<xsl:value-of select="DS_LMS/MovementAmount018014"/>-->
                                                        </span>
                                                    </td>
                                                </tr>

                                                </xsl:if>
                                            </xsl:for-each>
                                                <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018015'">
                                                  <tr>
                                                    <td class="labelXsl" align="center">
                                                        018015

                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                        ลูกหนี้ตามสัญญารับซื้อฝาก
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018016'">
                                                  <tr>
                                                    <td class="labelXsl" align="center">
                                                        018016

                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                        	ลูกหนี้เช่าซื้อ (Hire Purchase)
                                                    </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018017'">
                                                  <tr>
                                                    <td class="labelXsl" align="center">
                                                        018017

                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                        	ลูกหนี้ตามสัญญาเช่า (Leasing)
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018018'">
                                                  <tr>
                                                    <td class="labelXsl" align="center">
                                                        018018
                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                        	ลูกหนี้ตามธุรกรรมสัญญาซื้อคืน
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018019'">
                                                  <tr>
                                                    <td class="labelXsl" align="center">
                                                        018019
                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                        		ลูกหนี้ตามธุรกรรม SBL
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018020'">
                                                  <tr>
                                                    <td class="labelXsl" align="center">
                                                        018020
                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                        		ลูกหนี้อื่น ๆ
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018021'">
                                                  <tr>
                                                    <td class="labelXsl" align="center">
                                                        018021
                                                    </td>
                                                     <td class="labelXsl SubThree" align="left">
                                                        	เงินให้กู้ยืมร่วม (Syndicated Loan)
                                                    </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                </xsl:if>
                                            </xsl:for-each>
                                             <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018022'">
                                                  <tr>
                                                    <td class="labelXsl" align="center">
                                                        018022
                                                    </td>
                                                     <td class="labelXsl SubThree" align="left">
                                                        	เงินให้สินเชื่ออื่น
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                </xsl:if>
                                            </xsl:for-each>
                                             <xsl:for-each select="DS_LMS">
                               	<xsl:if test="MovementAmount018023 != ''">
                                             <tr>
                                                    <td class="labelXsl" align="center">
                                                        018023
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                        	ตั๋วเงิน
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                  <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <xsl:value-of select="format-number(MovementAmount018023,'###,##0.00')"/>
                                                            <!--<xsl:value-of select="DS_LMS/MovementAmount018023"/>-->
                                                        </span>
                                                    </td>
                                                </tr>
                                            </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018024'">
                                                <tr>
                                                    <td class="labelXsl" align="center">
                                                         018024
                                                    </td>
                                                     <td class="labelXsl SubThree" align="left">
                                                        	ตั๋วเงินในประเทศ
                                                    </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                            </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018025'">
                                                  <tr>
                                                    <td class="labelXsl" align="center">
                                                        018025
                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                        	ตั๋วเงินค่าสินค้า
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018026'">
                                                  <tr>
                                                    <td class="labelXsl" align="center">
                                                        018026

                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                        		ตั๋วเงินอื่น ๆ
                                                    </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018027'">
                                            <tr>
                                                    <td class="labelXsl" align="center">
                                                        018027

                                                    </td>
                                                     <td class="labelXsl SubThree" align="left">
                                                        	ตั๋วเงินต่างประเทศ
                                                    </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>

                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018028'">
                                            <tr>
                                                    <td class="labelXsl" align="center">
                                                        018028
                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                        	ตั๋วเงินค่าสินค้าเข้าที่ครบกำหนด
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                             <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018029'">
                                            <tr>
                                                    <td class="labelXsl" align="center">
                                                        018029
                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                        	ตั๋วเงินค่าสินค้าเข้าที่ทำทรัสต์รีซีท
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018030'">
                                            <tr>
                                                    <td class="labelXsl" align="center">
                                                        018030

                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                        	ตั๋วเงินค่าสินค้าออก
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018031'">
                                            <tr>
                                                    <td class="labelXsl" align="center">
                                                        018031
                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                        	ตั๋วเงินต่างประเทศอื่น ๆ
                                                    </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                             <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018114 '">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018114
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                        	อื่น ๆ
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS">
                               	<xsl:if test="MovementAmount018114 != ''">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018114
                                                    </td>
                                                     <td class="labelXsl SubThree" align="left">
                                                        	เงินที่ได้จ่ายหรือสั่งให้จ่ายเพื่อประโยชน์ของลูกค้า
                                                    </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                  <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <xsl:value-of select="format-number(MovementAmount018114,'###,##0.00')"/>
                                                            <!--<xsl:value-of select="DS_LMS/MovementAmount018114"/>-->
                                                        </span>
                                                    </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                           <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018007'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018007

                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                        	เงินชดใช้ตามภาระการรับรอง
                                                    </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                             <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018008'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018008
                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                        	เงินชดใช้ตามภาระการอาวัล
                                                    </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                             <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018009'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018009

                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                        	เงินชดใช้ตามภาระการออกหนังสือค้ำประกัน
                                                    </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018010'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018010
                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                        	เงินที่ได้จ่ายหรือสั่งให้จ่ายเพื่อประโยชน์ของผู้เคยค้าอื่นๆ
                                                    </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS">
                               	            <xsl:if test="MovementAmount018032 != ''">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018032
                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                        	Borrowing
                                                    </td>
                                                  <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <xsl:value-of select="format-number(MovementAmount018032,'###,##0.00')"/>
                                                            <!--<xsl:value-of select="DS_LMS/MovementAmount018032"/>-->
                                                        </span>
                                                    </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS">
                               	<xsl:if test="MovementAmount018033 != ''">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018033
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                        Term
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                  <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <xsl:value-of select="format-number(MovementAmount018033,'###,##0.00')"/>
                                                            <!--<xsl:value-of select="DS_LMS/MovementAmount018033"/>-->
                                                        </span>
                                                    </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018093'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018093

                                                    </td>
                                                     <td class="labelXsl SubThree" align="left">
                                                        Debenture
                                                    </td>
                                                  <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                             <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018098'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018298
                                                    </td>
                                                     <td class="labelXsl SubThree" align="left">
                                                        Private Repo
                                                    </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018099'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018299
                                                    </td>
                                                     <td class="labelXsl SubThree" align="left">
                                                        Other Term
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018034'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018034

                                                    </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS">
                                            	<xsl:if test="MovementAmount018035 != ''">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018035
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                      Bill
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                  <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <xsl:value-of select="format-number(MovementAmount018035,'###,##0.00')"/>
                                                            <!--<xsl:value-of select="DS_LMS/MovementAmount018035"/>-->
                                                        </span>
                                                    </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018300'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018300
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                      Floating Rate Note (FRN)
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018301'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018301
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                     Other Bill
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS">
                               	                    <xsl:if test="TotalOutstandingAmount018037 != ''">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                         018037
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                        Deposit from Customer
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                  <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <xsl:value-of select="format-number(MovementAmount018037,'###,##0.00')"/>
                                                            <!--<xsl:value-of select="DS_LMS/MovementAmount018037"/>-->
                                                        </span>
                                                    </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                           <xsl:for-each select="DS_LMS">
                               	                    <xsl:if test="TotalOutstandingAmount018038 != ''">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                         018038
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                        Demand Deposit
                                                    </td>
                                                      <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                  <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <xsl:value-of select="format-number(MovementAmount018038,'###,##0.00')"/>
                                                            <!--<xsl:value-of select="DS_LMS/MovementAmount018038"/>-->
                                                        </span>
                                                    </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                             <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018039'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                          018039
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                        Current
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018040'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018040
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                        Saving / At Call
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                           <xsl:for-each select="DS_LMS">
                               	<xsl:if test="TotalOutstandingAmount018041 != ''">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018041
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                        Term Deposit
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                  <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <xsl:value-of select="format-number(MovementAmount018041,'###,##0.00')"/>
                                                            <!--<xsl:value-of select="DS_LMS/MovementAmount018041"/>-->
                                                        </span>
                                                    </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018042'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018042
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                       Fixed Deposit / Contractual Saving Deposit
                                                    </td>
                                                      <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018043'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018043
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                       Promissory Notes / Bill of Exchanges
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018044'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018044
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                       Negotiable Certificate of Deposit (NCD) / Floating Rate Certificate of Deposit (FRCD)
                                                    </td>
                                                      <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS">
                                                	<xsl:if test="TotalOutstandingAmount018045 != ''">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018045
                                                    </td>
                                                     <td class="labelXsl subOne" align="left">
                                                      FI Deposit
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                  <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <xsl:value-of select="format-number(MovementAmount018045,'###,##0.00')"/>
                                                            <!--<xsl:value-of select="DS_LMS/MovementAmount018045"/>-->
                                                        </span>
                                                    </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                           <xsl:for-each select="DS_LMS">
                               	<xsl:if test="TotalOutstandingAmount018046 != ''">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                         018046
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                      Demand Deposit
                                                    </td>
                                                      <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                  <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <xsl:value-of select="format-number(MovementAmount018046,'###,##0.00')"/>
                                                            <!--<xsl:value-of select="DS_LMS/MovementAmount018046"/>-->
                                                        </span>
                                                    </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018047'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                         018047
                                                    </td>
                                                     <td class="labelXsl SubThere" align="left">
                                                      Current
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018048'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                      018048
                                                    </td>
                                                     <td class="labelXsl SubThere" align="left">
                                                      Saving  / At Call
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS">
                                           <xsl:if test="TotalOutstandingAmount018049 != ''">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                      018049
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                     Term Deposit
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                  <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <xsl:value-of select="format-number(MovementAmount018049,'###,##0.00')"/>
                                                            <!--<xsl:value-of select="DS_LMS/MovementAmount018049"/>-->
                                                        </span>
                                                    </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018302'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018302
                                                    </td>
                                                     <td class="labelXsl SubThere" align="left">
                                                     Fixed Deposit / Contractual Saving Deposit
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                    <td class="labelXsl" align="center">
                                                        <xsl:value-of select="ArrangementCurrencyFlag"/>
                                                    </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                             <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018303'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018303
                                                    </td>
                                                     <td class="labelXsl SubThere" align="left">
                                                     Promissory Notes / Bill of Exchanges
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                    <td class="labelXsl" align="center">
                                                        <xsl:value-of select="ArrangementCurrencyFlag"/>
                                                    </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018304'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018304
                                                    </td>
                                                     <td class="labelXsl SubThere" align="left">
                                                         Negotiable Certificate of Deposit (NCD) / Floating Rate Certificate of Deposit (FRCD)
                                                    </td>
                                                  <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS">
                               	<xsl:if test="TotalOutstandingAmount018050 != ''">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018050
                                                    </td>
                                                     <td class="labelXsl subOne" align="left">
                                                         สินทรัพย์อื่นที่เกี่ยวข้อง
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <xsl:value-of select="format-number(MovementAmount018050,'###,##0.00')"/>
                                                            <!--<xsl:value-of select="DS_LMS/MovementAmount018050"/>-->
                                                        </span>
                                                    </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018051'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018051
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                         ดอกเบี้ยค้างรับ
                                                    </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018052'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018052

                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                         เงินทดรองจ่ายดำเนินคดี
                                                    </td>
                                                      <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018052'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018053
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                         เงินทดรองจ่ายค่าเบี้ยประกันภัย
                                                    </td>
                                                      <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                                 <xsl:for-each select="DS_LMS">
                               	<xsl:if test="TotalOutstandingAmount018055 != ''">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018055
                                                    </td>
                                                     <td class="labelXsl subOne" align="left">
                                                         ภาระผูกพัน
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                  <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <xsl:value-of select="format-number(MovementAmount018055,'###,##0.00')"/>
                                                            <!--<xsl:value-of select="DS_LMS/MovementAmount018055"/>-->
                                                        </span>
                                                    </td>
                                                </tr>
                                            </xsl:if>
                                            </xsl:for-each>
                                               <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018056'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018056
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                         การรับอาวัลตั๋วเงิน
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018057'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018057

                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                         การรับรองตั๋วเงิน
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018058'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018058
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                         การสอดเข้าแก้หน้าในตั๋วเงิน
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                             <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018059'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018059
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                         การค้ำประกันการกู้ยืมเงิน
                                                    </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018060'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018060
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                         การค้ำประกันการขาย ขายลด หรือขายช่วงลดตั๋วเงิน
                                                    </td>
                                                      <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018061'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018061
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                       สัญญาหรือข้อตกลงรับความเสี่ยง
                                                    </td>
                                                  <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018062'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018062
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                       การสลักหลังตั๋วเงินที่ผู้รับสลักหลังมีสิทธิไล่เบี้ย (With Recourse)
                                                    </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018063'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018063
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                       การขายลูกหนี้ตั๋วเงิน
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                             <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018064'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018064
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                       สัญญาซื้อสินทรัพย์ล่วงหน้า
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018065'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018065
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                       หลักทรัพย์ค้างชำระ
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018066'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018066
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                       สัญญาขายตราสารโดยมีเงื่อนไขจะซื้อคืน
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018067'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018067
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                       สัญญายืมและให้ยืมหลักทรัพย์
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018068'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018068
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                       การค้ำประกัน การรับประกัน หรือการก่อภาระผูกพันอันเนื่องมาจากการขายสินทรัพย์
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018069'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018069
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                       การค้ำประกันการกู้ยืมเงินในลักษณะอื่น ซึ่งจะต้องชำระหนี้แทนโดยปราศจากเงื่อนไข
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                             <xsl:for-each select="DS_LMS">
                               	<xsl:if test="TotalOutstandingAmount018280 != ''">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018280
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                       ภาระผูกพันซึ่งขึ้นกับการดำเนินงานของลูกค้า
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <xsl:value-of select="format-number(MovementAmount018280,'###,##0.00')"/>
                                                            <!--<xsl:value-of select="DS_LMS/MovementAmount018280"/>-->
                                                        </span>
                                                    </td>
                                                </tr>
                                            </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018070'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018070
                                                    </td>
                                                     <td class="labelXsl SubThree" align="left">
                                                       การค้ำประกันการปฏิบัติตามสัญญา
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018071'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018071
                                                    </td>
                                                     <td class="labelXsl SubThree" align="left">
                                                       การค้ำประกันการยื่นซองประกวดราคา
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018281'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018281
                                                    </td>
                                                     <td class="labelXsl SubThree" align="left">
                                                       การค้ำประกันค่าน้ำ ค่าไฟฟ้า
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018073'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018073
                                                    </td>
                                                     <td class="labelXsl SubThree" align="left">
                                                       ภาระผูกพันอื่น ๆซึ่งขึ้นอยู่กับผลการดำเนินงานของลูกค้า
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018072'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018072
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                      การค้ำประกันการจำหน่ายตราสาร หรือ หลักทรัพย์แบบ   Firm Underwriting
                                                    </td>
                                                      <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018286'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018286
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                      ภาระผูกพันอื่น ๆ ที่มีค่า CCF 0.5
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                             <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018078'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018078
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                      ภาระตามตั๋วเงินค่าสินค้าเข้าที่ยังไม่ครบกำหนด
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018079'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018079
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                      ภาระผูกพันตามเล็ตเตอร์ออฟเครดิตเพื่อการนำสินค้าเข้า
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018074'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018074
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                      ตั๋วเงินเพื่อเรียกเก็บ
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018075'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018075
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                      วงเงินที่ลูกค้ายังไม่ได้ใช้
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018076'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018076
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                      การค้ำประกันการออกของ (Shipping Guarantee)
                                                    </td>
                                                      <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                             <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018077'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018077
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                      ภาระผูกพันที่สามารถบอกเลิกสัญญาได้
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                             <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018080'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018080
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                      ตราสารอนุพันธ์
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS">
                               	<xsl:if test="TotalOutstandingAmount018081 != ''">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018081
                                                    </td>
                                                     <td class="labelXsl SubThree" align="left">
                                                      อนุพันธ์ด้านอัตราแลกเปลี่ยน
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <xsl:value-of select="format-number(MovementAmount018081,'###,##0.00')"/>
                                                            <!--<xsl:value-of select="DS_LMS/MovementAmount018081"/>-->
                                                        </span>
                                                    </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018082'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018082
                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                      Foreign Exchange Forward Contracts
                                                    </td>
                                                       <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                             <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018083'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018083
                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                      Foreign Exchange Futures
                                                    </td>
                                                       <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                             <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018084'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018084
                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                      Currency Options Purchase
                                                    </td>
                                                      <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018085'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018085
                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                      Cross Currency Interest Swaps
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018086'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018086
                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                      Others
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                             <xsl:for-each select="DS_LMS">
                               	<xsl:if test="TotalOutstandingAmount018087 != ''">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018087
                                                    </td>
                                                     <td class="labelXsl SubThree" align="left">
                                                      อนุพันธ์ด้านอัตราดอกเบี้ย
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                  <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <xsl:value-of select="format-number(MovementAmount018087,'###,##0.00')"/>
                                                            <!--<xsl:value-of select="DS_LMS/MovementAmount018087"/>-->
                                                        </span>
                                                    </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018088'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018088
                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                      Interest Rate Options Purchase
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018089'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018089
                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                      Interest Rate Futures
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018090'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018090
                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                      Interest Rate Swaps
                                                    </td>
                                                      <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018091'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018091
                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                      Forward Rate Agreements
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018092'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018092
                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                      Others
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018319'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018319
                                                    </td>
                                                     <td class="labelXsl SubThree" align="left">
                                                      อนุพันธ์ด้านตราสารหนี้
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018320'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018320
                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                      Bond Forwards
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018321'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018321
                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                      Bond Futures
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018322'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018322
                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                      Bond Options Purchase
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018323'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018323
                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                      Others
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS">
                               	<xsl:if test="TotalOutstandingAmount018305 != ''">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018305
                                                    </td>
                                                     <td class="labelXsl SubThree" align="left">
                                                      อนุพันธ์ด้านตราสารทุน
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <xsl:value-of select="format-number(MovementAmount018305,'###,##0.00')"/>
                                                            <!--<xsl:value-of select="DS_LMS/MovementAmount018305"/>-->
                                                        </span>
                                                    </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018324'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018324
                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                      Equity Forwards
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018306'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018306
                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                      Equity Futures
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018307'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018307
                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                      Equity Options Purchase
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018308'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018308
                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                      Equity Linked Swaps
                                                    </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018309'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018309
                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                      Others
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS">
                               	<xsl:if test="TotalOutstandingAmount018310 != ''">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018310
                                                    </td>
                                                     <td class="labelXsl SubThree" align="left">
                                                      อนุพันธ์ด้านสินค้าโภคภัณฑ์
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                  <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <xsl:value-of select="format-number(MovementAmount018310,'###,##0.00')"/>
                                                        </span>
                                                    </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018311'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018311
                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                      Commodity Forwards
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018312'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018312
                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                      Commodity Futures
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018313'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018313
                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                      Commodity Options Purchase
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018314'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018314
                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                      Commodity Swaps
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018315'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018315
                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                      Others
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS">
                               	<xsl:if test="TotalOutstandingAmount018316 = ''">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018316
                                                    </td>
                                                     <td class="labelXsl SubThree" align="left">
                                                      อนุพันธ์ด้านเครดิต
                                                    </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                  <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <xsl:value-of select="format-number(MovementAmount018316,'###,##0.00')"/>
                                                            <!--<xsl:value-of select="DS_LMS/MovementAmount018316"/>-->
                                                        </span>
                                                    </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018317'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018317
                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                      Credit Default Swaps ในบัญชีเพื่อการค้า
                                                    </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018325'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018325
                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                      First to Default Products ในบัญชีเพื่อการค้า
                                                    </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018326'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018326
                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                     Total Rate of Return Swaps
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018318'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018318
                                                    </td>
                                                     <td class="labelXsl SubFour" align="left">
                                                     Other
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>

                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018094'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018094
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                     ภาระผูกพันอื่น
                                                    </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                             <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018095'">
                                             <tr>
                                                    <td class="labelXsl" align="center">
                                                      018095
                                                    </td>
                                                     <td class="labelXsl" align="left">
                                                     Foreign Currency Lending
                                                    </td>
                                                      <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                            </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS">
                               	<xsl:if test="TotalOutstandingAmount018096 != ''">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018096
                                                    </td>
                                                     <td class="labelXsl" align="left">
                                                       Foreign Currency Borrowing
                                                    </td>
                                                      <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                  <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <xsl:value-of select="format-number(MovementAmount018096,'###,##0.00')"/>
                                                            <!--<xsl:value-of select="DS_LMS/MovementAmount018096"/>-->
                                                        </span>
                                                    </td>
                                                </tr>
                                            </xsl:if>
                                            </xsl:for-each>
                                                <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018097'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018097
                                                    </td>
                                                     <td class="labelXsl subOne" align="left">
                                                     Term
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018098'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018098
                                                    </td>
                                                     <td class="labelXsl subOne" align="left">
                                                     Banker's Acceptance
                                                    </td>
                                                      <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS">
                               	<xsl:if test="TotalOutstandingAmount018099 != ''">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018099
                                                    </td>
                                                     <td class="labelXsl" align="left">
                                                     Foreign Exchange
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                  <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <xsl:value-of select="format-number(MovementAmount018099,'###,##0.00')"/>
                                                            <!--<xsl:value-of select="DS_LMS/MovementAmount018099"/>-->
                                                        </span>
                                                    </td>
                                                </tr>
                                            </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS">
                               	<xsl:if test="TotalOutstandingAmount018100 != ''">
                                            <tr>
                                                    <td class="labelXsl" align="center">
                                                        018100
                                                    </td>
                                                     <td class="labelXsl subOne" align="left">
                                                     Spot
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <xsl:value-of select="format-number(MovementAmount018100,'###,##0.00')"/>
                                                            <!--<xsl:value-of select="DS_LMS/MovementAmount018100"/>-->
                                                        </span>
                                                    </td>
                                                </tr>
                                            </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018101'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018101
                                                    </td>
                                                     <td class="labelXsl subTwo" align="left">
                                                     Today
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018102'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018102
                                                    </td>
                                                     <td class="labelXsl subTwo" align="left">
                                                     Tomorrow
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018103'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018103
                                                    </td>
                                                     <td class="labelXsl subTwo" align="left">
                                                     Next
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018104'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                     018104
                                                    </td>
                                                     <td class="labelXsl subOne" align="left">
                                                     Forward
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS">
                               	<xsl:if test="TotalOutstandingAmount018105 != ''">
                                            <tr>
                                                    <td class="labelXsl" align="center">
                                                        018105
                                                    </td>
                                                     <td class="labelXsl subOne" align="left">
                                                     Swap
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <xsl:value-of select="format-number(MovementAmount018105,'###,##0.00')"/>
                                                            <!--<xsl:value-of select="DS_LMS/MovementAmount018105"/>-->
                                                        </span>
                                                    </td>
                                                </tr>
                                            </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018106'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018106
                                                    </td>
                                                     <td class="labelXsl subTwo" align="left">
                                                     Buy Swap
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018107'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018107
                                                    </td>
                                                     <td class="labelXsl subTwo" align="left">
                                                     Sell Swap
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS">
                               	<xsl:if test="TotalOutstandingAmount018108 != ''">
                                            <tr>
                                                    <td class="labelXsl" align="center">
                                                        018108
                                                    </td>
                                                     <td class="labelXsl" align="left">
                                                     Trading
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <xsl:value-of select="format-number(MovementAmount018108,'###,##0.00')"/>
                                                            <!--<xsl:value-of select="DS_LMS/MovementAmount018108"/>-->
                                                        </span>
                                                    </td>
                                                </tr>
                                            </xsl:if>
                                            </xsl:for-each>
                                                <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018109'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018109
                                                    </td>
                                                     <td class="labelXsl subOne" align="left">
                                                     Futures
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                           <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018110'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018110
                                                    </td>
                                                     <td class="labelXsl subOne" align="left">
                                                     Cross Currency Swap
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018111'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018111
                                                    </td>
                                                     <td class="labelXsl subOne" align="left">
                                                     Interest Rate Swap
                                                    </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018112'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018112
                                                    </td>
                                                     <td class="labelXsl subOne" align="left">
                                                     Forward Rate Agreements (FRA)
                                                    </td>
                                                    <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_LMS/DS_LMS_Content/ContentRecordGroup">
                                                 <xsl:if test="ArrangementType = '018113'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018113
                                                    </td>
                                                     <td class="labelXsl subOne" align="left">
                                                     Options
                                                    </td>
                                                     <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="LendingBusinessTypeValue"/>
                                                </td>
                                                <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="NplFlag"/>
                                                </td>
                                                   <td  align="center" class="labelXsl">
                                                      <xsl:value-of select="MovementType"/>
                                                </td>
                                                <td  align="left" class="labelXsl">
                                                      <xsl:value-of select="MovementTypeValue"/>
                                                </td>
                                                 <td  align="right" class="labelXsl">
                                                   <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                </td>
                                                </tr>
                                                 </xsl:if>
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
