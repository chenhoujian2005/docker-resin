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
function isNumberKey() {
    var charCode = event.keyCode;
    return !(charCode > 31 && (charCode < 48 || charCode > 57));
}

var isSubmit = false;
function validateForm(){
    if(isSubmit){
        thisForm.saveBtn.disabled = true;
        thisForm.resetBtn.disabled = true;
        thisForm.backBtn.disabled = true;
        return false;
    }
    if(thisForm.frequencyUnstructureMainId.value == ''){
        if(thisForm.unstructuredVersionId.selectedIndex == 0){
            alert('Please Select Unstructured Version');
            return false;
        }
        if(thisForm.sfiDetail.selectedIndex == 0){
            alert('Please Select SFIs Name');
            return false;
        }

    }
    if(thisForm.dateFrom.value == ''){
        alert('Please Select Date From');
        return false;
    }
    if(thisForm.dateTo.value == ''){
        alert('Please Select Date To');
        return false;
    }

    isSubmit = true;
    return true;
}

function isDuplicateDate(){
    var id = thisForm.frequencyUnstructureMainId.value;
    var sfi = thisForm.sfiDetail.value;
    var dateFrom = thisForm.dateFrom.value;
    var dateTo = thisForm.dateTo.value;

    AjaxManager.isDuplicateDateFrequencyConfig(id, sfi, dateFrom, dateTo, function(data) {
        if(data){
            return true;
        } else {
            return false;
        }
    });
}
function validateSearch(){
   if(thisForm.unstructuredVersionId.selectedIndex == 0){
            alert('Please Select Unstructured Version');
            return false;
    }

    return true;
}


</script>
</head>
<body>
<s:form action="frequency_unstructure_detail" >
<s:hidden name="frequencyUnstructureMainId" id="frequencyUnstructureMainId"/>
<s:hidden name="sfiHidden" id="sfiHidden"/>
<s:hidden name="copy" id="copy"/>
<%--<s:hidden name="unstructuredVersionId" id="unstructuredVersionId"/>--%>
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
        <td width="25%" height=30 class="label">
            Unstructured Version :<span class="require_field">*</span>
        </td>
        <td width="75%" colspan="3">
            <c:if test="${empty requestScope.frequencyUnstructureMainId}">
               <s:select list="unstructureVersionList"
                          name="unstructuredVersionId"
                          id="unstructuredVersionId"
                          listKey="id"
                          listValue="description"
                          headerKey=""
                          headerValue="-------- Please Select --------"/>
               &nbsp;<s:submit method="search" id="btnSearch" cssClass="button" value="Search" onclick="return validateSearch()"/>
               &nbsp; &nbsp; <span style="color:red;">EffectiveDate : &nbsp;${requestScope.effectiveDate}</span>
            </c:if>
            <c:if test="${not empty requestScope.frequencyUnstructureMainId}">
                <s:hidden name="unstructuredVersionId"/>
                ${requestScope.versionName}
                &nbsp; &nbsp;<span style="color:red;">EffectiveDate : &nbsp;${requestScope.effectiveDate}</span>
            </c:if>
        </td>

    </tr>
    <tr class="bgGreen1">
        <td width="25%" height=30 class="label">
            SFIs Name :<c:if test="${empty requestScope.frequencyUnstructureMainId}"><span class="require_field">*</span></c:if>
        </td>
        <td width="75%" colspan="3">
            <c:if test="${empty requestScope.frequencyUnstructureMainId}">
                <s:select list="sfiRightList"
                          name="sfiDetail"
                          id="sfiDetail"
                          listKey="id"
                          listValue="displayNameCodeAndCode"
                          headerKey=""
                          headerValue="-------------------------------------  Please Select  -------------------------------------"/>
            </c:if>
            <c:if test="${not empty requestScope.frequencyUnstructureMainId}">
                <s:hidden name="sfiDetail"/>
                ${requestScope.sfiName}
            </c:if>
        </td>
    </tr>
    <tr class="bgGreen2">
        <td class="label">
            Dataset Date From :<span class="require_field">*</span>
        </td>
        <td >
            <s:textfield name="dateFrom" id="dateFrom" readonly="true" size="8"/>
            <img alt="" border="0" src="../images/dd.gif" name="dateBtn"
                 width="15" height="15"
                 onclick="displayCalendar(document.forms[0].dateFrom,'dd/mm/yyyy',this);"
                 align="absmiddle">
        </td>
        <td class="label">
             To :<span class="require_field">*</span>
        </td>
        <td >
            <s:textfield name="dateTo" id="dateTo" readonly="true" size="8"/>
            <img alt="" border="0" src="../images/dd.gif" name="dateBtn"
                 width="15" height="15"
                 onclick="displayCalendar(document.forms[0].dateTo,'dd/mm/yyyy',this);"
                 align="absmiddle">
        </td>
    </tr>

