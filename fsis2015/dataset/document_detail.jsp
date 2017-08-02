<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>Specialized Financial Institutions Information System</title>
    <script type="text/javascript" src="../dwr/interface/GenerateExcel.js">;</script>
    <script type="text/javascript" src="../dwr/engine.js">;</script>
    <script type="text/javascript" src="../dwr/util.js">;</script>
    <link rel="stylesheet" type="text/css" href="../includes/css/style.css">
    <script type="text/javascript" src="../includes/js/tp/utils.js"></script>
    <script type="text/javascript">
        function displayBySelect(status) {
            var obj = document.getElementById('reasonArea');
            obj.style.display = (status == 'RJ') ? 'inline' : 'none';
        }

        function confirmApprove() {
            return confirm('Do you want to Approve this document ? ');
        }

        function gen(file) {
            window.open('../Export.download?file=' + file);
        }

        function ConvertToExcel(ConvertToExcel) {
            window.open('../ConvertToExcel.excel?file=' + ConvertToExcel);
        }
    </script>
</head>

<body>
<s:form action="document_detail" validate="false">
<s:hidden name="uploadVersionId" id="uploadVersionId"/>
<s:hidden name="id" id="id"/>
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
<table width="100%" border="0" cellpadding="0" cellspacing="0">
<tr>
<td width="43" background="../images/table004.gif">
    <img src="../images/table004.gif" width="43" height="37" alt="">
</td>
<td>
<table width="100%" border="0" align="center" style="height:100%">
<tr>
<td>
<table width="100%">
    <tr>
        <td width="100%"><b>Document detail </b></td>
    </tr>
    <tr>
        <td align="right">
            <a href="../downloadFile.sl?uploadVersion=${requestScope.uploadVersion.id}&documentType=${requestScope.fileUpload.documentType}"
               title="Click here to download.">
                <img src="../images/download.gif" width="16" height="16" border="0">Download&nbsp;</ime>
            </a>
        </td>
    </tr>
</table>
<br>
<table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" bgcolor=#ffffff class="displayTable">
<tr class="bgGreen2">
    <td height=24 align="right"><strong>Document Type : </strong></td>
    <td>
        <c:choose>
            <c:when test="${requestScope.fileUpload.documentType eq 'STR'}">
                Structured&nbsp;
                <c:if test="${not requestScope.fileUpload.adjust}">(Normal)</c:if>
                <c:if test="${requestScope.fileUpload.adjust}">(Adjust)</c:if>
            </c:when>
            <%--<c:when test="${requestScope.fileUpload.documentType eq 'UNS'}">--%>
            <%--Unstructured--%>
            <%--</c:when>--%>
        </c:choose>
    </td>
</tr>
<tr class="bgGreen1">
    <td height=24 align="right"><strong>SFIs Name :</strong></td>
    <td>${requestScope.fileUpload.sfi.nameTh}</td>
</tr>
<tr class="bgGreen2">
    <td width="19%" height=24 align="right"><strong>Group : </strong></td>
    <td>${requestScope.fileUpload.dsTitle1.name}</td>
</tr>
<tr class="bgGreen1">
    <td height=24 align="right"><strong>Title : </strong></td>
    <td>${requestScope.fileUpload.dsTitle2.name}</td>
</tr>
<tr class="bgGreen2">
    <td height=24 align="right"><strong>Subtitle : </strong></td>
    <td>
        <c:if test="${requestScope.fileUpload.dsTitle2.name ne requestScope.fileUpload.dsTitle3.name}">
            ${requestScope.fileUpload.dsTitle3.name}
        </c:if>
    </td>
</tr>
<tr class="bgGreen1">
    <c:if test="${requestScope.fileUpload.documentType eq 'STR'}">
        <td height=24 align="right"><strong>Version : </strong></td>
        <td>${requestScope.fileUpload.dsVersion.version}</td>
    </c:if>
        <%--<c:if test="${requestScope.fileUpload.documentType eq 'UNS'}">--%>
        <%--<td height=24 align="right"><strong>Subtitle2 : </strong></td>--%>
        <%--<td>--%>
        <%--<c:if test="${requestScope.fileUpload.dsTitle3.name ne requestScope.fileUpload.dsTitle4.name}">--%>
        <%--${requestScope.fileUpload.dsTitle4.name}--%>
        <%--</c:if>--%>
        <%--</td>--%>
        <%--</c:if>--%>
