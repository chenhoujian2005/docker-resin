<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <xsl:variable name="name500001">ยอดสินเชื่อคงค้าง</xsl:variable>
            <xsl:variable name="name500002">ยอดสินเชื่อปล่อยสะสม</xsl:variable>
            <xsl:variable name="name500003">ยอดสินเชื่อปล่อยใหม่ในแต่ละเดือน</xsl:variable>
            <xsl:variable name="name500004">ยอดการชำระคืนรายเดือน</xsl:variable>
            <xsl:variable name="name500005">ยอดการชำระคืนสะสม</xsl:variable>
            <xsl:variable name="name500006">ยอดค้างชำระตั้งแต่ 3 เดือนขึ้นไป</xsl:variable>
            <xsl:variable name="name500007">จำนวนผู้ได้รับผลประโยชน์สะสม</xsl:variable>
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
                                                <td class="bgGreen" width="20%">Organization ID:</td>
                                                <td width="80%" colspan="3">
                                                    <xsl:value-of select="DS_GPP/CommonHeader/OrganizationId"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="20%" class="bgGreen">FI Reporting Group :</td>
                                                <td colspan="3">
                                                    116003 - ชุดรวมทุกสำนักงานในประเทศ
                                                </td>
                                            </tr>
                                            <tr>
                                                <td bgcolor="#D2FF92">Data Set Type :</td>
                                                <td width="80%" colspan="3">
                                                    <xsl:value-of select="DS_GPP/@name"/>
                                                </td>
                                            </tr>
                                            <!--<tr>-->
                                            <!--<td bgcolor="#D2FF92" width="20%">Branch Number :</td>-->
                                            <!--<td width="80%" colspan="3">-->
                                            <!--<xsl:value-of select="DS_GPP/DS_GPP_Content/ContentRecordGroup/BranchNumber"/>-->
                                            <!--</td>-->
                                            <!--</tr>-->
                                            <tr>
                                                <td class="bgGreen"></td>
                                                <td class="bgGreen" align="center">Day</td>
                                                <td class="bgGreen" align="center">Month</td>
                                                <td class="bgGreen" align="center">Year</td>
                                            </tr>
                                            <tr>
                                                <td class="bgGreen">Data Set Date :</td>
                                                <xsl:variable name="month">
                                                    <xsl:value-of
                                                            select="substring-after(substring-before(DataSetDate,'-'),'-')"/>
                                                </xsl:variable>
                                                <xsl:for-each select="DS_GPP/CommonHeader">
                                                    <td hight="15px" align="center">
                                                        <xsl:value-of select="substring(DataSetDate,9,2)"/>
                                                    </td>
                                                    <td hight="15px" align="center">
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
                                                            <xsl:when test="$mo = '9' or $mo = '09'">September
                                                            </xsl:when>
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
                                                    <td hight="15px" align="center">
                                                        <xsl:value-of select="substring(DataSetDate,1,4)"/>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>

                                        </table>
                                        <table class="displayTable" width="100%">
                                            <tr class="headTableXsl">
                                                <td align="center" colspan="3">Government Policy Project</td>
                                            </tr>
                                            <tr class="headTableXsl">
                                                <td align="center">Project Name</td>
                                                <td width="50%" align="center">Government Policy Project Item</td>
                                                <td width="50%" align="center">Amount</td>
                                            </tr>
                                            <xsl:for-each select="DS_GPP/DS_GPP_Content/ContentRecordGroup">
                                                <tr>
                                                    <td width="20%" align="center" class="labelXsl" valign="top">
                                                        <!-- <xsl:value-of select="ProjectName"/>  -->
                                                        <xsl:variable name="ProjectNameTmp" select="ProjectName"/>
                                                        <xsl:variable name="f_check"
                                                                      select="starts-with($ProjectNameTmp,'[')"/>

                                                        <xsl:choose>
                                                            <xsl:when test="$f_check = 'true'">
                                                                <xsl:variable name="ProjectNameTmp1"
                                                                              select="substring-before($ProjectNameTmp,']')"/>
                                                                <xsl:variable name="ProjectNameTmp2"
                                                                              select="substring-after($ProjectNameTmp1,'[')"/>
                                                                <xsl:value-of select="$ProjectNameTmp2"/>
                                                            </xsl:when>
                                                            <xsl:otherwise>
                                                                <xsl:value-of select="ProjectName"/>
                                                            </xsl:otherwise>
                                                        </xsl:choose>

                                                    </td>
                                                    <td class="labelXsl">
                                                        <table>
                                                            <tr>
                                                                <td class="labelXsl" valign="top">
                                                                    <xsl:value-of select="$name500001"/>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="labelXsl" valign="top">
                                                                    <xsl:value-of select="$name500002"/>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="labelXsl" valign="top">
                                                                    <xsl:value-of select="$name500003"/>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="labelXsl" valign="top">
                                                                    <xsl:value-of select="$name500004"/>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="labelXsl" valign="top">
                                                                    <xsl:value-of select="$name500005"/>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="labelXsl" valign="top">
                                                                    <xsl:value-of select="$name500006"/>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="labelXsl" valign="top">
                                                                    <xsl:value-of select="$name500007"/>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                    <td class="labelXsl" valign="top" align="right">
                                                        <table>
                                                            <tr>
                                                                <td class="labelXsl" valign="top" align="right">
                                                                    <span style="color:#1500d4">
                                                                        <xsl:value-of
                                                                                select="format-number(GovernmentPolicyProjectItem500001/Amount,'###,##0.00')"/>
                                                                    </span>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="labelXsl" valign="top" align="right">
                                                                    <span style="color:#1500d4">
                                                                        <xsl:value-of
                                                                                select="format-number(GovernmentPolicyProjectItem500002/Amount,'###,##0.00')"/>
                                                                    </span>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="labelXsl" valign="top" align="right">
                                                                    <span style="color:#1500d4">
                                                                        <xsl:value-of
                                                                                select="format-number(GovernmentPolicyProjectItem500003/Amount,'###,##0.00')"/>
                                                                    </span>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="labelXsl" align="right">
                                                                    <span style="color:#1500d4">
                                                                        <xsl:value-of
                                                                                select="format-number(GovernmentPolicyProjectItem500004/Amount,'###,##0.00')"/>
                                                                    </span>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="labelXsl" valign="top" align="right">
                                                                    <span style="color:#1500d4">
                                                                        <xsl:value-of
                                                                                select="format-number(GovernmentPolicyProjectItem500005/Amount,'###,##0.00')"/>
                                                                    </span>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="labelXsl" valign="top" align="right">
                                                                    <span style="color:#1500d4">
                                                                        <xsl:value-of
                                                                                select="format-number(GovernmentPolicyProjectItem500006/Amount,'###,##0.00')"/>
                                                                    </span>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="labelXsl" valign="top" align="right">
                                                                    <span style="color:#1500d4">
                                                                        <xsl:value-of
                                                                                select="format-number(GovernmentPolicyProjectItem500007/Amount,'###,##0.00')"/>
                                                                    </span>
                                                                </td>
                                                            </tr>
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
