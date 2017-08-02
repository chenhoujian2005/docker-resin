<%--
  Created by IntelliJ IDEA.
  User: Witsanu
  Date: 29 ก.ค. 2557
  Time: 11:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="th.go.mof.fpo.Constants" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<html>
<head>
    <title>Simple jsp page</title>
    <script type="text/javascript" src="../includes/js/jquery.js"></script>
    <link rel="stylesheet" type="text/css" href="../includes/css/style.css"/>
    <script type="text/javascript" src="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.js"></script>
    <link href="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.css" rel="stylesheet"
          type="text/css"/>
    <script type='text/javascript' src='../dwr/engine.js'></script>
    <script type='text/javascript' src='../dwr/util.js'></script>
    <script type='text/javascript' src='../dwr/interface/AjaxManager.js'></script>
    <script type="text/javascript">
        function setId(id) {
            thisForm.id.value = id;
        }

        function resetForm() {
            thisForm.user.value = '';
            thisForm.issueDateFrom.value = '';
            thisForm.issueDateTo.value = '';
            thisForm.issueSystem.selectedIndex = 0;
            thisForm.issueSubSystem.selectedIndex = 0;
            thisForm.issuePriority.selectedIndex = 0;
            thisForm.issueStatus.selectedIndex = 0;
        }

        function findSubsystem(id, zone, keyName, keyValue, clearZones) {
            AjaxManager.findSubSystemBySystemId(id, function (data) {
                prepareOption(zone, data, keyName, keyValue, clearZones);
            });
        }

        function prepareOption(zone, data, keyName, keyValue, clearZones) {
            dwr.util.removeAllOptions(zone);
            document.getElementById(zone).options[0] = new Option('------------  Please Select  ------------', '');
            dwr.util.addOptions(zone, data, keyName, keyValue);
            if (clearZones != null) {
                for (var i = 0; i < clearZones.length; i++) {
                    dwr.util.removeAllOptions(clearZones[i]);
                    document.getElementById(clearZones[i]).options[0] = new Option('------------  Please Select  ------------', '');
                }
            }
        }
    </script>