</table>
<br>
<display:table name="dtoList" id="row" export="false" cellpadding="0" cellspacing="1" class="displayTag" style="width:100%" > <!--pagesize="50"-->
        <display:column title="Unstructured Name" headerClass="headerTable" style="text-align:left;width:70%">
            ${row.dsName}
        </display:column>
        <display:column title="Frequency (Days)" headerClass="headerTable" style="text-align:center;width:15%">
            <select name="${row.unstructuredTitleId}_frequency">
                <c:if test="${empty row.frequency}">
                    <option value="0">ไม่ใช้ Dataset นี้</option>
                    <option value="2">รายเดือน</option>
                    <option value="3">รายไตรมาส</option>
                    <option value="4">รายครึ่งปี</option>
                    <option value="7">รายปี</option>
                    <option value="5">เมื่อมีการเปลี่ยนแปลง</option>
                    <option value="8">-</option>
                </c:if>
                <c:if test="${row.frequency eq 0}">
                    <option value="0" selected="true">ไม่ใช้ Dataset นี้</option>
                    <option value="2">รายเดือน</option>
                    <option value="3">รายไตรมาส</option>
                    <option value="4">รายครึ่งปี</option>
                    <option value="7">รายปี</option>
                    <option value="5">เมื่อมีการเปลี่ยนแปลง</option>
                    <option value="8">-</option>
                </c:if>
                <c:if test="${row.frequency eq 2}">
                    <option value="0">ไม่ใช้ Dataset นี้</option>
                    <option value="2" selected="true">รายเดือน</option>
                    <option value="3">รายไตรมาส</option>
                    <option value="4">รายครึ่งปี</option>
                    <option value="7">รายปี</option>
                    <option value="5">เมื่อมีการเปลี่ยนแปลง</option>
                    <option value="8">-</option>
                </c:if>
                <c:if test="${row.frequency eq 3}">
                    <option value="0">ไม่ใช้ Dataset นี้</option>
                    <option value="2">รายเดือน</option>
                    <option value="3" selected="true">รายไตรมาส</option>
                    <option value="4">รายครึ่งปี</option>
                    <option value="7">รายปี</option>
                    <option value="5">เมื่อมีการเปลี่ยนแปลง</option>
                    <option value="8">-</option>
                </c:if>
                <c:if test="${row.frequency eq 4}">
                    <option value="0">ไม่ใช้ Dataset นี้</option>
                    <option value="2">รายเดือน</option>
                    <option value="3">รายไตรมาส</option>
                    <option value="4" selected="true">รายครึ่งปี</option>
                    <option value="7">รายปี</option>
                    <option value="5">เมื่อมีการเปลี่ยนแปลง</option>
                    <option value="8">-</option>
                </c:if>
                <c:if test="${row.frequency eq 7}">
                    <option value="0">ไม่ใช้ Dataset นี้</option>
                    <option value="2">รายเดือน</option>
                    <option value="3">รายไตรมาส</option>
                    <option value="4">รายครึ่งปี</option>
                    <option value="7" selected="true">รายปี</option>
                    <option value="5">เมื่อมีการเปลี่ยนแปลง</option>
                    <option value="8">-</option>
                </c:if>
                <c:if test="${row.frequency eq 5}">
                    <option value="0">ไม่ใช้ Dataset นี้</option>
                    <option value="2">รายเดือน</option>
                    <option value="3">รายไตรมาส</option>
                    <option value="4">รายครึ่งปี</option>
                    <option value="7">รายปี</option>
                    <option value="5" selected="true">เมื่อมีการเปลี่ยนแปลง</option>
                    <option value="8">-</option>
                </c:if>
                <c:if test="${row.frequency eq 8}">
                    <option value="0">ไม่ใช้ Dataset นี้</option>
                    <option value="2">รายเดือน</option>
                    <option value="3">รายไตรมาส</option>
                    <option value="4">รายครึ่งปี</option>
                    <option value="7">รายปี</option>
                    <option value="5">เมื่อมีการเปลี่ยนแปลง</option>
                    <option value="8" selected="true">-</option>
                </c:if>
            </select>
          </display:column>
        <display:column title="Due Days" headerClass="headerTable" style="text-align:center;width:10%">
            <span id="${row.unstructuredTitleId}_dueDayZone"></span>
            <input type="text" name="${row.unstructuredTitleId}_dueDay" value="${row.dueDay}" style="text-align:right;width:50px" onkeypress="return isNumberKey();"/>
        </display:column>
        <display:column title="KPI" headerClass="headerTable" style="text-align:center;width:5%">
            <span id="${row.unstructuredTitleId}_kpiZone"></span>
            <input type="checkbox" name="${row.unstructuredTitleId}_kpi" value="TRUE" ${row.kpi eq 'true' ? 'checked ' : ''}  style="text-align:right;width:50px" />
        </display:column>
        </display:table>
<table width="100%">
    <tr>
        <td width="100%" align="center">
            <c:if test="${sessionScope.menuAuthentication.frequencyUnstructuredManage}">
                <s:submit id="saveBtn" value="Save" method="save" cssClass="button" onclick="return validateForm()"/>
                <s:reset name="resetBtn" value="Reset" cssClass="button"/>
                <s:submit id="backBtn" value="Back" method="back" cssClass="button" />
            </c:if>
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