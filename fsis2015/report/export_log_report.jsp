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
<s:form action="export_log_report" id="export_log_report">
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
                                                <td><b>Export Log</b></td>
                                            </tr>
                                        </table>
                                        <table width="100%" class="displayTable">
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
                                            <tr class="bgGreen2">
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
                                            <tr class="bgGreen1">
                                                <td class="label">Dataset Name :</td>
                                                <td colspan="3">
                                                    <s:select list="dsTitleList"
                                                              name="dataSetName"
                                                              headerKey=""
                                                              listKey="id"
                                                              listValue="name"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td class="label">Send To :</td>
                                                <td colspan="3">
                                                    <s:radio list="#{'BOT':'BOT','SEPO':'SEPO'}" name="sendTo"/>
                                                </td>
                                            </tr>
                                        </table>
                                        <table width="100%">
                                            <tr>
                                                <td width="100%" align="center">
                                                    <s:submit method="search" cssClass="button" value="Search" />&nbsp;
                                                    <%--<s:url method="Search"--%>
                                                    <button class="button" onclick="resetForm()">Reset</button>
                                                </td>
                                            </tr>
                                        </table>
                                        <c:if test="${requestScope.exportLogList ne null}">
                                            <table>
                                                <tr>
                                                    <td colspan="13" align="left">
                                                        <input type="button" class="button" value="Print"  onclick="window.print();return false;"/>
                                                        <%--<a class="button" style="height:18px;width:150px;vertical-align:bottom;text-align:center;"--%>
                                                           <%--href="../report/export_log_report_convert_to_excel.action?ds=${requestScope.dataSetName}">--%>
                                                            <%--&nbsp;Convert To Excel&nbsp;</a>--%>
                                                        <input type="button" value="Convert To Excel" class="button" id="convertExcel"  style="width:150px" onclick="letsGo('export_log_report_convert_to_excel.action')"/>
                                                    </td>
                                                </tr>
                                            </table>
                                            <div class="pagelinks"> ${requestScope.linkPages} </div>

                                            <table id="tableResult" width="100%" border="1" bordercolor="#FFFFFF" cellpadding="0" cellspacing="0" class="displayTag  tableresult">
                                                <thead>
                                                <tr >
                                                    <th scope="col" rowspan="2" class="headerTable">Dataset Date</th>
                                                    <th scope="col" rowspan="2" class="headerTable">Frequency (Days)</th>
                                                    <th scope="col" rowspan="2" class="headerTable">Dataset Name</th>
                                                    <th scope="col" rowspan="2" class="headerTable">Dataset Version</th>
                                                    <th scope="col" rowspan="2" class="headerTable">Definded Data</th>
                                                    <th scope="col" colspan="2" class="headerTable">ออมสิน.</th>
                                                    <th scope="col" colspan="2" class="headerTable">ธอส.</th>
                                                    <th scope="col" colspan="2" class="headerTable">ธกส.</th>
                                                    <th scope="col" colspan="2" class="headerTable">ธสน.</th>
                                                    <th scope="col" colspan="2" class="headerTable">ธอท.</th>
                                                    <th scope="col" colspan="2" class="headerTable">บสย.</th>
                                                    <th scope="col" colspan="2" class="headerTable">บตท.</th>
                                                    <th scope="col" colspan="2" class="headerTable">ธพว.</th>
                                                </tr>
                                                <tr>
                                                    <th scope="col" class="headerTable">Export Date</th>
                                                    <th scope="col" class="headerTable">Sending Time</th>
                                                    <th scope="col" class="headerTable">Export Date</th>
                                                    <th scope="col" class="headerTable">Sending Time</th>
                                                    <th scope="col" class="headerTable">Export Date</th>
                                                    <th scope="col" class="headerTable">Sending Time</th>
                                                    <th scope="col" class="headerTable">Export Date</th>
                                                    <th scope="col" class="headerTable">Sending Time</th>
                                                    <th scope="col" class="headerTable">Export Date</th>
                                                    <th scope="col" class="headerTable">Sending Time</th>
                                                    <th scope="col" class="headerTable">Export Date</th>
                                                    <th scope="col" class="headerTable">Sending Time</th>
                                                    <th scope="col" class="headerTable">Export Date</th>
                                                    <th scope="col" class="headerTable">Sending Time</th>
                                                    <th scope="col" class="headerTable">Export Date</th>
                                                    <th scope="col" class="headerTable">Sending Time</th>
                                                </tr>
                                                </thead>
                                                <tbody>

                                                        <c:forEach items="${requestScope.exportLogList}" var="row" varStatus="status">
                                                            <tr class="${status.count % 2 == 0? "even": "odd"}" >
                                                                <td style="width:12%;text-align:left">${row[0]}</td>
                                                                <td style="width:12%;text-align:center">${row[1]}</td>
                                                                <td style="width:12%;text-align:left">${row[2]}</td>
                                                                <td style="width:12%;text-align:left">${row[21]}</td>
                                                                <td style="width:12%;text-align:center">${row[3]}</td>
                                                                <td style=";text-align:center">${row[4]}</td>
                                                                <td style=";text-align:center">${row[5]}</td>
                                                                <td style=";text-align:center">${row[6]}</td>
                                                                <td style=";text-align:center">${row[7]}</td>
                                                                <td style=";text-align:center">${row[8]}</td>
                                                                <td style=";text-align:center">${row[9]}</td>
                                                                <td style=";text-align:center">${row[10]}</td>
                                                                <td style=";text-align:center">${row[11]}</td>
                                                                <td style=";text-align:center">${row[12]}</td>
                                                                <td style=";text-align:center">${row[13]}</td>
                                                                <td style=";text-align:center">${row[14]}</td>
                                                                <td style=";text-align:center">${row[15]}</td>
                                                                <td style=";text-align:center">${row[16]}</td>
                                                                <td style=";text-align:center">${row[17]}</td>
                                                                <td style=";text-align:center">${row[18]}</td>
                                                                <td style=";text-align:center">${row[19]}</td>
                                                            </tr>
                                                        </c:forEach>

                                                </tbody>
                                            </table>
                                        </c:if>



                                    </td>
                                    <td width="20px">&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                        <td width="28" background="../images/table005.gif">
                            <img src="../images/table005.gif" width="28" height="37" alt=""></td>
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
        thisForm.dateFrom.value = '';
        thisForm.dateTo.value = '';
        thisForm.dateExport.value = '';
        thisForm.dateExportTo.value = '';
        thisForm.dateStartTime.value = '';
        thisForm.dateEndTime.value = '';
        thisForm.sendingHour.selectedIndex = '00';
        thisForm.sendingMin.selectedIndex = '00';
        thisForm.sendingHourTo.selectedIndex = '24';
        thisForm.sendingMinTo.selectedIndex = '59';
        thisForm.exportHour.selectedIndex = '00';
        thisForm.exportMin.selectedIndex = '00';
        thisForm.exportHourTo.selectedIndex = '24';
        thisForm.exportMinTo.selectedIndex = '59';
    }

    function letsGo(action) {

        var dataSetName = document.getElementById('dataSetName').value;
        pageLink1 = action + '?ds=' + dataSetName;

        location.href = pageLink1;

    }

</script>
</body>
</html>
