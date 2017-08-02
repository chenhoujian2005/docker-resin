<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
         <html>
            <head>
                <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            </head>
            <body>


                                        <table class="displayTable" width="100%" border="1">
                                            <tr>
                                                <td class="bgGreen" width="20%">Organization ID :</td>
                                                <td width="15%" colspan="2">
                                                    <xsl:for-each select="DS_AMS/CommonHeader">
                                                        <xsl:value-of select="OrganizationId"/>
                                                    </xsl:for-each>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="bgGreen">FI Reporting Group ID :</td>
                                                <!-- bgcolor="#9acd32"-->
                                                <td colspan="2">
                                                    116003 - ชุดรวมทุกสำนักงานในประเทศ
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="bgGreen">Data Set Type :</td>
                                                <td colspan="2">
                                                    <xsl:value-of select="DS_AMS/@name"/>
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
                                                            <xsl:for-each select="DS_AMS/CommonHeader">
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
                                                <td colspan="8" width="100%" align="center">Arrangement Movement Summary
                                                </td>
                                            </tr>
                                            <tr class="headTableXsl">
                                                <td >Arrangement Type</td>
                                                <td >Arrangement Type Description</td>
                                                <td>Involved Party Type</td>
                                                <td>Involved Party Type Description</td>
                                                <td>Arrangement Term Range</td>
                                                <td>Movement Amount Type</td>
                                                <td>Currency Flag</td>
                                                <td>Movement Amount</td>
                                            </tr>
                                            <xsl:for-each select="DS_AMS">
                                            <xsl:if test="MovementAmount018001 != ''">
                                            <tr>
                                                    <td class="labelXsl" align="center">
                                                         018001
                                                    </td>
                                                     <td class="labelXsl" align="left">
                                                         Account Arrangement
                                                    </td>
                                                      <td class="labelXsl"  align="center">
                                                        <xsl:value-of select="InvolvedPartyType"/>
                                                    </td>
                                                    <td class="labelXsl"  align="left">
                                                        <xsl:value-of select="InvolvedPartyTypeValue"/>
                                                    </td>
                                                    <td class="labelXsl"  align="center">
                                                        <xsl:value-of select="ArrangementTermRangeValue"/>
                                                    </td>
                                                    <td class="labelXsl"  align="center">
                                                        <xsl:value-of select="MovementAmountTypeValue"/>
                                                    </td>
                                                    <td class="labelXsl" align="center">
                                                        <xsl:value-of select="ArrangementCurrencyFlag"/>
                                                    </td>
                                                    <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <xsl:value-of select="format-number(MovementAmount018001,'###,##0.00')"/>
                                                        </span>
                                                    </td>
                                                </tr>
                                             </xsl:if>
                                            </xsl:for-each>
                                             <xsl:for-each select="DS_AMS">
                                            <xsl:if test="MovementAmount018002 != ''">
                                             <tr>
                                                    <td class="labelXsl" align="center">
                                                         018002
                                                    </td>
                                                     <td class="labelXsl subOne" align="left">
                                                         เงินให้สินเชื่อ
                                                    </td>
                                                    <td class="labelXsl"  align="center">
                                                        <xsl:value-of select="InvolvedPartyType"/>
                                                    </td>
                                                    <td class="labelXsl"  align="left">
                                                        <xsl:value-of select="InvolvedPartyTypeValue"/>
                                                    </td>
                                                    <td class="labelXsl"  align="center">
                                                        <xsl:value-of select="ArrangementTermRangeValue"/>
                                                    </td>
                                                    <td class="labelXsl"  align="center">
                                                        <xsl:value-of select="MovementAmountTypeValue"/>
                                                    </td>
                                                    <td class="labelXsl" align="center">
                                                        <xsl:value-of select="ArrangementCurrencyFlag"/>
                                                    </td>
                                                <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <xsl:value-of select="format-number(MovementAmount018002,'###,##0.00')"/>
                                                        </span>
                                                    </td>
                                                </tr>
                                               </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_AMS/DS_AMS_Content/ContentRecordGroup/DataGroupInfo/DataGroupDetails">
                                            <xsl:if test="ArrangementType = '018003'">
                                                  <tr>
                                                    <td class="labelXsl" align="center">
                                                         018003
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                         เงินเบิกเกินบัญชี
                                                    </td>
                                                     <td class="labelXsl"  align="center">
                                                        <xsl:value-of select="InvolvedPartyType"/>
                                                    </td>
                                                    <td class="labelXsl"  align="left">
                                                        <xsl:value-of select="InvolvedPartyTypeValue"/>
                                                    </td>
                                                    <td class="labelXsl"  align="center">
                                                        <xsl:value-of select="ArrangementTermRangeValue"/>
                                                    </td>
                                                    <td class="labelXsl"  align="center">
                                                        <xsl:value-of select="MovementAmountTypeValue"/>
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
                                            <xsl:for-each select="DS_AMS/DS_AMS_Content/ContentRecordGroup/DataGroupInfo/DataGroupDetails">
                                                <xsl:if test="ArrangementType = '018004'">
                                            <tr>
                                                    <td class="labelXsl" align="center">
                                                         018004
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                         เงินให้กู้ยืม
                                                    </td>
                                                    <td class="labelXsl"  align="center">
                                                        <xsl:value-of select="InvolvedPartyType"/>
                                                    </td>
                                                    <td class="labelXsl"  align="left">
                                                        <xsl:value-of select="InvolvedPartyTypeValue"/>
                                                    </td>
                                                    <td class="labelXsl"  align="center">
                                                        <xsl:value-of select="ArrangementTermRangeValue"/>
                                                    </td>
                                                    <td class="labelXsl"  align="center">
                                                        <xsl:value-of select="MovementAmountTypeValue"/>
                                                    </td>
                                                    <td class="labelXsl" align="center">
                                                        <xsl:value-of select="ArrangementCurrencyFlag"/>
                                                    </td>
                                                 <td class="labelXsl" align="right">

                                                            <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>

                                                    </td>
                                                </tr>
                                            </xsl:if>
                                                </xsl:for-each>
                                             <xsl:for-each select="DS_AMS/DS_AMS_Content/ContentRecordGroup/DataGroupInfo/DataGroupDetails">
                                                 <xsl:if test="ArrangementType = '018006'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018114
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                        	อื่น ๆ
                                                    </td>
                                                     <td class="labelXsl"  align="center">
                                                        <xsl:value-of select="InvolvedPartyType"/>
                                                    </td>
                                                    <td class="labelXsl"  align="left">
                                                        <xsl:value-of select="InvolvedPartyTypeValue"/>
                                                    </td>
                                                    <td class="labelXsl"  align="center">
                                                        <xsl:value-of select="ArrangementTermRangeValue"/>
                                                    </td>
                                                    <td class="labelXsl"  align="center">
                                                        <xsl:value-of select="MovementAmountTypeValue"/>
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
                                            <xsl:for-each select="DS_AMS">
                                                 <xsl:if test="MovementAmount018032 != '' ">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018032
                                                    </td>
                                                     <td class="labelXsl SubOne" align="left">
                                                        Borrowing
                                                    </td>
                                                     <td class="labelXsl"  align="center">
                                                    </td>
                                                    <td class="labelXsl"  align="left">
                                                    </td>
                                                    <td class="labelXsl"  align="center">
                                                    </td>
                                                    <td class="labelXsl"  align="center">
                                                    </td>
                                                    <td class="labelXsl" align="center">
                                                    </td>
                                                  <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                             <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount018032,'###,##0.00')"/></span>
                                                        </span>
                                                    </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_AMS/DS_AMS_Content/ContentRecordGroup/DataGroupInfo/DataGroupDetails">
                                                 <xsl:if test="ArrangementType = '018033' ">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018033
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                        Term
                                                    </td>
                                                     <td class="labelXsl"  align="center">
                                                        <xsl:value-of select="InvolvedPartyType"/>
                                                    </td>
                                                    <td class="labelXsl"  align="left">
                                                        <xsl:value-of select="InvolvedPartyTypeValue"/>
                                                    </td>
                                                    <td class="labelXsl"  align="center">
                                                        <xsl:value-of select="ArrangementTermRangeValue"/>
                                                    </td>
                                                    <td class="labelXsl"  align="center">
                                                        <xsl:value-of select="MovementAmountTypeValue"/>
                                                    </td>
                                                    <td class="labelXsl" align="center">
                                                        <xsl:value-of select="ArrangementCurrencyFlag"/>
                                                    </td>
                                                  <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                             <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                        </span>
                                                    </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_AMS/DS_AMS_Content/ContentRecordGroup/DataGroupInfo/DataGroupDetails">
                                                 <xsl:if test="ArrangementType = '018034'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018034

                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                        	O/D
                                                    </td>
                                                     <td class="labelXsl"  align="center">
                                                        <xsl:value-of select="InvolvedPartyType"/>
                                                    </td>
                                                    <td class="labelXsl"  align="left">
                                                        <xsl:value-of select="InvolvedPartyTypeValue"/>
                                                    </td>
                                                    <td class="labelXsl"  align="center">
                                                        <xsl:value-of select="ArrangementTermRangeValue"/>
                                                    </td>
                                                    <td class="labelXsl"  align="center">
                                                        <xsl:value-of select="MovementAmountTypeValue"/>
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
                                            <xsl:for-each select="DS_AMS/DS_AMS_Content/ContentRecordGroup/DataGroupInfo/DataGroupDetails">
                                                 <xsl:if test="ArrangementType = '018035'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018035
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                      Bill
                                                    </td>
                                                      <td class="labelXsl"  align="center">
                                                        <xsl:value-of select="InvolvedPartyType"/>
                                                    </td>
                                                    <td class="labelXsl"  align="left">
                                                        <xsl:value-of select="InvolvedPartyTypeValue"/>
                                                    </td>
                                                    <td class="labelXsl"  align="center">
                                                        <xsl:value-of select="ArrangementTermRangeValue"/>
                                                    </td>
                                                    <td class="labelXsl"  align="center">
                                                        <xsl:value-of select="MovementAmountTypeValue"/>
                                                    </td>
                                                    <td class="labelXsl" align="center">
                                                        <xsl:value-of select="ArrangementCurrencyFlag"/>
                                                    </td>
                                                  <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                        </span>
                                                    </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_AMS">
                                                 <xsl:if test="MovementAmount018037 != ''">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                         018037
                                                    </td>
                                                     <td class="labelXsl SubOne" align="left">
                                                        Deposit from Customer
                                                    </td>
                                                      <td class="labelXsl"  align="center">
                                                        <xsl:value-of select="InvolvedPartyType"/>
                                                    </td>
                                                    <td class="labelXsl"  align="left">
                                                        <xsl:value-of select="InvolvedPartyTypeValue"/>
                                                    </td>
                                                    <td class="labelXsl"  align="center">
                                                        <xsl:value-of select="ArrangementTermRangeValue"/>
                                                    </td>
                                                    <td class="labelXsl"  align="center">
                                                        <xsl:value-of select="MovementAmountTypeValue"/>
                                                    </td>
                                                    <td class="labelXsl" align="center">
                                                        <xsl:value-of select="ArrangementCurrencyFlag"/>
                                                    </td>
                                                  <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount018037,'###,##0.00')"/></span>
                                                        </span>
                                                    </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_AMS/DS_AMS_Content/ContentRecordGroup/DataGroupInfo/DataGroupDetails">
                                                 <xsl:if test="ArrangementType = '018038'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                         018038
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                        Demand Deposit
                                                    </td>
                                                      <td class="labelXsl"  align="center">
                                                        <xsl:value-of select="InvolvedPartyType"/>
                                                    </td>
                                                    <td class="labelXsl"  align="left">
                                                        <xsl:value-of select="InvolvedPartyTypeValue"/>
                                                    </td>
                                                    <td class="labelXsl"  align="center">
                                                        <xsl:value-of select="ArrangementTermRangeValue"/>
                                                    </td>
                                                    <td class="labelXsl"  align="center">
                                                        <xsl:value-of select="MovementAmountTypeValue"/>
                                                    </td>
                                                    <td class="labelXsl" align="center">
                                                        <xsl:value-of select="ArrangementCurrencyFlag"/>
                                                    </td>
                                                  <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                        </span>
                                                    </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_AMS/DS_AMS_Content/ContentRecordGroup/DataGroupInfo/DataGroupDetails">
                                                 <xsl:if test="ArrangementType = '018041'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018041
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                        Term Deposit
                                                    </td>
                                                      <td class="labelXsl"  align="center">
                                                        <xsl:value-of select="InvolvedPartyType"/>
                                                    </td>
                                                    <td class="labelXsl"  align="left">
                                                        <xsl:value-of select="InvolvedPartyTypeValue"/>
                                                    </td>
                                                    <td class="labelXsl"  align="center">
                                                        <xsl:value-of select="ArrangementTermRangeValue"/>
                                                    </td>
                                                    <td class="labelXsl"  align="center">
                                                        <xsl:value-of select="MovementAmountTypeValue"/>
                                                    </td>
                                                    <td class="labelXsl" align="center">
                                                        <xsl:value-of select="ArrangementCurrencyFlag"/>
                                                    </td>
                                                  <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                        </span>
                                                    </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                          <xsl:for-each select="DS_AMS">
                                                <xsl:if test="MovementAmount018045 != '' ">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                        018045
                                                    </td>
                                                     <td class="labelXsl subOne" align="left">
                                                      FI Deposit
                                                    </td>
                                                     <td class="labelXsl"  align="center">
                                                        <xsl:value-of select="InvolvedPartyType"/>
                                                    </td>
                                                    <td class="labelXsl"  align="left">
                                                        <xsl:value-of select="InvolvedPartyTypeValue"/>
                                                    </td>
                                                    <td class="labelXsl"  align="center">
                                                        <xsl:value-of select="ArrangementTermRangeValue"/>
                                                    </td>
                                                    <td class="labelXsl"  align="center">
                                                        <xsl:value-of select="MovementAmountTypeValue"/>
                                                    </td>
                                                    <td class="labelXsl" align="center">
                                                        <xsl:value-of select="ArrangementCurrencyFlag"/>
                                                    </td>
                                                  <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount018045,'###,##0.00')"/></span>
                                                        </span>
                                                    </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_AMS/DS_AMS_Content/ContentRecordGroup/DataGroupInfo/DataGroupDetails">
                                                 <xsl:if test="ArrangementType = '018046'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                         018046
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                      Demand Deposit
                                                    </td>
                                                      <td class="labelXsl"  align="center">
                                                        <xsl:value-of select="InvolvedPartyType"/>
                                                    </td>
                                                    <td class="labelXsl"  align="left">
                                                        <xsl:value-of select="InvolvedPartyTypeValue"/>
                                                    </td>
                                                    <td class="labelXsl"  align="center">
                                                        <xsl:value-of select="ArrangementTermRangeValue"/>
                                                    </td>
                                                    <td class="labelXsl"  align="center">
                                                        <xsl:value-of select="MovementAmountTypeValue"/>
                                                    </td>
                                                    <td class="labelXsl" align="center">
                                                        <xsl:value-of select="ArrangementCurrencyFlag"/>
                                                    </td>
                                                  <td class="labelXsl" align="right">
                                                        <span style="color:#1500d4">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                        </span>
                                                    </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                            <xsl:for-each select="DS_AMS/DS_AMS_Content/ContentRecordGroup/DataGroupInfo/DataGroupDetails">
                                                 <xsl:if test="ArrangementType = '018049'">
                                                 <tr>
                                                    <td class="labelXsl" align="center">
                                                      018049
                                                    </td>
                                                     <td class="labelXsl SubTwo" align="left">
                                                     Term Deposit
                                                    </td>
                                                     <td class="labelXsl"  align="center">
                                                        <xsl:value-of select="InvolvedPartyType"/>
                                                    </td>
                                                    <td class="labelXsl"  align="left">
                                                        <xsl:value-of select="InvolvedPartyTypeValue"/>
                                                    </td>
                                                    <td class="labelXsl"  align="center">
                                                        <xsl:value-of select="ArrangementTermRangeValue"/>
                                                    </td>
                                                    <td class="labelXsl"  align="center">
                                                        <xsl:value-of select="MovementAmountTypeValue"/>
                                                    </td>
                                                    <td class="labelXsl" align="center">
                                                        <xsl:value-of select="ArrangementCurrencyFlag"/>
                                                    </td>
                                                  <td class="labelXsl" align="right">
                                                            <span style="color:#1500d4"><xsl:value-of select="format-number(MovementAmount,'###,##0.00')"/></span>
                                                    </td>
                                                </tr>
                                                 </xsl:if>
                                            </xsl:for-each>
                                        </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
