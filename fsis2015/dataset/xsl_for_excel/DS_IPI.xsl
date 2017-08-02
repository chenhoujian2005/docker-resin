<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <META http-equiv="Content-Type" content="text/html; charset=TIS-620" />
      </head>
      <body>
           <table class="displayTable" width="100%" border="1">
                      <tr>
                        <td class="bgGreen" width="20%">Organization ID :</td>
                        <td width="15%" colspan="2">
                          <xsl:for-each select="DS_IPI/CommonHeader">
                            <xsl:value-of select="OrganizationId" />
                          </xsl:for-each>
                        </td>
                      </tr>
                      <tr>
                        <td class="bgGreen">Data Set Type :</td>
                        <td colspan="2">
                          <xsl:value-of select="DS_IPI/@name" />
                        </td>
                      </tr>
                      <tr>
                        <td class="bgGreen" />
                        <td class="bgGreen" align="center">Month</td>
                        <td class="bgGreen" align="center">Year</td>
                      </tr>
                      <tr>
                        <td class="bgGreen">Data Set Date :</td>
                        <xsl:variable name="month">
                          <xsl:value-of select="substring-after(substring-before(DataSetDate,'-'),'-')" />
                        </xsl:variable>
                        <xsl:for-each select="DS_IPI/CommonHeader">
                          <td hight="15px" align="center">
                            <xsl:variable name="mo">
                              <xsl:value-of select="substring(DataSetDate,6,2)" />
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
                                  <xsl:value-of select="$month" />
                                </xsl:if>
                              </xsl:otherwise>
                            </xsl:choose>
                          </td>
                          <td hight="15px" align="center">
                            <xsl:value-of select="substring(DataSetDate,1,4)" />
                          </td>
                        </xsl:for-each>
                      </tr>
                    </table>
                    <table width="100%" class="displayTable" border="1">
                        <tr >
                            <td class="headTableXsl" width="100%"   colspan="31">Involved Party Type</td>
                        </tr>
                        <tr>
                            <td class="headTableXsl" rowspan="3" >Involved Party Type</td>
                            <td class="headTableXsl" rowspan="3" >Involved Party Type Description</td>
                            <td class="headTableXsl" rowspan="3" >Nationality</td>
                            <td class="headTableXsl" rowspan="3" >Country of Residence</td>
                            <td class="headTableXsl" colspan="27" width="100%" >Info</td>
                        </tr>
                        <tr>
                            <td class="headTableXsl"  colspan="12" width="100%" >Thai Nationality Individual</td>
                            <td class="headTableXsl"  colspan="10" width="100%" >Thai Organization</td>
                            <td class="headTableXsl"  colspan="2" width="100%" >Other Identification Info </td>
                            <td class="headTableXsl"  colspan="3" width="100%" >Related Involved Party Info </td>
                        </tr>
                        <tr>
                            <td class="headTableXsl"  >Title</td>
                            <td class="headTableXsl"  >Title Thai</td>
                            <td class="headTableXsl"  >First Name</td>
                            <td class="headTableXsl"  >First Name Thai</td>
                            <td class="headTableXsl"  >Middle Name</td>
                            <td class="headTableXsl"  >Middle Name Thai</td>
                            <td class="headTableXsl"  >Last Name</td>
                            <td class="headTableXsl"  >Last Name Thai</td>
                            <td class="headTableXsl"  >Personal Identification Number</td>
                            <td class="headTableXsl"  >Tax Identification Number</td>
                            <td class="headTableXsl"  >Passport Number</td>
                            <td class="headTableXsl"  >Birth Date</td>
                            <td class="headTableXsl"  >BOI Flag</td>
                            <td class="headTableXsl" >Primary Business Type</td>
                            <td class="headTableXsl" >Juristic Identification Number</td>
                            <td class="headTableXsl" >Juristic Registered Date</td>
                            <td class="headTableXsl" >Tax Identification Number</td>
                            <td class="headTableXsl" >SWIFT Code</td>
                            <td class="headTableXsl" >Title</td>
                            <td class="headTableXsl" >Title Thai</td>
                            <td class="headTableXsl" >Registered Business Name</td>
                            <td class="headTableXsl" >Registered Business Name Thai</td>
                            <td class="headTableXsl"  >Other Identification Number</td>
                            <td class="headTableXsl" >Unique Id Type</td>
                            <td class="headTableXsl"  >Related Involved Party Id</td>
                            <td class="headTableXsl" >Unique Id Type</td>
                            <td class="headTableXsl"  >IP IP Relationship Type</td>
                       </tr>
                        <xsl:for-each select="DS_IPI/DS_IPI_Content/ContentRecordGroup">
                        <tr>
                             <td class="labelXsl">
                                <xsl:value-of select="InvolvedPartyType"/>
                            </td>
                             <td class="labelXsl">
                                <xsl:value-of select="InvolvedPartyTypeValue"/>
                            </td>
                            <td class="labelXsl">
                                <xsl:value-of select="NationalityValue"/>
                            </td>
                          <td class="labelXsl">
                            <xsl:value-of select="CountryOfResidenceValue" />
                          </td>
                            <!--Title	Title Thai	First Name	First Name Thai	Middle Name	Middle Name Thai	Last Name	Last Name Thai	Personal Identification Number	Tax Identification Number	Passport Number	Birth Date-->
                              <td class="labelXsl">
                            <xsl:value-of select="InvolvedPartyInfo/ThaiNationalityIndividualDetails/Title" />
                          </td>
                            <td class="labelXsl">
                            <xsl:value-of select="InvolvedPartyInfo/ThaiNationalityIndividualDetails/TitleThai"/>
                          </td>
                            <td class="labelXsl">
                            <xsl:value-of select="InvolvedPartyInfo/ThaiNationalityIndividualDetails/FirstName"/>
                          </td>
                            <td class="labelXsl">
                            <xsl:value-of select="InvolvedPartyInfo/ThaiNationalityIndividualDetails/FirstNameThai"/>
                          </td>
                            <td class="labelXsl">
                            <xsl:value-of select="InvolvedPartyInfo/ThaiNationalityIndividualDetails/MiddleName" />
                          </td>
                            <td class="labelXsl">
                            <xsl:value-of select="InvolvedPartyInfo/ThaiNationalityIndividualDetails/MiddleNameThai" />
                          </td>
                            <td class="labelXsl">
                            <xsl:value-of select="InvolvedPartyInfo/ThaiNationalityIndividualDetails/LastName" />
                          </td>
                            <td class="labelXsl">
                            <xsl:value-of select="InvolvedPartyInfo/ThaiNationalityIndividualDetails/LastNameThai" />
                          </td>
                            <td class="labelXsl">
                                <xsl:value-of select="InvolvedPartyInfo/ThaiNationalityIndividualDetails/PersonalIdentificationNumber" />
                            </td>
                            <td class="labelXsl">
                            <xsl:value-of select="InvolvedPartyInfo/ThaiNationalityIndividualDetails/TaxIdentificationNumber" />
                          </td>
                            <td class="labelXsl">
                            <xsl:value-of select="InvolvedPartyInfo/ThaiNationalityIndividualDetails/PassportNumber" />
                          </td>
                            <td class="labelXsl">
                            <xsl:value-of select="InvolvedPartyInfo/ThaiNationalityIndividualDetails/BirthDate" />
                          </td>
                            <!--BOI Flag	Primary Business Type	Juristic Identification Number	Juristic Registered Date	Tax Identification Number	SWIFT Code	Title	Title Thai	Registered Business Name	Registered Business Name Thai-->
                            <td class="labelXsl">
                            <xsl:value-of select="InvolvedPartyInfo/ThaiOrganizationDetails/BoiFlag" />
                          </td>
                             <td class="labelXsl">
                            <xsl:value-of select="InvolvedPartyInfo/ThaiOrganizationDetails/PrimaryBusinessType" />
                          </td>
                             <td class="labelXsl">
                            <xsl:value-of select="InvolvedPartyInfo/ThaiOrganizationDetails/JuristicIdentificationNumber" />
                          </td>
                             <td class="labelXsl">
                            <xsl:value-of select="InvolvedPartyInfo/ThaiOrganizationDetails/JuristicRegisteredDate" />
                          </td>
                             <td class="labelXsl">
                            <xsl:value-of select="InvolvedPartyInfo/ThaiOrganizationDetails/TaxIdentificationNumber" />
                          </td>
                             <td class="labelXsl">
                            <xsl:value-of select="InvolvedPartyInfo/ThaiOrganizationDetails/SwiftCode" />
                          </td>
                             <td class="labelXsl">
                            <xsl:value-of select="InvolvedPartyInfo/ThaiOrganizationDetails/Title" />
                          </td>
                             <td class="labelXsl">
                            <xsl:value-of select="InvolvedPartyInfo/ThaiOrganizationDetails/RegisteredBusinessName" />
                          </td>
                             <td class="labelXsl">
                            <xsl:value-of select="InvolvedPartyInfo/ThaiOrganizationDetails/TitleThai" />
                          </td>
                             <td class="labelXsl">
                            <xsl:value-of select="InvolvedPartyInfo/ThaiOrganizationDetails/RegisteredBusinessNameThai" />
                          </td>

                            <td class="labelXsl">
                            <xsl:value-of select="OtherIdentificationInfo/OtherIdentificationDetails/OtherIdentificationNumber" />
                          </td>
                             <td class="labelXsl">
                            <xsl:value-of select="OtherIdentificationInfo/OtherIdentificationDetails/UniqueIdType" />
                          </td>
                            <td class="labelXsl">
                                <xsl:value-of select="RelatedInvolvedPartyInfo/RelatedInvolvedPartyDetails/RelatedInvolvedPartyId"/>
                            </td>
                            <td class="labelXsl">
                                <xsl:value-of select="RelatedInvolvedPartyInfo/RelatedInvolvedPartyDetails/UniqueIdType"/>
                            </td>
                            <td class="labelXsl">
                                <xsl:value-of select="RelatedInvolvedPartyInfo/RelatedInvolvedPartyDetails/IpIpRelationshipTypeValue"/>
                            </td>
                      </tr>
                      </xsl:for-each>
                    </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>