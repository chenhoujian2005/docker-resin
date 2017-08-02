<%@ page import="th.go.mof.fpo.Constants" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="sx" uri="/struts-tags" %>
<html>
<head>
<title>Simple jsp page</title>
<script type='text/javascript' src='../dwr/engine.js'></script>
<script type='text/javascript' src='../dwr/util.js'></script>
<script type='text/javascript' src='../dwr/interface/AjaxManager.js'></script>
<link rel="stylesheet" type="text/css" href="../includes/css/style.css">
<script type="text/javascript" src="../includes/js/jquery.js"></script>
<script type="text/javascript" src="../includes/js/util.js"></script>
<script type="text/javascript" src="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.js"></script>
<link href="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.css" rel="stylesheet" type="text/css">
</head>
<script type="text/javascript">
    function findUserByOrg(id, zone, keyName, keyValue) {
        AjaxManager.findUserBySfi(id, function(data) {
            prepareOptionOne(zone, data, keyName, keyValue);
        });
    }

    function prepareOptionOne(zone, data, keyName, keyValue) {
        dwr.util.removeAllOptions(zone);
        document.getElementById(zone).options[0] = new Option('-----------------  Please Select  -----------------', '');
        dwr.util.addOptions(zone, data, keyName, keyValue);
    }

     function resetForm(){
        var objChk = thisForm.type;
        thisForm.dateFrom.value = "";
        thisForm.dateTo.value = "";
        thisForm.sfi.selectedIndex = 0;
        dwr.util.removeAllOptions('user');
        document.getElementsByName('user')[0].options[0] = new Option('-----------------  Please Select  -----------------', '');
        for (var i = 0 ; i < objChk.length ; i ++) {
           objChk[i].checked = false;
        }
     }

</script>

