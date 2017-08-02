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
<script type="text/javascript" src="../includes/js/jquery.js"></script>
<script type="text/javascript" src="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.js"></script>
<link href="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="../includes/css/style.css">
<script type="text/javascript">
    function changeOrderBy() {
        jq("#btnSearch").click();
    }

    function resetForm(){
        thisForm.datasetDateFrom.value = "";
        thisForm.datasetDateTo.value = "";
        thisForm.dueDateFrom.value = "";
        thisForm.dueDateTo.value = "";
        thisForm.uploadDateFrom.value = "";
        thisForm.uploadDateTo.value = "";
        thisForm.sfi.selectedIndex = 0;
        thisForm.dsTitle.selectedIndex = 0;
//        thisForm.orderBy.selectedIndex = 0;
        thisForm.onTime.checked = false;
        thisForm.late.checked = false;
        thisForm.notSend.checked = false;
    }

    function validateForm(){
        if(thisForm.datasetDateFrom.value == ''){
            alert('Please select Dataset Date From');
            return false;
        }
        if(thisForm.datasetDateTo.value == ''){
            alert('Please select Dataset Date To');
            return false;
        }
        if(thisForm.sfi.value == ''){
            alert('Please select SFIs Name');
            return false;
        }
        return true;
    }

</script>
</head>
<body>
<s:form action="document_status_log" id="document_status_log">
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
            <td><b>Document Status</b></td>
        </tr>
    </table>
    <table width="100%" class="displayTable">
        <tr class="bgGreen2">
            <td width="20%" class="label">
                Dataset Date From<span class="require_field">*</span> :
            </td>
            <td width="20%">
                <s:textfield name="datasetDateFrom" size="8" readonly="true"/>
                <img border="0" src="../images/dd.gif" name="dateBtn" width="15" height="15"
                     onclick="displayCalendar(document.forms[0].datasetDateFrom,'dd/mm/yyyy',this);"
                     align="absmiddle">
            </td>
            <td width="5%" class="label">
                To<span class="require_field">*</span> :
            </td>
            <td width="55%">
                <s:textfield name="datasetDateTo" size="8" readonly="true"/>
                <img border="0" src="../images/dd.gif" name="dateBtn" width="15" height="15"
                     onclick="displayCalendar(document.forms[0].datasetDateTo,'dd/mm/yyyy',this);"
                     align="absmiddle">
            </td>
        </tr>
        <tr class="bgGreen1">
            <td class="label">
                Due Date From :
            </td>
            <td>
                <s:textfield name="dueDateFrom" size="8" readonly="true"/>
                <img border="0" src="../images/dd.gif" name="dateBtn" width="15" height="15"
                    onclick="displayCalendar(document.forms[0].dueDateFrom,'dd/mm/yyyy',this);"
                     align="absmiddle">
            </td>
            <td class="label">
                To :
            </td>
            <td>
                <s:textfield name="dueDateTo" size="8" readonly="true"/>
                <img border="0" src="../images/dd.gif" name="dateBtn" width="15" height="15"
                      onclick="displayCalendar(document.forms[0].dueDateTo,'dd/mm/yyyy',this);"
                     align="absmiddle">
            </td>
        </tr>
        <tr class="bgGreen2">
            <td class="label">
                Upload Date From :
            </td>
            <td>
                <s:textfield name="uploadDateFrom" size="8" readonly="true"/>
                <img border="0" src="../images/dd.gif" name="dateBtn" width="15" height="15"
                    onclick="displayCalendar(document.forms[0].uploadDateFrom,'dd/mm/yyyy',this);"
                     align="absmiddle">
            </td>
            <td class="label">
                To :
            </td>
            <td>
                <s:textfield name="uploadDateTo" size="8" readonly="true"/>
                <img border="0" src="../images/dd.gif" name="dateBtn" width="15" height="15"
                     onclick="displayCalendar(document.forms[0].uploadDateTo,'dd/mm/yyyy',this);"
                     align="absmiddle">
            </td>
        </tr>
        <tr class="bgGreen1">
            <td class="label">
                SFIs Name<span class="require_field">*</span> :
            </td>
            <td colspan="3">
                <c:if test="${sessionScope.userLogin.sfi.id eq 000}" >
                    <s:select list="sfiList"
                        name="sfi"
                        listKey="id"
                        listValue="displayNameCodeAndCode"
                        headerKey=""
                        headerValue="-------------------------------------  Please Select  -------------------------------------"/>
                </c:if>
                <c:if test="${sessionScope.userLogin.sfi.id ne 000}">
                    <s:hidden name="sfi"/>
                    ${requestScope.sfiName}
                </c:if>
            </td>
        </tr>
        <tr class="bgGreen2">
            <td class="label">
                Dataset Name :
            </td>
            <td colspan="3">
                <s:select list="dsTitleList"
                    name="dsTitle"
                    listKey="id"
                    listValue="name"
                    headerKey=""
                    headerValue="--------- Please Select ---------"/>
            </td>
        </tr>
        <tr class="bgGreen1">
            <td class="label">Sending Status :</td>
            <td colspan="3">
                <s:checkbox name="onTime"/>Ontime&nbsp;&nbsp;
                <s:checkbox name="late"/>Late&nbsp;&nbsp;
                <s:checkbox name="notSend"/>Not Send&nbsp;&nbsp;
            </td>
        </tr>
    </table>

    <table width="100%">
        <tr>
            <td width="100%" align="center" colspan="2">
                <s:submit name="search" id="btnSearch" value="Search" cssClass="button" method="search" onclick="return validateForm()"/>&nbsp;
                <button class="button" onclick="resetForm()">Reset</button>        
            </td>
        </tr>
        <%--<tr>--%>
            <%--<td colspan="2">--%>
                <%--<hr size="0" color="#00347C">--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td width="20%" class="label">Order by :</td>--%>
            <%--<td width="80%">--%>
                <%--<s:select list="#{'sfi' :'SFIs Name',--%>
                                  <%--'dsTitle':'Dataset Name',--%>
                                  <%--'datasetDate':'Dataset Date',--%>
                                  <%--'dueDate':'Due Date',--%>
                                  <%--'uploadDate':'Upload Date',--%>
                                  <%--'documentStatus':'Document Status'}"--%>
                              <%--name="orderBy"--%>
                              <%--headerKey=""--%>
                              <%--headerValue="-  Please Select  -"--%>
                              <%--onchange="changeOrderBy()"/>--%>
            <%--</td>--%>
        <%--</tr>--%>
    </table>
    <c:if test="${requestScope.documentStatusLogDtoList ne null}">
    <%--<display:table name="${requestScope.documentStatusLogDtoList}" id="row" export="false" class="displayTag" requestURI="document_status_log.action" style="width:100%;" pagesize="<%=Constants.Pagination.DEFAULT_PAGE_SIZE%>" partialList="true" size="${requestScope.totalRecord}">--%>
    <display:table name="${requestScope.documentStatusLogDtoList}" id="row" export="false" class="displayTag" requestURI="document_status_log.action" style="width:100%;" size="${requestScope.totalRecord}" pagesize="<%=Constants.Pagination.DEFAULT_PAGE_SIZE%>">    
        <display:column title="SFIs Name" property="sfi.nameTh" headerClass="headerTable" sortable="true" style="width:20%;text-align:left"/>
        <display:column title="Dataset Name" property="dsTitle.name" headerClass="headerTable" sortable="true" style="width:10%;text-align:left"/>
        <display:column title="Frequency" headerClass="headerTable" sortable="true" style="width:10%;text-align:left">
            <c:choose>
                <c:when test="${row.frequency eq 1}">รายปักษ์</c:when>
                <c:when test="${row.frequency eq 2}">รายเดือน</c:when>
                <c:when test="${row.frequency eq 3}">รายไตรมาส</c:when>
                <c:when test="${row.frequency eq 4}">รายครึ่งปี</c:when>
                <c:when test="${row.frequency eq 5}">เมื่อมีการเปลี่ยนแปลง</c:when>
                <c:when test="${row.frequency eq 6}">ยังไม่มีกำหนดการส่ง</c:when>
                <c:when test="${row.frequency eq 7}">รายปี</c:when>
            </c:choose>
        </display:column>
        <display:column title="Dataset Date" property="datasetDate" format="{0,date,dd MMM yyyy}" headerClass="headerTable" sortable="true" style="width:10%;text-align:center"/>
        <display:column title="Due Date" property="dueDate" format="{0,date,dd MMM yyyy}" headerClass="headerTable" sortable="true" style="width:10%;text-align:center"/>
        <display:column title="Upload Date" property="uploadDate" format="{0,date,dd MMM yyyy HH:mm}" headerClass="headerTable" sortable="true" style="width:10%;text-align:center"/>
        <display:column title="Document Status" property="documentStatus" headerClass="headerTable" sortable="true" style="width:10%;text-align:center"/>
        <display:column title="Sending Status" headerClass="headerTable" sortable="true" style="width:10%;text-align:center">
            <c:if test="${row.sendingStatus eq 'ONT'}">Ontime</c:if>
            <c:if test="${row.sendingStatus eq 'LAT'}">
                <font color="red">Late (${row.daysLate} day(s))</font>
            </c:if>
            <c:if test="${row.sendingStatus eq 'NTS'}">Not Send</c:if>
        </display:column>
    </display:table>
    </c:if>
    <c:if test="${requestScope.documentStatusLogDtoList ne null and requestScope.documentStatusLogDtoList ne '[]'}">
        <table width="100%">
            <tr>
                <td width="50%" valign="top">
                    <table width="100%">
                        <tr class="docStatusDesc">
                            <td class="docStatus">REC :</td>
                            <td class="docStatusDesc">Received</td>
                        </tr>
                        <tr class="docStatusDesc">
                            <td class="docStatus">CAN :</td>
                            <td class="docStatusDesc">Cancelled</td>
                        </tr>
                        <tr class="docStatusDesc">
                            <td class="docStatus">PKB :</td>
                            <td class="docStatusDesc">Passed Key Basic Validation</td>
                        </tr>
                        <tr class="docStatusDesc">
                            <td class="docStatus">FKB :</td>
                            <td class="docStatusDesc">Failed Key Basic Validation</td>
                        </tr>
                    </table>
                </td>
                <td width="50%" valign="top">
                    <table width="100%">
                        <tr class="docStatusDesc">
                            <td class="docStatus">PCX :</td>
                            <td class="docStatusDesc">Passed Complex Validation</td>
                        </tr>
                        <tr class="docStatusDesc">
                            <td class="docStatus">FCX :</td>
                            <td class="docStatusDesc">Failed Complex Validation</td>
                        </tr>
                        <tr class="docStatusDesc">
                            <td class="docStatus">WRS :</td>
                            <td class="docStatusDesc">Waiting For Related Sets</td>
                        </tr>
                        <tr class="docStatusDesc">
                            <td class="docStatus">PCS :</td>
                            <td class="docStatusDesc">Passed Cross Validation</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>

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
    var jq = jQuery.noConflict();

    jq("#document_status_log").keypress(function(event){
        if(event.keyCode == 13){
            jq("#btnSearch").click();
        }
    });
</script>
</body>
</html>
