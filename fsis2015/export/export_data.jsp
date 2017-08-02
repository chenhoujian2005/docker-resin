<%@ page import="th.go.mof.fpo.Constants" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<html>
<head>
    <title>Simple jsp page</title>
    <link rel="stylesheet" type="text/css" href="../includes/css/style.css">
    <script type="text/javascript" src="../includes/js/jquery.js"></script>
    <script type="text/javascript" src="../includes/js/ui.core.js"></script>
    <script type="text/javascript" src="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.js"></script>
    <link href="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.css" rel="stylesheet" type="text/css">
</head>
<body>
<s:form action="export_data" id="export_data">
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
                    <img src="../images/table004.gif" width="43" height="37" alt=""></td>
                <td>
                    <table width="100%" border="0" align="center" style="height:100%">
                        <tr>
                            <td>
                                    <%--content here--%>
                                <table width="100%">
                                    <tr>
                                        <td><b>Export Data</b></td>
                                    </tr>
                                </table>
                                <table width="100%" class="displayTable">
                                    <tr class="bgGreen2">
                                        <td class="label">SFIs Name :</td>
                                        <td colspan="3">
                                            <c:if test="${sessionScope.userLogin.sfi.id eq 000}">
                                                <s:textfield name="organization" id="organization" size="70"/><br>
                                                Search SFIs name. e.g. gsb,ghb.
                                            </c:if>
                                            <c:if test="${sessionScope.userLogin.sfi.id ne 000}">
                                                <s:hidden name="sfi"/>${requestScope.sfiName}
                                            </c:if>
                                        </td>
                                    </tr>
                                    <tr class="bgGreen1">
                                        <td class="label">Dataset Name :</td>
                                        <td colspan="3">
                                            <s:textfield name="dataset" id="dataset" size="70"/><br>
                                            Search group, title, subtitle. e.g. bls, bls ars.
                                        </td>
                                    </tr>
                                    <tr class="bgGreen2">
                                        <td class="label" align="right" width="20%">Dataset Date From :</td>
                                        <td width="28%">
                                            <s:textfield name="dateFrom" id="dateFrom" readonly="true" size="8"/>
                                            <img alt="" border="0" src="../images/dd.gif" name="dateBtn"
                                                 width="15" height="15"
                                                 onclick="displayCalendar(document.forms[0].dateFrom,'dd/mm/yyyy',this,false);"
                                                 align="absmiddle">
                                        </td>
                                        <td class="label" align="right" width="5%">To :</td>
                                        <td width="55%">
                                            <s:textfield name="dateTo" id="dateTo" readonly="true" size="8"/>
                                            <img alt="" border="0" src="../images/dd.gif" name="dateBtn"
                                                 width="15" height="15"
                                                 onclick="displayCalendar(document.forms[0].dateTo,'dd/mm/yyyy',this);"
                                                 align="absmiddle">
                                        </td>
                                    </tr>
                                    <tr class="bgGreen1">
                                        <td class="label">Send To :</td>
                                        <td colspan="3">
                                            <s:radio list="#{'':'All','BOT':'BOT','SEPO':'SEPO'}" name="sendTo"/>
                                        </td>
                                    </tr>
                                    <tr class="bgGreen2">
                                        <td class="label">Sending Time Start :</td>
                                        <td>
                                            <s:textfield name="dateStartTime" id="dateStartTime" size="8" readonly="true"/>
                                            <img alt="" border="0" src="../images/dd.gif" name="dateBtn"
                                                 width="15" height="15"
                                                 onclick="displayCalendar(document.forms[0].dateStartTime,'dd/mm/yyyy',this);"
                                                 align="absmiddle">
                                            <s:select list="hourList" name="sendingHour" id="sendingHour"/> :
                                            <s:select list="minuteList" name="sendingMin" id="sendingMin"/> (Hour:Min)
                                        </td>
                                        <td class="label"> End :</td>
                                        <td>
                                            <s:textfield name="dateEndTime" id="dateEndTime" readonly="true" size="8"/>
                                            <img alt="" border="0" src="../images/dd.gif" name="dateBtn"
                                                 width="15" height="15"
                                                 onclick="displayCalendar(document.forms[0].dateEndTime,'dd/mm/yyyy',this);"
                                                 align="absmiddle">
                                            <s:select list="hourList" name="sendingHourTo"/> :
                                            <s:select list="minuteList" name="sendingMinTo"/> (Hour:Min)
                                        </td>
                                    </tr>
                                    <tr class="bgGreen1">
                                        <td class="label">Export Date From :</td>
                                        <td>
                                            <s:textfield name="dateExport" id="dateExport" readonly="true" size="8"/>
                                            <img alt="" border="0" src="../images/dd.gif" name="dateBtn"
                                                 width="15" height="15"
                                                 onclick="displayCalendar(document.forms[0].dateExport,'dd/mm/yyyy',this);"
                                                 align="absmiddle">
                                            <s:select list="hourList" name="exportHour"/> :
                                            <s:select list="minuteList" name="exportMin"/> (Hour:Min)
                                        </td>
                                        <td class="label">To:</td>
                                        <td colspan="3">
                                            <s:textfield name="dateExportTo" id="dateExportTo" readonly="true" size="8"/>
                                            <img alt="" border="0" src="../images/dd.gif" name="dateBtn"
                                                 width="15" height="15"
                                                 onclick="displayCalendar(document.forms[0].dateExportTo,'dd/mm/yyyy',this);"
                                                 align="absmiddle">
                                            <s:select list="hourList" name="exportHourTo"/> :
                                            <s:select list="minuteList" name="exportMinTo"/> (Hour:Min)
                                        </td>
                                    </tr>
                                    <tr class="bgGreen2">
                                        <td class="label">Sending Status :</td>
                                        <td colspan="3"><s:radio list="#{'':'All','Send Success.':'Success','Send Fail.':'Fail'}" name="sendStatus"/></td>
                                    </tr>

                                        <%--<tr class="bgGreen1">--%>
                                        <%--<td class="label" align="right">Sending Status</td>--%>
                                        <%--<td colspan="3">--%>
                                        <%--<s:radio name="sendStatus" list="#{'NS':'Not Send','SN':'Send Already'}"/>--%>
                                        <%--</td>--%>
                                        <%--</tr>--%>
                                </table>
                                <table width="100%">
                                    <tr>
                                        <td width="100%" align="center">
                                            <s:submit method="search" cssClass="button" value="Search" />&nbsp;
                                            <button class="button" onclick="resetForm()">Reset</button>

                                        </td>
                                    </tr>
                                </table>
                                        <c:if test="${requestScope.resendFlag eq 'false'}">
                                            <b><font color="red">Please select Dataset.</font></b></c:if>
                                <c:if test="${requestScope.exportLogList ne null}">
                                    <button type="button" class="button" style="width:100px;" id="check_all">Check All</button> &nbsp;&nbsp; <button type="button" class="button" style="width:100px;" id="uncheck_all">Uncheck All</button> &nbsp;&nbsp;
                                    <s:submit method="resend" cssClass="button" value="Resend"/>
                                   <br/><br/>
                                    <display:table name="exportLogList" id="row" class="displayTag" requestURI="export_data.action" style="width:100%" pagesize="15">
                                        <display:column headerClass="headerTable" style="width:2%;text-align:center">
                                            <input type="checkbox" name="exportLogId" value="${row.id}"/>
                                        </display:column>
                                        <display:column title="SFI" property="sfi.abbreviationTh" headerClass="headerTable" style="width:8%;text-align:left"/>
                                        <display:column title="DS Title" property="dsTitle.name" headerClass="headerTable" style="width:7%;text-align:center"/>
                                        <display:column title="DS Version" property="dsversion.version" headerClass="headerTable" style="width:7%;text-align:center"/>
                                        <display:column title="DS Date" property="dsDate" format="{0,date,dd MMM yyyy}" headerClass="headerTable" style="width:10%;text-align:center"/>
                                        <display:column title="Send To" property="sendTo" headerClass="headerTable" style="width:7%;text-align:center"/>
                                        <display:column title="Export Date" property="exportDate" format="{0,date,dd MMM yyyy HH:mm}" headerClass="headerTable" style="width:10%;text-align:center"/>
                                        <display:column title="Sending Time" headerClass="headerTable" style="width:15%;text-align:center">
                                            <fmt:formatDate value="${row.startTime}" pattern="dd MMM yyyy HH:mm:ss"/> - <fmt:formatDate value="${row.endTime}" pattern="HH:mm:ss"/>
                                        </display:column>
                                        <display:column title="File Size (KB)" headerClass="headerTable" style="width:8%;text-align:right">
                                            <fmt:formatNumber value="${row.fileSize}" pattern="#,###"/>
                                        </display:column>
                                        <display:column title="Reference No." property="returnReferenceNo" headerClass="headerTable" style="width:10%;text-align:center"/>
                                        <display:column title="Sending Status" property="sendingStatus" headerClass="headerTable" style="width:10%;text-align:left"/>
                                        <display:column title="Sending Remark" property="sendingRemark" headerClass="headerTable" style="width:15%;text-align:left"/>
                                        <display:column title="Resend Flag" property="resendRequestFlag" headerClass="headerTable" style="width:4%;text-align:center"/>
                                    </display:table>
                                </c:if>
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
    
    function resetForm() {

        thisForm.organization.value = '';
        thisForm.dataset.value = '';
        thisForm.dateFrom.value = '';
        thisForm.dateTo.value = '';
        thisForm.dateExport.value = '';
        thisForm.dateExportTo.value = '';
        thisForm.dateStartTime.value = '';
        thisForm.dateEndTime.value = '';
        thisForm.sendStatus[0].checked = true;
        thisForm.sendTo[0].checked = true;
        thisForm.sendingHour.selectedIndex = '00';
        thisForm.sendingMin.selectedIndex = '00';
        thisForm.sendingHourTo.selectedIndex = '24';
        thisForm.sendingMinTo.selectedIndex = '59';
        thisForm.exportHour.selectedIndex = '00';
        thisForm.exportMin.selectedIndex = '00';
        thisForm.exportHourTo.selectedIndex = '24';
        thisForm.exportMinTo.selectedIndex = '59';
    }

     $(function() {
        $('#check_all').click(function() {
            $('input:checkbox').each(function(index) {
                $(this).attr('checked', true);
            });
        });

        $('#uncheck_all').click(function() {
            $('input:checkbox').each(function(index) {
                $(this).attr('checked', false);
            });
        });
    });
</script>
</body>
</html>
