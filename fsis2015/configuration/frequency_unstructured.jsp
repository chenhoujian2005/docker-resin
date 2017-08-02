<%--
  Created by IntelliJ IDEA.
  User: Arisara
  Date: 6/25/14
  Time: 11:20 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<%@ page import="th.go.mof.fpo.Constants" %>
<html>
<head>
<title>Simple jsp page</title>
<link rel="stylesheet" type="text/css" href="../includes/css/style.css">
<link href="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.js"></script>
<script type="text/javascript" src="../includes/js/tp/utils.js"></script>
<script type="text/javascript" src="../includes/js/jquery.js"></script>

<script type="text/javascript">
    function changeSfi(){
        thisForm.submit();
    }

    function resetForm() {
        thisForm.sfi.selectedIndex = 0;
        thisForm.dateFrom.value='';
        thisForm.dateTo.value='';
    }

    function confirmDelete(id) {
        if (confirm("Do you want to delete this record ?")) {
            thisForm.id.value = id;
            return true;
        }
        return false;
    }
</script>
</head>
<body>
<s:form action="frequency_unstructured">
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
                                                <td width="40%"><b>Frequency UnStructured</b></td>
                                                <td align="right">
                                                    <c:if test="${sessionScope.menuAuthentication.frequencyUnstructuredManage}">
                                                        <input type="button" class="button" id="btnNew" name="btnNew" value="Add Frequency" style="width:150px" onclick="letsGo('frequency_unstructure_detail.action','')"/>
                                                    </c:if>
                                                </td>
                                            </tr>
                                        </table>
                                                <c:choose>
                                                    <c:when test="${sfiRightList ne null}">
                                        <table width="100%" class="displayTable">
                                            <tr class="bgGreen2">
                                                <td width="22%" class="label">SFIs Name :</td>
                                                <td width="78%" colspan="3">
                                                    <s:select list="sfiRightList"
                                                              name="sfi"
                                                              id="sfi"
                                                              listKey="id"
                                                              listValue="displayNameCodeAndCode"
                                                              headerKey=""
                                                              headerValue="-------------------------------------  Please Select  -------------------------------------"
                                                           />
                                                    <%--onchange="changeSfi();"--%>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label">
                                                    Dataset Date From :
                                                </td>
                                                <td>
                                                    <s:textfield name="dateFrom" id="dateFrom" readonly="true" size="8"/>
                                                    <img alt="" border="0" src="../images/dd.gif" name="dateBtn"
                                                         width="15" height="15"
                                                         onclick="displayCalendar(document.forms[0].dateFrom,'dd/mm/yyyy',this);"
                                                         align="absmiddle">
                                                </td>
                                                <td class="label">
                                                    To :
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
                                        <table width="100%">
                                            <tr>
                                                <td width="100%" align="center">
                                                    <s:submit method="search" id="btnSearch" cssClass="button" value="Search"/>&nbsp;
                                                    <button class="button" onclick="resetForm()">Reset</button>
                                                </td>
                                            </tr>
                                        </table>
                                        <br>
                                        <display:table name="mainList" id="row" export="false" class="displayTag" style="width:100%" pagesize="20" requestURI="frequency_unstructured.action">
                                            <display:column title="SFIs Name"  headerClass="headerTable"  style="text-align:left;width:40%" sortable="true">
                                                   <a href="frequency_unstructure_detail_view.action?id=${row.id}">${row.sfi.nameTh}</a>
                                            </display:column>
                                            <display:column title="Dataset Date From" property="dateFrom" format="{0,date,dd MMM yyyy}" headerClass="headerTable" style="text-align:center;width:17%" sortable="true"/>
                                            <display:column title="Dataset Date To" property="dateTo" format="{0,date,dd MMM yyyy}" headerClass="headerTable" style="text-align:center;width:17%" sortable="true"/>
                                            <c:if test="${sessionScope.menuAuthentication.frequencyUnstructuredManage}">
                                                <display:column title="Copy" headerClass="headerTable" style="text-align:center;width:9%">
                                                    <img src="../images/copy-icon.png" border="no" align="" onclick="letsGo2('frequency_unstructure_detail.action?copy=true','${row.id}')" style="cursor:pointer">
                                                </display:column>
                                                <display:column title="Edit" headerClass="headerTable" style="text-align:center;width:9%">
                                                    <img src="../images/edit.gif" border="no" align="" onclick="letsGo('frequency_unstructure_detail.action','${row.id}')" style="cursor:pointer">
                                                </display:column>
                                                <display:column title="Delete" headerClass="headerTable" style="text-align:center;width:9%">
                                                    <div onClick="return confirmDelete('${row.id}');">
                                                        <s:submit type="image" src="../images/delete.gif" method="delete" title="Delete"/>
                                                    </div>
                                                </display:column>
                                            </c:if>
                                        </display:table>
                                        </c:when>
                                                <c:otherwise>
                                                    Nothing found to display.
                                                </c:otherwise>
                                                </c:choose>

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

    function letsGo(action, id) {
        var sfi = document.getElementById("sfi").value;

        pageLink1 = action + '?id=' + id;
        pageLink2 = '&<%=Constants.FrequencyField.SFI_HIDDEN%>=' + sfi;

        location.href = pageLink1.concat(pageLink2);
    }
    function letsGo2(action, id) {
        var sfi = document.getElementById("sfi").value;

        pageLink1 = action + '&id=' + id;
        pageLink2 = '&<%=Constants.FrequencyField.SFI_HIDDEN%>=' + sfi;

        location.href = pageLink1.concat(pageLink2);
    }

</script>
</body>
</html>