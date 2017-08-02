<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<html>
<head>
<title>Simple jsp page</title>
<SCRIPT language="javascript" src="../includes/js/popcalendar.js"></SCRIPT>
<script type="text/javascript" src="../includes/js/tp/utils.js"></script>
<script type="text/javascript" src="../includes/js/tp/validate.js"></script>
<link rel="stylesheet" type="text/css" href="../includes/css/style.css">
<LINK href="../includes/css/popcalendar.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
    function setId(id) {
        thisForm.id.value = id;
    }
    function resetForm() {
        thisForm.dateFrom.value = '';
        thisForm.dateTo.value = '';
    }
</script>
</head>
<body>
<s:form action="kpi_defined_dataset" id="kpi_defined_dataset">
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
            <td width="50%"><b>KPI Structured Defined Dataset</b></td>
            <td width="50%" align="right">
                <c:if test="${sessionScope.menuAuthentication.kpiReportStructuredView}">
                    <s:submit action="kpi_defined_dataset_detail" id="btnNew" value="Add KPI Structured Defined Dataset" cssClass="button" cssStyle="width:210px" onmouseover="setId('');"/>
                </c:if>
            </td>
        </tr>
        <tr>
            <td colspan="2">
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
            <td align="center" colspan="2">
                <s:submit method="search" cssClass="button" id="btnSearch" value="Search" onmouseover="setId('');"/>&nbsp;
                <button class="button" onClick="resetForm()">Reset</button>
            </td>
        </tr>
    </table>
    <table width="100%">
        <tr>
            <td width="100%" valign="top">
                <display:table name="kpiDefinedDataList" id="row" export="false" class="displayTag" requestURI="kpi_defined_dataset.action" style="width:100%;">
                    <display:column title="Dataset Date" headerClass="headerTable" sortable="true" style="width:40%;text-align:center">
                        <fmt:formatDate value="${row.dateFrom}" pattern="dd MMM yyyy"/>&nbsp;-&nbsp;
                        <fmt:formatDate value="${row.dateTo}" pattern="dd MMM yyyy"/>
                    </display:column>
                    <display:column title="Update Date" headerClass="headerTable" sortable="true" style="width:20%;text-align:center">
                        <fmt:formatDate value="${row.updateDate}" pattern="dd MMM yyyy HH:mm"/>
                    </display:column>
                    <display:column title="Update By" headerClass="headerTable" sortable="true" style="width:20%;text-align:left">
                        ${row.updateBy}
                    </display:column>
                    <c:if test="${sessionScope.menuAuthentication.kpiReportStructuredView}">
                        <display:column title="Edit" style="width:10%;text-align:center" headerClass="headerTable" >
                            <a href="kpi_defined_dataset_detail.action?id=${row.id}" title="Edit"><img src="../images/edit.gif " border="no"></a>
                        </display:column>
                        <display:column title="Delete" style="width:10%;text-align:center" headerClass="headerTable">
                            <div onMouseOver="setId('${row.id}');">
                                <s:submit method="delete" title="Delete" type="image" src="../images/delete.gif" onclick="return confirm('Do you want to delete this record ?')"/>
                            </div>
                        </display:column>
                    </c:if>
                </display:table>
            </td>
        </tr>
    </table>

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