<body>
<s:form action="activity" id="activity">
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
<td>
    <%--content here--%>
    <table width="100%">
        <tr>
            <td><b>Activity</b></td>
        </tr>
    </table>
    <table width="100%" class="displayTable">
        <tr class="bgGreen2">
            <td class="label" width="20%">
                Action Date From :
            </td>
            <td width="20%">
                <s:textfield name="dateFrom" size="8" readonly="true"/>
                <img border="0" src="../images/dd.gif" name="dateBtn" width="15" height="15"
                  onclick="displayCalendar(document.forms[0].dateFrom,'dd/mm/yyyy',this);"
                  align="absmiddle">
            </td>
            <td class="label" width="5%">
                To :
            </td>
            <td width="55%">
                <s:textfield name="dateTo" size="8" readonly="true"/>
                <img border="0" src="../images/dd.gif" name="dateBtn" width="15" height="15"
                     onclick="displayCalendar(document.forms[0].dateTo,'dd/mm/yyyy',this);"
                     align="absmiddle">
            </td>
        </tr>
        <tr class="bgGreen1">
            <td class="label">
                SFIs Name :
            </td>
            <td colspan="3">
                <c:if test="${sessionScope.userLogin.sfi.id eq 000}">
                    <s:select list="sfiRightList"
                              name="sfi"
                              id="sfi"
                              listKey="id"
                              listValue="displayNameCodeAndCode"
                              headerKey=""
                              headerValue="--------------------------  Please Select  --------------------------"
                              onchange="findUserByOrg(this.value,'user','id','name');"/>
                    <%--<select name="sfi" id="sfi" onchange="findUserByOrg(this.value,'user','id','name');">--%>
                        <%--<option value="">--------------------------  Please Select  --------------------------</option>--%>
                         <%--<c:forEach items="${requestScope.sfiList}" var="obj">--%>
                            <%--<option value="${obj.id}" <c:if test="${obj.id == sfi}">selected="selected"</c:if>>${obj.displayNameCodeAndCode}</option>--%>
                        <%--</c:forEach>--%>
                    <%--</select>--%>
                </c:if>
                <c:if test="${sessionScope.userLogin.sfi.id ne 000}">
                    <s:hidden name="sfi"/>
                    ${requestScope.sfiName}
                </c:if>

            </td>
        </tr>
        <tr class="bgGreen2">
            <td class="label">
                User :
            </td>
            <td colspan="3">
                <%--<s:select list="sfiRightList"--%>
                          <%--name="user"--%>
                          <%--id="user"--%>
                          <%--listKey="id"--%>
                          <%--listValue="name"--%>
                          <%--headerKey=""--%>
                          <%--headerValue="-----------------  Please Select  -----------------"--%>
                          <%--/>--%>
                <select name="user" id="user">
                    <option value="">-----------------  Please Select  -----------------</option>
                    <c:forEach items="${requestScope.userAuthenticationList}" var="obj">
                        <option value="${obj.id}" <c:if test="${obj.id == user}">selected="selected"</c:if>>${obj.name}</option>
                    </c:forEach>
                </select>
            </td>
        </tr>
        <tr class="bgGreen1">
            <td class="label">Type :</td>
            <td colspan="3">
                <s:checkboxlist list="#{'LIN':'Login','LOU':'Logout','UDM':'Upload','VDM':'View','APP':'Adjust Approve','REJ':'Adjust Reject','RAP':'Report Approve','RRJ':'Report Reject','DMM':'Data Management'}" name="type"/>
            </td>
        </tr>
    </table>
    <table width="100%">
        <tr>
            <td width="100%" align="center">
                <s:submit name="search" id="btnSearch" value="Search" cssClass="button" method="search"/>&nbsp;
                <button class="button" onclick="resetForm()">Reset</button>
            </td>
        </tr>
    </table>
    <c:if test="${requestScope.activityLogList ne null}">    
    <display:table name="activityLogList" id="row" export="false" class="displayTag" requestURI="activity.action" style="width:100%;" pagesize="20">
        <display:column title="Action Date" property="actionDate" format="{0,date,dd MMM yyyy}" headerClass="headerTable" style="width:8%;text-align:center" sortable="true"/>
        <display:column title="Action Time" property="actionDate" format="{0,date,HH:mm}" headerClass="headerTable" sortable="true" style="width:8%;text-align:center"/>
        <display:column title="SFIs Name" property="sfi.nameTh" headerClass="headerTable" style="width:25%;text-align:left" sortable="true"/>
        <display:column title="User" property="user.thaiName" headerClass="headerTable" style="width:15%;text-align:left" sortable="true"/>
        <display:column title="IP Address" property="ipAddress" headerClass="headerTable" style="width:10%;text-align:left" sortable="true"/>
        <display:column title="Role" headerClass="headerTable" style="width:10%;text-align:center" sortable="true">
            <c:choose>
                <c:when test="${row.user.role eq 'ADM'}">Administrator</c:when>
                <c:when test="${row.user.role eq 'MIS'}">MIS</c:when>
                <c:when test="${row.user.role eq 'EIS'}">EIS</c:when>
                <c:when test="${row.user.role eq 'SFI'}">SFI</c:when>
            </c:choose>
        </display:column>
        <display:column title="Type" headerClass="headerTable" sortable="true" style="width:13%;text-align:left">
            <c:choose>
                <c:when test="${row.type eq 'LIN'}">Login</c:when>
                <c:when test="${row.type eq 'LOU'}">Logout</c:when>
                <c:when test="${row.type eq 'UDM'}">Upload</c:when>
                <c:when test="${row.type eq 'VDM'}">View</c:when>
                <c:when test="${row.type eq 'APP'}">Adjust Approve</c:when>
                <c:when test="${row.type eq 'REJ'}">Adjust Reject</c:when>
                <c:when test="${row.type eq 'RAP'}">Report Approve</c:when>
                <c:when test="${row.type eq 'RRJ'}">Report Reject</c:when>
                <c:when test="${row.type eq 'DMM'}">Data Management</c:when>
            </c:choose>
        </display:column>
        <!-- VSM : SFI029 -->
        <c:choose>
            <c:when test="${not empty row.idTableMaster}">
                <display:column title="Action" headerClass="headerTable" sortable="true"
                                style="width:30%;text-align:left">
                    <a href="javascript:"
                       onclick="detail('${row.id}','${row.idTableMaster}','${row.tableMaster}')"> ${row.action}</a>
                </display:column>
            </c:when>
            <c:otherwise>
                <display:column title="Action" headerClass="headerTable" sortable="true"
                                style="width:30%;text-align:left">
                    ${row.action}
                </display:column>
            </c:otherwise>
        </c:choose>
    </display:table>
    </c:if>
    <%--content here--%>
