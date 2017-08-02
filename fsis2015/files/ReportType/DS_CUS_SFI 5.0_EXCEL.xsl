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
                        <td class="bgGreen" width="60%">Organization ID :</td>
                        <td width="40%" colspan="3">
                            <xsl:for-each select="DS_CUS/CommonHeader">
                                <xsl:value-of select="OrganizationId"/>
                            </xsl:for-each>
                        </td>
                    </tr>
                    <tr>
                        <td width="20%" class="bgGreen">FI Reporting Group :</td>
                        <td colspan="3">
                            116003 - ชุดรวมทุกสำนักงานในประเทศ
                        </td>
                    </tr>
                    <tr>
                        <td width="20%" class="bgGreen">Data Set Type :</td>
                        <td colspan="3">
                            <xsl:value-of select="DS_CUS/@name"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="bgGreen"></td>
                        <td class="bgGreen" align="center">Day</td>
                        <td class="bgGreen" align="center">Month</td>
                        <td class="bgGreen" align="center">Year</td>
                    </tr>
                    <tr>
                        <td class="bgGreen">Data Set Date :</td>
                        <xsl:variable name="month">
                            <xsl:value-of select="substring-after(substring-before(DataSetDate,'-'),'-')"/>
                        </xsl:variable>
                        <xsl:for-each select="DS_CUS/CommonHeader">
                            <td width="20%" hight="15px" align="center">
                                <xsl:value-of select="substring(DataSetDate,9,2)"/>
                            </td>
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
                <table width="100%" class="displayTable" border="1">
                    <tr class="headTableXsl">
                        <td rowspan="2" width="30%" align="center">
                            Card Type
                        </td>
                        <td width="20%" align="center" rowspan="2">
                            Number Of Cards
                        </td>
                        <td width="60%" align="center" colspan="4">
                            ChannelTypeGroupInfo
                        </td>
                    </tr>
                    <tr class="headTableXsl">
                        <td width="15%">Card Usage Channel Type</td>
                        <td width="15%">Transaction Type</td>
                        <td width="15%">Number Of Transactions</td>
                        <td width="15%">Transaction Value</td>
                    </tr>

                    <xsl:for-each select="DS_CUS">
                        <xsl:if test="DS_CUS028002 != ''">
                            <tr>
                                <td align="left" width="15%" class="labelXsl ">
                                    บัตรเครดิต
                                </td>
                                <td align="center" class="labelXsl">
                                </td>
                                <td align="center" width="15%" class="labelXsl">
                                </td>
                                <td align="left" width="15%" class="labelXsl">
                                </td>
                                <td align="center" width="15%" class="labelXsl">
                                </td>
                                <td align="right" width="15%" class="labelXsl">
                                </td>
                            </tr>
                            <tr>
                                <td align="left" width="15%" class="labelXsl ">
                                    &#160;&#160;บัตรที่ผู้ประกอบธุรกิจบัตรเครดิตในประเทศเป็นเจ้าของหรือเป็นตัวแทนออกบัตร
                                </td>
                                <td align="center" class="labelXsl">
                                </td>
                                <td align="center" width="15%" class="labelXsl">
                                </td>
                                <td align="left" width="15%" class="labelXsl">
                                </td>
                                <td align="center" width="15%" class="labelXsl">
                                </td>
                                <td align="right" width="15%" class="labelXsl">
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028003'">
                            <tr>
                                <td align="left" width="15%" class="labelXsl subTwo">
                                    &#160;&#160; บัตรที่ผู้ประกอบธุรกิจบัตรเครดิต เป็นเจ้าของ
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS">
                        <xsl:if test="DS_CUS028004 != ''">

                            <tr>
                                <td align="left" width="15%" class="labelXsl subTwo">
                                    &#160;&#160;บัตรร่วม
                                </td>
                                <td align="center" class="labelXsl">
                                </td>
                                <td align="center" width="15%" class="labelXsl">
                                </td>
                                <td align="left" width="15%" class="labelXsl">
                                </td>
                                <td align="center" width="15%" class="labelXsl">
                                </td>
                                <td align="right" width="15%" class="labelXsl">
                                </td>
                            </tr>

                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS">
                        <xsl:if test="DS_CUS028005  != ''">
                            <tr>
                                <td align="left" width="15%" class="labelXsl subThree">
                                    &#160;&#160;&#160;&#160;บัตรร่วมไทย
                                </td>
                                <td align="center" class="labelXsl">
                                </td>
                                <td align="center" width="15%" class="labelXsl">
                                </td>
                                <td align="left" width="15%" class="labelXsl">
                                </td>
                                <td align="center" width="15%" class="labelXsl">
                                </td>
                                <td align="right" width="15%" class="labelXsl">

                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028013'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subThree">
                                    &#160;&#160;&#160;&#160;&#160;&#160;National Switching
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>

                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028022'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subThree">
                                    &#160;&#160;&#160;&#160;&#160;&#160;อื่นๆ
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>

                    <xsl:for-each select="DS_CUS">
                        <xsl:if test="DS_CUS028006  != ''">
                            <tr>
                                <td align="left" width="15%" class="labelXsl subThree">
                                    &#160;&#160;&#160;&#160;บัตรร่วมต่างประเทศ
                                </td>
                                <td align="center" class="labelXsl">
                                </td>
                                <td align="center" width="15%" class="labelXsl">
                                </td>
                                <td align="left" width="15%" class="labelXsl">
                                </td>
                                <td align="center" width="15%" class="labelXsl">
                                </td>
                                <td align="right" width="15%" class="labelXsl">

                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028007'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subFour">
                                    &#160;&#160;&#160;&#160;&#160;&#160;Visa
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028008'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subFour">
                                    &#160;&#160;&#160;&#160;&#160;&#160;Master
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028009'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subFour">
                                    &#160;&#160;&#160;&#160;&#160;&#160;Amex
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028010'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subFour">
                                    &#160;&#160;&#160;&#160;&#160;&#160;JCB
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028029'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subFour">
                                    &#160;&#160;&#160;&#160;&#160;&#160;Diners
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028023'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subFour">
                                    &#160;&#160;&#160;&#160;&#160;&#160;China Union Pay
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028011'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subFour">
                                    &#160;&#160;&#160;&#160;&#160;&#160;อื่นๆ
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>

                    <xsl:for-each select="DS_CUS">
                        <xsl:if test="DS_CUS028012 != ''">

                            <tr>
                                <td align="left" width="15%" class="labelXsl subOne">
                                    &#160;&#160;บัตรที่ผู้ประกอบธุรกิจบัตรเครดิต ในประเทศเป็นตัวแทนรับบัตร
                                </td>
                                <td align="center" class="labelXsl">
                                </td>
                                <td align="center" width="15%" class="labelXsl">
                                </td>
                                <td align="left" width="15%" class="labelXsl">
                                </td>
                                <td align="center" width="15%" class="labelXsl">
                                </td>
                                <td align="right" width="15%" class="labelXsl">

                                </td>
                            </tr>

                        </xsl:if>
                    </xsl:for-each>

                    <xsl:for-each select="DS_CUS">
                        <xsl:if test="DS_CUS028030 != ''">

                            <tr>
                                <td align="left" width="15%" class="labelXsl subThree">
                                    &#160;&#160;&#160;&#160; บัตรที่ออกโดยผู้ออกบัตรในประเทศ
                                </td>
                                <td align="center" class="labelXsl">
                                </td>
                                <td align="center" width="15%" class="labelXsl">
                                </td>
                                <td align="left" width="15%" class="labelXsl">
                                </td>
                                <td align="center" width="15%" class="labelXsl">
                                </td>
                                <td align="right" width="15%" class="labelXsl">

                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028031'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subFour">
                                    &#160;&#160;&#160;&#160;&#160;&#160;Visa
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028032'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subFour">
                                    &#160;&#160;&#160;&#160;&#160;&#160;Master
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028033'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subFour">
                                    &#160;&#160;&#160;&#160;&#160;&#160;Amex
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028034'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subFour">
                                    &#160;&#160;&#160;&#160;&#160;&#160;JCB
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028035'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subFour">
                                    &#160;&#160;&#160;&#160;&#160;&#160;Diners
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028026'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subFour">
                                    &#160;&#160;&#160;&#160;&#160;&#160;China Union Pay
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028027'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subFour">
                                    &#160;&#160;&#160;&#160;&#160;&#160;National Switching
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028036'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subFour">
                                    &#160;&#160;&#160;&#160;&#160;&#160;อื่นๆ
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>

                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS">
                        <xsl:if test="DS_CUS028037  != ''">
                            <tr>
                                <td align="left" width="15%" class="labelXsl subThree">
                                    &#160;&#160;&#160;&#160;บัตรที่ออกโดยผู้ออกบัตรต่างประเทศ
                                </td>
                                <td align="center" class="labelXsl">
                                </td>
                                <td align="center" width="15%" class="labelXsl">
                                </td>
                                <td align="left" width="15%" class="labelXsl">
                                </td>
                                <td align="center" width="15%" class="labelXsl">
                                </td>
                                <td align="right" width="15%" class="labelXsl">

                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028014'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subFour">
                                    &#160;&#160;&#160;&#160;&#160;&#160;Visa
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028015'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subFour">
                                    &#160;&#160;&#160;&#160;&#160;&#160;Master
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028016'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subFour">
                                    &#160;&#160;&#160;&#160;&#160;&#160;Amex
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028017'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subFour">
                                    &#160;&#160;&#160;&#160;&#160;&#160;JCB
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028018'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subFour">
                                    &#160;&#160;&#160;&#160;&#160;&#160;Diners
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028038'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subFour">
                                    &#160;&#160;&#160;&#160;&#160;&#160;China Union Pay
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028019'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subFour">
                                    &#160;&#160;&#160;&#160;&#160;&#160;อื่นๆ
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>

                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS">
                        <xsl:if test="DS_CUS028020  != ''">
                            <tr>
                                <td align="left" width="15%" class="labelXsl">
                                    บัตร ATM และบัตรเดบิต
                                </td>
                                <td align="center" class="labelXsl">
                                </td>
                                <td align="center" width="15%" class="labelXsl">
                                </td>
                                <td align="left" width="15%" class="labelXsl">
                                </td>
                                <td align="center" width="15%" class="labelXsl">
                                </td>
                                <td align="right" width="15%" class="labelXsl">

                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028021'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subOne">
                                    &#160;&#160;บัตร ATM
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS">
                        <xsl:if test="DS_CUS028039  != ''">
                            <tr>
                                <td align="left" width="15%" class="labelXsl">
                                    &#160;&#160;บัตรเดบิต
                                </td>
                                <td align="center" class="labelXsl">
                                </td>
                                <td align="center" width="15%" class="labelXsl">
                                </td>
                                <td align="left" width="15%" class="labelXsl">
                                </td>
                                <td align="center" width="15%" class="labelXsl">
                                </td>
                                <td align="right" width="15%" class="labelXsl">

                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028040'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subOne">
                                    &#160;&#160;&#160;&#160;บัตรที่ผู้ประกอบธุรกิจบัตรเดบิตเป็นเจ้าของ
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>

                    <xsl:for-each select="DS_CUS">
                        <xsl:if test="DS_CUS028041  != ''">
                            <tr>
                                <td align="left" width="15%" class="labelXsl">
                                    &#160;&#160;&#160;&#160;บัตรร่วม
                                </td>
                                <td align="center" class="labelXsl">
                                </td>
                                <td align="center" width="15%" class="labelXsl">
                                </td>
                                <td align="left" width="15%" class="labelXsl">
                                </td>
                                <td align="center" width="15%" class="labelXsl">
                                </td>
                                <td align="right" width="15%" class="labelXsl">

                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS">
                        <xsl:if test="DS_CUS028042  != ''">
                            <tr>
                                <td align="left" width="15%" class="labelXsl">
                                    &#160;&#160;&#160;&#160;&#160;&#160;บัตรร่วมไทย
                                </td>
                                <td align="center" class="labelXsl">
                                </td>
                                <td align="center" width="15%" class="labelXsl">
                                </td>
                                <td align="left" width="15%" class="labelXsl">
                                </td>
                                <td align="center" width="15%" class="labelXsl">
                                </td>
                                <td align="right" width="15%" class="labelXsl">

                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028043'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subOne">
                                    &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;National Switching
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028044'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subOne">
                                    &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;อื่น ๆ
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS">
                        <xsl:if test="DS_CUS028045  != ''">
                            <tr>
                                <td align="left" width="15%" class="labelXsl">
                                    &#160;&#160;&#160;&#160;&#160;&#160;บัตรร่วมต่างประเทศ
                                </td>
                                <td align="center" class="labelXsl">
                                </td>
                                <td align="center" width="15%" class="labelXsl">
                                </td>
                                <td align="left" width="15%" class="labelXsl">
                                </td>
                                <td align="center" width="15%" class="labelXsl">
                                </td>
                                <td align="right" width="15%" class="labelXsl">

                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>


                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028046'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subOne">
                                    &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Visa
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028047'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subOne">
                                    &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Master
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028048'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subOne">
                                    &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;China Union Pay
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028049'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subOne">
                                    &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;อื่น ๆ
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>

                    <xsl:for-each select="DS_CUS">
                        <xsl:if test="DS_CUS028050  != ''">
                            <tr>
                                <td align="left" width="15%" class="labelXsl">
                                    &#160;&#160;&#160;&#160;บัตรที่ผู้ประกอบธุรกิจบัตรเดบิตในประเทศหรือผู้รายงานข้อมูลเป็นตัวแทนรับบัตร
                                </td>
                                <td align="center" class="labelXsl">
                                </td>
                                <td align="center" width="15%" class="labelXsl">
                                </td>
                                <td align="left" width="15%" class="labelXsl">
                                </td>
                                <td align="center" width="15%" class="labelXsl">
                                </td>
                                <td align="right" width="15%" class="labelXsl">

                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS">
                        <xsl:if test="DS_CUS028051  != ''">
                            <tr>
                                <td align="left" width="15%" class="labelXsl">
                                    &#160;&#160;&#160;&#160;&#160;&#160;บัตรที่ออกโดยผู้ออกบัตรในประเทศ
                                </td>
                                <td align="center" class="labelXsl">
                                </td>
                                <td align="center" width="15%" class="labelXsl">
                                </td>
                                <td align="left" width="15%" class="labelXsl">
                                </td>
                                <td align="center" width="15%" class="labelXsl">
                                </td>
                                <td align="right" width="15%" class="labelXsl">

                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028052'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subOne">
                                    &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Visa
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028053'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subOne">
                                    &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Master
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028054'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subOne">
                                    &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Amex
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028055'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subOne">
                                    &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;JCB
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028056'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subOne">
                                    &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Diners
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028057'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subOne">
                                    &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;China Union Pay
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028058'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subOne">
                                    &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;National Switching
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028059'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subOne">
                                    &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;อื่น ๆ
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS">
                        <xsl:if test="DS_CUS028060  != ''">
                            <tr>
                                <td align="left" width="15%" class="labelXsl">
                                    &#160;&#160;&#160;&#160;&#160;&#160;บัตรที่ออกโดยผู้ออกบัตรต่างประเทศ
                                </td>
                                <td align="center" class="labelXsl">
                                </td>
                                <td align="center" width="15%" class="labelXsl">
                                </td>
                                <td align="left" width="15%" class="labelXsl">
                                </td>
                                <td align="center" width="15%" class="labelXsl">
                                </td>
                                <td align="right" width="15%" class="labelXsl">

                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028061'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subOne">
                                    &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Visa
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028062'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subOne">
                                    &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Master
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028063'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subOne">
                                    &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Amex
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028064'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subOne">
                                    &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;JCB
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028065'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subOne">
                                    &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Diners
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028066'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subOne">
                                    &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;China Union Pay
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>

                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028067'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subOne">
                                    &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;อื่น ๆ
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>



                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028024'">
                            <tr>

                                <td align="left" width="15%" class="labelXsl subOne">
                                    &#160;&#160;&#160;&#160;บัตรอื่นๆ
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">

                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>


                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028028'">
                            <tr>
                                <td align="left" width="15%" class="labelXsl">
                                    บัตรพลาสติกอื่นๆ
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,###')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,###')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">
                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>

                    <xsl:for-each select="DS_CUS/DS_CUS_Content/ContentRecordGroup">
                        <xsl:if test="CardType  = '028998'">
                            <tr>
                                <td align="left" width="15%" class="labelXsl">
                                    No data submitted
                                </td>
                                <td align="center" class="labelXsl">
                                    <xsl:value-of
                                            select="format-number(NumberOfCards,'###,##0')"/>
                                </td>
                                <xsl:for-each
                                        select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="CardUsageChannelTypeValue"/>
                                    </td>
                                    <td align="left" width="15%" class="labelXsl">
                                        <xsl:value-of select="TransactionTypeValue"/>
                                    </td>
                                    <td align="center" width="15%" class="labelXsl">
                                        <xsl:value-of
                                                select="format-number(NumberOfTransactions,'###,##0')"/>
                                    </td>
                                    <td align="right" width="15%" class="labelXsl">
                                        <span style="color:#1500d4">
                                            <xsl:value-of
                                                    select="format-number(TransactionValue,'###,##0.00')"/>
                                        </span>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>

                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
