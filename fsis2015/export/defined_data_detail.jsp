<%@ page import="th.go.mof.fpo.Constants" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<html>
<head>
<title>Simple jsp page</title>
<link rel="stylesheet" type="text/css" href="../includes/css/style.css">
<script type="text/javascript" src="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.js"></script>
<link href="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
    function isCheckObj(objChk){
        var isSelect = false;
        for (var i = 0; i < objChk.length; i ++) {
            if(objChk[i].checked){
                isSelect = true;
                break;
            }
        }
        return isSelect;
    }
    function validateForm(){
        if(thisForm.datasetDateFrom.value == ''){
            alert('Please Select Dataset Date From');
            thisForm.datasetDateFrom.focus();
            return false;
        }
        if(thisForm.datasetDateTo.value == ''){
            alert('Please Select Dataset Date To');
            thisForm.datasetDateTo.focus();
            return false;
        }

        if(! thisForm.sendTo[0].checked && ! thisForm.sendTo[1].checked){
            alert('Please Select Send To');
            return false;
        }
        if(! thisForm.statusForExport[0].checked && ! thisForm.statusForExport[1].checked && ! thisForm.statusForExport[2].checked){
            alert('Please Select Status For Export');
            return false;
        }

        if (! isCheckObj(thisForm.seletedIds)) {
            alert('Please Select Dataset Name at least one item !!');
            return false;
        }

        return true;
    }
</script>
</head>
<body>
<s:form action="defined_data_detail" id="defined_data_detail">
<s:hidden name="id"/>
<s:hidden name="datasetDateToHidden"/>
<s:hidden name="datasetDateFromHidden"/>
<s:hidden name="effectiveDateFromHidden"/>
<s:hidden name="effectiveDateToHidden"/>
<s:hidden name="sendToHidden"/>
<s:hidden name="enableHidden"/>
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
            <td><b>Definded Data : Add/Edit</b></td>
        </tr>
    </table>

    <table width="100%" class="displayTable">
        <tr class="bgGreen2">
            <td width="25%" height=30 class="label">
                Dataset Date From<span class="require_field">*</span> :
            </td>
            <td width="25%">
                <s:textfield name="datasetDateFrom" id="datasetDateFrom" readonly="true" size="8"/>
                <img alt="" border="0" src="../images/dd.gif" name="dateBtn"
                     width="15" height="15"
                     onclick="displayCalendar(document.forms[0].datasetDateFrom,'dd/mm/yyyy',this);"
                     align="absmiddle">
            </td width="25%">
            <td height=30 class="label">
                Dataset Date To<span class="require_field">*</span> :
            </td>
            <td width="25%">
                <s:textfield name="datasetDateTo" id="datasetDateTo" readonly="true" size="8"/>
                <img alt="" border="0" src="../images/dd.gif" name="dateBtn"
                     width="15" height="15" onclick="displayCalendar(document.forms[0].datasetDateTo,'dd/mm/yyyy',this);"
                     align="absmiddle">
            </td>
        </tr>

        <tr class="bgGreen1">
            <td class="label">Send To<span class="require_field">*</span> :</td>
            <td colspan="3">
                <s:radio list="#{'B':'BOT','S':'SEPO'}" name="sendTo"   />
            </td>
        </tr>
        <tr class="bgGreen2">
            <td class="label">Status For Export<span class="require_field">*</span> :</td>
            <td colspan="3">
                <s:radio list="#{'PKB':'Passed Key Basic','PCX':'Passed Complex','PCS':'Passed Cross'}" name="statusForExport"  />
            </td>
        </tr>
        <tr class="bgGreen1">
            <td class="label">Status  :</td>
            <td colspan="3">
                <s:checkbox name="enable" id="enable"/>  Enable </td>
                <%--<input type="checkbox" name="enable" value="true" checked="checked" id="enable"/>  Enable          </td>--%>
        </tr>
    </table>
    <br/>
    <display:table name="dtoList" id="row" export="false" class="displayTag" requestURI="defined_data_detail.action" style="width:40%;text-align:center">
        <display:column title="" style="width:20%;text-align:center" headerClass="headerTable">
            <c:if test="${row.selected}">
                <input type="checkbox" name="seletedIds" checked="true" value="${row.dsTitle.id}"/>
            </c:if>
            <c:if test="${not row.selected}">
                <input type="checkbox" name="seletedIds" value="${row.dsTitle.id}"/>
            </c:if>
        </display:column>
        <display:column title="Dataset Name" property="dsTitle.name" style="width:80%;text-align:center" headerClass="headerTable"/>
    </display:table>
    <table width="100%">
        <tr>
            <td width="100%" align="center">
                <s:submit name="save" value="Save" cssClass="button" method="save" onclick="return validateForm()"/>&nbsp;
                <s:reset name="reset" value="Reset" cssClass="button"/>&nbsp;
                <s:submit name="back" value="Back" cssClass="button" method="back"/>
            </td>
        </tr>
    </table>
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



</script>
</body>
</html>
