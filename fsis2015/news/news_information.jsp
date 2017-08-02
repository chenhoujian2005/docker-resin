<%@ page import="th.go.mof.fpo.Constants" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<html>
<head>
    <title>Simple jsp page</title>
    <script type="text/javascript" src="../includes/js/jquery.js"></script>
    <link rel="stylesheet" type="text/css" href="../includes/css/style.css">
    <script type="text/javascript" src="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.js"></script>
    <link href="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.css" rel="stylesheet"
          type="text/css">
    <script type="text/javascript">
        function setId(id) {
            thisForm.id.value = id;
        }

        function resetForm() {
            thisForm.subject.value = '';
            thisForm.description.value = '';
            thisForm.dateFrom.value = '';
            thisForm.dateTo.value = '';

        <c:if test="${sessionScope.userLogin.sfi.id eq 000}">
            thisForm.tmpName2.value = '';
            thisForm.sendType[0].checked = true;
        </c:if>
        }
    </script>
</head>
<body>
<s:form action="news_information" id="news_information" name="news_information" validate="false">
    <s:hidden id="id" name="id"/>
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
                            <img src="../images/table004.gif" width="43" height="37" alt=""></td>
                        <td>
                            <table width="100%" border="0" align="center" style="height:100%">
                                <tr>
                                    <td>
                                            <%--content here--%>
                                        <table width="100%">
                                            <tr>
                                                <td colspan="2">
                                                    <b>News &amp; Information</b>
                                                </td>
                                                <td width="43%" align="right">
                                                    <c:if test="${sessionScope.menuAuthentication.newsInformationManage}">
                                                        <%--<s:submit action="news_information_detail" id="btnNew"--%>
                                                        <%--value="Add News & Information" cssClass="button"--%>
                                                        <%--cssStyle="width:150px" onmouseover="setId('')"/>--%>
                                                        <input type="button" id="btnNew" class="button"
                                                               value="Add News & Information" style="width:150px"
                                                               onclick="letsGo('news_information_detail.action', '',null)"/>
                                                    </c:if>
                                                </td>
                                            </tr>
                                        </table>
                                        <table width="100%" class="displayTable">
                                            <tr class="bgGreen2">
                                                <td width="20%" height="28px" class="label">
                                                    SFIs Name :
                                                </td>
                                                <!-- <td colspan="4">
                                                    <c:if test="${sessionScope.menuAuthentication.newsInformationManage}">
                                                        <s:textfield name="tmpName" id="tmpName1" maxLength="30"/>
                                                        Search SFIs name. e.g. (GSB) or (GSB,EXIM)
                                                    </c:if>
                                                    <c:if test="${not sessionScope.menuAuthentication.newsInformationManage}">
                                                       <c:out value="${sfiName}"/>
                                                    </c:if>
                                                </td> -->
                                                <td colspan="4">
                                                    <c:choose>
                                                        <c:when test="${sessionScope.userLogin.sfi.id eq 000}">
                                                            <s:textfield name="tmpName" id="tmpName2" maxLength="30"/>
                                                            Search SFIs name. e.g. (GSB) or (GSB,EXIM)
                                                        </c:when>
                                                        <c:otherwise>
                                                            <c:out value="${sfiName}"/>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label">
                                                    Date From :
                                                </td>
                                                <td width="20%">
                                                    <s:textfield name="dateFrom" id="dateFrom" readonly="true"
                                                                 size="8"/>
                                                    <img alt="" border="0" src="../images/dd.gif" name="dateBtn"
                                                         width="15" height="15"
                                                         onclick="displayCalendar(document.forms[0].dateFrom,'dd/mm/yyyy',this);"
                                                         align="absmiddle">
                                                </td>
                                                <td class="label" width="10%">
                                                    Date To :
                                                </td>
                                                <td colspan="2">
                                                    <s:textfield name="dateTo" id="dateTo" readonly="true" size="8"/>
                                                    <img alt="" border="0" src="../images/dd.gif" name="dateBtn"
                                                         width="15" height="15"
                                                         onclick="displayCalendar(document.forms[0].dateTo,'dd/mm/yyyy',this);"
                                                         align="absmiddle">
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td class="label">
                                                    Subject :
                                                </td>
                                                <td colspan="4">
                                                    <s:textfield id="subject" name="subject" size="60" maxLength="256"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label">
                                                    Description :
                                                </td>
                                                <td colspan="4">
                                                    <s:textfield id="description" name="description" size="60" maxLength="256"/>
                                                </td>
                                            </tr>
                                            <c:if test="${sessionScope.userLogin.sfi.id eq 000}">
                                                <tr class="bgGreen2">
                                                    <td class="label">
                                                        Send Type :
                                                    </td>
                                                    <td colspan="4">
                                                       <s:radio list="#{'A':'All','W':'Web','M':'Mail'}" name="sendType" id="sendType"/>
                                                    </td>
                                                </tr>
                                            </c:if>
                                        </table>
                                        <table width="100%">
                                            <tr>
                                                <td width="100%" align="center">
                                                    <s:submit method="search" cssClass="button" id="btnSearch"
                                                              value="Search"/>&nbsp;
                                                    <button class="button" onClick="resetForm()">Reset</button>
                                                </td>
                                            </tr>
                                        </table>
                                        <display:table name="newInformationList" id="row" export="false"
                                                       class="displayTag" requestURI="news_information.action"
                                                       style="width:100%;text-align:center" pagesize="15">
                                            <%--<display:column title="News Date" href="news_information_detail.action?view=true"  paramId="newsId" paramProperty="id" style="width:15%;text-align:center" headerClass="headerTable" sortable="true">--%>
                                            <display:column title="News Date" style="width:15%;text-align:center"
                                                            headerClass="headerTable" sortable="true">
                                                <a href="#"
                                                   onclick="letsGo('news_information_detail.action','${row.id}',true)"><fmt:formatDate
                                                        value="${row.actionDate}" pattern="dd MMM yyyy"/> -
                                                    <fmt:formatDate value="${row.endDate}" pattern="dd MMM yyyy"/></a>
                                                <%--<fmt:formatDate value="${row.actionDate}" pattern="dd MMM yyyy"/> - <fmt:formatDate value="${row.endDate}" pattern="dd MMM yyyy"/>--%>
                                            </display:column>
                                            <%--<display:column title="Subject" property="subject" href="news_information_detail.action?view=true" paramId="newsId" paramProperty="id" style="width:20%;text-align:left" headerClass="headerTable" sortable="true"/>--%>
                                            <display:column title="Subject" style="width:20%;text-align:center"
                                                            headerClass="headerTable">
                                                <a href="#"
                                                   onclick="letsGo('news_information_detail.action','${row.id}',true)">${row.subject}</a>
                                            </display:column>
                                            <c:if test="${sessionScope.userLogin.sfi.id eq 000}">
                                                <%--<display:column title="Send Type" href="news_information_detail.action?view=true" paramId="newsId" paramProperty="id" headerClass="headerTable" style="width:5%;text-align:center" sortable="true">--%>
                                                <display:column title="Send Type" headerClass="headerTable" style="width:5%;text-align:center" sortable="true">
                                                    <c:if test="${row.sendType eq 'A'}">
                                                        <a href="#" onclick="letsGo('news_information_detail.action','${row.id}',true)">Web/Mail</a>
                                                    </c:if>
                                                    <c:if test="${row.sendType eq 'W'}">
                                                        <a href="#" onclick="letsGo('news_information_detail.action','${row.id}',true)">Web</a>
                                                    </c:if>
                                                    <c:if test="${row.sendType eq 'M'}">
                                                        <a href="#" onclick="letsGo('news_information_detail.action','${row.id}',true)">Mail</a>
                                                    </c:if>
                                                </display:column>
                                            </c:if>
                                            <c:if test="${sessionScope.menuAuthentication.newsInformationManage}">
                                                <%--<display:column title="SFIs Name" property="abbreviationTh" href="news_information_detail.action?view=true" paramId="newsId" paramProperty="id" headerClass="headerTable" style="width:15%;text-align:left" sortable="true">--%>
                                                <display:column title="SFIs Name" headerClass="headerTable"
                                                                style="width:15%;text-align:left" sortable="true">
                                                    <a href="#"
                                                       onclick="letsGo('news_information_detail.action','${row.id}',true)">${row.abbreviationTh}</a>
                                                </display:column>
                                            </c:if>
                                            <%--<display:column title="Update Date" property="updateDate" format="{0,date,dd MMM yyyy HH:mm}" href="news_information_detail.action?view=true" paramId="newsId" paramProperty="id" style="width:10%;text-align:center" headerClass="headerTable" sortable="true">--%>
                                            <display:column title="Update Date" format="{0,date,dd MMM yyyy HH:mm}"
                                                            style="width:10%;text-align:center"
                                                            headerClass="headerTable" sortable="true">
                                                <a href="#"
                                                   onclick="letsGo('news_information_detail.action','${row.id}',true)"><fmt:formatDate
                                                        value="${row.updateDate}" pattern="dd MMM yyyy HH:mm"/></a>
                                            </display:column>
                                            <%--<display:column title="Update By" property="updateBy" href="news_information_detail.action?view=true" paramId="newsId" paramProperty="id" style="width:5%;text-align:left" headerClass="headerTable" sortable="true">--%>
                                            <display:column title="Update By" style="width:5%;text-align:left"
                                                            headerClass="headerTable" sortable="true">
                                                <a href="#"
                                                   onclick="letsGo('news_information_detail.action','${row.id}',true)">${row.updateBy}</a>
                                            </display:column>
                                            <c:if test="${sessionScope.menuAuthentication.newsInformationManage}">
                                                <%--<display:column title="Enable" href="news_information_detail.action?view=true" paramId="newsId" paramProperty="id"  headerClass="headerTable" style="width:5%;text-align:center" sortable="true">--%>
                                                <display:column title="Enable" headerClass="headerTable"
                                                                style="width:5%;text-align:center" sortable="true">
                                                    <c:if test="${row.enable}"><a href="#"
                                                                                  onclick="letsGo('news_information_detail.action','${row.id}',true)">
                                                        Enable </a></c:if>
                                                    <c:if test="${not row.enable}"><a href="#"
                                                                                      onclick="letsGo('news_information_detail.action','${row.id}',true)">
                                                        Disable </a></c:if>
                                                </display:column>
                                                <display:column title="Edit" style="width:5%;text-align:center"
                                                                headerClass="headerTable">
                                                    <img src=../images/edit.gif border="no" align=""
                                                         onclick="letsGo('news_information_detail.action','${row.id}',null)"
                                                         style="cursor:pointer">
                                                </display:column>
                                                <display:column title="Delete" style="width:5%;text-align:center"
                                                                headerClass="headerTable">
                                                    <div onMouseOver="setId('${row.id}');">
                                                        <s:submit method="delete" title="Delete" type="image"
                                                                  src="../images/delete.gif"
                                                                  onclick="return confirm('Do you want to delete this record ?')"/>
                                                    </div>
                                                </display:column>
                                            </c:if>
                                        </display:table>
                                            <%--content here--%>
                                    </td>
                                    <td width="20px">&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                        <td width="28" background="../images/table005.gif"><img src="../images/table005.gif" width="28"
                                                                                height="37" alt=""></td>
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
    var jq = jQuery.noConflict();

    jq("#news_information").keypress(function(event) {
        if (event.keyCode == 13) {
            jq("#btnNew").attr('disabled', 'disabled');
            jq("#btnSearch").click();
        }
    });

    function letsGo(action, id, view) {
        var sfiName = '';
        var st = '';
    <c:if test="${sessionScope.userLogin.sfi.id eq 000}">
        sfiName = document.getElementById("tmpName2").value;
    </c:if>

        var ddf = document.getElementById("dateFrom").value;
        var ddt = document.getElementById("dateTo").value;
        var sub = document.getElementById("subject").value;
        var desc = document.getElementById("description").value;

    <c:if test="${sessionScope.userLogin.sfi.id eq 000}">
        if (thisForm.sendType[0].checked) {
            st = thisForm.sendType[0].value;
        } else if (thisForm.sendType[1].checked) {
            st = thisForm.sendType[1].value;
        } else {
            st = thisForm.sendType[2].value;
        }
    </c:if>

        pageLink1 = action + '?newsId=' + id;
        pageLink2 = '&<%=Constants.NewsInformationField.SFI_NAME_HIDDEN%>=' + sfiName;
        pageLink3 = '&<%=Constants.NewsInformationField.DATE_FROM_HIDDEN%>=' + ddf;
        pageLink4 = '&<%=Constants.NewsInformationField.DATE_TO_HIDDEN%>=' + ddt;
        pageLink5 = '&<%=Constants.NewsInformationField.SUBJECT_HIDDEN%>=' + sub;
        pageLink6 = '&<%=Constants.NewsInformationField.DESCRIPTION_HIDDEN%>=' + desc;
        pageLink7 = '&<%=Constants.NewsInformationField.SEND_TYPE_HIDDEN%>=' + st;
        pageLink8 = '';

        if (view != null) {
            pageLink8 = '&view=true'
        }

        location.href = pageLink1.concat(pageLink2, pageLink3, pageLink4, pageLink5, pageLink6, pageLink7, pageLink8);
    }

    function prepareValueOfSubmitView(action, id) {

        location.href = pageLink;
    }

</script>
</body>
</html>