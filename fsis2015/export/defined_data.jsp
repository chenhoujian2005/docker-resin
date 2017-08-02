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
<link href="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript">
    function setId(id) {
        thisForm.id.value = id;
    }

    function resetForm() {
        thisForm.datasetDateFrom.value = '';
        thisForm.datasetDateTo.value = '';
        thisForm.sendTo[0].checked = true;
        thisForm.enableStatus.checked = true;
    }
</script>
</head>
<body>
<s:form action="defined_data" id="defined_data">
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
<td width="43" background="../images/table004.gif"><img src="../images/table004.gif" width="43" height="37" alt=""></td>
<td>
<table width="100%" border="0" align="center" style="height:100%">
<tr>
<td>
    <%--content here--%>
    <table width="100%">
        <tr>
            <td width="50%"><b>Defined Data</b></td>
            <td width="50%" align="right">
                <c:if test="${sessionScope.menuAuthentication.definedDataManage}">
                    <input type="button" class="button" id="btnNew" value="Add Defined Data" style="width:150px" onclick="letsGo('defined_data_detail.action', '')"/>
                </c:if>
            </td>
        </tr>
    </table>

    <table width="100%" class="displayTable">
        <tr class="bgGreen2">
            <td width="25%" height=30 class="label">
                Dataset Date From :
            </td>
            <td width="25%">
                <s:textfield name="datasetDateFrom" id="datasetDateFrom" readonly="true" size="8"/>
                <img alt="" border="0" src="../images/dd.gif" name="dateBtn"
                     width="15" height="15"
                     onclick="displayCalendar(document.forms[0].datasetDateFrom,'dd/mm/yyyy',this);"
                     align="absmiddle">
            </td>
             <td width="20%" height=30 class="label" style="margin-left:3px">
                  Dataset Date To :
            </td>
            <td width="50%">
                <s:textfield name="datasetDateTo" id="datasetDateTo" readonly="true" size="8"/>
                <img alt="" border="0" src="../images/dd.gif" name="dateBtn"
                     width="15" height="15"
                      onclick="displayCalendar(document.forms[0].datasetDateTo,'dd/mm/yyyy',this);"
                     align="absmiddle">
            </td>
        </tr>

        <tr class="bgGreen1">
            <td class="label">Send To :</td>
            <td colspan="3">
                <s:radio list="#{'':'All','B':'BOT','S':'SEPO'}" name="sendTo"/>
            </td>
        </tr>
        <tr class="bgGreen2">
            <td class="label">Status  :</td>
            <td colspan="3">
                    <s:checkbox name="enableStatus" id="enableStatus" />  Enable  </td>
       </tr>
    </table>
    <table width="100%">
        <tr>
            <td width="100%" align="center">
                <s:submit method="search" cssClass="button" id="btnSearch" value="Search"/>&nbsp;
                <button class="button" onClick="resetForm()">Reset</button>
            </td>
        </tr>
    </table>
    <display:table name="definedDataList" id="row" export="false" class="displayTag" requestURI="defined_data.action" style="width:100%;text-align:center" pagesize="15">
        <display:column title="Dataset Date From"  style="width:10%;text-align:center" headerClass="headerTable" sortable="true">
            <a href="#" onclick="letsGo('defined_data_detail_view.action','${row.id}')"> <fmt:formatDate pattern="dd MMM yyyy" value="${row.datasetDateFrom}" /> </a>
        </display:column>
        <display:column title="Dataset Date To"  style="width:10%;text-align:center" headerClass="headerTable" sortable="true">
            <a href="#" onclick="letsGo('defined_data_detail_view.action','${row.id}')"> <fmt:formatDate pattern="dd MMM yyyy" value="${row.datasetDateTo}" /> </a>
        </display:column>
       <display:column title="Send To" style="width:10%;text-align:center" headerClass="headerTable" sortable="true">
            <c:if test="${row.sendToBot}"><a href="#" onclick="letsGo('defined_data_detail_view.action','${row.id}')">BOT</a></c:if>
            <c:if test="${row.sendToSepo}"><a href="#" onclick="letsGo('defined_data_detail_view.action','${row.id}')">SEPO</a></c:if>
        </display:column>
        <display:column title="Status For Export" style="width:15%;text-align:left" headerClass="headerTable" sortable="true">
            <c:if test="${row.statusForExport eq 'PKB'}"><a href="#" onclick="letsGo('defined_data_detail_view.action','${row.id}')">Passed Key Basic</a></c:if>
            <c:if test="${row.statusForExport eq 'PCX'}"><a href="#" onclick="letsGo('defined_data_detail_view.action','${row.id}')">Passed Complex</a></c:if>
            <c:if test="${row.statusForExport eq 'PCS'}"><a href="#" onclick="letsGo('defined_data_detail_view.action','${row.id}')">Passed Cross</a></c:if>
        </display:column>
        <display:column title="Update Date" property="updateDate" format="{0,date,dd MMM yyyy}" style="width:10%;text-align:center" headerClass="headerTable" sortable="true"/>
        <display:column title="Update By" property="updateBy" style="width:15%;text-align:left" headerClass="headerTable" sortable="true"/>
        <c:if test="${sessionScope.menuAuthentication.definedDataManage}">
           <display:column title="Edit" style="width:5%;text-align:center" headerClass="headerTable">
               <img src=../images/edit.gif border="no" align="" onclick="letsGo('defined_data_detail.action','${row.id}')" style="cursor:pointer">
            </display:column>
            <display:column title="Delete" style="width:5%;text-align:center" headerClass="headerTable">
                <div onMouseOver="setId('${row.id}');">
                    <s:submit method="delete" title="Delete" type="image" src="../images/delete.gif" onclick="return confirm('Do you want to delete this record ?')"/>
                </div>
            </display:column>
        </c:if>
    </display:table>
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
    jq("#defined_data").keypress(function(event){
      if(event.keyCode == 13){
          jq("#btnNew").attr('disabled','disabled');
          jq("#btnSearch").click();
      }
    });

    function letsGo(action, id) {
        var ddf = document.getElementById("datasetDateFrom").value;
        var ddt = document.getElementById("datasetDateTo").value;
        if(thisForm.sendTo[0].checked){
           var st = thisForm.sendTo[0].value;
        }else if(thisForm.sendTo[1].checked){
           var st = thisForm.sendTo[1].value;
        }else{
           var st = thisForm.sendTo[2].value;
        }
        var ena = document.getElementById("enableStatus").checked;

        pageLink1 = action + '?id=' + id + '&<%=Constants.DefinedDataField.DATASET_DATE_FROM_HIDDEN%>=' + ddf;
        pageLink2 = '&<%=Constants.DefinedDataField.DATASET_DATE_TO_HIDDEN%>=' + ddt;
        pageLink5 = '&<%=Constants.DefinedDataField.SEND_TO_HIDDEN%>=' + st;
        pageLink6 = '&<%=Constants.DefinedDataField.ENABLE_HIDDEN%>=' + ena;
        location.href = pageLink1.concat(pageLink2,pageLink5,pageLink6);
    }
</script>
</body>
</html>