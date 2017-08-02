<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<html>
<head>
<title>Simple jsp page</title>

<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="0">

<link rel="stylesheet" type="text/css" href="../includes/css/style.css">
</head>
<body>
<s:form action="home">
<table width="100%">
    <tr>
        <td width="50%" valign="top">
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
                                <td width="43" background="../images/table004.gif"><img src="../images/table004.gif" width="43" height="37" alt=""></td>
                                <td>
                                    <table width="100%" border="0" align="center" style="height:100%">
                                        <tr>
                                            <td style="height:100%">
                                                <%--content here--%>
                                                <table width="100%">
                                                    <tr>
                                                        <td width="100%">
                                                            <strong>Todo List</strong>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <display:table name="todoList" id="row" export="false" class="displayTag" style="width:100%;" >
                                                                <display:column title="SFIs Name" headerClass="headerTable" sortable="true" style="width:40%;text-align:left" >
                                                                    ${row[2]}
                                                                </display:column>
                                                                <display:column title="Dataset Name" headerClass="headerTable" sortable="true" style="width:15%;text-align:left">
                                                                    ${row[3]}
                                                                </display:column>
                                                                <display:column title="Dataset Date" headerClass="headerTable" sortable="true" style="width:15%;text-align:center">
                                                                    <fmt:formatDate value="${row[0]}" pattern="dd MMM yyyy"/>
                                                                </display:column>
                                                                <display:column title="Due Date" headerClass="headerTable" sortable="true" style="width:15%;text-align:center">
                                                                    <fmt:formatDate value="${row[1]}" pattern="dd MMM yyyy"/>
                                                                </display:column>
                                                                <display:column title="Sending Status" headerClass="headerTable" sortable="true" style="width:15%;text-align:center">
                                                                    Not send
                                                                </display:column>
                                                            </display:table>
                                                        </td>
                                                    </tr>
                                                    <c:if test="${requestScope.todoList ne null and requestScope.todoList ne '[]'}">
                                                    <tr>
                                                        <td align="right">
                                                            <a href="../logs/document_status_log.action?fromTodoList=true">
                                                                More
                                                            </a>
                                                        </td>
                                                    </tr>
                                                    </c:if>
                                                    <tr><td>&nbsp;</td></tr>
                                                    <c:if test="${sessionScope.menuAuthentication.newsInformationView}">
                                                    <tr>
                                                        <td>
                                                            <b>News &amp; Information</b><br/>
                                                            <display:table name="newsList" id="row" export="false" cellpadding="0" cellspacing="1" class="displayTag" style="width:100%" pagesize="10">
                                                                <display:column title="Subject" headerClass="headerTable" style="text-align:left;width:60%">
                                                                    <a href="../news/news_information_detail.action?newsId=${row.id}&view=true">
                                                                        ${row.subject}
                                                                    </a>
                                                                </display:column>
                                                                <display:column title="News Date" headerClass="headerTable" style="text-align:center;width:25%">
                                                                    <a href="../news/news_information_detail.action?newsId=${row.id}&view=true">
                                                                        <fmt:formatDate pattern="dd MMM yyyy" value="${row.actionDate}"/> -
                                                                        <fmt:formatDate pattern="dd MMM yyyy" value="${row.endDate}"/>
                                                                    </a>
                                                                </display:column>
                                                                <display:column title="Update By" headerClass="headerTable" style="text-align:center;width:15%">
                                                                    <a href="../news/news_information_detail.action?newsId=${row.id}&view=true">
                                                                        ${row.updateBy}
                                                                    </a>
                                                                </display:column>
                                                            </display:table>
                                                        </td>
                                                    </tr>
                                                    </c:if>
                                                </table>
                                                <%--content here--%>
                                            </td>
                                            <td width="20px">&nbsp;</td>
                                        </tr>
                                        <tr><td>&nbsp;</td></tr>
                                    </table>
                                </td>
                                <td width="28" background="../images/table005.gif"><img src="../images/table005.gif" width="28" height="37" alt=""></td>
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
        </td>
    </tr>
    <%--<c:if test="${sessionScope.menuAuthentication.newsInformationView}">--%>
    <%--<tr>--%>
        <%--<td width="50%" valign="top">--%>
            <%--<table width="98%" border="0" cellspacing="0" cellpadding="0" align="center">--%>
                <%--<tr>--%>
                    <%--<td>--%>
                        <%--<table width="100%" border="0" cellpadding="0" cellspacing="0">--%>
                            <%--<tr>--%>
                                <%--<td width="43"><img src="../images/table001.gif" width="43" height="53" alt=""></td>--%>
                                <%--<td background="../images/table002.gif">&nbsp;</td>--%>
                                <%--<td width="173"><img src="../images/table003.gif" width="173" height="53" alt=""></td>--%>
                            <%--</tr>--%>
                        <%--</table>--%>
                    <%--</td>--%>
                <%--</tr>--%>

                <%--<tr>--%>
                    <%--<td>--%>
                        <%--<table width="100%" border="0" cellpadding="0" cellspacing="0">--%>
                            <%--<tr>--%>
                                <%--<td width="43" background="../images/table004.gif"><img src="../images/table004.gif" width="43" height="37" alt=""></td>--%>
                                <%--<td>--%>
                                    <%--<table width="100%" border="0" align="center" style="height:100%">--%>
                                        <%--<tr>--%>
                                            <%--<td style="height:100%">--%>
                                                <%--<b>News &amp; Information</b><br/>--%>
                                                <%--<display:table name="newsList" id="row" export="false" cellpadding="0" cellspacing="1" class="displayTag" style="width:100%" pagesize="10">--%>
                                                    <%--<display:column title="Subject" headerClass="headerTable" style="text-align:left;width:65%">--%>
                                                        <%--<a href="../news/news_information_detail.action?newsId=${row.id}&view=true">--%>
                                                            <%--${row.subject}--%>
                                                        <%--</a>--%>
                                                    <%--</display:column>--%>
                                                    <%--<display:column title="Action Date" headerClass="headerTable" style="text-align:center;width:20%">--%>
                                                        <%--<a href="../news/news_information_detail.action?newsId=${row.id}&view=true">--%>
                                                            <%--<fmt:formatDate pattern="dd MMM yyyy" value="${row.actionDate}"/> ---%>
                                                            <%--<fmt:formatDate pattern="dd MMM yyyy" value="${row.endDate}"/>--%>
                                                        <%--</a>--%>
                                                    <%--</display:column>--%>
                                                    <%--<display:column title="Update By" headerClass="headerTable" style="text-align:center;width:15%">--%>
                                                        <%--<a href="../news/news_information_detail.action?newsId=${row.id}&view=true">--%>
                                                            <%--${row.updateBy}--%>
                                                        <%--</a>    --%>
                                                    <%--</display:column>--%>
                                                <%--</display:table>--%>
                                                <%--<br/>--%>
                                            <%--</td>--%>
                                            <%--<td width="20px">&nbsp;</td>--%>
                                        <%--</tr>--%>
                                    <%--</table>--%>
                                <%--</td>--%>
                                <%--<td width="28" background="../images/table005.gif"><img src="../images/table005.gif" width="28" height="37" alt=""></td>--%>
                            <%--</tr>--%>
                            <%--<tr>--%>
                                <%--<td><img src="../images/table006.gif" width="43" height="23" alt=""></td>--%>
                                <%--<td background="../images/table007.gif"></TD>--%>
                                <%--<td><img src="../images/table008.gif" width="28" height="23" alt=""></td>--%>
                            <%--</tr>--%>
                        <%--</table>--%>
                    <%--</td>--%>
                <%--</tr>--%>

            <%--</table>--%>
        <%--</td>--%>
    <%--</tr>--%>
    <%--</c:if>--%>
</table>
</s:form>
</body>
</html>