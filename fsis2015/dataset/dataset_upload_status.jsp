<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<html>
<head>
    <title>Simple jsp page</title>
    <link rel="stylesheet" type="text/css" href="../includes/css/style.css">
    <script type="text/javascript" src="../includes/js/tp/utils.js"></script>
</head>
<body>
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
                                        <%--content here--%>
                                        <table width="100%">
                                            <tr>
                                                <td colspan="2" align="left"><strong>Upload Result</strong></td>
                                            </tr>
                                            <tr><td colspan="2">&nbsp;</td></tr>
                                            <tr style="height:23px">
                                                <td width="20%" class="label">SFIs Name :</td>
                                                <td width="80%">${sessionScope.uploadStatusDto.sfiName}</td>
                                            </tr>
                                            <tr style="height:23px">
                                                <td class="label">Dataset Name :</td>
                                                <td>${sessionScope.uploadStatusDto.datasetName}</td>
                                            </tr>
                                            <c:if test="${not empty sessionScope.uploadStatusDto.version}">
                                                <tr style="height:23px">
                                                    <td class="label">Version :</td>
                                                    <td>${sessionScope.uploadStatusDto.version}</td>
                                                </tr>
                                            </c:if>
                                            <tr style="height:23px">
                                                <td class="label">Dataset Date :</td>
                                                <td>${sessionScope.uploadStatusDto.datasetDate}</td>
                                            </tr>
                                            <tr style="height:23px">
                                                <td class="label">Upload Date :</td>
                                                <td>${sessionScope.uploadStatusDto.uploadDate}</td>
                                            </tr>
                                            <tr style="height:23px">
                                                <td class="label">Status :</td>
                                                <td>
                                                    <c:choose>
                                                        <c:when test="${sessionScope.uploadStatus eq 'PKB'}">
                                                            <font color="green">Pass Key Basic Validation</font>
                                                        </c:when>
                                                        <c:when test="${sessionScope.uploadStatus eq 'FKB'}">
                                                            <font color="red">Failed Key Basic Validation</font>
                                                        </c:when>
                                                        <c:when test="${sessionScope.uploadStatus eq 'TO_ADJ'}">
                                                            <font color="red">Please go to Submit Adjusted Page (This dataset has passed complex validation)</font>
                                                        </c:when>
                                                        <c:when test="${sessionScope.uploadStatus eq 'TO_NOR'}">
                                                            <font color="red">Please go to Submit Structured Page (This dataset are not pass complex validation)</font>
                                                        </c:when>
                                                        <c:when test="${sessionScope.uploadStatus eq 'PAS'}">
                                                            <font color="green">Upload File Success</font>
                                                        </c:when>
                                                        <c:when test="${sessionScope.uploadStatus eq 'FAL'}">
                                                            <font color="red">Upload File Failed</font>
                                                        </c:when>
                                                    </c:choose>
                                                </td>
                                            </tr>
                                            <c:if test="${not empty(sessionScope.errorMessage)}">
                                            <tr>
                                                <td class="label" valign="top">Error : </td>
                                                <td>
                                                     <font color="red">${sessionScope.errorMessage}</font>
                                                </td>
                                            </tr>
                                            </c:if>
                                        </table>
                                        <br/>
                                        <p align="center">
                                            <button class="button" onclick="document.location='${param.to}';">Back</button>
                                        </p>
                                    </td>
                                    <td width="20px">&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                        <td width="28" background="../images/table005.gif">
                            <img src="../images/table005.gif" width="28" height="37" alt="">
                        </td>
                    </tr>
                    <tr>
                        <td><img src="../images/table006.gif" width="43" height="23" alt=""></td>
                        <td background="../images/table007.gif"></TD>
                        <td><img src="../images/table008.gif" width="28" height="23" alt=""></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</body>
</html>
