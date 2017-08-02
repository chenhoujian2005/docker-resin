<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<html>
<head>
    <script type="text/javascript" src="../includes/js/popcalendar.js"></script>
    <link rel="stylesheet" type="text/css" href="../includes/css/style.css">
    <script type="text/javascript" src="../includes/js/jquery.js"></script>
    <LINK href="../includes/css/popcalendar.css" rel="stylesheet" type="text/css">
    <script type="text/javascript">

        function resetForm() {
            thisForm.sfi.selectedIndex = 0;
            thisForm.year.selectedIndex = 0;
        }

        function validateForm() {
            if (thisForm.sfi.selectedIndex == 0) {
                alert('Please Select SFIs Name');
                return false;
            }
            return true;
        }
    </script>
    <style type="text/css">
        .kpiTable {
            border: 1px solid #5A9113;
            border-spacing: 0;
            border-collapse: collapse;
        }

        .kpiTd {
            border: 1px solid #5A9113;
            border-spacing: 0;
            height: 30px;
            font-size: 11px;

        }

        .headerTable {
            font-family: "MS Sans Serif", Tahoma, sans-serif;
            font-size: 11px;
            font-weight: bold;
            color: black;
            text-decoration: none;
            text-align: center;
            background-color: #D2FF92;
            height: 30px;
            vertical-align: middle;
        }
    </style>
</head>
<body>
<s:form action="kpi_report_unstructured" id="kpi_report" name="kpi_report" validate="false">
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
        <td width="100%" colspan="2">
            <b>KPI Report Unstructured</b>
        </td>
    </tr>
    <tr>
        <td colspan="2">&nbsp;</td>
    </tr>


    <tr>
        <td>
            <table width="100%" class="displayTable">
                <tr class="bgGreen2">
                    <td height="28px" width="20%" class="label">
                        SFIs Name <span class="require_field">*</span> :
                    </td>
                    <td width="80%">
                        <c:if test="${sessionScope.userLogin.sfi.id eq 000}">
                            <s:select list="sfiList"
                                      name="sfi"
                                      headerKey=""
                                      headerValue="--------------------  Please Select  --------------------"
                                      listKey="id"
                                      listValue="nameTh"/>
                        </c:if>
                        <c:if test="${sessionScope.userLogin.sfi.id ne 000}">
                            <c:out value="${sfiName}"/>
                        </c:if>
                    </td>
                </tr>

                <tr class="bgGreen1">
                    <td class="label">Year<span class="require_field">*</span> :</td>
                    <td>
                        <s:select list="yearList" name="year"/>
                    </td>
                </tr>

            </table>
        </td>
    </tr>


</table>
<br>

<div align="center">
    <s:submit method="search" id="btnSearch" cssClass="button" value="Search" onclick="return validateForm()"/>&nbsp;
    <button class="button" onclick="resetForm()">Reset</button>
</div>
<br>
<c:set var="indexWidth" value="50"/>
<c:set var="datasetDateOfUnsWidth" value="250"/>
<c:set var="datasetWidth" value="200"/>
<c:set var="frequencyWidth" value="120"/>
<c:set var="resultWidth" value="120"/>
<c:set var="tableWidth" value="${indexWidth + datasetDateOfUnsWidth + datasetWidth + frequencyWidth + (resultWidth * 13)}"/>

<c:set var="indexWidth" value="${indexWidth}px"/>
<c:set var="datasetWidth" value="${datasetWidth}px"/>
 <c:set var="datasetDateOfUnsWidth" value="${datasetDateOfUnsWidth}px"/>
