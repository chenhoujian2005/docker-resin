<%@ page import="th.go.mof.fpo.Constants" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<html>
<head>
<title>Activity Log Detail</title>
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

</script>
</head>
<body>
<s:form action="defined_data_detail_log" id="defined_data_detail_log">
<s:hidden name="id"/>
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
            <td><b>Definded Data : Log</b></td>
        </tr>
    </table>

    <table width="100%" class="displayTable">
        <tr class="bgGreen2">
            <td width="25%" height=30 class="label">
                Dataset Date From :
            </td>
            <td width="25%">
                <s:textfield name="datasetDateFrom" id="datasetDateFrom" readonly="true" size="8" disabled="true"/>
            </td width="25%">
            <td height=30 class="label">
                Dataset Date To :
            </td>
            <td width="25%">
                <s:textfield name="datasetDateTo" id="datasetDateTo" readonly="true" size="8" disabled="true"/>
             </td>
        </tr>
        <%--<tr class="bgGreen1">--%>
            <%--<td class="label">--%>
                <%--Effective Date From :--%>
            <%--</td>--%>
            <%--<td>--%>
                <%--<s:textfield name="effectiveDateFrom" id="effectiveDateFrom" readonly="true" size="8" disabled="true"/>--%>
            <%--</td>--%>
            <%--<td height=30 class="label">--%>
                 <%--Effective Date To :--%>
            <%--</td>--%>
            <%--<td>--%>
                <%--<s:textfield name="effectiveDateTo" id="effectiveDateTo" readonly="true" size="8" disabled="true"/>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <tr class="bgGreen2">
            <td class="label">Send To :</td>
            <td colspan="3">
                <s:radio list="#{'B':'BOT','S':'SEPO'}" name="sendTo" disabled="true"/>
            </td>
        </tr>
        <tr class="bgGreen1">
            <td class="label">Status For Export :</td>
            <td colspan="3">
                <s:radio list="#{'PKB':'Passed Key Basic','PCX':'Passed Complex','PCS':'Passed Cross'}" name="statusForExport" disabled="true"/>
            </td>
        </tr>
    </table>
    <br/>
    <display:table name="dtoList" id="row" export="false" class="displayTag" requestURI="defined_data_detail_log.action" style="width:40%;text-align:center">
        <display:column title="" style="width:20%;text-align:center" headerClass="headerTable">
            <c:if test="${row.selected}">
                <input type="checkbox" name="seletedIds" checked="true" value="${row.dsTitle.id}" disabled="disabled"/>
            </c:if>
            <c:if test="${not row.selected}">
                 <input type="checkbox" name="seletedIds" value="${row.dsTitle.id}" disabled="true"/>
            </c:if>
        </display:column>
        <display:column title="Dataset Name" property="dsTitle.name" style="width:80%;text-align:center" headerClass="headerTable"/>
    </display:table>
    <table width="100%">
        <tr>
            <td width="100%" align="center">
               <input type="button" id="closeBtn" name="closeBtn" value="Close" class="button" onclick="window.close();"/>
            </td>
        </tr>
    </table>
    <font style="color:red;">* เป็นข้อมูลก่อนการแก้ไข</font>
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
