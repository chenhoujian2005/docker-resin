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

function checkFortnightly(frequency,dsVersionId) {
    var tmpLabelStartDay = '';
    var tmpLabelGap = '';
    var tmpLabelDueDay = '';
    var dueDayHtml = '';
    var alertBeforeHtml = '';
    var alertAfterHtml = '';


   if (frequency != 1) {
       var tmpLabelStartDay = '';
       var tmpLabelPkbStartDay = '';
       var tmpLabelPcxStartDay = '';
       var tmpLabelPcsStartDay = '';
       var tmpLabelGap = '';
       var tmpLabelDueDay = '';

   } else {

       var tmpLabelStartDay = 'Start Day / <a href="#" onclick="viewFortnightly\('+dsVersionId +','+'\'DUE\''+'\)"><strong>view</strong></a><br/>';
       var tmpLabelPkbStartDay = 'Start PKB Day / <a href="#" onclick="viewFortnightly\('+dsVersionId +','+'\'PKB\''+'\)"><strong>view</strong></a><br/>';
       var tmpLabelPcxStartDay = 'Start PCX Day / <a href="#" onclick="viewFortnightly\('+dsVersionId +','+'\'PCX\''+'\)"><strong>view</strong></a><br/>';
       var tmpLabelPcsStartDay = 'Start PCS Day / <a href="#" onclick="viewFortnightly\('+dsVersionId +','+'\'PCS\''+'\)"><strong>view</strong></a><br/>';
       var tmpLabelGap = 'Gap<br/>';
       var tmpLabelDueDay = 'Due Days<br/>';

   }
    setHtml(dsVersionId + '_dueDayZone', tmpLabelStartDay + dueDayHtml);
    setHtml(dsVersionId + '_alertBeforeZone', tmpLabelGap + alertBeforeHtml);
    setHtml(dsVersionId + '_alertAfterZone', tmpLabelDueDay + alertAfterHtml);
    setHtml(dsVersionId + '_pkbDueDayZone', tmpLabelPkbStartDay + dueDayHtml);
    setHtml(dsVersionId + '_pcxDueDayZone', tmpLabelPcxStartDay + dueDayHtml);
    setHtml(dsVersionId + '_pcsDueDayZone', tmpLabelPcsStartDay + dueDayHtml);
}

function setHtml(id, html) {
    var obj = document.getElementById(id);
    if(obj != null) {
        document.getElementById(id).innerHTML = html;
    }
}


function viewFortnightly(dsTitleId,type){

    //alert("viewFortnightly...."+dsTitleId+"type..."+type);

    var startDay = document.getElementById(dsTitleId + '_dueDay').value;
    var gap = document.getElementById(dsTitleId + '_alertBefore').value;
    var dueDay = document.getElementById(dsTitleId + '_alertAfter').value;
    var dateFrom = document.getElementById('dateFrom').value;
    var dateTo = document.getElementById('dateTo').value;
    var startPkbDay = document.getElementById(dsTitleId + '_pkbDueDay').value;
    var startPcxDay = document.getElementById(dsTitleId + '_pcxDueDay').value;
    var startPcsDay = document.getElementById(dsTitleId + '_pcsDueDay').value;

    if(trim(dateFrom) == ''){
        alert('Please Input Date From');
        return;
    }
    if(trim(dateTo) == ''){
        alert('Please Input Date To');
        return;
    }
    if(trim(gap) == ''){
        alert('Please Input Gap');
        return;
    }
    if(trim(dueDay) == ''){
        alert('Please Input Due Days');
        return;
    }
    if(trim(startDay) == ''){
        alert('Please Input Start Day');
        return;
    }


    var param = '?dsTitleId=' + dsTitleId;
    param += '&gap=' + gap;
    param += '&dueDay=' + dueDay;
    param += '&dateFrom=' + dateFrom;
    param += '&dateTo=' + dateTo;

    if(type == 'DUE'){
        param += '&startDay=' + startDay;
        openPopupWindow('frequency_config_fortnightly.action' + param , 800,600);
    }
    if(type == 'PKB'){
        param += '&startPkbDay=' + startPkbDay;
        openPopupWindow('frequency_config_fortnightlyPKB.action' + param , 800,600);
    }
    if(type == 'PCX'){
        param += '&startPcxDay=' + startPcxDay;
        openPopupWindow('frequency_config_fortnightlyPCX.action' + param , 800,600);
    }
    if(type == 'PCS'){
        param += '&startPcsDay=' + startPcsDay;
        openPopupWindow('frequency_config_fortnightlyPCS.action' + param , 800,600);
    }

}