</tr>
<tr class="bgGreen2">
    <td height=24 align="right"><strong>Dataset Date : </strong></td>
    <td><fmt:formatDate pattern="dd MMM yyyy" value="${requestScope.fileUpload.dsDate}"/></td>
</tr>
<tr class="bgGreen1">
    <td height=24 align="right"><strong>Upload Date : </strong></td>
    <td><fmt:formatDate pattern="dd MMM yyyy HH:mm:ss" value="${requestScope.uploadVersion.createDate}"/></td>
</tr>
<tr class="bgGreen2">
    <td height=24 align="right"><strong>Description : </strong></td>
    <td>${requestScope.uploadVersion.description}</td>
</tr>

<tr class="bgGreen1">
    <td height=24 align="right"><strong>File name : </strong></td>
    <td>${requestScope.uploadVersion.fileName}</td>
</tr>
<tr class="bgGreen2">
    <td height=24 align="right"><strong>Sender Information : </strong></td>
    <td>
        <table>
            <c:if test="${requestScope.fileUpload.user ne null}">
                <tr class="tdTableLight">
                    <td>
                        <div align="right"><strong>User name : </strong></div>
                    </td>
                    <td>${requestScope.fileUpload.user.userName}</td>
                </tr>
                <tr class="tdTableLight">
                    <td>
                        <div align="right"><strong>Thai name : </strong></div>
                    </td>
                    <td>${requestScope.fileUpload.user.thaiName}</td>
                </tr>
                <tr class="tdTableLight">
                    <td>
                        <div align="right"><strong>English name : </strong>
                        </div>
                    </td>
                    <td>${requestScope.fileUpload.user.englishName}</td>
                </tr>
                <tr class="tdTableLight">
                    <td>
                        <div align="right"><strong>Telephone no : </strong>
                        </div>
                    </td>
                    <td>${requestScope.fileUpload.user.telephone}&nbsp;#&nbsp;${requestScope.fileUpload.user.telephoneExt}
                </tr>
                <tr class="tdTableLight">
                    <td>
                        <div align="right"><strong>Email : </strong></div>
                    </td>
                    <td>${requestScope.fileUpload.user.email}</td>
                </tr>
            </c:if>
            <c:if test="${requestScope.fileUpload.user eq null}">
                <tr class="tdTableLight">
                    <td>${requestScope.fileUpload.createBy}</td>
                </tr>
            </c:if>
        </table>
    </td>
</tr>
<tr class="bgGreen1">
    <td height=24 align="right"><strong>Status :</strong></td>
    <td>
            ${requestScope.fileUpload.fullDocumentStatus}
    </td>
</tr>
<c:if test="${requestScope.fileUpload.adjust}">
    <tr class="bgGreen2">
        <td height=24 align="right"><strong>Adjust Reason :</strong></td>
        <td>
                ${requestScope.fileUpload.adjustReason}
        </td>
    </tr>
    <c:if test="${requestScope.fileUpload.adjustApproveDate ne null}">
        <tr class="bgGreen1">
            <td height=24 align="right" class="label"><strong>Adjust Approve By :</strong></td>
            <td>
                    ${requestScope.fileUpload.adjustApproveBy}
            </td>
        </tr>
        <tr class="bgGreen2">
            <td height=24 align="right" class="label"><strong>Adjust Approve Date :</strong></td>
            <td>
                <fmt:formatDate pattern="dd MMM yyyy HH:mm" value="${requestScope.fileUpload.adjustApproveDate}"/>
            </td>
        </tr>
    </c:if>
    <c:if test="${requestScope.fileUpload.adjustRejectDate ne null}">
        <tr class="bgGreen1">
            <td height=24 align="right" class="label"><strong>Adjust Reject By :</strong></td>
            <td>
                    ${requestScope.fileUpload.adjustRejectBy}
            </td>
        </tr>
        <tr class="bgGreen1">
            <td height=24 align="right" class="label"><strong>Adjust Reject Date :</strong></td>
            <td>
                <fmt:formatDate pattern="dd MMM yyyy HH:mm" value="${requestScope.fileUpload.adjustRejectDate}"/>
            </td>
        </tr>
        <tr class="bgGreen1">
            <td height=24 align="right"><strong>Adjust Reject Reason :</strong></td>
            <td>
                    ${requestScope.adjustRejectReason}
            </td>
        </tr>
    </c:if>
