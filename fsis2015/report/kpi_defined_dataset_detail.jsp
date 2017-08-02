<%@ page import="th.go.mof.fpo.Constants" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<html>
<head>
<title>Simple jsp page</title>

<script type='text/javascript' src='../dwr/engine.js'></script>
<script type='text/javascript' src='../dwr/util.js'></script>
<script type='text/javascript' src='../dwr/interface/AjaxManager.js'></script>

<SCRIPT language="javascript" src="../includes/js/popcalendar.js"></SCRIPT>
<script type="text/javascript" src="../includes/js/tp/utils.js"></script>
<script type="text/javascript" src="../includes/js/tp/validate.js"></script>    
<link rel="stylesheet" type="text/css" href="../includes/css/style.css">
<LINK href="../includes/css/popcalendar.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
    var isDuplicate = false;

    function window.onload() {
        init_cal('ENz');
    }
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
    function validateDate(strFromDateId, strToDateId) {
        var strFromDate = getValue(strFromDateId);
        var strToDate = getValue(strToDateId);

        if (strFromDate != '' && strToDate != '') {
            var dayPartFromDate = parseInt(strFromDate.substring(0, 2), 10);
            var monPartFromDate = parseInt(strFromDate.substring(3, 5), 10);
            var yearPartFromDate = parseInt(strFromDate.substring(6, 10), 10);
            var dtFrom = new Date(yearPartFromDate, monPartFromDate - 1, dayPartFromDate);

            var dayPartToDate = parseInt(strToDate.substring(0, 2), 10);
            var monPartToDate = parseInt(strToDate.substring(3, 5), 10);
            var yearPartToDate = parseInt(strToDate.substring(6, 10), 10);
            var dtTo = new Date(yearPartToDate, monPartToDate - 1, dayPartToDate);
            if (dtFrom <= dtTo) {
                return true;
            }
        }
        return false;
    }
    function validateForm(){
        if(isEmptyById('dateFrom')){
            alert('Please Input Dataset Date From');
            return false;
        }
        if(isEmptyById('dateTo')){
            alert('Please Input Dataset Date To');
            return false;
        }
        if (!validateDate('dateFrom', 'dateTo')) {
            alert('Dataset Date From must be lessthan or equal Dataset Date To');
            return false;
        }
        while(thisForm.tmpIsDup.value == ''){

        }
        if(thisForm.tmpIsDup.value == 'true'){
            alert('Dataset Date From or Dataset Date To is overlap record that already exist !!');
            return false;
        }
        var objChk = document.kpi_defined_dataset_detail.dsTitleIds;
        if (!isCheckObj(objChk)) {
            alert('Please Select Dataset Name at least one item !!');
            return false;
        }
        return true;
    }

    function checkDateInDb(){
        thisForm.tmpIsDup.value = '';
        var dateFrom = getValue('dateFrom');
        var dateTo = getValue('dateTo');
        var id = getValue('id');
        if(dateFrom != '' && dateTo != ''){
            AjaxManager.kpiDefinedDataIsDup(dateFrom, dateTo, id, function(data) {
                isDuplicate = data;
                thisForm.tmpIsDup.value = data;
            });
        }
    }
</script>
</head>
<body>
<s:form action="kpi_defined_dataset_detail" id="kpi_defined_dataset_detail">
<s:hidden id="id" name="id"/>
<input type="hidden" id="tmpIsDup"/>
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
            <td width="100%"><b>KPI Structured Defined Dataset : Add/Edit</b></td>
        </tr>
        <tr>
            <td>
                <table width="100%" class="displayTable">
                    <tr class="bgGreen2">
                        <td width="25%" class="label">
                            Dataset Date From :
                        </td>
                        <td width="75%">
                            <s:textfield name="dateFrom" size="15" cssStyle="font-size:14px"/>
                                <img border="0" src="../images/dd.gif" name="dateBtn"
                                     width="15"
                                     height="15"
                                     onClick='popUpCalendar(this, dateFrom, "dd/mm/yyyy")'
                                     align="absmiddle">
                        </td>
                    </tr>
                    <tr class="bgGreen1">
                        <td class="label">
                            Dataset Date To :
                        </td>
                        <td>
                            <s:textfield name="dateTo" size="15" cssStyle="font-size:14px"/>
                                <img border="0" src="../images/dd.gif" name="dateBtn"
                                     width="15"
                                     height="15"
                                     onClick='popUpCalendar(this, dateTo, "dd/mm/yyyy")'
                                     align="absmiddle">
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="center">
                <s:submit name="save" value="Save" cssClass="button" method="save" onmouseover="checkDateInDb()" onclick="return validateForm()"/>&nbsp;
                <s:reset value="Reset" cssClass="button"/>&nbsp;
                <s:submit name="back" value="Back" cssClass="button" method="back"/>
            </td>
        </tr>
        <tr><td>&nbsp;</td></tr>
        <tr>
            <td>
                <table width="40%">
                    <tr>
                        <td width="100%">
                            <display:table name="dsTitleList" id="row" export="false" class="displayTag" requestURI="defined_data.action" style="width:100%;">
                                <display:column title="" style="width:20%;text-align:center" headerClass="headerTable">
                                    <c:set var="tmp" value="false"/>
                                    <c:forEach items="${requestScope.kpiDefinedDataDetailList}" var="thisDefined">
                                        <c:if test="${thisDefined.dsTitle.id eq row.id}">
                                            <c:set var="tmp" value="true"/>
                                        </c:if>
                                    </c:forEach>
                                    <c:if test="${tmp}">
                                        <input type="checkbox" name="dsTitleIds" value="${row.id}" checked>
                                    </c:if>
                                    <c:if test="${not tmp}">
                                        <input type="checkbox" name="dsTitleIds" value="${row.id}">
                                    </c:if>
                                </display:column>
                                <display:column title="Dataset Name" style="width:80%;text-align:left" headerClass="headerTable" sortable="true">
                                    ${row.name}
                                </display:column>
                            </display:table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>

    </table>
    <br>
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