var isSubmit = false;
function validateForm(){
    if(isSubmit){
        thisForm.saveBtn.disabled = true;
        thisForm.resetBtn.disabled = true;
        thisForm.backBtn.disabled = true;
        return false;
    }
    if(thisForm.frequencyConfigMainId.value == ''){
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

    if(! validateRecord()){
        return false;
    }
    isSubmit = true;
    return true;
}

function isDuplicateDate(){
    var id = thisForm.frequencyConfigMainId.value;
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

var NOT_USE = 0;
var FORTNIGHTLY = 1;
var MONTHLY = 2;
var QUARTERLY = 3;
var HALF_YEAR = 4;
var CHANGE = 5;
var INDEFINITE = 6;
var YEARLY = 7;
var EMPTY = '';

function validateRecord(){
    <c:forEach items="${requestScope.dtoList}" var="row">
    var frequencyId = document.getElementById('${row.dsVersionId}_frequency').value;
    var dsTitleId = ${row.dsVersionId};
    var dsTitleName = ${row.dsTitleName};

    if (frequencyId == FORTNIGHTLY || frequencyId == MONTHLY || frequencyId == QUARTERLY || frequencyId == HALF_YEAR || frequencyId == YEARLY || frequencyId == CHANGE){
        if(! validateRecordDetail(frequencyId, dsTitleId, dsTitleName)){
            return false;
        }
    }
    </c:forEach>
    return true;
}

function validateRecordDetail(frequencyId, dsTitleId, dsTitleName){
    var dueDayValue = document.getElementById(dsTitleId + '_dueDay').value;
    var alertBeforeValue = document.getElementById(dsTitleId + '_alertBefore').value;
    var alertAfterValue = document.getElementById(dsTitleId + '_alertAfter').value;
    dsTitleName = '(' + dsTitleName + ')';
    if(frequencyId == FORTNIGHTLY){
        if(trim(dueDayValue) == EMPTY){
            alert('Please Input Start Day ' + dsTitleName);
            return false;
        } else if(trim(alertBeforeValue) == EMPTY){
            alert('Please Input Gap ' + dsTitleName);
            return false;
        } else if(trim(alertAfterValue) == EMPTY){
            alert('Please Input Due Days ' + dsTitleName);
            return false;
        }

    } else if(frequencyId == MONTHLY || frequencyId == QUARTERLY || frequencyId == HALF_YEAR || frequencyId == YEARLY || frequencyId == CHANGE){
        if(trim(dueDayValue) == EMPTY){
            alert('Please Input Due Days ' + dsTitleName);
            return false;
        }
    }

    return true;
}
</script>
</head>
<body>
<s:form action="frequency_config_detail" escapeAmp="false">
<s:hidden name="frequencyConfigMainId" id="frequencyConfigMainId"/>
<s:hidden name="sfiHidden" id="sfiHidden"/>
<s:hidden name="copy" id="copy"/>
<s:hidden name="mainIdBeforeCopy" id="mainIdBeforeCopy"/>

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
        <td><b>Frequency Config</b></td>
    </tr>
</table>
<table width="100%" class="displayTable">
    <tr class="bgGreen2">
        <td width="25%" height=30 class="label">
            SFIs Name :<c:if test="${empty requestScope.frequencyConfigMainId}"><span class="require_field">*</span></c:if>
        </td>
        <td width="75%" colspan="3">
            <c:if test="${empty requestScope.frequencyConfigMainId}">
                <s:select list="sfiRightList"
                          name="sfiDetail"
                          id="sfiDetail"
                          listKey="id"
                          listValue="displayNameCodeAndCode"
                          headerKey=""
                          headerValue="-------------------------------------  Please Select  -------------------------------------"/>
            </c:if>
            <c:if test="${not empty requestScope.frequencyConfigMainId}">
                <s:hidden name="sfiDetail"/>
                ${requestScope.sfiName}
            </c:if>
        </td>
    </tr>
    <tr class="bgGreen1">
        <td class="label">
            Dataset Date From :<span class="require_field">*</span>
        </td>
        <td>
            <s:textfield name="dateFrom" id="dateFrom" readonly="true" size="8"/>
            <img alt="" border="0" src="../images/dd.gif" name="dateBtn"
                 width="15" height="15"
                 onclick="displayCalendar(document.forms[0].dateFrom,'dd/mm/yyyy',this);"
                 align="absmiddle">
        </td>
        <td class="label">
           To :<span class="require_field">*</span>
        </td>
        <td>
            <s:textfield name="dateTo" id="dateTo" readonly="true" size="8"/>
            <img alt="" border="0" src="../images/dd.gif" name="dateBtn"
                 width="15" height="15"
                 onclick="displayCalendar(document.forms[0].dateTo,'dd/mm/yyyy',this);"
                 align="absmiddle">
        </td>
    </tr>

</table>
<br>
<display:table name="dtoList" id="row" export="false" cellpadding="0" cellspacing="1" class="displayTag" style="width:100%" >
<display:column title="No." headerClass="headerTable" style="text-align:center;width:5%">
    ${row_rowNum}
</display:column>
<display:column title="Dataset Name" headerClass="headerTable" style="text-align:left;width:10%">
    ${row.dsTitleName}
</display:column>
<display:column title="Version" headerClass="headerTable" style="text-align:left;width:10%">
    ${row.dsVersion}
</display:column>
<display:column title="Frequency (Days)" headerClass="headerTable" style="text-align:center;width:15%">

    <select name="${row.dsVersionId}_frequency" onchange="checkFortnightly(this.value,${row.dsVersionId});">
        <c:if test="${empty row.frequency}">
            <option value="0">ไม่ใช้ Dataset นี้</option>
            <option value="1">รายปักษ์</option>
            <option value="2">รายเดือน</option>
            <option value="3">รายไตรมาส</option>
            <option value="4">รายครึ่งปี</option>
            <option value="7">รายปี</option>
            <option value="5">เมื่อมีการเปลี่ยนแปลง</option>
            <option value="6">ยังไม่มีกำหนดการส่ง</option>
        </c:if>
        <c:if test="${row.frequency eq 0}">
            <option value="0">ไม่ใช้ Dataset นี้</option>
            <option value="1">รายปักษ์</option>
            <option value="2">รายเดือน</option>
            <option value="3">รายไตรมาส</option>
            <option value="4">รายครึ่งปี</option>
            <option value="7">รายปี</option>
            <option value="5">เมื่อมีการเปลี่ยนแปลง</option>
            <option value="6">ยังไม่มีกำหนดการส่ง</option>
        </c:if>
        <c:if test="${row.frequency eq 1}">
            <option value="0">ไม่ใช้ Dataset นี้</option>
            <option value="1" selected="true">รายปักษ์</option>
            <option value="2">รายเดือน</option>
            <option value="3">รายไตรมาส</option>
            <option value="4">รายครึ่งปี</option>
            <option value="7">รายปี</option>
            <option value="5">เมื่อมีการเปลี่ยนแปลง</option>
            <option value="6">ยังไม่มีกำหนดการส่ง</option>
        </c:if>
        <c:if test="${row.frequency eq 2}">
            <option value="0">ไม่ใช้ Dataset นี้</option>
            <option value="1">รายปักษ์</option>
            <option value="2" selected="true">รายเดือน</option>
            <option value="3">รายไตรมาส</option>
            <option value="4">รายครึ่งปี</option>
            <option value="7">รายปี</option>
            <option value="5">เมื่อมีการเปลี่ยนแปลง</option>
            <option value="6">ยังไม่มีกำหนดการส่ง</option>
        </c:if>
        <c:if test="${row.frequency eq 3}">
            <option value="0">ไม่ใช้ Dataset นี้</option>
            <option value="1">รายปักษ์</option>
            <option value="2">รายเดือน</option>
            <option value="3" selected="true">รายไตรมาส</option>
            <option value="4">รายครึ่งปี</option>
            <option value="7">รายปี</option>
            <option value="5">เมื่อมีการเปลี่ยนแปลง</option>
            <option value="6">ยังไม่มีกำหนดการส่ง</option>
        </c:if>
        <c:if test="${row.frequency eq 4}">
            <option value="0">ไม่ใช้ Dataset นี้</option>
            <option value="1">รายปักษ์</option>
            <option value="2">รายเดือน</option>
            <option value="3">รายไตรมาส</option>
            <option value="4" selected="true">รายครึ่งปี</option>
            <option value="7">รายปี</option>
            <option value="5">เมื่อมีการเปลี่ยนแปลง</option>
            <option value="6">ยังไม่มีกำหนดการส่ง</option>
        </c:if>
        <c:if test="${row.frequency eq 7}">
            <option value="0">ไม่ใช้ Dataset นี้</option>
            <option value="1">รายปักษ์</option>
            <option value="2">รายเดือน</option>
            <option value="3">รายไตรมาส</option>
            <option value="4">รายครึ่งปี</option>
            <option value="7" selected="true">รายปี</option>
            <option value="5">เมื่อมีการเปลี่ยนแปลง</option>
            <option value="6">ยังไม่มีกำหนดการส่ง</option>
        </c:if>
        <c:if test="${row.frequency eq 5}">
            <option value="0">ไม่ใช้ Dataset นี้</option>
            <option value="1">รายปักษ์</option>
            <option value="2">รายเดือน</option>
            <option value="3">รายไตรมาส</option>
            <option value="4">รายครึ่งปี</option>
            <option value="7">รายปี</option>
            <option value="5" selected="true">เมื่อมีการเปลี่ยนแปลง</option>
            <option value="6">ยังไม่มีกำหนดการส่ง</option>
        </c:if>
        <c:if test="${row.frequency eq 6}">
            <option value="0">ไม่ใช้ Dataset นี้</option>
            <option value="1">รายปักษ์</option>
            <option value="2">รายเดือน</option>
            <option value="3">รายไตรมาส</option>
            <option value="4">รายครึ่งปี</option>
            <option value="7">รายปี</option>
            <option value="5">เมื่อมีการเปลี่ยนแปลง</option>
            <option value="6" selected="true">ยังไม่มีกำหนดการส่ง</option>
        </c:if>
    </select>
    <script type="text/javascript">
        var thisFrequency = document.getElementsByName('${row.dsVersionId}_frequency')[0];
        thisFrequency.disabled = ${not sessionScope.menuAuthentication.frequencyManage};
    </script>
</display:column>

<c:choose>
    <c:when test="${row.frequency == 1}">
        <display:column title="Due Days" headerClass="headerTable" style="text-align:center;width:5%">
            <span id="${row.dsVersionId}_dueDayZone">
                Start Day / <a href="#" onclick="viewFortnightly(${row.dsVersionId},'DUE')"><strong>view</strong></a><br/>
            </span>
            <input type="text" name="${row.dsVersionId}_dueDay" value="${row.dueDay}" style="text-align:right;width:50px" onkeypress="return isNumberKey();"/>
        </display:column>
        <display:column title="KPI PKB Due Days" headerClass="headerTable" style="text-align:center;width:10%">
            <span id="${row.dsVersionId}_pkbDueDayZone">
                Start PKB Day / <a href="#" onclick="viewFortnightly(${row.dsVersionId},'PKB')"><strong>view</strong></a><br/>
            </span>
        <input type="text" name="${row.dsVersionId}_pkbDueDay" value="${row.pkbDueday}" style="text-align:right;width:50px" onkeypress="return isNumberKey();"/>
        </display:column>
        <display:column title="KPI PCX Due Days" headerClass="headerTable" style="text-align:center;width:10%">
            <span id="${row.dsVersionId}_pcxDueDayZone">
                Start PCX Day / <a href="#" onclick="viewFortnightly(${row.dsVersionId},'PCX')"><strong>view</strong></a><br/>
            </span>
            <input type="text" name="${row.dsVersionId}_pcxDueDay" value="${row.pcxDueday}" style="text-align:right;width:50px" onkeypress="return isNumberKey();"/>
        </display:column>
        <display:column title="KPI PCS Due Days" headerClass="headerTable" style="text-align:center;width:10%">
            <span id="${row.dsVersionId}_pcsDueDayZone">
                Start PCS Day / <a href="#" onclick="viewFortnightly(${row.dsVersionId},'PCS')"><strong>view</strong></a><br/>
            </span>
            <input type="text" name="${row.dsVersionId}_pcsDueDay" value="${row.pcsDueday}" style="text-align:right;width:50px" onkeypress="return isNumberKey();"/>
        </display:column>
        <display:column title="Alert before due date (Days)" headerClass="headerTable" style="text-align:center;width:10%">
            <span id="${row.dsVersionId}_alertBeforeZone"> Gap<br/> </span>
            <input type="text" name="${row.dsVersionId}_alertBefore" value="${row.alertBefore}" style="text-align:right;width:50px" onkeypress="return isNumberKey();"/>
         </display:column>
        <display:column title="Alert after due date (Days)" headerClass="headerTable" style="text-align:center;width:10%">
            <span id="${row.dsVersionId}_alertAfterZone">Due Days<br/></span>
            <input type="text" name="${row.dsVersionId}_alertAfter" value="${row.alertAfter}" style="text-align:right;width:50px" onkeypress="return isNumberKey();"/>
            </display:column>
    </c:when>
    <c:otherwise>
        <display:column title="Due Days" headerClass="headerTable" style="text-align:center;width:12%">
            <span id="${row.dsVersionId}_dueDayZone"></span>
            <input type="text" name="${row.dsVersionId}_dueDay" value="${row.dueDay}" style="text-align:right;width:50px" onkeypress="return isNumberKey();"/>
        </display:column>
        <display:column title="KPI PKB Due Days" headerClass="headerTable" style="text-align:center;width:10%">
            <span id="${row.dsVersionId}_pkbDueDayZone"></span>
            <input type="text" name="${row.dsVersionId}_pkbDueDay" value="${row.pkbDueday}" style="text-align:right;width:50px" onkeypress="return isNumberKey();"/>
        </display:column>
        <display:column title="KPI PCX Due Days" headerClass="headerTable" style="text-align:center;width:10%">
            <span id="${row.dsVersionId}_pcxDueDayZone"></span>
            <input type="text" name="${row.dsVersionId}_pcxDueDay" value="${row.pcxDueday}" style="text-align:right;width:50px" onkeypress="return isNumberKey();"/>
        </display:column>
        <display:column title="KPI PCS Due Days" headerClass="headerTable" style="text-align:center;width:10%">
            <span id="${row.dsVersionId}_pcsDueDayZone"></span>
            <input type="text" name="${row.dsVersionId}_pcsDueDay" value="${row.pcsDueday}" style="text-align:right;width:50px" onkeypress="return isNumberKey();"/>
        </display:column>
        <display:column title="Alert before due date (Days)" headerClass="headerTable" style="text-align:center;width:10%">
            <span id="${row.dsVersionId}_alertBeforeZone"></span>
            <input type="text" name="${row.dsVersionId}_alertBefore" value="${row.alertBefore}" style="text-align:right;width:50px" onkeypress="return isNumberKey();"/>
        </display:column>
        <display:column title="Alert after due date (Days)" headerClass="headerTable" style="text-align:center;width:10%">
            <span id="${row.dsVersionId}_alertAfterZone"></span>
            <input type="text" name="${row.dsVersionId}_alertAfter" value="${row.alertAfter}" style="text-align:right;width:50px" onkeypress="return isNumberKey();"/>
        </display:column>
    </c:otherwise>
</c:choose>
<display:column title="Alert after reject (Days)" headerClass="headerTable" style="text-align:center;width:10%">
    <input type="text" name="${row.dsVersionId}_alertAfterReject" value="${row.alertAfterReject}" style="text-align:right;width:50px" onkeypress="return isNumberKey();"/>
</display:column>
</display:table>
<table width="100%">
    <tr>
        <td width="100%" align="center">
            <c:if test="${sessionScope.menuAuthentication.frequencyManage}">
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