</c:if>

<c:if test="${requestScope.fileUpload.reportApproveDate ne null}">
    <tr class="bgGreen1">
        <td height=24 align="right" class="label"><strong>Report Approve By :</strong></td>
        <td>
                ${requestScope.fileUpload.reportApproveBy}
        </td>
    </tr>
    <tr class="bgGreen2">
        <td height=24 align="right" class="label"><strong>Report Approve Date :</strong></td>
        <td>
            <fmt:formatDate pattern="dd MMM yyyy HH:mm" value="${requestScope.fileUpload.reportApproveDate}"/>
        </td>
    </tr>
</c:if>
<c:if test="${requestScope.fileUpload.reportRejectDate ne null}">
    <tr class="bgGreen1">
        <td height=24 align="right" class="label"><strong>Report Reject By :</strong></td>
        <td>
                ${requestScope.fileUpload.reportRejectBy}
        </td>
    </tr>
    <tr class="bgGreen1">
        <td height=24 align="right" class="label"><strong>Report Reject Date :</strong></td>
        <td>
            <fmt:formatDate pattern="dd MMM yyyy HH:mm" value="${requestScope.fileUpload.reportRejectDate}"/>
        </td>
    </tr>
    <tr class="bgGreen1">
        <td height=24 align="right" class="label"><strong>Report Reject Reason :</strong></td>
        <td>
                ${requestScope.fileUpload.reportRejectReason}
        </td>
    </tr>
</c:if>

    <%--<c:if test="${requestScope.fileUpload.documentType eq 'UNS'}">--%>
    <%--<c:if test="${requestScope.fileUpload.status eq 'APP'}">--%>
    <%--<tr class="bgGreen2">--%>
    <%--<td height=24 align="right" class="label">Approve By :</td>--%>
    <%--<td>--%>
    <%--${requestScope.fileUpload.adjustApproveBy}--%>
    <%--</td>--%>
    <%--</tr>--%>
    <%--<tr class="bgGreen1">--%>
    <%--<td height=24 align="right" class="label">Approve Date :</td>--%>
    <%--<td>--%>
    <%--<fmt:formatDate pattern="dd MMM yyyy HH:mm" value="${requestScope.fileUpload.adjustApproveDate}"/>--%>
    <%--</td>--%>
    <%--</tr>--%>
    <%--</c:if>--%>
    <%--<c:if test="${requestScope.fileUpload.status eq 'REJ'}">--%>
    <%--<tr class="bgGreen2">--%>
    <%--<td height=24 align="right" class="label">Reject By :</td>--%>
    <%--<td>--%>
    <%--${requestScope.fileUpload.adjustRejectBy}--%>
    <%--</td>--%>
    <%--</tr>--%>
    <%--<tr class="bgGreen1">--%>
    <%--<td height=24 align="right" class="label">Reject Date :</td>--%>
    <%--<td>--%>
    <%--<fmt:formatDate pattern="dd MMM yyyy HH:mm" value="${requestScope.fileUpload.adjustRejectDate}"/>--%>
    <%--</td>--%>
    <%--</tr>--%>
    <%--<tr class="bgGreen2">--%>
    <%--<td height=24 align="right"><strong>Reject Reason :</strong></td>--%>
    <%--<td>--%>
    <%--${requestScope.fileUpload.adjustRejectReason}--%>
    <%--</td>--%>
    <%--</tr>--%>
    <%--</c:if>--%>
    <%--</c:if>--%>