</td>
<td width="20px">&nbsp;</td>
</tr>
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
</s:form>
<script type="text/javascript">
    var thisForm = document.getElementsByTagName('form')[0];
    function detail(idActivityLog, idTableMaster, tableMaster) {
        //alert("idTableMaster = " + idTableMaster +", " + "tableMaster = " + tableMaster);
        if (tableMaster == '<%=Constants.ActionLogTable.NO_TRANSACTION%>') {
            window.open("../logs/no_transaction_log.action?id=" + idActivityLog + "&idTableMaster=" + idTableMaster + "&tableMaster=" + tableMaster, null, "height=300,width=900 ,resizable=1,scrollbars=1'");
        }
        if (tableMaster == '<%=Constants.ActionLogTable.VALIDATION_RULE%>') {
            window.open("../logs/validation_rule_log.action?id=" + idActivityLog + "&idTableMaster=" + idTableMaster + "&tableMaster=" + tableMaster, null, "height=500,width=900 ,resizable=1,scrollbars=1'");
        }
        if (tableMaster == '<%=Constants.ActionLogTable.DEFINED_DATA%>') {
            window.open("../logs/defined_data_detail_log.action?id=" + idActivityLog + "&idTableMaster=" + idTableMaster + "&tableMaster=" + tableMaster, null, "height=600,width=900 ,resizable=1,scrollbars=1'");
        }
        if (tableMaster == '<%=Constants.ActionLogTable.REPORT_TYPE%>') {
            window.open("../logs/report_type_log.action?id=" + idActivityLog + "&idTableMaster=" + idTableMaster + "&tableMaster=" + tableMaster, null, "height=500,width=900 ,resizable=1,scrollbars=1'");
        }
        if (tableMaster == '<%=Constants.ActionLogTable.SENDING_WAIVE%>') {
            window.open("../logs/sending_waive_log.action?id=" + idActivityLog + "&idTableMaster=" + idTableMaster + "&tableMaster=" + tableMaster, null, "height=500,width=900 ,resizable=1,scrollbars=1'");
        }
        if (tableMaster == '<%=Constants.ActionLogTable.DS_VERSION%>') {
            window.open("../logs/structured_dataset_version_log.action?id=" + idActivityLog + "&idTableMaster=" + idTableMaster + "&tableMaster=" + tableMaster, null, "height=300,width=900 ,resizable=1,scrollbars=1'");
        }
        if (tableMaster == '<%=Constants.ActionLogTable.CROSS_VALIDATION%>') {
            window.open("../logs/cross_validation_log.action?id=" + idActivityLog + "&idTableMaster=" + idTableMaster + "&tableMaster=" + tableMaster, null, "height=500,width=900 ,resizable=1,scrollbars=1'");
        }
         if (tableMaster == '<%=Constants.ActionLogTable.FREQUENCY_CONFIG_MAIN%>') {
            window.open("../logs/frequency_config_detail_log.action?id=" + idActivityLog + "&idTableMaster=" + idTableMaster + "&tableMaster=" + tableMaster, null, "height=600,width=900 ,resizable=1,scrollbars=1'");
        }
    }//end function Detail

    var jq = jQuery.noConflict();
    jq("#logs_document_status").keypress(function(event){
      if(event.keyCode == 13){
          jq("#btnSearch").click();
      }
    });
</script>
</body>
</html>
