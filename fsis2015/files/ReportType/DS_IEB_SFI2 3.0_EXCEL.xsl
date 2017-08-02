<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            </head>
            <body>
            <table class="displayTable" width="50%" border="1">
                <tr>
                    <td class="bgGreen" width="20%">Organization ID :  </td>
                    <td width="15%" colspan="3">
                        <xsl:for-each select="DS_IEB/CommonHeader">
                            <xsl:value-of select="OrganizationId"/>
                        </xsl:for-each>
                    </td>
                </tr>
                <tr>
                    <td  width="20%">Data Set Type :</td>
                    <td colspan="3">
                        <xsl:value-of select="DS_IEB/@name"/>
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
                        <xsl:for-each select="DS_IEB/CommonHeader">
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
                    <table width="100%" class="displayTable" border="1">
                        <tr class="headTableXsl">
                            <td width="20%" align="center">
                                Branch Number
                            </td>
                            <td width="20%" align="center">
                                Branch Name
                            </td>
                            <td width="40%" align="center">
                                Income Amount
                            </td>
                            <td width="40%" align="center">
                                Expense Amount
                            </td>
                        </tr>
                        <xsl:for-each select="DS_IEB/DS_IEB_Content/ContentRecordGroup">
                             <tr>
                            <td width="20%" align="center" class="labelXsl">
                                 <xsl:value-of select="BranchNumber"/>
                             </td>
                                 <td width="20%" align="center" class="labelXsl">
                                     <xsl:value-of select="BranchName"/>
                                 </td>
                            <td width="40%" align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                 <span style="color:#1500d4"><xsl:value-of select="format-number(IncomeAmount,'###,##0.00')"/></span>
                            </td>
                            <td width="40%" align="right"  style="mso-number-format:'\#\,\#\#0\.00'" class="labelXsl">
                                 <span style="color:#1500d4"><xsl:value-of select="format-number(ExpenseAmount,'###,##0.00')"/> </span>
                            </td>
                        </tr>
                        </xsl:for-each>
                    </table>
                    <table width="100%" class="displayTable">
                    </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
