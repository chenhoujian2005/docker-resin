<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="sx" uri="/struts-tags" %>
<html>
<head>
<title>Specialized Financial Institutions Information System</title>
<script type="text/javascript" src="../dwr/interface/GenerateExcel.js">;</script>
<script type="text/javascript" src="../dwr/engine.js">;</script>
<script type="text/javascript" src="../dwr/util.js">;</script>
<link rel="stylesheet" type="text/css" href="../includes/css/style.css">
<script type="text/javascript" src="../includes/js/tp/utils.js"></script>
<script type="text/javascript">
    function downloadFile(uploadVersionId){
        window.open('../downloadFile2.sl?uploadFileId='+uploadVersionId);
    }
    function gen(file){
        window.open('../Export.download?file='+ file );
    }
    function ConvertToExcel(ConvertToExcel) {
        window.open('../ConvertToExcel.excel?file='+ ConvertToExcel );
    }
</script>
</head>

<body>
<s:form action="file_transfer_detail" validate="false">
<s:hidden name="fileUploadId" id="fileUploadId"/>
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
    <div style="position:absolute;top:120px;left:300px;">

    </div>
    <table width="100%" border="0" align="center" style="height:100%" >
        <tr>
            <td>
                <table width="100%">
                    <tr>
                        <td colspan="2"><strong>File Transfer Detail</strong></td>
                    </tr>
                    <tr>
                        <td width="25%" class="label" align="right">SFIs Name :</td>
                        <td width="75%">${requestScope.fileUpload.sfi.nameTh}</td>
                    </tr>
                    <tr>
                        <td class="label" align="right">Dataset Name :</td>
                        <td>${requestScope.fileUpload.dsTitle3.name}</td>
                    </tr>
                    <tr>
                        <td class="label" align="right">Dataset Date :</td>
                        <td><fmt:formatDate value="${requestScope.fileUpload.dsDate}" pattern="dd MMM yyyy"/></td>
                    </tr>
                    <tr>
                        <td class="label" align="right">Sender Name :</td>
                        <td>${requestScope.fileUpload.createBy}</td>
                    </tr>
                    <tr>
                        <td class="label" align="right">File Size :</td>
                        <td><fmt:formatNumber value="${requestScope.fileUpload.fileSize}" pattern="#,###"/>&nbsp;(bytes)</td>
                    </tr>
                    <tr>
                        <td align="right">&nbsp;</td>
                    </tr>
                </table>
                <br>

                <table width="100%">
                     <c:if test="${requestScope.fileUpload.status ne 'REC'}">
                    <tr>
                       <td align="right">
                          <img src="../images/download_button.png" style="cursor:pointer" width="71" height="60" onclick="downloadFile(${sessionScope.fileUploadId})">
                        </td>
                    </tr>
                    </c:if>
                    <tr>
                        <td align="left">
                            <display:table name="fileUploadTransferLogs" id="row" export="false" class="displayTag" pagesize="15" requestURI="file_transfer_detail.action" style="width:100%;">
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
        <tr>
            <td align="center">
                <a class="button" style="height:18px;width:150px;vertical-align:bottom;" href="../convertToExcel.sl?uploadVersionId=${requestScope.uploadVersion.id}&dsVersionId=${requestScope.fileUpload.dsVersion.id}&reportType=${requestScope.excelPath}">&nbsp;Convert To Excel&nbsp;</a>
                <button onClick="window.close();" class="button" style="height:18px;width:70px;vertical-align:bottom;">Close</button> </td>
            <td>&nbsp;</td>
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

</body>
</html>
</body>
</html>