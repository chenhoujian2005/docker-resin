<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head>
<title>Simple jsp page</title>
<script type='text/javascript' src='<%=request.getContextPath()%>/includes/js/util.js'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/includes/js/tp/utils.js'></script>
<script type="text/javascript" src="../includes/js/jquery.js"></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/dwr/engine.js'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/dwr/util.js'></script>
<script type='text/javascript' src="<%=request.getContextPath()%>/includes/js/tp/validate.js"></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/dwr/interface/AjaxManager.js'></script>
<link rel="stylesheet" type="text/css" href="../includes/css/style.css">
<script type="text/javascript" src="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.js"></script>
<link href="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.css" rel="stylesheet" type="text/css">
<script type="text/javascript">

</script>
</head>
<body>
<s:form action="frequency_unstructure_detail_view" escapeAmp="false">
<s:hidden name="frequencyUnstructureMainId" id="frequencyUnstructureMainId"/>
<s:hidden name="sfiHidden" id="sfiHidden"/>
<s:hidden name="copy" id="copy"/>
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
        <td><b>Frequency Unstructured</b></td>
    </tr>
</table>
<table width="100%" class="displayTable">
    <tr class="bgGreen2">
        <td width="25%" height=30 class="label">  Unstructured Version : </td>
        <td width="75%" colspan="3">${requestScope.versionName}
            &nbsp; &nbsp;<span style="color:red;">EffectiveDate : &nbsp;${requestScope.effectiveDate}</span>
        <s:hidden name="unstructuredVersionId"/>

        </td>
    </tr>
    <tr class="bgGreen1">
        <td width="25%" height=30 class="label">  SFIs Name : </td>
        <td width="75%" colspan="3">${requestScope.sfiName}  </td>
    </tr>
    <tr class="bgGreen2">
        <td class="label">  Dataset Date From : </td>
        <td ><s:textfield name="dateFrom" id="dateFrom" readonly="true" size="8"/> </td>
        <td class="label">To : </td>
        <td ><s:textfield name="dateTo" id="dateTo" readonly="true" size="8"/> </td>
    </tr>

</table>
<br>
<display:table name="dtoList" id="row" export="false" cellpadding="0" cellspacing="1" class="displayTag" style="width:100%" > <!--pagesize="50"-->
        <display:column title="Unstructured Name" headerClass="headerTable" style="text-align:left;width:70%">
            ${row.dsName}
        </display:column>
        <display:column title="Frequency (Days)" headerClass="headerTable" style="text-align:center;width:15%">
            <c:if test="${empty row.frequency}"> ไม่ใช้ Dataset นี้  </c:if>
            <c:if test="${row.frequency eq 0}"> ไม่ใช้ Dataset นี้ </c:if>
            <c:if test="${row.frequency eq 2}"> รายเดือน </c:if>
            <c:if test="${row.frequency eq 3}"> รายไตรมาส </c:if>
            <c:if test="${row.frequency eq 4}"> รายครึ่งปี </c:if>
            <c:if test="${row.frequency eq 7}"> รายปี  </c:if>
            <c:if test="${row.frequency eq 5}"> เมื่อมีการเปลี่ยนแปลง </c:if>
            <c:if test="${row.frequency eq 8}"> - </c:if>
        </display:column>
        <display:column title="Due Days" headerClass="headerTable" style="text-align:center;width:10%">
            <input type="text" name="${row.unstructuredTitleId}_dueDay" value="${row.dueDay}"  readonly="true" style="text-align:right;width:50px"/>
        </display:column>
        <display:column title="KPI" headerClass="headerTable" style="text-align:center;width:5%">
            <input type="checkbox" name="${row.unstructuredTitleId}_kpi" value="true" ${row.kpi eq 'true' ? 'checked ' : ''} disabled ="true"  style="text-align:right;width:50px" />
        </display:column>
        </display:table>
<table width="100%">
    <tr>
        <td width="100%" align="center">
            <s:submit id="backBtn" value="Back" method="back" cssClass="button" />
        </td>
    </tr>
</table>
    <%--content here--%>
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