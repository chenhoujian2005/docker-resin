<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
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
                                        <table class="displayTable" width="50%">
                                            <tr>
                                                <td class="bgGreen" width="20%">Organization ID :  </td>
                                                <td width="15%" colspan="2">
                                                    <xsl:for-each select="DS_EBS/CommonHeader">
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
                                                    <xsl:value-of select="DS_EBS/@name"/>
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
                                                            <xsl:for-each select="DS_EBS/CommonHeader">
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
                                        <table width="100%" class="displayTable" border="0">
                                            <tr class="headTableXsl">
                                                <td width="20%" align="center" rowspan="4">
                                                     Month
                                                </td>
                                                <td width="80%" align="center" colspan="7">
                                                    Electronic Banking Service Type Group Info
                                                </td>
                                            </tr>
                                            <tr class="headTableXsl">
                                                <td rowspan="3">
                                                    Electronic Banking  Service Type
                                                </td>
                                                <td  colspan="7">Involved Party Group Info</td>
                                            </tr>
                                            <tr class="headTableXsl">
                                                <td rowspan="2" >Involved Party  Type</td>
                                                 <td rowspan="2" >Involved Party Type Description</td>
                                                <td rowspan="2">Number Of  Accounts</td>
                                                <td colspan="4">Transaction Type Group Info</td>
                                            </tr>
                                            <tr class="headTableXsl">
                                                <td >Transaction Type</td>
                                                <td >Number Of Transaction</td>
                                                <td>Transaction Value</td>
                                            </tr>
                                            <xsl:for-each select="DS_EBS/DS_EBS_Content/ContentRecordGroup">
                                            <tr>
                                                <td class="labelXsl" align="center" valign="top">
                                                    <xsl:choose>
                                                            <xsl:when test="Month = '1' or Month = '01'">มกราคม</xsl:when>
                                                            <xsl:when test="Month = '2' or Month = '02'">กุมภาพันธ์</xsl:when>
                                                            <xsl:when test="Month = '3' or Month = '03'">มีนาคม</xsl:when>
                                                            <xsl:when test="Month = '4' or Month = '04'">เมษายน</xsl:when>
                                                            <xsl:when test="Month = '5' or Month = '05'">พฤษภาคม</xsl:when>
                                                            <xsl:when test="Month = '6' or Month = '06'">มิถุนายน</xsl:when>
                                                            <xsl:when test="Month = '7' or Month = '07'">กรกฎาคม</xsl:when>
                                                            <xsl:when test="Month = '8' or Month = '08'">สิงหาคม</xsl:when>
                                                            <xsl:when test="Month = '9' or Month = '09'">กันยายน</xsl:when>
                                                            <xsl:when test="Month = '10'">ตุลาคม</xsl:when>
                                                            <xsl:when test="Month = '11'">พฤศจิกายน</xsl:when>
                                                            <xsl:when test="Month = '12'">ธันวาคม</xsl:when>
                                                            <xsl:otherwise>
                                                                 <xsl:if test="Month != 'NaN'"><xsl:value-of select="Month"/></xsl:if>
                                                            </xsl:otherwise>
                                                         </xsl:choose>
                                                </td>
                                                <td class="labelXsl" align="center" valign="top">
                                                    <table>
                                                        <xsl:for-each select="ElectronicBankingServiceTypeGroupInfo/ElectronicBankingServiceTypeGroupDetails">
                                                         <tr>
                                                            <td class="labelXsl" align="center" valign="top">
                                                               <xsl:value-of select="ElectronicBankingServiceTypeValue" />
                                                            </td>
                                                        </tr>
                                                        </xsl:for-each>
                                                    </table>
                                                </td>
                                               <td class="labelXsl" align="center">
                                                   <table>
                                                        <xsl:for-each select="ElectronicBankingServiceTypeGroupInfo/ElectronicBankingServiceTypeGroupDetails/InvolvedPartyGroupInfo/InvolvedPartyGroupDetails">
                                                         <tr>
                                                            <td class="labelXsl" align="left" valign="top">
                                                               <xsl:value-of select="InvolvedPartyType" />
                                                            </td>
                                                        </tr>
                                                        </xsl:for-each>
                                                    </table>
                                                </td>
                                                <td class="labelXsl" align="left">
                                                   <table>
                                                        <xsl:for-each select="ElectronicBankingServiceTypeGroupInfo/ElectronicBankingServiceTypeGroupDetails/InvolvedPartyGroupInfo/InvolvedPartyGroupDetails">
                                                         <tr>

                                                            <td class="labelXsl" align="left" valign="top">
                                                               <xsl:value-of select="InvolvedPartyTypeValue" />
                                                            </td>
                                                        </tr>
                                                        </xsl:for-each>
                                                    </table>
                                                </td>
                                                <td class="labelXsl" align="center" >
                                                   <table>
                                                        <xsl:for-each select="ElectronicBankingServiceTypeGroupInfo/ElectronicBankingServiceTypeGroupDetails/InvolvedPartyGroupInfo/InvolvedPartyGroupDetails">
                                                         <tr>
                                                             <td class="labelXsl" align="center" valign="top">
                                                                 <span style="color:#1500d4"><xsl:value-of select="format-number(NumberOfAccounts,'###,###,###,###,##0.00')" /></span>
                                                            </td>
                                                        </tr>
                                                        </xsl:for-each>
                                                    </table>
                                                </td>
                                                <td class="labelXsl" align="left">
                                                   <table>
                                                        <xsl:for-each select="ElectronicBankingServiceTypeGroupInfo/ElectronicBankingServiceTypeGroupDetails/InvolvedPartyGroupInfo/InvolvedPartyGroupDetails/TransactionTypeGroupInfo/TransactionTypeGroupDetails">
                                                         <tr>
                                                             <td class="labelXsl" align="left" valign="top">
                                                               <xsl:value-of select="TransactionTypeValue" />
                                                            </td>
                                                        </tr>
                                                        </xsl:for-each>
                                                    </table>
                                                </td>
                                                <td class="labelXsl" align="center" >
                                                   <table>
                                                        <xsl:for-each select="ElectronicBankingServiceTypeGroupInfo/ElectronicBankingServiceTypeGroupDetails/InvolvedPartyGroupInfo/InvolvedPartyGroupDetails/TransactionTypeGroupInfo/TransactionTypeGroupDetails">
                                                         <tr>
                                                             <td class="labelXsl" align="center" valign="top">
                                                                 <span style="color:#1500d4"><xsl:value-of select="format-number(NumberOfTransaction,'###,###,###,###,##0.00')" /></span>
                                                            </td>
                                                        </tr>
                                                        </xsl:for-each>
                                                    </table>
                                                </td>
                                                <td class="labelXsl" align="right" >
                                                   <table>
                                                        <xsl:for-each select="ElectronicBankingServiceTypeGroupInfo/ElectronicBankingServiceTypeGroupDetails/InvolvedPartyGroupInfo/InvolvedPartyGroupDetails/TransactionTypeGroupInfo/TransactionTypeGroupDetails">
                                                         <tr>
                                                             <td class="labelXsl" align="right" valign="top">
                                                               <span style="color:#1500d4"><xsl:value-of select="format-number(TransactionValue,'###,###,###,###,##0.00')" /></span>
                                                            </td>
                                                        </tr>
                                                        </xsl:for-each>
                                                    </table>
                                                </td>
                                            </tr>
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
