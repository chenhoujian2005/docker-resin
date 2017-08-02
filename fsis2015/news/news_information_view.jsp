<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>Simple jsp page</title>
    <link rel="stylesheet" type="text/css" href="../includes/css/style.css">

    <script type="text/javascript">

    </script>
</head>
<body>
<s:form action="news_information_detail">
    <s:hidden id="newsId" name="newsId"/>
    <s:hidden name="sfiNameHidden"/>
    <s:hidden name="dateFromHidden"/>
    <s:hidden name="dateToHidden"/>
    <s:hidden name="subjectHidden"/>
    <s:hidden name="descriptionHidden"/>
    <s:hidden name="sendTypeHidden"/>
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
                        <td width="43" background="../images/table004.gif"><img src="../images/table004.gif" width="43"
                                                                                height="37" alt=""></td>
                        <td>
                            <table width="100%" border="0" align="center" style="height:100%">
                                <tr>
                                    <td style="height:100%">
                                            <%--content here--%>
                                        <table width="100%">
                                            <tr>
                                                <td width="100%">
                                                    <b>News &amp; Information : View</b>
                                                </td>
                                            </tr>
                                        </table>
                                        <table width="100%" class="displayTable">
                                            <tr class="bgGreen1">
                                                <td align="right" width="15%">
                                                    <b>News Date :</b>
                                                </td>
                                                <td align="left" width="15%">
                                                    <s:property value="newsDate"/>
                                                </td>
                                                <td align="right" width="15%">
                                                    <b>End Date :</b>
                                                </td>
                                                <td align="left" width="55%">
                                                    <s:property value="endDate"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td align="right">
                                                    <b>Subject :</b>
                                                </td>
                                                <td colspan="3">
                                                    <s:property value="subject"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td align="right">
                                                    <b>News Description :</b>
                                                </td>
                                                <td colspan="3">
                                                    <s:textarea id="newsDescription" name="newsDescription"
                                                                cssStyle="width:100%" rows="20" readonly="true"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td align="right" class="labelText"><b>File :</b></td>
                                                <td colspan="3">
                                                    <a href="../downloadFile.sl?fileName=${requestScope.fileFileName}&originalFileName=${requestScope.originalFileName}&systemName=${requestScope.systemName}"
                                                       title="Download attachment file">${requestScope.originalFileName}</a>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td align="right" class="labelText"><b>Create & Update Information :</b>
                                                </td>
                                                <td colspan="3">
                                                    <table>
                                                        <tr class="tdTableLight">
                                                            <td>
                                                                <div align="right"><strong>Create Date : </strong></div>
                                                            </td>
                                                            <td><fmt:formatDate pattern="dd MMM yyyy HH:mm:ss"
                                                                                value="${requestScope.news.createDate}"/></td>
                                                        </tr>
                                                        <tr class="tdTableLight">
                                                            <td>
                                                                <div align="right"><strong>Create By : </strong></div>
                                                            </td>
                                                            <td>${requestScope.news.createBy}</td>
                                                        </tr>
                                                        <tr class="tdTableLight">
                                                            <td>
                                                                <div align="right"><strong>Update Date : </strong></div>
                                                            </td>
                                                            <td><fmt:formatDate pattern="dd MMM yyyy HH:mm:ss"
                                                                                value="${requestScope.news.updateDate}"/></td>
                                                        </tr>
                                                        <tr class="tdTableLight">
                                                            <td>
                                                                <div align="right"><strong>Update By : </strong></div>
                                                            </td>
                                                            <td>${requestScope.news.updateBy}</td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                        <table width="100%">
                                            <tr>
                                                <td width="100%" align="center">
                                                    <s:submit id="backBtn" method="back" value="Back"
                                                              cssClass="button"/>
                                                        <%--<s:submit action="news_information" value="Back" cssClass="button"/>--%>
                                                </td>
                                            </tr>
                                        </table>
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
</s:form>
<script type="text/javascript">
    var thisForm = document.getElementsByTagName('form')[0];
</script>
</body>
</html>