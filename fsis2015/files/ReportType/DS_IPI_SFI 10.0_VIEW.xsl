<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
    <html>
		<head>
			<META http-equiv="Content-Type" content="text/html; charset=TIS-620" />
			<link rel="stylesheet" type="text/css" href="../../includes/css/style.css" />
		</head>
		<body>
			<table width="3200px" cellspacing="0" cellpadding="0" align="center">
				<tr>
					<td width="100%">
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td width="43">
									<img src="../../images/table001.gif" width="43" height="43" />
								</td>
                                <td background="../../images/table002.gif">
                                    <img src="../../images/table002.gif" width="362" height="43"/>
                                </td>
								<td width="173">
									<img src="../../images/table003.gif" width="173" height="43" />
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
									<img src="../../images/table004.gif" width="43" height="37" />
								</td>
								<td width="95%">
									<table class="displayTable" width="25%">
										<tr>
											<td class="bgGreen" width="20%">Organization ID :</td>
											<td width="15%" colspan="3">
												<xsl:for-each select="DS_IPI/CommonHeader">
													<xsl:value-of select="OrganizationId" />
												</xsl:for-each>
											</td>
										</tr>
										<tr>
											<td class="bgGreen">Data Set Type :</td>
											<td colspan="3">
												<xsl:value-of select="DS_IPI/@name" />
											</td>
										</tr>
										<tr>
											<td class="bgGreen" />
											<td class="bgGreen" align="center">Day</td>
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
													<xsl:value-of select="substring(DataSetDate,9,2)" />
												</td>
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
									<table width="3200px" class="displayTable" border="0">
										<tr>
											<td class="headTableXsl" colspan="48">Involved Party Type</td>
										</tr>
										<tr>
											<td class="headTableXsl" rowspan="3" width="80px">Involved Party Type</td>
											<td class="headTableXsl" rowspan="3" width="280px">Involved Party Type Description</td>
											<td class="headTableXsl" rowspan="3" width="80px">Nationality</td>
											<td class="headTableXsl" rowspan="3" width="80px">Country of Residence</td>
											<td class="headTableXsl" colspan="44">Info</td>
										</tr>
										<tr>
											<td class="headTableXsl" colspan="12">Thai Nationality Individual</td>
											<td class="headTableXsl" colspan="10">Non Thai Nationality Individual</td>
											<td class="headTableXsl" colspan="10">Thai Organization</td>
											<td class="headTableXsl" colspan="7">Non Thai Organization</td>
											<td class="headTableXsl" colspan="2">Other Identification Info</td>
											<td class="headTableXsl" colspan="3">Related Involved Party Info</td>
										</tr>
										<tr>
										<!--ThaiNationalityIndividualDetails-->
											<td class="headTableXsl" width="80px">Title</td>
											<td class="headTableXsl" width="100px">Title Thai</td>
											<td class="headTableXsl" width="100px">First Name</td>
											<td class="headTableXsl" width="100px">First Name Thai</td>
											<td class="headTableXsl" width="100px">Middle Name</td>
											<td class="headTableXsl" width="100px">Middle Name Thai</td>
											<td class="headTableXsl" width="100px">Last Name</td>
											<td class="headTableXsl" width="100px">Last Name Thai</td>
											<td class="headTableXsl" width="100px">Personal Identification Number</td>
											<td class="headTableXsl" width="100px">Tax Identification Number</td>
											<td class="headTableXsl" width="100px">Passport Number</td>
											<td class="headTableXsl" width="100px">Birth Date</td>
											<!--NonThaiNationalityIndividualDetails-->
											<td class="headTableXsl" width="80px">Title</td>
											<td class="headTableXsl" width="100px">Title Thai</td>
											<td class="headTableXsl" width="100px">First Name</td>
											<td class="headTableXsl" width="100px">First Name Thai</td>
											<td class="headTableXsl" width="100px">Middle Name</td>
											<td class="headTableXsl" width="100px">Middle Name Thai</td>
											<td class="headTableXsl" width="100px">Last Name</td>
											<td class="headTableXsl" width="100px">Last Name Thai</td>
											<td class="headTableXsl" width="100px">Passport Number</td>
											<td class="headTableXsl" width="100px">Birth Date</td>
											<!--ThaiOrganizationDetails-->
											<td class="headTableXsl" width="100px">BOI Flag</td>
											<td class="headTableXsl" width="100px">Primary Business Type</td>
											<td class="headTableXsl" width="100px">Juristic Identification Number</td>
											<td class="headTableXsl" width="100px">Juristic Registered Date</td>
											<td class="headTableXsl" width="100px">Tax Identification Number</td>
											<td class="headTableXsl" width="100px">SWIFT Code</td>
											<td class="headTableXsl" width="100px">Title</td>
											<td class="headTableXsl" width="100px">Registered Business Name</td>
											<td class="headTableXsl" width="100px">Title Thai</td>											
											<td class="headTableXsl" width="100px">Registered Business Name Thai</td>
											<!--NonThaiOrganizationDetails-->
											<td class="headTableXsl" width="100px">BOI Flag</td>
											<td class="headTableXsl" width="100px">Primary Business Type</td>
											<td class="headTableXsl" width="100px">SWIFT Code</td>
											<td class="headTableXsl" width="100px">Title</td>
											<td class="headTableXsl" width="100px">Registered Business Name</td>
											<td class="headTableXsl" width="100px">Title Thai</td>											
											<td class="headTableXsl" width="100px">Registered Business Name Thai</td>
											<!--OtherIdentificationDetails-->
											<td class="headTableXsl" width="100px">Other Identification Number</td>
											<td class="headTableXsl" width="100px">Unique Id Type</td>
											<!--RelatedInvolvedPartyDetails-->
											<td class="headTableXsl" width="100px">Related Involved Party Id</td>
											<td class="headTableXsl" width="100px">Unique Id Type</td>
											<td class="headTableXsl" width="100px">IP IP Relationship Type</td>
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
												<!--ThaiNationalityIndividualDetails-->
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
												<!--NonThaiNationalityIndividualDetails-->
												<td class="labelXsl">
													<xsl:value-of select="InvolvedPartyInfo/NonThaiNationalityIndividualDetails/Title" />
												</td>
												<td class="labelXsl">
													<xsl:value-of select="InvolvedPartyInfo/NonThaiNationalityIndividualDetails/TitleThai"/>
												</td>
												<td class="labelXsl">
													<xsl:value-of select="InvolvedPartyInfo/NonThaiNationalityIndividualDetails/FirstName"/>
												</td>
												<td class="labelXsl">
													<xsl:value-of select="InvolvedPartyInfo/NonThaiNationalityIndividualDetails/FirstNameThai"/>
												</td>
												<td class="labelXsl">
													<xsl:value-of select="InvolvedPartyInfo/NonThaiNationalityIndividualDetails/MiddleName" />
												</td>
												<td class="labelXsl">
													<xsl:value-of select="InvolvedPartyInfo/NonThaiNationalityIndividualDetails/MiddleNameThai" />
												</td>
												<td class="labelXsl">
													<xsl:value-of select="InvolvedPartyInfo/NonThaiNationalityIndividualDetails/LastName" />
												</td>
												<td class="labelXsl">
													<xsl:value-of select="InvolvedPartyInfo/NonThaiNationalityIndividualDetails/LastNameThai" />
												</td>
												<td class="labelXsl">
													<xsl:value-of select="InvolvedPartyInfo/NonThaiNationalityIndividualDetails/PassportNumber" />
												</td>
												<td class="labelXsl">
													<xsl:value-of select="InvolvedPartyInfo/NonThaiNationalityIndividualDetails/BirthDate" />
												</td>
												
												<!--ThaiOrganizationDetails-->
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
												
												<!--NonThaiOrganizationDetails-->
												<td class="labelXsl">
													<xsl:value-of select="InvolvedPartyInfo/NonThaiOrganizationDetails/BoiFlag" />
												</td>
												<td class="labelXsl">
													<xsl:value-of select="InvolvedPartyInfo/NonThaiOrganizationDetails/PrimaryBusinessType" />
												</td>
												<td class="labelXsl">
													<xsl:value-of select="InvolvedPartyInfo/NonThaiOrganizationDetails/SwiftCode" />
												</td>
												<td class="labelXsl">
													<xsl:value-of select="InvolvedPartyInfo/NonThaiOrganizationDetails/Title" />
												</td>
												<td class="labelXsl">
													<xsl:value-of select="InvolvedPartyInfo/NonThaiOrganizationDetails/RegisteredBusinessName" />
												</td>
												<td class="labelXsl">
													<xsl:value-of select="InvolvedPartyInfo/NonThaiOrganizationDetails/TitleThai" />
												</td>
												<td class="labelXsl">
													<xsl:value-of select="InvolvedPartyInfo/NonThaiOrganizationDetails/RegisteredBusinessNameThai" />
												</td>
											<!--OtherIdentificationDetails-->
												<td class="labelXsl">
													<table width="100%" style="height:100%;">
														<xsl:for-each select="OtherIdentificationInfo/OtherIdentificationDetails">
															<tr>
																<td class="labelXsl"><xsl:value-of select="OtherIdentificationNumber"/></td>
															</tr>
														</xsl:for-each>
													</table>
												</td>
												<td class="labelXsl">
													<table width="100%" style="height:100%;">
														<xsl:for-each select="OtherIdentificationInfo/OtherIdentificationDetails">
															<tr>
																<td class="labelXsl"><xsl:value-of select="UniqueIdType"/></td>
															</tr>
														</xsl:for-each>
													</table>
												</td>
												<!--RelatedInvolvedPartyDetails-->
												<td class="labelXsl">
													<table width="100%" style="height:100%;">
														<xsl:for-each select="RelatedInvolvedPartyInfo/RelatedInvolvedPartyDetails">
															<tr>
																<td class="labelXsl"><xsl:value-of select="RelatedInvolvedPartyId"/></td>
															</tr>
														</xsl:for-each>
													</table>
												</td>
												<td class="labelXsl">
													<table width="100%" style="height:100%;">
														<xsl:for-each select="RelatedInvolvedPartyInfo/RelatedInvolvedPartyDetails">
															<tr>
																<td class="labelXsl"><xsl:value-of select="UniqueIdType"/></td>
															</tr>
														</xsl:for-each>
													</table>
												</td>
												<td class="labelXsl">
													<table width="100%" style="height:100%;">
														<xsl:for-each select="RelatedInvolvedPartyInfo/RelatedInvolvedPartyDetails">
															<tr>
																<td class="labelXsl"><xsl:value-of select="IpIpRelationshipTypeValue"/></td>
															</tr>
														</xsl:for-each>
													</table>
												</td>
												
												
											</tr>
										</xsl:for-each>
									</table>
								</td>
								<td width="28" background="../../images/table005.gif">
									<img src="../../images/table005.gif" width="28" height="37" />
								</td>
							</tr>
							<tr>
								<td>
									<img src="../../images/table006.gif" width="43" height="23" alt="" />
								</td>
								<td background="../../images/table007.gif" />
								<td>
									<img src="../../images/table008.gif" width="28" height="23" alt="" />
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