</table>
<br>
</td>
<td width="20px">&nbsp;</td>
</tr>
<tr>
    <td height="30" align="center">
        <c:if test="${requestScope.fileUpload.documentType eq 'STR'}">
            <button name="view" value="View" class="button" style="height:18px;width:70px;vertical-align:bottom;"
                    onclick="detail('${requestScope.uploadVersion.id}','${requestScope.fileUpload.dsTitle3}','${requestScope.fileUpload.dsVersion.id}');">
                View
            </button>
            <a class="button" style="height:18px;width:150px;vertical-align:bottom;"
               href="../convertToExcel.sl?uploadVersionId=${requestScope.uploadVersion.id}&dsVersionId=${requestScope.fileUpload.dsVersion.id}&reportType=${requestScope.excelPath}">
                &nbsp;Convert To Excel&nbsp;</a>
            <c:if test="${requestScope.canApproveAdjust}">
                <s:submit value="Adjust Approve" method="approve" cssClass="button" cssStyle="width:120px"
                          onclick="return confirmApprove();"/>
                <input type="button" value="Adjust Reject" class="button" style="width:120px"
                       onclick="document.location = 'reject_reason.action?uploadVersionId=${requestScope.uploadVersionId}&rejectType=RJADJ';"/>
            </c:if>
            <c:if test="${requestScope.canApproveReport}">
                <s:submit value="Report Approve" method="reportApprove" cssClass="button" cssStyle="width:120px"
                          onclick="return confirmApprove();"/>
                <input type="button" value="Report Reject" class="button" style="width:120px"
                       onclick="document.location = 'reject_reason.action?uploadVersionId=${requestScope.uploadVersionId}&rejectType=RJRPT';"/>
            </c:if>
        </c:if>
            <%--<c:if test="${requestScope.fileUpload.documentType eq 'UNS'}">--%>
            <%--<c:choose>--%>
            <%--<c:when test="${requestScope.fileUpload.enable and requestScope.fileUpload.status eq 'UNA' and (sessionScope.userLogin.role eq 'ADM' or sessionScope.userLogin.role eq 'MIS')}">--%>
            <%--<s:submit value="Approve" method="approveUnstructured" cssClass="button" onclick="return confirmApprove();"/>--%>
            <%--<input type="button" value="Reject" class="button" onclick="document.location = 'reject_reason.action?uploadVersionId=${requestScope.uploadVersionId}&rejectType=RJUNS';"/>--%>
            <%--</c:when>--%>
            <%--</c:choose>--%>
            <%--</c:if>--%>
        <s:submit value="Close" onclick="window.close()" cssClass="button"
                  style="height:18px;width:70px;vertical-align:bottom;"/>
    </td>
    <td>&nbsp;</td>
</tr>
<c:if test="${not requestScope.canApproveReport and not requestScope.alreadyApproveReport and requestScope.fileUpload.documentType eq 'STR'}">
    <tr>
        <td>
            <table width="100%">
                <tr>
                    <td>
                        <span style="color:red;">หมายเหตุ ไม่สามารถ Approve Report ได้เนื่องจาก</span>
                    </td>
                </tr>
                <c:if test="${requestScope.sendingWaive}">
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp; - Sending Waive</td>
                    </tr>
                </c:if>
                <c:if test="${requestScope.notUse}">
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp; - Frequency Config ที่ตั้งเอาไว้คือ "ไม่ใช้ Dataset นี้"</td>
                    </tr>
                </c:if>
                <c:if test="${requestScope.notMatchPeriod}">
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp; - ไม่ตรงงวดเดือน</td>
                    </tr>
                </c:if>
                <c:if test="${requestScope.notApproveAdjust}">
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp; - ยังไม่ได้ Approve Adjust</td>
                    </tr>
                </c:if>
                <c:if test="${requestScope.cancel}">
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp; - สถานะเป็น Cancelled</td>
                    </tr>
                </c:if>
                <c:if test="${not requestScope.sendingWaive and not requestScope.notUse and not requestScope.notMatchPeriod and not requestScope.notApproveAdjust and not requestScope.cancel}">
                    <c:choose>
                        <c:when test="${requestScope.haveCrossValidate and requestScope.fileUpload.status eq 'WRS'}">
                            <tr>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp; - ยังไม่ผ่าน Cross Validate</td>
                            </tr>
                        </c:when>
                        <c:when test="${requestScope.haveComplexValidate and not requestScope.fileUpload.passComplex}">
                            <tr>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp; - ยังไม่ผ่าน Complex Validate</td>
                            </tr>
                        </c:when>
                    </c:choose>
                </c:if>

            </table>
        </td>
        <td>&nbsp;</td>
    </tr>
</c:if>
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
    var obj = document.getElementById('docStatus');

    function detail(id, dsTitle3, dsVersion) {
        //window.open("xsl.jsp?id="+ name ,null,"height=650,width=900,status=yes,toolbar=yes,menubar=yes,resizable=1,scrollbars=1'");
        window.location = 'display/main.jsp?id=' + id + '&dsVersion=' + dsVersion;
    }
</script>
</body>
</html>
