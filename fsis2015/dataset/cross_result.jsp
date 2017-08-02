<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<html>
<head>
<title>Specialized Financial Institutions Information System</title>
<link rel="stylesheet" type="text/css" href="../includes/css/style.css">
<script type="text/javascript" src="../includes/js/tp/utils.js"></script>
<script type="text/javascript">

</script>
</head>
<body>
<s:form action="cross_result" validate="false">
<table width="98%" border="0" cellspacing="0" cellpadding="0" align="center">
<tr>
    <td>
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td width="43"><img src="../images/table001.gif" width="43" height="43" alt=""></td>
                <td background="../images/table002.gif">&nbsp;</td>
                <td width="173"><img src="../images/table003.gif" width="173" height="43" alt=""></td>
            </tr>
        </table>
    </td>
</tr>
<tr>
<td>
<table width="100%" border="0" cellpadding="0" cellspacing="0" >
<tr>
<td width="43" background="../images/table004.gif">
    <img src="../images/table004.gif" width="43" height="37" alt="">
</td>
<td>
    <table width="100%" border="0" align="center" style="height:100%" >
        <tr>
            <td>
                <table width="100%">
                    <tr>
                        <td width="100%">
                            <b>Cross Validation Result </b>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table width="100%">
                                <tr>
                                    <td class="label" width="22%">SFIs Name :</td>
                                    <td width="78%">${requestScope.sfi.nameTh}</td>
                                </tr>
                                <tr>
                                    <td class="label">Dataset Name :</td>
                                    <td>${requestScope.dsTitle.name}</td>
                                </tr>
                                <tr>
                                    <td class="label">Version :</td>
                                    <td>${requestScope.dsVersion.version}</td>
                                </tr>
                                <tr>
                                    <td class="label">Dataset Date :</td>
                                    <td><fmt:formatDate pattern="dd MMM yyyy" value="${requestScope.datasetDate}"/></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <c:set var="exceptColor" value="#cccccc"/>

                    <c:if test="${requestScope.crossMasterDtoList ne null and requestScope.crossMasterDtoList ne '[]'}">
                        <c:forEach items="${requestScope.crossMasterDtoList}" var="thisDto">
                            <c:set var="isMasterExcept" value="false"/>
                            <c:if test="${thisDto.sendingWaive or thisDto.notUse or thisDto.notMatchPeriod}"><c:set var="isMasterExcept" value="true"/></c:if>
                            <tr>
                                <td>
                                    <table width="100%" cellpadding="1" cellspacing="1" bgcolor=#ffffff class="displayTable">
                                        <tr class="headerTableLow">
                                            <td width="20%">Dataset Name</td>
                                            <td width="30%">Status</td>
                                            <td width="17%">Cross Result</td>
                                            <td width="33%">Except</td>
                                        </tr>
                                        <tr class="bgGreen1Low">
                                            <td style="font:bold">
                                                ${thisDto.masterDsVersion.dsTitle.name} (${thisDto.masterDsVersion.version})
                                            </td>
                                            <c:if test="${! isMasterExcept}">
                                                <td align="left">
                                                    <c:if test="${thisDto.masterFileUpload ne null}">
                                                        <c:if test="${thisDto.masterFileUpload.status eq 'REC'}">Received</c:if>
                                                        <c:if test="${thisDto.masterFileUpload.status eq 'CAN'}">Cancelled</c:if>

                                                        <c:if test="${thisDto.masterFileUpload.status eq 'PKB'}">
                                                            <c:if test="${thisDto.masterFileUpload.adjust and thisDto.masterFileUpload.adjustApproveDate eq null and thisDto.masterFileUpload.adjustRejectDate eq null}">
                                                                Passed Key Basic Validation <span style="color:red">(W)</span>
                                                            </c:if>
                                                            <c:if test="${thisDto.masterFileUpload.adjust and thisDto.masterFileUpload.adjustRejectDate ne null}">
                                                                Passed Key Basic Validation <span style="color:red">(R)</span>
                                                            </c:if>
                                                            <c:if test="${not thisDto.masterFileUpload.adjust or thisDto.masterFileUpload.adjustApprove}">
                                                                Passed Key Basic Validation
                                                            </c:if>
                                                        </c:if>

                                                        <c:if test="${thisDto.masterFileUpload.status eq 'FKB'}">Failed Key Basic Validation</c:if>
                                                        <c:if test="${thisDto.masterFileUpload.status eq 'PCS'}">Passed Cross Validation</c:if>
                                                        <c:if test="${thisDto.masterFileUpload.status eq 'WRS'}">Waiting For Related Sets</c:if>
                                                        <c:if test="${thisDto.masterFileUpload.status eq 'PCX'}">Passed Complex Validation</c:if>
                                                        <c:if test="${thisDto.masterFileUpload.status eq 'FCX'}">Failed Complex Validation</c:if>
                                                    </c:if>
                                                    <c:if test="${thisDto.masterFileUpload eq null}">
                                                        <span style="color:red;">Not Send</span>
                                                    </c:if>
                                                </td>
                                            </c:if>
                                            <c:if test="${isMasterExcept}"><td bgcolor="${exceptColor}">&nbsp;</td></c:if>
                                            <td bgcolor="${exceptColor}">&nbsp;</td>
                                            <c:if test="${isMasterExcept}">
                                                <td>
                                                    <c:if test="${thisDto.sendingWaive and not thisDto.notUse and not thisDto.notMatchPeriod}">Sending Waive</c:if>
                                                    <c:if test="${not thisDto.sendingWaive and thisDto.notUse and not thisDto.notMatchPeriod}">ไม่ใช้ Dataset นี้&nbsp;&nbsp;</c:if>
                                                    <c:if test="${not thisDto.sendingWaive and not thisDto.notUse and thisDto.notMatchPeriod}">ไม่ตรงงวดเดือน&nbsp;&nbsp;</c:if>

                                                    <c:if test="${thisDto.sendingWaive and thisDto.notUse and not thisDto.notMatchPeriod}">Sending Waive , ไม่ใช้ Dataset นี้</c:if>
                                                    <c:if test="${thisDto.sendingWaive and not thisDto.notUse and thisDto.notMatchPeriod}">Sending Waive , ไม่ตรงงวดเดือน</c:if>
                                                    <c:if test="${not thisDto.sendingWaive and thisDto.notUse and thisDto.notMatchPeriod}">ไม่ใช้ Dataset นี้ , ไม่ตรงงวดเดือน</c:if>

                                                    <c:if test="${thisDto.sendingWaive and thisDto.notUse and thisDto.notMatchPeriod}">Sending Waive , ไม่ใช้ Dataset นี้ , ไม่ตรงงวดเดือน</c:if>
                                                </td>
                                            </c:if>
                                            <c:if test="${not isMasterExcept}">
                                                <td align="center">
                                                    <c:if test="${not thisDto.sendingWaive and not thisDto.notUse and not thisDto.notMatchPeriod}"> - </c:if>
                                                </td>
                                            </c:if>
                                        </tr>
                                        <c:forEach items="${thisDto.crossSlaveDtoList}" var="thisSlave">
                                            <c:set var="isSlaveExcept" value="false"/>
                                            <c:if test="${thisSlave.sendingWaive or thisSlave.notUse or thisSlave.notMatchPeriod}"><c:set var="isSlaveExcept" value="true"/></c:if>
                                            <tr class="bgGreen1Low">
                                                <td>${thisSlave.slaveDsTitle.name} <c:if test="${thisSlave.version ne null}">(${thisSlave.version})</c:if></td>
                                                <c:if test="${! isSlaveExcept}">
                                                    <td align="left">
                                                        <c:if test="${thisSlave.slaveFileUpload ne null}">
                                                            <c:if test="${thisSlave.slaveFileUpload.status eq 'REC'}">Received</c:if>
                                                            <c:if test="${thisSlave.slaveFileUpload.status eq 'CAN'}">Cancelled</c:if>
                                                            <%--<c:if test="${thisSlave.slaveFileUpload.status eq 'PKB'}">Passed Key Basic Validation</c:if>--%>
                                                            <c:if test="${thisSlave.slaveFileUpload.status eq 'PKB'}">
                                                                <c:if test="${thisSlave.slaveFileUpload.adjust and thisSlave.slaveFileUpload.adjustApproveDate eq null and thisSlave.slaveFileUpload.adjustRejectDate eq null}">
                                                                   Passed Key Basic Validation <span style="color:red">(W)</span>
                                                                </c:if>
                                                                <c:if test="${thisSlave.slaveFileUpload.adjust and thisSlave.slaveFileUpload.adjustRejectDate ne null}">
                                                                   Passed Key Basic Validation <span style="color:red">(R)</span>
                                                                </c:if>
                                                                <c:if test="${not thisSlave.slaveFileUpload.adjust or thisSlave.slaveFileUpload.adjustApprove}">
                                                                   Passed Key Basic Validation
                                                                </c:if>
                                                            </c:if>

                                                            <c:if test="${thisSlave.slaveFileUpload.status eq 'FKB'}">Failed Key Basic Validation</c:if>
                                                            <c:if test="${thisSlave.slaveFileUpload.status eq 'PCS'}">Passed Cross Validation</c:if>
                                                            <c:if test="${thisSlave.slaveFileUpload.status eq 'WRS'}">Waiting For Related Sets</c:if>
                                                            <c:if test="${thisSlave.slaveFileUpload.status eq 'PCX'}">Passed Complex Validation</c:if>
                                                            <c:if test="${thisSlave.slaveFileUpload.status eq 'FCX'}">Failed Complex Validation</c:if>
                                                        </c:if>
                                                        <c:if test="${thisSlave.slaveFileUpload eq null}">
                                                            <span style="color:red;">Not Send</span>
                                                        </c:if>
                                                    </td>
                                                </c:if>
                                                <c:if test="${isSlaveExcept}"><td bgcolor="${exceptColor}">&nbsp;</td></c:if>

                                                <c:if test="${! isSlaveExcept}">
                                                    <td align="center">
                                                        <c:choose>
                                                            <c:when test="${thisSlave.slaveFileUpload ne null and (thisSlave.errorMessage ne null or (thisSlave.pass && thisSlave.errorMessage eq null))  and (thisSlave.slaveFileUpload.status eq 'PCS' or thisSlave.slaveFileUpload.status eq 'WRS')}">
                                                            <%--<c:when test="${thisSlave.slaveFileUpload ne null and  thisSlave.errorMessage ne null  and (thisSlave.slaveFileUpload.status eq 'PCS' or thisSlave.slaveFileUpload.status eq 'WRS')}">--%>
                                                                <c:if test="${thisSlave.pass}">Pass</c:if>
                                                                <c:if test="${not thisSlave.pass}">Fail</c:if>
                                                            </c:when>
                                                            <c:otherwise>
                                                                -
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </td>
                                                </c:if>
                                                <c:if test="${isSlaveExcept}"><td bgcolor="${exceptColor}">&nbsp;</td></c:if>

                                                <c:if test="${isSlaveExcept}">
                                                    <td>
                                                        <c:if test="${thisSlave.sendingWaive and not thisSlave.notUse and not thisSlave.notMatchPeriod}">Sending Waive</c:if>
                                                        <c:if test="${not thisSlave.sendingWaive and thisSlave.notUse and not thisSlave.notMatchPeriod}">ไม่ใช้ Dataset นี้&nbsp;&nbsp;</c:if>
                                                        <c:if test="${not thisSlave.sendingWaive and not thisSlave.notUse and thisSlave.notMatchPeriod}">ไม่ตรงงวดเดือน&nbsp;&nbsp;</c:if>

                                                        <c:if test="${thisSlave.sendingWaive and thisSlave.notUse and not thisSlave.notMatchPeriod}">Sending Waive , ไม่ใช้ Dataset นี้</c:if>
                                                        <c:if test="${thisSlave.sendingWaive and not thisSlave.notUse and thisSlave.notMatchPeriod}">Sending Waive , ไม่ตรงงวดเดือน</c:if>
                                                        <c:if test="${not thisSlave.sendingWaive and thisSlave.notUse and thisSlave.notMatchPeriod}">ไม่ใช้ Dataset นี้ , ไม่ตรงงวดเดือน</c:if>

                                                        <c:if test="${thisSlave.sendingWaive and thisSlave.notUse and thisSlave.notMatchPeriod}">Sending Waive , ไม่ใช้ Dataset นี้ , ไม่ตรงงวดเดือน</c:if>
                                                    </td>
                                                </c:if>
                                                <c:if test="${not isSlaveExcept}">
                                                    <td align="center">
                                                        <c:if test="${not thisSlave.sendingWaive and not thisSlave.notUse and not thisSlave.notMatchPeriod}">-</c:if>
                                                    </td>
                                                </c:if>

                                            </tr>
                                        </c:forEach>
                                    </table>
                                </td>
                            </tr>
                        </c:forEach>

                        <tr>
                            <td style="color:red">หมายเหตุ</td>
                        </tr>
                        <tr>

                            <td>
                                <table width="100%" cellpadding="1" cellspacing="1" bgcolor=#ffffff class="displayTable">
                                    <tr class="bgGreen1Low">
                                        <td width="31%" align="right">Dataset Name ที่เป็นตัวหนา :</td>
                                        <td width="69%">Master Dataset</td>
                                    </tr>
                                    <tr class="bgGreen1Low">
                                        <td align="right">Status :</td>
                                        <td>สถานะของ Dataset</td>
                                    </tr>
                                    <tr class="bgGreen1Low">
                                        <td align="right">Cross Result :</td>
                                        <td>ผลของการทำ Cross Validation</td>
                                    </tr>
                                    <tr class="bgGreen1Low">
                                        <td align="right">Except :</td>
                                        <td>Dataset นี้ได้รับการยกเว้น</td>
                                    </tr>
                                    <tr class="bgGreen1Low">
                                        <td align="right">Passed Key Basic Validation <span style="color:red">(W)</span> :</td>
                                        <td>Dataset นี้ยังไม่ผ่านการ Approve Adjust (ต้องผ่านการ Approve Adjust ก่อนระบบจึงจะนำไปทำ Validation ในขึ้นตอนถัดไป)</td>
                                    </tr>
                                    <tr class="bgGreen1Low">
                                        <td align="right">Passed Key Basic Validation <span style="color:red">(R)</span> :</td>
                                        <td>Dataset นี้ถูก Reject Adjust (ระบบจะไม่นำรายการนี้ไปทำ Validation ในขึ้นตอนถัดไป)</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </c:if>
                    <tr>
                        <%--Edit By Tum 2014--%>
                        <br>
                        <td><b>File Transfer Detail</b></td>
                    </tr>
                    <tr>
                        <td align="left">
                            <display:table name="fileUploadTransferLogs" id="row" export="false" class="displayTag"  style="width:100%;">
                                <%--pagesize="15" requestURI="file_transfer_detail.action"--%>
                                <display:column title="Date" headerClass="headerTable" style="width:15%;text-align:center" format="{0,date,dd MMM yyyy}">
                                    <fmt:formatDate value="${row.createDate}" pattern="dd MMM yyyy"/>
                                </display:column>
                                <display:column title="Time" headerClass="headerTable" style="width:12%;text-align:center" format="{0,date,HH:mm:ss}">
                                    <fmt:formatDate value="${row.createDate}" pattern="HH:mm:ss"/>
                                </display:column>
                                <display:column title="Status" headerClass="headerTable" style="width:25%;text-align:left">
                                    <c:choose>
                                        <c:when test="${row.status eq 'NTS'}">Not Send</c:when>
                                        <c:when test="${row.status eq 'REC'}">Received</c:when>
                                        <c:when test="${row.status eq 'PKB'}">Passed Key Basic Validation</c:when>
                                        <c:when test="${row.status eq 'FKB'}">Failed Key Basic Validation</c:when>
                                        <c:when test="${row.status eq 'PCX'}">Passed Complex Validation</c:when>
                                        <c:when test="${row.status eq 'FCX'}">Failed Complex Validation</c:when>
                                        <c:when test="${row.status eq 'PCS'}">Passed Cross Validation</c:when>
                                        <c:when test="${row.status eq 'WRS'}">Waiting For Related Sets</c:when>
                                        <c:when test="${row.status eq 'FCS'}">Failed Cross Validation</c:when>
                                        <c:when test="${row.status eq 'CAN'}">Cancelled</c:when>
                                        <c:when test="${row.status eq 'UNA'}">Unapproved</c:when>
                                        <c:when test="${row.status eq 'APP'}">Adjust Approve</c:when>
                                        <c:when test="${row.status eq 'REJ'}">Adjust Reject</c:when>
                                        <c:when test="${row.status eq 'RAP'}">Report Approve</c:when>
                                        <c:when test="${row.status eq 'RRJ'}">Report Reject</c:when>

                                        <c:when test="${row.status eq 'UPD'}">Start Upload</c:when>
                                        <c:when test="${row.status eq 'SBV'}">Start Basic Validation</c:when>
                                        <c:when test="${row.status eq 'SCP'}">Start Complex Validation</c:when>
                                        <c:when test="${row.status eq 'SCS'}">Start Cross Validation</c:when>
                                    </c:choose>
                                </display:column>
                                <display:column title="Description" headerClass="headerTable" style="width:48%;text-align:left">
                                        ${row.description}
                                </display:column>
                            </display:table>
                        </td>
                    </tr>
                </table>
            </td>
            <td width="20px">&nbsp;</td>
        </tr>
    </table>
</td>
<td width="28" background="../images/table005.gif">
    <img src="../images/table005.gif" width="28" height="37" alt=""></td>
</tr>
<tr>
    <td><img src="../images/table006.gif" width="43" height="23" alt=""></td>
    <td background="../images/table007.gif"></td>
    <td><img src="../images/table008.gif" width="28" height="23" alt=""></td>
</tr>
</table>
</td>
</tr>
</table>
</s:form>
<script type="text/javascript">

</script>
</body>
</html>
</body>
</html>