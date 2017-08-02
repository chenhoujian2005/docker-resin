<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ page import="th.go.mof.fpo.Constants" %>
<html>
<head>
<title>Simple jsp page</title>
<script type="text/javascript" src="../includes/js/jquery.js"></script>
<link rel="stylesheet" type="text/css" href="../includes/css/style.css">
<script type="text/javascript" src="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.js"></script>
<link href="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
    function setId(id) {
        thisForm.id.value = id;
    }

    function resetForm() {
        thisForm.dateFrom.value = '';
        thisForm.dateTo.value = '';
        thisForm.desc.value = '';
    }
</script>
</head>
<body>
<s:form action="official_holiday" id="official_holiday" name="official_holiday" validate="false">
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
                                                <td colspan="2">
                                                    <b>Official Holiday</b>
                                                </td>
                                                <td width="43%" align="right">
                                                    <c:if test="${sessionScope.menuAuthentication.officialHolidayManage}">
                                                      <%--<s:submit action="official_holiday_detail" id="btnNew" value="Add Official Holiday" cssClass="button" cssStyle="width:150px"/>--%>
                                                      <input type="button" class="button" name="btnNew" id="btnNew" value="Add Official Holiday" style="width:150px;" onclick="letsGo('official_holiday_detail.action','')" >
                                                    </c:if>
                                                </td>
                                            </tr>
                                        </table>
                                        <table width="100%" class="displayTable">
                                            <tr class="bgGreen2">
                                                <td class="label">
                                                    Official Holiday Date From :
                                                </td>
                                                <td colspan="2">
                                                    <s:textfield name="dateFrom" id="dateFrom" readonly="true" size="8"/>
                                                    <img alt="" border="0" src="../images/dd.gif" name="dateBtn"
                                                         width="15" height="15"
                                                         onclick="displayCalendar(document.forms[0].dateFrom,'dd/mm/yyyy',this);"
                                                         align="absmiddle">
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label">
                                                    Official Holiday Date To :
                                                </td>
                                                <td colspan="2">
                                                    <s:textfield name="dateTo" id="dateTo" readonly="true" size="8"/>
                                                    <img alt="" border="0" src="../images/dd.gif" name="dateBtn"
                                                         width="15" height="15"
                                                         onclick="displayCalendar(document.forms[0].dateTo,'dd/mm/yyyy',this);"
                                                         align="absmiddle">
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td class="label">
                                                    Description :
                                                </td>
                                                <td colspan="2">
                                                    <s:textfield id="desc" name="desc" cssStyle="width:450px" maxLength="128"/>
                                                </td>
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
                                        <display:table name="officialHolidayList" id="row" export="false" class="displayTag" requestURI="official_holiday.action" style="width:100%;text-align:center" pagesize="20">
                                            <display:column title="Official Holiday Date" property="holidayDate" format="{0,date,dd MMM yyyy}" style="width:18%;text-align:center" headerClass="headerTable" sortable="true"/>
                                            <display:column title="Description" property="description" headerClass="headerTable" style="width:35%;text-align:left" sortable="true"/>
                                            <display:column title="Update Date" property="updateDate" format="{0,date,dd MMM yyyy HH:mm}" style="width:15%;text-align:center " headerClass="headerTable" sortable="true"/>
                                            <display:column title="Update By" property="updateBy" style="width:15%;text-align:left" headerClass="headerTable" sortable="true"/>
                                            <display:column title="Edit" style="width:8%;text-align:center" headerClass="headerTable" >
                                                <%--<a href="official_holiday_detail.action?officialHolidayId=${row.id}" title="Edit"><img src="../images/edit.gif " border="no"></a>--%>
                                                 <img src="../images/edit.gif" border="no" align="" onclick="letsGo('official_holiday_detail.action','${row.id}')" style="cursor:pointer">
                                            </display:column>
                                            <display:column title="Delete" style="width:8%;text-align:center" headerClass="headerTable">
                                                <div onMouseOver="setId('${row.id}');">
                                                    <s:submit method="delete" title="Delete" type="image" src="../images/delete.gif" onclick="return confirm('Do you want to delete this record ?')"/>
                                                </div>
                                            </display:column>
                                        </display:table>
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

    jq("#news_information").keypress(function(event) {
        if (event.keyCode == 13) {
            jq("#btnNew").attr('disabled', 'disabled');
            jq("#btnSearch").click();
        }
    });

    function letsGo(action, id) {
        var dateFrom = document.getElementById("dateFrom").value;
        var dateTo = document.getElementById("dateTo").value;
        var desc = document.getElementById("desc").value;

        pageLink1 = action + '?officialHolidayId=' + id;
        pageLink2 = '&<%=Constants.OfficialHolidayField.DATE_FROM_HIDDEN%>=' + dateFrom;
        pageLink3 = '&<%=Constants.OfficialHolidayField.DATE_TO_HIDDEN%>=' + dateTo;
        pageLink4 = '&<%=Constants.OfficialHolidayField.DESCRIPTION_HIDDEN%>=' + desc;

        location.href = pageLink1.concat(pageLink2, pageLink3, pageLink4);
    }
</script>
</body>
</html>