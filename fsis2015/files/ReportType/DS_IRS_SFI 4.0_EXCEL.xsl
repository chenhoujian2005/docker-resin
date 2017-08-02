<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <META http-equiv="Content-Type" content="text/html; charset=TIS-620"/>
            </head>
            <body>


                <table class="displayTable" width="50%" border="1">
                    <tr>
                        <td class="bgGreen" width="20%">Organization ID :</td>
                        <td width="15%" colspan="3">
                            <xsl:for-each select="DS_IRS/CommonHeader">
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
                            <xsl:value-of select="DS_IRS/@name"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="bgGreen"></td>
                        <td class="bgGreen" align="center">Date</td>
                        <td class="bgGreen" align="center">Month</td>
                        <td class="bgGreen" align="center">Year</td>
                    </tr>
                    <tr>
                        <td class="bgGreen">Data Set Date :</td>
                        <xsl:variable name="month"><xsl:value-of select="substring-after(substring-before(DataSetDate,'-'),'-')"/></xsl:variable>
                        <xsl:for-each select="DS_IRS/CommonHeader">
			             <!--<td width="20%" hight="15px" align="center"><xsl:value-of select="substring(DataSetDate,9,2)"/></td>-->
                         <td align="center"><xsl:value-of select="substring-after(substring-after(DataSetDate,'-'),'-')"/></td>
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
                <table class="displayTable" width="100%" border="1">
                    <tr class="headTableXsl">
                        <td align="center" width="20%" colspan="2">Interest Rate Announcement Type</td>
                        <td align="center" width="20%">Maximum Interest Rate</td>
                        <td align="center" width="20%">Minimum Interest Rate</td>
                        <td align="center" width="20%">End Date</td>
                        <td align="center" width="20%">Effective Date</td>
                    </tr>
                    <xsl:if test="DS_IRS/DS_IRS_Content/ContentRecordGroup/InterestRateAnnouncementTypeValue162002 != ''">
                        <tr>
                            <td class="labelXsl" align="center">
                                162002
                            </td>
                            <td align="left" class="labelXsl">
                                Deposit Rate
                            </td>
                            <td align="center" class="labelXsl">
                            </td>
                            <td align="center" class="labelXsl">
                            </td>
                            <td align="center" class="labelXsl">
                            </td>
                            <td align="center" class="labelXsl">
                            </td>
                        </tr>
                    </xsl:if>
                    <xsl:if test="DS_IRS/DS_IRS_Content/ContentRecordGroup/InterestRateAnnouncementTypeValue162067 != ''">
                        <tr>
                            <td class="labelXsl" align="center">
                                162067
                            </td>
                            <td align="left" class="labelXsl subOne">
                                &#160;&#160;Demand Deposit Rate
                            </td>
                            <td align="center" class="labelXsl">
                            </td>
                            <td align="center" class="labelXsl">
                            </td>
                            <td align="center" class="labelXsl">
                            </td>
                            <td align="center" class="labelXsl">
                            </td>
                        </tr>
                    </xsl:if>
                    <xsl:for-each select="DS_IRS/DS_IRS_Content/ContentRecordGroup">
                        <xsl:if test="InterestRateAnnouncementType = '162068'">
                            <tr>
                                <td class="labelXsl" align="center">
                                    162068
                                </td>
                                <td align="left" class="labelXsl">
                                    &#160;&#160;&#160;&#160;Current Account
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl subTwo">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MaximumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MinimumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of select="EndDate"/>
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of select="EffectiveDate"/>
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_IRS/DS_IRS_Content/ContentRecordGroup">
                        <xsl:if test="InterestRateAnnouncementType = '162003'">
                            <tr>
                                <td class="labelXsl" align="center">
                                    162003
                                </td>
                                <td align="left" class="labelXsl subTwo">
                                    &#160;&#160;&#160;&#160;Savings Account
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MaximumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MinimumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of select="EndDate"/>
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of select="EffectiveDate"/>
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:if test="DS_IRS/DS_IRS_Content/ContentRecordGroup/InterestRateAnnouncementTypeValue162004 != ''">
                        <tr>
                            <td class="labelXsl" align="center">
                                162004
                            </td>
                            <td align="left" class="labelXsl subOne">
                                &#160;&#160;Term Deposit Rate
                            </td>
                            <td align="center" class="labelXsl">
                            </td>
                            <td align="center" class="labelXsl">
                            </td>
                            <td align="center" class="labelXsl">
                            </td>
                            <td align="center" class="labelXsl">
                            </td>
                        </tr>
                    </xsl:if>
                    <xsl:if test="DS_IRS/DS_IRS_Content/ContentRecordGroup/InterestRateAnnouncementTypeValue162069 != ''">
                        <tr>
                            <td class="labelXsl" align="center">
                                162069
                            </td>
                            <td align="left" class="labelXsl subOne">
                                &#160;&#160;&#160;&#160;แบบทั่วไป
                            </td>
                            <td align="center" class="labelXsl">
                            </td>
                            <td align="center" class="labelXsl">
                            </td>
                            <td align="center" class="labelXsl">
                            </td>
                            <td align="center" class="labelXsl">
                            </td>
                        </tr>
                    </xsl:if>
                    <xsl:for-each select="DS_IRS/DS_IRS_Content/ContentRecordGroup">
                        <xsl:if test="InterestRateAnnouncementType = '162070'">
                            <tr>
                                <td class="labelXsl" align="center">
                                    162070
                                </td>
                                <td align="left" class="labelXsl subThree">
                                    &#160;&#160;&#160;&#160;&#160;&#160;&lt; 1 เดือน
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MaximumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MinimumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of select="EndDate"/>
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of select="EffectiveDate"/>
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_IRS/DS_IRS_Content/ContentRecordGroup">
                        <xsl:if test="InterestRateAnnouncementType = '162005'">
                            <tr>
                                <td class="labelXsl" align="center">
                                    162005
                                </td>
                                <td align="left" class="labelXsl subThree">
                                    &#160;&#160;&#160;&#160;&#160;&#160;1 เดือน
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MaximumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MinimumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of select="EndDate"/>
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of select="EffectiveDate"/>
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_IRS/DS_IRS_Content/ContentRecordGroup">
                        <xsl:if test="InterestRateAnnouncementType = '162006'">
                            <tr>
                                <td class="labelXsl" align="center">
                                    162006
                                </td>
                                <td align="left" class="labelXsl subThree">
                                    &#160;&#160;&#160;&#160;&#160;&#160;3 เดือน
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MaximumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MinimumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of select="EndDate"/>
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of select="EffectiveDate"/>
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_IRS/DS_IRS_Content/ContentRecordGroup">
                        <xsl:if test="InterestRateAnnouncementType = '162007'">
                            <tr>
                                <td class="labelXsl" align="center">
                                    162007
                                </td>
                                <td align="left" class="labelXsl subThree">
                                    &#160;&#160;&#160;&#160;&#160;&#160;6 เดือน
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MaximumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MinimumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of select="EndDate"/>
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of select="EffectiveDate"/>
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_IRS/DS_IRS_Content/ContentRecordGroup">
                        <xsl:if test="InterestRateAnnouncementType = '162008'">
                            <tr>
                                <td class="labelXsl" align="center">
                                    162008
                                </td>
                                <td align="left" class="labelXsl subThree">
                                    &#160;&#160;&#160;&#160;&#160;&#160;12 เดือน
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MaximumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MinimumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td  align="center"   class="labelXsl">
                                    <xsl:value-of select="EndDate"/>
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of select="EffectiveDate"/>
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_IRS/DS_IRS_Content/ContentRecordGroup">
                        <xsl:if test="InterestRateAnnouncementType = '162009'">
                            <tr>
                                <td class="labelXsl" align="center">
                                    162009
                                </td>
                                <td align="left" class="labelXsl subThree">
                                    &#160;&#160;&#160;&#160;&#160;&#160;24 เดือน
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MaximumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MinimumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of select="EndDate"/>
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of select="EffectiveDate"/>
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_IRS/DS_IRS_Content/ContentRecordGroup">
                        <xsl:if test="InterestRateAnnouncementType = '162057'">
                            <tr>
                                <td class="labelXsl" align="center">
                                    162057
                                </td>
                                <td align="left" class="labelXsl subThree">
                                    &#160;&#160;&#160;&#160;&#160;&#160;30 เดือน
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MaximumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MinimumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of select="EndDate"/>
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of select="EffectiveDate"/>
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_IRS/DS_IRS_Content/ContentRecordGroup">
                        <xsl:if test="InterestRateAnnouncementType = '162058'">
                            <tr>
                                <td class="labelXsl" align="center">
                                    162058
                                </td>
                                <td align="left" class="labelXsl subThree">
                                    &#160;&#160;&#160;&#160;&#160;&#160;&lt; 36 เดือน
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MaximumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MinimumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of select="EndDate"/>
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of select="EffectiveDate"/>
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_IRS/DS_IRS_Content/ContentRecordGroup">
                        <xsl:if test="InterestRateAnnouncementType = '162059'">
                            <tr>
                                <td class="labelXsl" align="center">
                                    162059
                                </td>
                                <td align="left" class="labelXsl subThree">
                                    &#160;&#160;&#160;&#160;&#160;&#160;42 เดือน
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MaximumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MinimumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of select="EndDate"/>
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of select="EffectiveDate"/>
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_IRS/DS_IRS_Content/ContentRecordGroup">
                        <xsl:if test="InterestRateAnnouncementType = '162060'">
                            <tr>
                                <td class="labelXsl" align="center">
                                    162060
                                </td>
                                <td align="left" class="labelXsl subThree">
                                    &#160;&#160;&#160;&#160;&#160;&#160;48 เดือน
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MaximumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MinimumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of select="EndDate"/>
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of select="EffectiveDate"/>
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_IRS/DS_IRS_Content/ContentRecordGroup">
                        <xsl:if test="InterestRateAnnouncementType = '162061'">
                            <tr>
                                <td class="labelXsl" align="center">
                                    162061
                                </td>
                                <td align="left" class="labelXsl subThree">
                                    &#160;&#160;&#160;&#160;&#160;&#160;54 เดือน
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MaximumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MinimumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of select="EndDate"/>
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of select="EffectiveDate"/>
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_IRS/DS_IRS_Content/ContentRecordGroup">
                        <xsl:if test="InterestRateAnnouncementType = '162062'">
                            <tr>
                                <td class="labelXsl" align="center">
                                    162062
                                </td>
                                <td align="left" class="labelXsl subThree">
                                    &#160;&#160;&#160;&#160;&#160;&#160;60 เดือน
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MaximumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MinimumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of select="EndDate"/>
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of select="EffectiveDate"/>
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_IRS/DS_IRS_Content/ContentRecordGroup">
                        <xsl:if test="InterestRateAnnouncementType = '162063'">
                            <tr>
                                <td class="labelXsl" align="center">
                                    162063
                                </td>
                                <td align="left" class="labelXsl subThree">
                                    &#160;&#160;&#160;&#160;&#160;&#160;&gt; 60 เดือน
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MaximumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MinimumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of select="EndDate"/>
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of select="EffectiveDate"/>
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_IRS/DS_IRS_Content/ContentRecordGroup">
                        <xsl:if test="InterestRateAnnouncementType = '162071'">
                            <tr>
                                <td class="labelXsl" align="center">
                                    162071
                                </td>
                                <td align="left" class="labelXsl subTwo">
                                    &#160;&#160;&#160;&#160;บัตรเงินฝาก
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MaximumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MinimumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="left" class="labelXsl">
                                    <xsl:value-of select="EndDate"/>
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of select="EffectiveDate"/>
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_IRS/DS_IRS_Content/ContentRecordGroup">
                        <xsl:if test="InterestRateAnnouncementType = '162072'">
                            <tr>
                                <td class="labelXsl" align="center">
                                    162072
                                </td>
                                <td align="left" class="labelXsl subTwo">
                                    &#160;&#160;&#160;&#160;แบบผูกพัน
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MaximumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MinimumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of select="EndDate"/>
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of select="EffectiveDate"/>
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:if test="DS_IRS/DS_IRS_Content/ContentRecordGroup/InterestRateAnnouncementTypeValue162010 != ''">
                        <tr>
                            <td class="labelXsl" align="center">
                                162010
                            </td>
                            <td align="left" class="labelXsl ">
                                Lending Rate
                            </td>
                            <td align="center" class="labelXsl">
                            </td>
                            <td align="center" class="labelXsl">
                            </td>
                            <td align="center" class="labelXsl">
                                <xsl:value-of select="EndDate"/>
                            </td>
                            <td align="center" class="labelXsl">
                                <xsl:value-of select="EffectiveDate"/>
                            </td>
                        </tr>
                    </xsl:if>
                    <xsl:for-each select="DS_IRS/DS_IRS_Content/ContentRecordGroup">
                        <xsl:if test="InterestRateAnnouncementType = '162011'">
                            <tr>
                                <td class="labelXsl" align="center">
                                    162011
                                </td>
                                <td align="left" class="labelXsl subTwo">
                                    &#160;&#160;MOR
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MaximumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MinimumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of select="EndDate"/>
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of select="EffectiveDate"/>
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_IRS/DS_IRS_Content/ContentRecordGroup">
                        <xsl:if test="InterestRateAnnouncementType = '162012'">
                            <tr>
                                <td class="labelXsl" align="center">
                                    162012
                                </td>
                                <td align="left" class="labelXsl subTwo">
                                    &#160;&#160;MLR
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MaximumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MinimumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of select="EndDate"/>
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of select="EffectiveDate"/>
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_IRS/DS_IRS_Content/ContentRecordGroup">
                        <xsl:if test="InterestRateAnnouncementType = '162013'">
                            <tr>
                                <td class="labelXsl" align="center">
                                    162013
                                </td>
                                <td align="left" class="labelXsl subTwo">
                                    &#160;&#160;MRR
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MaximumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MinimumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of select="EndDate"/>
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of select="EffectiveDate"/>
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_IRS/DS_IRS_Content/ContentRecordGroup">
                        <xsl:if test="InterestRateAnnouncementType = '162014'">
                            <tr>
                                <td class="labelXsl" align="center">
                                    162014
                                </td>
                                <td align="left" class="labelXsl subTwo">
                                    &#160;&#160;สูงสุด
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MaximumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MinimumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of select="EndDate"/>
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of select="EffectiveDate"/>
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_IRS/DS_IRS_Content/ContentRecordGroup">
                        <xsl:if test="InterestRateAnnouncementType = '162015'">
                            <tr>
                                <td class="labelXsl" align="center">
                                    162015
                                </td>
                                <td align="left" class="labelXsl subTwo">
                                    &#160;&#160;ผิดเงื่อนไข
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MaximumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MinimumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of select="EndDate"/>
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of select="EffectiveDate"/>
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_IRS/DS_IRS_Content/ContentRecordGroup">
                        <xsl:if test="InterestRateAnnouncementType = '162016'">
                            <tr>
                                <td class="labelXsl" align="center">
                                    162016
                                </td>
                                <td align="left" class="labelXsl subTwo">
                                    &#160;&#160;บัตรเครดิตปกติ
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MaximumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MinimumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of select="EndDate"/>
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of select="EffectiveDate"/>
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_IRS/DS_IRS_Content/ContentRecordGroup">
                        <xsl:if test="InterestRateAnnouncementType = '162017'">
                            <tr>
                                <td class="labelXsl" align="center">
                                    162017
                                </td>
                                <td align="left" class="labelXsl subTwo">
                                    &#160;&#160;บัตรเครดิตผิดเงื่อนไข
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MaximumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                    <span style="color:#1500d4">
                                        <xsl:value-of select="format-number(MinimumInterestRate,'###,###,###,##0.00')"/>
                                    </span>
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of select="EndDate"/>
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of select="EffectiveDate"/>
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>