<c:set var="frequencyWidth" value="${frequencyWidth}px"/>
<c:set var="resultWidth" value="${resultWidth}px"/>
<c:set var="tableWidth" value="${tableWidth}px"/>
<c:if test="${not empty requestScope.kpiReportDTOList}">
    <table class="kpiTable" width="${tableWidth}">
        <tr>
            <td colspan="17" align="left"><input type="button" class="button" value="Print"
                                                 onclick="window.print();return false;" />
                <a class="button" style="height:18px;width:150px;vertical-align:bottom;text-align:center;"
                   href="../report/kpi_report_unstructured_convert_to_excel.action?sfi=${requestScope.sfi}&year=${requestScope.year}">
                    &nbsp;Convert To Excel&nbsp;
                </a>
            </td>
        </tr>
        <tr class="headerTable">
            <td rowspan="2" class="kpiTd" width="${datasetWidth}">รายการ</td>
            <td rowspan="2" class="kpiTd" width="${frequencyWidth}">ความถี่</td>
            <td rowspan="2" class="kpiTd" width="${datasetDateOfUnsWidth}">กำหนดส่งและวันเวลา <br>ที่จะนับเป็นการผ่าน KPI</td>
            <td colspan="12" class="kpiTd">เดือน</td>
        </tr>
        <tr class="headerTable">
            <td class="kpiTd" width="${resultWidth}">มกราคม</td>
            <td class="kpiTd" width="${resultWidth}">กุมภาพันธ์</td>
            <td class="kpiTd" width="${resultWidth}">มีนาคม</td>
            <td class="kpiTd" width="${resultWidth}">เมษายน</td>
            <td class="kpiTd" width="${resultWidth}">พฤษภาคม</td>
            <td class="kpiTd" width="${resultWidth}">มิถุนายน</td>
            <td class="kpiTd" width="${resultWidth}">กรกฏาคม</td>
            <td class="kpiTd" width="${resultWidth}">สิงหาคม</td>
            <td class="kpiTd" width="${resultWidth}">กันยายน</td>
            <td class="kpiTd" width="${resultWidth}">ตุลาคม</td>
            <td class="kpiTd" width="${resultWidth}">พฤศจิกายน</td>
            <td class="kpiTd" width="${resultWidth}">ธันวาคม</td>
        </tr>
        <c:forEach items="${requestScope.kpiReportDTOList}" var="row">
            <tr>
                <td class="kpiTd" rowspan="2">${row.levelSpace} ${row.unstructureTitle.name}&nbsp;</td>
                <td align="center" class="kpiTd" rowspan="2">
                    <c:choose>
                        <c:when test="${row.frequency eq 0}">ไม่ใช้ Dataset นี้</c:when>
                        <c:when test="${row.frequency eq 1}">รายปักษ์</c:when>
                        <c:when test="${row.frequency eq 2}">รายเดือน</c:when>
                        <c:when test="${row.frequency eq 3}">รายไตรมาส</c:when>
                        <c:when test="${row.frequency eq 4}">รายครึ่งปี</c:when>
                        <c:when test="${row.frequency eq 5}">เมื่อมีการเปลี่ยนแปลง</c:when>
                        <c:when test="${row.frequency eq 6}">ยังไม่มีกำหนดการส่ง</c:when>
                        <c:when test="${row.frequency eq 7}">รายปี</c:when>
                    </c:choose>

                </td>
                <td align="center" class="kpiTd" rowspan="2">${row.unstructureTitle.datasetDateOfUns}</td>
                <td align="center" class="kpiTd" bgcolor="${row.january.bgColor}"
                    <c:if test="${(row.status.displayStatus1[1] eq '') or (row.status.displayStatus1[1] eq null) or (row.status.displayStatus1[1] eq '<BR/>')}">rowspan="2"</c:if>>${row.january.displayMessage1[0]}</td>
                <td align="center" class="kpiTd" bgcolor="${row.february.bgColor}"
                    <c:if test="${(row.status.displayStatus1[1] eq '') or (row.status.displayStatus1[1] eq null) or (row.status.displayStatus1[1] eq '<BR/>')}">rowspan="2"</c:if>>${row.february.displayMessage1[0]}</td>
                <td align="center" class="kpiTd" bgcolor="${row.march.bgColor}"
                    <c:if test="${(row.status.displayStatus1[1] eq '') or (row.status.displayStatus1[1] eq null) or (row.status.displayStatus1[1] eq '<BR/>')}">rowspan="2"</c:if>>${row.march.displayMessage1[0]}</td>
                <td align="center" class="kpiTd" bgcolor="${row.april.bgColor}"
                    <c:if test="${(row.status.displayStatus1[1] eq '') or (row.status.displayStatus1[1] eq null) or (row.status.displayStatus1[1] eq '<BR/>')}">rowspan="2"</c:if>>${row.april.displayMessage1[0]}</td>
                <td align="center" class="kpiTd" bgcolor="${row.may.bgColor}"
                    <c:if test="${(row.status.displayStatus1[1] eq '') or (row.status.displayStatus1[1] eq null) or (row.status.displayStatus1[1] eq '<BR/>')}">rowspan="2"</c:if>>${row.may.displayMessage1[0]}</td>
                <td align="center" class="kpiTd" bgcolor="${row.june.bgColor}"
                    <c:if test="${(row.status.displayStatus1[1] eq '') or (row.status.displayStatus1[1] eq null) or (row.status.displayStatus1[1] eq '<BR/>')}">rowspan="2"</c:if>>${row.june.displayMessage1[0]}</td>
                <td align="center" class="kpiTd" bgcolor="${row.july.bgColor}"
                    <c:if test="${(row.status.displayStatus1[1] eq '') or (row.status.displayStatus1[1] eq null) or (row.status.displayStatus1[1] eq '<BR/>')}">rowspan="2"</c:if>>${row.july.displayMessage1[0]}</td>
                <td align="center" class="kpiTd" bgcolor="${row.august.bgColor}"
                    <c:if test="${(row.status.displayStatus1[1] eq '') or (row.status.displayStatus1[1] eq null) or (row.status.displayStatus1[1] eq '<BR/>')}">rowspan="2"</c:if>>${row.august.displayMessage1[0]}</td>
                <td align="center" class="kpiTd" bgcolor="${row.september.bgColor}"
                    <c:if test="${(row.status.displayStatus1[1] eq '') or (row.status.displayStatus1[1] eq null) or (row.status.displayStatus1[1] eq '<BR/>')}">rowspan="2"</c:if>>${row.september.displayMessage1[0]}</td>
                <td align="center" class="kpiTd" bgcolor="${row.october.bgColor}"
                    <c:if test="${(row.status.displayStatus1[1] eq '') or (row.status.displayStatus1[1] eq null) or (row.status.displayStatus1[1] eq '<BR/>')}">rowspan="2"</c:if>>${row.october.displayMessage1[0]}</td>
                <td align="center" class="kpiTd" bgcolor="${row.november.bgColor}"
                    <c:if test="${(row.status.displayStatus1[1] eq '') or (row.status.displayStatus1[1] eq null) or (row.status.displayStatus1[1] eq '<BR/>')}">rowspan="2"</c:if>>${row.november.displayMessage1[0]}</td>
                <td align="center" class="kpiTd" bgcolor="${row.december.bgColor}"
                    <c:if test="${(row.status.displayStatus1[1] eq '') or (row.status.displayStatus1[1] eq null) or (row.status.displayStatus1[1] eq '<BR/>')}">rowspan="2"</c:if>>${row.december.displayMessage1[0]}</td>

            </tr>
            <tr>
                <c:if test="${(row.status.displayStatus1[1] ne null) and (row.status.displayStatus1[1] ne '') and (row.status.displayStatus1[1] ne '<BR/>')}">
                    <td align="center" class="kpiTd" valign="center"
                        bgcolor="${row.january.bgColor}">${row.january.displayMessage1[1]}</td>
                </c:if>
                <c:if test="${(row.status.displayStatus1[1] ne null) and (row.status.displayStatus1[1] ne '') and (row.status.displayStatus1[1] ne '<BR/>')}">
                    <td align="center" class="kpiTd" valign="center"
                        bgcolor="${row.february.bgColor}">${row.february.displayMessage1[1]}</td>
                </c:if>
                <c:if test="${(row.status.displayStatus1[1] ne null) and (row.status.displayStatus1[1] ne '') and (row.status.displayStatus1[1] ne '<BR/>')}">
                    <td align="center" class="kpiTd" valign="center" bgcolor="${row.march.bgColor}">${row.march.displayMessage1[1]}</td>
                </c:if>
                <c:if test="${(row.status.displayStatus1[1] ne null) and (row.status.displayStatus1[1] ne '') and (row.status.displayStatus1[1] ne '<BR/>')}">
                    <td align="center" class="kpiTd" valign="center" bgcolor="${row.april.bgColor}">${row.april.displayMessage1[1]}</td>
                </c:if>
                <c:if test="${(row.status.displayStatus1[1] ne null) and (row.status.displayStatus1[1] ne '') and (row.status.displayStatus1[1] ne '<BR/>')}">
                    <td align="center" class="kpiTd" valign="center" bgcolor="${row.may.bgColor}">${row.may.displayMessage1[1]}</td>
                </c:if>
                <c:if test="${(row.status.displayStatus1[1] ne null) and (row.status.displayStatus1[1] ne '') and (row.status.displayStatus1[1] ne '<BR/>')}">
                    <td align="center" class="kpiTd" valign="center" bgcolor="${row.june.bgColor}">${row.june.displayMessage1[1]}</td>
                </c:if>
                <c:if test="${(row.status.displayStatus1[1] ne null) and (row.status.displayStatus1[1] ne '') and (row.status.displayStatus1[1] ne '<BR/>')}">
                    <td align="center" class="kpiTd" valign="center" bgcolor="${row.july.bgColor}">${row.july.displayMessage1[1]}</td>
                </c:if>
                <c:if test="${(row.status.displayStatus1[1] ne null) and (row.status.displayStatus1[1] ne '') and (row.status.displayStatus1[1] ne '<BR/>')}">
                    <td align="center" class="kpiTd" valign="center"
                        bgcolor="${row.august.bgColor}">${row.august.displayMessage1[1]}</td>
                </c:if>
                <c:if test="${(row.status.displayStatus1[1] ne null) and (row.status.displayStatus1[1] ne '') and (row.status.displayStatus1[1] ne '<BR/>')}">
                    <td align="center" class="kpiTd" valign="center"
                        bgcolor="${row.september.bgColor}">${row.september.displayMessage1[1]}</td>
                </c:if>
                <c:if test="${(row.status.displayStatus1[1] ne null) and (row.status.displayStatus1[1] ne '') and (row.status.displayStatus1[1] ne '<BR/>')}">
                    <td align="center" class="kpiTd" valign="center"
                        bgcolor="${row.october.bgColor}">${row.october.displayMessage1[1]}</td>
                </c:if>
                <c:if test="${(row.status.displayStatus1[1] ne null) and (row.status.displayStatus1[1] ne '') and (row.status.displayStatus1[1] ne '<BR/>')}">
                    <td align="center" class="kpiTd" valign="center"
                        bgcolor="${row.november.bgColor}">${row.november.displayMessage1[1]}</td>
                </c:if>
                <c:if test="${(row.status.displayStatus1[1] ne null) and (row.status.displayStatus1[1] ne '') and (row.status.displayStatus1[1] ne '<BR/>')}">
                    <td align="center" class="kpiTd" valign="center"
                        bgcolor="${row.december.bgColor}">${row.december.displayMessage1[1]}</td>
                </c:if>
            </tr>
        </c:forEach>
    </table>
