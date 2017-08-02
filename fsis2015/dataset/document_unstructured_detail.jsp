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


</script>
</head>

<body>
<s:form action="document_unstructured_detail" validate="false">
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
                        <td width="100%"><b>Document Unstructured Detail </b></td>
                    </tr>
                    <tr>
                        <td align="right">
                            <a href="../downloadFile.sl?uploadVersion=${requestScope.documentUnstructuredDetail.uploadVersionId}&documentType=UNS" title="Click here to download.">
                                <img src="../images/download.gif" width="16" height="16" border="0">Download&nbsp;</ime>
                            </a>

                        </td>
                    </tr>
                </table>
                <br>
                <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" bgcolor=#ffffff class="displayTable">
                    <tr class="bgGreen2">
                        <td height=24 align="right"><strong>Document Type : </strong></td>
                        <td>Unstructured</td>
                    </tr>
                    <tr class="bgGreen1">
                        <td height=24 align="right"><strong>SFIs Name :</strong></td>
                        <td>
                        ${requestScope.documentUnstructuredDetail.sfiName}
                        </td>
                    </tr>
                    <tr class="bgGreen2">
                        <td width="19%" height=24 align="right"><strong>Group : </strong></td>
                        <td>
                        ${requestScope.group}
                        </td>
                    </tr>
                    <tr class="bgGreen2">
                        <td height=24 align="right"><strong>Title : </strong></td>
                        <td>
                        ${requestScope.title}
                        </td>
                    </tr>
                    <c:if test="${requestScope.subTitle ne null}">
                    <tr class="bgGreen2">
                        <td height=24 align="right"><strong>Subtitle : </strong></td>
                        <td> ${requestScope.subTitle} </td>
                    </tr>
                    </c:if>
                    <c:if test="${requestScope.subTitle1 ne null}">
                        <tr class="bgGreen2">
                            <td height=24 align="right"><strong>Subtitle2 : </strong></td>
                            <td> ${requestScope.subTitle1} </td>
                        </tr>
                    </c:if>
                    <c:if test="${requestScope.subTitle2 ne null}">
                        <tr class="bgGreen2">
                            <td height=24 align="right"><strong>Subtitle3 : </strong></td>
                            <td> ${requestScope.subTitle2} </td>
                        </tr>
                    </c:if>
                    <c:if test="${requestScope.subTitle3 ne null}">
                        <tr class="bgGreen2">
                            <td height=24 align="right"><strong>Subtitle4 : </strong></td>
                            <td> ${requestScope.subTitle3} </td>
                        </tr>
                    </c:if>
                    <c:if test="${requestScope.subTitle4 ne null}">
                        <tr class="bgGreen2">
                            <td height=24 align="right"><strong>Subtitle5 : </strong></td>
                            <td> ${requestScope.subTitle4} </td>
                        </tr>
                    </c:if>
                    <c:if test="${requestScope.subTitle5 ne null}">
                        <tr class="bgGreen2">
                            <td height=24 align="right"><strong>Subtitle6 : </strong></td>
                            <td> ${requestScope.subTitle5} </td>
                        </tr>
                    </c:if>
                    <c:if test="${requestScope.subTitle6 ne null}">
                        <tr class="bgGreen2">
                            <td height=24 align="right"><strong>Subtitle7 : </strong></td>
                            <td> ${requestScope.subTitle6} </td>
                        </tr>
                    </c:if>
                    <tr class="bgGreen1">
                        <td height=24 align="right"><strong>Dataset Date : </strong></td>
                        <td>
                            <fmt:formatDate pattern="dd MMM yyyy" value="${requestScope.documentUnstructuredDetail.datasetDate}"/>
                        </td>
                    </tr>
                    <tr class="bgGreen2">
                        <td height=24 align="right"><strong>Upload Date : </strong></td>
                        <td>${requestScope.documentUnstructuredDetail.createDate} </td>
                    </tr>
                    <tr class="bgGreen1">
                        <td height=24 align="right"><strong>Description : </strong></td>
                        <td>
                        ${requestScope.documentUnstructuredDetail.description}
                        </td>
                    </tr>

                    <tr class="bgGreen2">
                        <td height=24 align="right"><strong>File name : </strong></td>
                        <td>
                        ${requestScope.documentUnstructuredDetail.fileName}
                        </td>
                    </tr>
                    <tr class="bgGreen1">
                        <td height=24 align="right"><strong>Sender Information : </strong></td>
                        <td>
                            <table>
                              <tr class="tdTableLight">
                                        <td>
                                            <div align="right"><strong>User name : </strong></div>
                                        </td>
                                        <td>${requestScope.documentUnstructuredDetail.userName}</td>
                                    </tr>
                                    <tr class="tdTableLight">
                                        <td>
                                            <div align="right"><strong>Thai name : </strong></div>
                                        </td>
                                        <td>${requestScope.documentUnstructuredDetail.thaiName}</td>
                                    </tr>
                                    <tr class="tdTableLight">
                                        <td>
                                            <div align="right"><strong>English name : </strong>
                                            </div>
                                        </td>
                                        <td>${requestScope.documentUnstructuredDetail.englishName}</td>
                                    </tr>
                                    <tr class="tdTableLight">
                                        <td>
                                            <div align="right"><strong>Telephone no : </strong>
                                            </div>
                                        </td>
                                        <td>${requestScope.documentUnstructuredDetail.telephone}&nbsp;#&nbsp;${requestScope.documentUnstructuredDetail.telephoneExt}
                                    </tr>
                                    <tr class="tdTableLight">
                                        <td>
                                            <div align="right"><strong>Email : </strong></div>
                                        </td>
                                        <td>${requestScope.documentUnstructuredDetail.email}</td>
                                    </tr>
                            </table>
                        </td>
                    </tr>
                    <tr class="bgGreen2">
                        <td height=24 align="right"><strong>Status :</strong></td>
                        <td>
                            ${requestScope.documentUnstructuredDetail.fullStatus}
                        </td>
                    </tr>
                        <c:if test="${requestScope.documentUnstructuredDetail.status eq 'APP'}">
                            <tr class="bgGreen1">
                                <td height=24 align="right" class="label"><strong>Approve By :</strong></td>
                                <td>
                                    ${requestScope.documentUnstructuredDetail.adjustApproveBy}
                                </td>
                            </tr>
                            <tr class="bgGreen2">
                                <td height=24 align="right" class="label"><strong>Approve Date :</strong></td>
                                <td>
                                    <fmt:formatDate pattern="dd MMM yyyy HH:mm" value="${requestScope.documentUnstructuredDetail.adjustApproveDate}"/>
                                </td>
                            </tr>
                        </c:if>
                        <c:if test="${requestScope.documentUnstructuredDetail.status eq 'REJ'}">
                            <tr class="bgGreen1">
                                <td height=24 align="right" class="label"><strong>Reject By :</strong></td>
                                <td>
                                    ${requestScope.documentUnstructuredDetail.adjustRejectBy}
                                </td>
                            </tr>
                            <tr class="bgGreen2">
                                <td height=24 align="right" class="label"><strong>Reject Date :</strong></td>
                                <td>
                                    <fmt:formatDate pattern="dd MMM yyyy HH:mm" value="${requestScope.documentUnstructuredDetail.adjustRejectDate}"/>
                                </td>
                            </tr>
                            <tr class="bgGreen1">
                                <td height=24 align="right"><strong>Reject Reason :</strong></td>
                                <td>
                                    ${requestScope.documentUnstructuredDetail.adjustRejectReason}
                                </td>
                            </tr>
                        </c:if>
                </table>
                <br>
            </td>
            <td width="20px">&nbsp;</td>
        </tr>
        <tr>
            <td height="30" align="center">
                    <c:choose>
                        <c:when test="${requestScope.documentUnstructuredDetail.enable and requestScope.documentUnstructuredDetail.status eq 'UNA' and (sessionScope.userLogin.role eq 'ADM' or sessionScope.userLogin.role eq 'MIS')}">
                            <s:submit value="Approve" method="approveUnstructured" cssClass="button" onclick="return confirmApprove();"/>
                            <input type="button" value="Reject" class="button" onclick="document.location = 'reject_reason_unstructured.action?uploadVersionId=${requestScope.documentUnstructuredDetail.uploadVersionId}&rejectType=RJUNS';"/>
                        </c:when>
                    </c:choose>
                <s:submit value="Close" onclick="window.close()" cssClass="button" style="height:18px;width:70px;vertical-align:bottom;"/>
            </td>
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
<script type="text/javascript">
  //  var obj = document.getElementById('docStatus');

//    function detail(id,dsTitle3,dsVersion) {
//        //window.open("xsl.jsp?id="+ name ,null,"height=650,width=900,status=yes,toolbar=yes,menubar=yes,resizable=1,scrollbars=1'");
//        window.location = 'display/main.jsp?id='+id +'&dsVersion='+ dsVersion;
//    }
</script>
</body>
</html>
