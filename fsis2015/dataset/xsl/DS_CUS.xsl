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
                                        <table class="displayTable" width="50%" border="0">
                                            <tr>
                                                <td class="bgGreen" width="60%">Organization ID :  </td>
                                                <td width="40%" colspan="2">
                                                    <xsl:for-each select="DS_CUS/CommonHeader">
                                                        <xsl:value-of select="OrganizationId"/>
                                                    </xsl:for-each>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="20%" class="bgGreen">FI Reporting Group :</td>
                                                <td colspan="2">
                                                    116003 - ชุดรวมทุกสำนักงานในประเทศ
                                                </td>
                                            </tr>
                                            <tr>
                                                <td  width="20%" class="bgGreen" >Data Set Type :</td>
                                                <td colspan="2">
                                                    <xsl:value-of select="DS_CUS/@name"/>
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
                                                    <xsl:for-each select="DS_CUS/CommonHeader">
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
                                                <td rowspan="2" width="30%" align="center" >
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
                                                <xsl:if test="DS_CUS/DS_CUS028001  != ''">
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
                                                        	บัตรที่ผู้ประกอบธุรกิจบัตรเครดิตในประเทศเป็นเจ้าของ หรือเป็นตัวแทนออกบัตร
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
                                                    <td align="left" width="15%" class="labelXsl subOne">
                                                          บัตรร่วม
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
                                                       <td align="left" width="15%" class="labelXsl subThree">
                                                          บัตรร่วมต่างประเทศ
                                                       </td>
                                                       <td align="center" class="labelXsl">
                                                       </td>
                                                           <td align="center" width="15%" class="labelXsl">
                                                           </td>
                                                           <td align="left" width="15%" class="labelXsl">
                                                               <xsl:value-of select="TransactionTypeValue"/>
                                                           </td>
                                                           <td align="center" width="15%" class="labelXsl">
                                                           </td>
                                                           <td align="right" width="15%" class="labelXsl">

                                                           </td>
                                                   </tr>

                                                </xsl:if>
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
                                                    <td align="left" width="15%" class="labelXsl subOne">
                                                        	บัตรที่ผู้ประกอบธุรกิจบัตรเครดิตในประเทศเป็นเจ้าของ หรือเป็นตัวแทนออกบัตร
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
                                                <xsl:if test="CardType  = '028005'">
                                             <tr>
                                                    <td align="left" width="15%" class="labelXsl subTwo">
                                                            บัตรที่ผู้ประกอบธุรกิจบัตรเครดิต เป็นเจ้าของ
                                                    </td>
                                                    <td align="center" class="labelXsl">
                                                        <xsl:value-of select="format-number(NumberOfCards,'###,###')"/>
                                                    </td>
                                                    <xsl:for-each select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
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
                                                          บัตรร่วม
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
                                                <xsl:if test="CardType  = '028005'">
                                                <tr>

                                                    <td align="left" width="15%" class="labelXsl subThree">
                                                       บัตรร่วมไทย
                                                    </td>
                                                    <td align="center" class="labelXsl">
                                                        <xsl:value-of select="format-number(NumberOfCards,'###,###')"/>
                                                    </td>
                                                    <xsl:for-each select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
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
                                                       บัตรร่วมต่างประเทศ
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
                                                       Visa
                                                    </td>
                                                    <td align="center" class="labelXsl">
                                                        <xsl:value-of select="format-number(NumberOfCards,'###,###')"/>
                                                    </td>
                                                    <xsl:for-each select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
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
                                                       Master
                                                    </td>
                                                    <td align="center" class="labelXsl">
                                                        <xsl:value-of select="format-number(NumberOfCards,'###,###')"/>
                                                    </td>
                                                    <xsl:for-each select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
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
                                                       Amex
                                                    </td>
                                                    <td align="center" class="labelXsl">
                                                        <xsl:value-of select="format-number(NumberOfCards,'###,###')"/>
                                                    </td>
                                                    <xsl:for-each select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
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
                                                       JCB
                                                    </td>
                                                    <td align="center" class="labelXsl">
                                                        <xsl:value-of select="format-number(NumberOfCards,'###,###')"/>
                                                    </td>
                                                    <xsl:for-each select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
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
                                                       Diners
                                                    </td>
                                                    <td align="center" class="labelXsl">
                                                        <xsl:value-of select="format-number(NumberOfCards,'###,###')"/>
                                                    </td>
                                                    <xsl:for-each select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
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
                                                       อื่นๆ
                                                    </td>
                                                    <td align="center" class="labelXsl">
                                                        <xsl:value-of select="format-number(NumberOfCards,'###,###')"/>
                                                    </td>
                                                    <xsl:for-each select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
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
                                                <xsl:if test="DS_CUS028016 != ''">


                                            <tr>
                                                    <td align="left" width="15%" class="labelXsl subOne">
                                                       บัตรของผู้อื่น
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
                                                <xsl:if test="CardType  = '028017'">
                                                <tr>

                                                    <td align="left" width="15%" class="labelXsl subFour">
                                                       บัตรธนาคารอื่น
                                                    </td>
                                                    <td align="center" class="labelXsl">
                                                        <xsl:value-of select="format-number(NumberOfCards,'###,###')"/>
                                                    </td>
                                                    <xsl:for-each select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
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
                                                <xsl:if test="DS_CUS028030 != ''">


                                            <tr>
                                                    <td align="left" width="15%" class="labelXsl subOne">
                                                       บัตรที่ผู้ประกอบธุรกิจบัตรเครดิต ในประเทศเป็นตัวแทนรับบัตร
                                                    </td>
                                                    <td align="center" class="labelXsl">
                                                    </td>
                                                        <td align="center" width="15%" class="labelXsl">
                                                        </td>
                                                        <td align="left" width="15%" class="labelXsl">
                                                            <xsl:value-of select="TransactionTypeValue"/>
                                                        </td>
                                                        <td align="center" width="15%" class="labelXsl">
                                                        </td>
                                                        <td align="right" width="15%" class="labelXsl">

                                                        </td>
                                                </tr>
                                                <tr>
                                                    <td align="left" width="15%" class="labelXsl subThree">
                                                       บัตรที่ออกโดยผู้ออกบัตรในประเทศ
                                                    </td>
                                                    <td align="center" class="labelXsl">
                                                    </td>
                                                        <td align="center" width="15%" class="labelXsl">
                                                        </td>
                                                        <td align="left" width="15%" class="labelXsl">
                                                            <xsl:value-of select="TransactionTypeValue"/>
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
                                                       Visa
                                                    </td>
                                                    <td align="center" class="labelXsl">
                                                        <xsl:value-of select="format-number(NumberOfCards,'###,###')"/>
                                                    </td>
                                                    <xsl:for-each select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
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
                                                       Master
                                                    </td>
                                                    <td align="center" class="labelXsl">
                                                        <xsl:value-of select="format-number(NumberOfCards,'###,###')"/>
                                                    </td>
                                                    <xsl:for-each select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
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
                                                       Amex
                                                    </td>
                                                    <td align="center" class="labelXsl">
                                                        <xsl:value-of select="format-number(NumberOfCards,'###,###')"/>
                                                    </td>
                                                    <xsl:for-each select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
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
                                                       JCB
                                                    </td>
                                                    <td align="center" class="labelXsl">
                                                        <xsl:value-of select="format-number(NumberOfCards,'###,###')"/>
                                                    </td>
                                                    <xsl:for-each select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
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
                                                       Diners
                                                    </td>
                                                    <td align="center" class="labelXsl">
                                                        <xsl:value-of select="format-number(NumberOfCards,'###,###')"/>
                                                    </td>
                                                    <xsl:for-each select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
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
                                                       อื่นๆ
                                                    </td>
                                                    <td align="center" class="labelXsl">
                                                        <xsl:value-of select="format-number(NumberOfCards,'###,###')"/>
                                                    </td>
                                                    <xsl:for-each select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
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
                                                <xsl:if test="DS_CUS028030  != ''">
                                             <tr>
                                                    <td align="left" width="15%" class="labelXsl subThree">
                                                       บัตรที่ออกโดยผู้ออกบัตรต่างประเทศ
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
                                                       Visa
                                                    </td>
                                                    <td align="center" class="labelXsl">
                                                        <xsl:value-of select="format-number(NumberOfCards,'###,###')"/>
                                                    </td>
                                                    <xsl:for-each select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
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
                                                       Master
                                                    </td>
                                                    <td align="center" class="labelXsl">
                                                        <xsl:value-of select="format-number(NumberOfCards,'###,###')"/>
                                                    </td>
                                                    <xsl:for-each select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
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
                                                       Amex
                                                    </td>
                                                    <td align="center" class="labelXsl">
                                                        <xsl:value-of select="format-number(NumberOfCards,'###,###')"/>
                                                    </td>
                                                    <xsl:for-each select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
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
                                                       JCB
                                                    </td>
                                                    <td align="center" class="labelXsl">
                                                        <xsl:value-of select="format-number(NumberOfCards,'###,###')"/>
                                                    </td>
                                                    <xsl:for-each select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
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
                                                       Diners
                                                    </td>
                                                    <td align="center" class="labelXsl">
                                                        <xsl:value-of select="format-number(NumberOfCards,'###,###')"/>
                                                    </td>
                                                    <xsl:for-each select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
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
                                                       อื่นๆ
                                                    </td>
                                                    <td align="center" class="labelXsl">
                                                        <xsl:value-of select="format-number(NumberOfCards,'###,###')"/>
                                                    </td>
                                                    <xsl:for-each select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
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
                                                       บัตรเดบิต
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
                                                        บัตร ATM
                                                    </td>
                                                    <td align="center" class="labelXsl">
                                                        <xsl:value-of select="format-number(NumberOfCards,'###,###')"/>
                                                    </td>
                                                    <xsl:for-each select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
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
                                                       บัตรอื่นๆ
                                                    </td>
                                                    <td align="center" class="labelXsl">
                                                        <xsl:value-of select="format-number(NumberOfCards,'###,###')"/>
                                                    </td>
                                                    <xsl:for-each select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
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
                                                <xsl:if test="CardType  = '028025'">
                                                <tr>

                                                    <td align="left" width="15%" class="labelXsl ">
                                                       บัตรชำระเงินล่วงหน้า
                                                    </td>
                                                    <td align="center" class="labelXsl">
                                                        <xsl:value-of select="format-number(NumberOfCards,'###,###')"/>
                                                    </td>
                                                    <xsl:for-each select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
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

                                                    <td align="left" width="15%" class="labelXsl ">
                                                       บัตรพลาสติกอื่นๆ
                                                    </td>
                                                    <td align="center" class="labelXsl">
                                                        <xsl:value-of select="format-number(NumberOfCards,'###,###')"/>
                                                    </td>
                                                    <xsl:for-each select="ChannelTypeGroupInfo/ChannelTypeGroupDetails">
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