</c:if>
<c:set var="sendingWaiveColor" value="#9999ff"/>
<c:set var="noTransactionColor" value="#baf6d8"/>
<table width="100%">
    <c:set var="colorDescHeight" value="22px"/>
    <tr style="height:${colorDescHeight}">
        <td bgcolor="${sendingWaiveColor}" width="${resultWidth}px">&nbsp;</td>
        <td><strong>Sending Waive</strong></td>
    </tr>
    <tr style="height:${colorDescHeight}">
        <td bgcolor="#ffccff">&nbsp;</td>
        <td><strong>ไม่ใช้ Dataset นี้</strong></td>
    </tr>
    <%--<tr style="height:${colorDescHeight}">--%>
        <%--<td bgcolor="${noTransactionColor}">&nbsp;</td>--%>
        <%--<td><strong>ไม่มีธุรกรรม</strong></td>--%>
    <%--</tr>--%>
</table>
<br/>
<%--<table width="100%">--%>
    <%--<tr class="docStatusDesc">--%>
        <%--<td class="docStatus">PCX :</td>--%>
        <%--<td class="docStatusDesc">Passed Complex Validation (วันที่ผ่าน Complex Validation ครั้งแรก)</td>--%>
    <%--</tr>--%>
    <%--<tr class="docStatusDesc">--%>
        <%--<td class="docStatus" align="right">PCS :</td>--%>
        <%--<td class="docStatusDesc">Passed Cross Validation (วันที่ผ่าน Cross Validation ครั้งแรก)</td>--%>
    <%--</tr>--%>
<%--</table>--%>
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

    var jq = jQuery.noConflict();

    jq("#kpi_report").keypress(function (event) {
        if (event.keyCode == 13) {
            jq("#btnSearch").click();
        }
    });
    var thisForm = document.getElementsByTagName('form')[0];
</script>
</body>
</html>