</head>
<body>
<s:form action="defect_log" id="defectLog">
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
                <td width="43" background="../images/table004.gif"><img src="../images/table004.gif" width="43"
                                                                        height="37" alt=""></td>
                <td>
                    <table width="100%" border="0" align="center" style="height:100%">
                        <tr>
                            <td>
                                    <%--content here--%>
                                <table width="100%">
                                    <tr>
                                        <td width="50%"><b>Defect Log</b></td>
                                        <td width="50%" align="right">
                                            <input type="button" class="button" id="btnNew"
                                                   value="Add Defect Log" style="width:150px"
                                                   onclick="letsGo('defect_log_add.action', '')"/>
                                        </td>
                                    </tr>
                                </table>

                                <table width="100%" class="displayTable">
                                    <tr class="bgGreen2">
                                        <td align="right">User :</td>
                                        <td colspan="3">
                                            <s:textfield name="user" id="user"/>
                                        </td>
                                    </tr>
                                    <tr class="bgGreen1">
                                        <td width="25%" height="30" align="right">
                                            Issue Date From :
                                        </td>
                                        <td width="25%">
                                            <s:textfield name="issueDateFrom" id="issueDateFrom" readonly="true"
                                                         size="8"/>
                                            <img alt="" border="0" src="../images/dd.gif" name="dateBtn"
                                                 width="15" height="15"
                                                 onclick="displayCalendar(document.forms[0].issueDateFrom,'dd/mm/yyyy',this);"
                                                 align="absmiddle">
                                        </td>
                                        <td width="20%" height="30" style="margin-left:3px" align="right">
                                            To :
                                        </td>
                                        <td width="50%">
                                            <s:textfield name="issueDateTo" id="issueDateTo" readonly="true"
                                                         size="8"/>
                                            <img alt="" border="0" src="../images/dd.gif" name="dateBtn"
                                                 width="15" height="15"
                                                 onclick="displayCalendar(document.forms[0].issueDateTo,'dd/mm/yyyy',this);"
                                                 align="absmiddle">
                                        </td>
                                    </tr>
                                    <tr class="bgGreen2">
                                        <td align="right">Issue System :</td>
                                        <td colspan="3"><s:select list="issueSystemList" name="issueSystem"
                                                                  id="issueSystem" headerKey=""
                                                                  headerValue="-------------  Please Select  -------------"
                                                                  listKey="id" listValue="systemName"
                                                                  onchange="findSubsystem(this.value,'issueSubSystem','id','name');"/></td>
                                    </tr>
                                    <tr class="bgGreen1">
                                        <td align="right">Issue Sub System :</td>
                                        <td colspan="3">
                                            <%--<s:select list="issueSubSystemList"--%>
                                                                  <%--name="issueSubSystem" id="issueSubSystem"--%>
                                                                  <%--headerKey=""--%>
                                                                  <%--headerValue="-------------  Please Select  -------------"--%>
                                                                  <%--listKey="id" listValue="SubSystemName"/>--%>
                                                <select name="issueSubSystem" id="issueSubSystem">
                                                    <option value="">-----------------  Please Select  -----------------</option>
                                                    <c:forEach items="${requestScope.issueSubSystemList}" var="obj">
                                                        <option value="${obj.id}" <c:if test="${obj.id == issueSubSystem}">selected="selected"</c:if>>${obj.subSystemName}</option>
                                                    </c:forEach>
                                                </select>
                                        </td>
                                    </tr>
                                    <tr class="bgGreen2">
                                        <td align="right">Issue Priority :</td>
                                        <td colspan="3">
                                                <s:select list="issuePriorityList" name="issuePriority"
                                                          id="issuePriority" headerKey=""
                                                          headerValue="-------------  Please Select  -------------"
                                                          listKey="id" listValue="issuePriorityName"/>
                                    </tr>
                                    <tr class="bgGreen1">
                                        <td align="right">Issue Status :</td>
                                        <td colspan="3">
                                            <s:select list="issueStatusList" name="issueStatus" id="issueStatus"
                                                      headerKey=""
                                                      headerValue="-------------  Please Select  -------------"
                                                      listKey="id" listValue="issueStatusName"/>
                                        </td>
                                    </tr>
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
                                <c:if test="${not empty requestScope.defectLogList }">
                                    <table>
                                        <tr>
                                            <td colspan="16" align="left"><input type="button" class="button"
                                                                                 value="Print"
                                                                                 onclick="window.print();return false;"/>
                                                <a class="button"
                                                   style="height:18px;width:150px;vertical-align:bottom;text-align:center;"
                                                   href="../defectLog/defectLog_convert_to_excel.action">
                                                    &nbsp;Convert To Excel&nbsp;
                                                </a>
                                            </td>
                                        </tr>
                                    </table>
                                </c:if>

                                <display:table name="defectLogList" id="row" export="false" class="displayTag"
                                               requestURI="defect_log.action"
                                               style="width:100%;text-align:center" pagesize="15">
                                    <display:column title="Issue Date" style="width:10%;text-align:center"
                                                    headerClass="headerTable" sortable="true">
                                        <fmt:formatDate pattern="dd MMM yyyy" value="${row.issueDate}"/>
                                    </display:column>
                                    <display:column title="Issue System" style="width:10%;text-align:left"
                                                    headerClass="headerTable" sortable="true">
                                        <a href="javascript:" title="View"  onclick="letsGo('defect_log_view.action','${row.id}')">
                                                ${row.systems.systemName}
                                        </a>
                                    </display:column>
                                    <display:column title="Issue Priority" style="width:10%;text-align:left"
                                                    headerClass="headerTable" sortable="true">
                                        <a href="javascript:" title="View"  onclick="letsGo('defect_log_view.action','${row.id}')">
                                                ${row.issuePriority.issuePriorityName}
                                        </a>

                                    </display:column>
                                    <display:column title="Issue Status" style="width:10%;text-align:left"
                                                    headerClass="headerTable" sortable="true">
                                        <a href="javascript:" title="View"  onclick="letsGo('defect_log_view.action','${row.id}')">
                                                ${row.issueStatus.issueStatusName}
                                        </a>

                                    </display:column>
                                    <display:column title="User" style="width:10%;text-align:left"
                                                    headerClass="headerTable" sortable="true">
                                        <a href="javascript:" title="View"  onclick="letsGo('defect_log_view.action','${row.id}')">
                                                ${row.createBy}
                                        </a>

                                    </display:column>
                                    <display:column title="Issue File Name" style="width:10%;text-align:left"
                                                    headerClass="headerTable" sortable="true">
                                        <a href="../downloadFile.sl?logId=${row.id}&key=1" title="Click here to download.">
                                                ${row.issueFileName}
                                        </a>
                                    </display:column>
                                    <display:column title="Solution File Name" style="width:10%;text-align:left"
                                                    headerClass="headerTable" sortable="true">
                                        <a href="../downloadFile.sl?logId=${row.id}&key=2" title="Click here to download.">
                                                ${row.solutionFileName}
                                        </a>
                                    </display:column>

                                    <%--<c:if test="${sessionScope.menuAuthentication.defectLogManage}">--%>
                                    <display:column title="Edit" style="width:5%;text-align:center"
                                                    headerClass="headerTable">
                                        <img src=../images/edit.gif border="no" align=""
                                             onclick="letsGo('defect_log_add.action','${row.id}')"
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
                                    <%--</c:if>--%>
                                </display:table>
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
    jq("#defined_data").keypress(function (event) {
        if (event.keyCode == 13) {
            jq("#btnNew").attr('disabled', 'disabled');
            jq("#btnSearch").click();
        }
    });

    function letsGo(action, id) {
        var ddf = document.getElementById("issueDateFrom").value;
        var ddt = document.getElementById("issueDateTo").value;
        var user = document.getElementById("user").value;
        var issuePriority = document.getElementById("issuePriority").value;
        var issueSystem = document.getElementById("issueSystem").value;
        var issueSubSystem = document.getElementById("issueSubSystem").value;
        var issueStatus = document.getElementById("issueStatus").value;
        pageLink1 = action + '?id=' + id;

        pageLink2 = '&<%=Constants.DefectLogField.USER_HIDDEN%>=' + user;
        pageLink3 = '&<%=Constants.DefectLogField.ISSUE_DATE_FROM_HIDDEN%>=' + ddf;
        pageLink4 = '&<%=Constants.DefectLogField.ISSUE_DATE_TO_HIDDEN%>=' + ddt;
        pageLink5 = '&<%=Constants.DefectLogField.ISSUE_PRIORITY_HIDDEN%>=' + issuePriority;
        pageLink6 = '&<%=Constants.DefectLogField.ISSUE_SYSTEM_HIDDEN%>=' + issueSystem;
        pageLink7 = '&<%=Constants.DefectLogField.ISSUE_STATUS_HIDDEN%>=' + issueStatus;
        pageLink8 = '&<%=Constants.DefectLogField.ISSUE_SUB_SYSTEM_HIDDEN%>=' + issueSubSystem;

        location.href = pageLink1.concat(pageLink2,pageLink3,pageLink4,pageLink5,pageLink6,pageLink7,pageLink8);

        //location.href = pageLink1;
    }
</script>
</body>
</html>
