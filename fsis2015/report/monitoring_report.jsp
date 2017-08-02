<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../includes/css/style.css">
<script type="text/javascript" src="../includes/js/jquery.js"></script>
<script type="text/javascript">
    function resetForm(){
        try{
        thisForm.sfi.selectedIndex = 0;
        thisForm.year.selectedIndex = 0;
        thisForm.frequency.selectedIndex = 0;
        }   catch(err){
             thisForm.year.selectedIndex = 0;
             thisForm.frequency.selectedIndex = 0;
        }
    }

    function validateForm(){
        if(thisForm.sfi.selectedIndex == 0){
            alert('Please Select SFIs Name');
            return false;
        }
        return true;
    }
</script>
<style type="text/css">
    .monitoringTable {
        border: 1px solid #5A9113;
        border-spacing:0;
        border-collapse:collapse;
    }
    .monitoringTd {
        border: 1px solid #5A9113;
        border-spacing:0;
        height:30px;
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
<s:form action="monitoring_report" id="monitoring_report" name="monitoring_report" validate="false">
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
                                                <b>Monitoring Submit Dataset</b>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <table width="100%" class="displayTable">
                                                    <tr class="bgGreen2">
                                                        <td height="28px" width="20%" class="label">
                                                            <c:choose>
                                                              <c:when test="${sessionScope.userLogin.sfi.id eq 000}">
                                                            SFIs Name<span class="require_field">*</span> :
                                                              </c:when>
                                                              <c:otherwise>
                                                                   SFIs Name :
                                                             </c:otherwise>
                                                            </c:choose>
                                                        </td>
                                                        <td width="80%">
                                                             <c:choose>
                                                              <c:when test="${sessionScope.userLogin.sfi.id eq 000}">
                                                                    <s:select list="sfiRightList"
                                                                          name="sfi"
                                                                          headerKey=""
                                                                          headerValue="------------------------------------  Please Select  ------------------------------------"
                                                                          listKey="id"
                                                                          listValue="displayNameCodeAndCode"/>
                                                              </c:when>
                                                              <c:otherwise>
                                                                 &nbsp; ${sessionScope.userLogin.sfi.nameTh}
                                                              </c:otherwise>
                                                            </c:choose>
                                                        </td>
                                                    </tr>
                                                    <tr class="bgGreen1">
                                                        <td class="label">Year<span class="require_field">*</span> :</td>
                                                        <td>
                                                            <s:select list="yearList" name="year"/>
                                                        </td>
                                                    </tr>
                                                    <tr class="bgGreen2">
                                                        <td class="label">Frequency :</td>
                                                        <td>
                                                            <s:select list="#{'1':'รายปักษ์',
                                                                              '2':'รายเดือน',
                                                                              '3':'รายไตรมาส',
                                                                              '4':'รายครึ่งปี',
                                                                              '5':'เมื่อมีการเปลี่ยนแปลง',
                                                                              '6':'ยังไม่มีกำหนดการส่ง'}"
                                                                      name="frequency"
                                                                      headerKey=""
                                                                      headerValue="----  Please Select  ----"/>

                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                    <table width="100%">
                                        <tr>
                                            <td width="100%" align="center">
                                                <s:submit method="search" id="btnSearch" cssClass="button" value="Search" onclick="return validateForm()"/>&nbsp;
                                                <button class="button" onclick="resetForm()">Reset</button>
                                            </td>
                                        </tr>
                                    </table>
                                    <c:set var="indexWidth" value="50"/>
                                    <c:set var="datasetWidth" value="110"/>
                                    <c:set var="frequencyWidth" value="120"/>
                                    <c:set var="resultWidth" value="120"/>
                                    <c:set var="tableWidth" value="${indexWidth + datasetWidth + frequencyWidth +frequencyWidth+ (resultWidth * 13)}"/>

                                    <c:set var="indexWidth" value="${indexWidth}px"/>
                                    <c:set var="datasetWidth" value="${datasetWidth}px"/>
                                    <c:set var="frequencyWidth" value="${frequencyWidth}px"/>
                                    <c:set var="resultWidth" value="${resultWidth}px"/>
                                    <c:set var="tableWidth" value="${tableWidth}px"/>

                                    <c:set var="index" value="1"/>

                                    <c:if test="${not empty requestScope.monitoringReportDtoList and (empty requestScope.frequency or requestScope.frequency ne '1')}">
                                    <table class="monitoringTable" width="${tableWidth}">
                                        <tr><td colspan="16" align="left">
                                            <input type="button" class="button" value="Print" onclick="window.print();return false;" />
                                            <%--<a class="button" style="height:18px;width:150px;vertical-align:bottom;text-align:center;"--%>
                                               <%--href="../report/monitoring_report_convert_to_excel.action?sfi=${requestScope.sfi}&year=${requestScope.year}">--%>
                                                <%--&nbsp;Convert To Excel&nbsp;--%>
                                            <%--</a>--%>
                                            <input type="button" value="Convert To Excel" class="button" id="convertExcel"  style="width:150px" onclick="letsGo('monitoring_report_convert_to_excel.action')"/>
                                        </td></tr>
                                        <tr class="headerTable">
                                            <td class="monitoringTd" width="${indexWidth}">ลำดับที่</td>
                                            <td class="monitoringTd" width="${datasetWidth}">Dataset Name</td>
                                            <td class="monitoringTd" width="${frequencyWidth}">Dataset Version</td>
                                            <td class="monitoringTd" width="${frequencyWidth}">Frequency</td>
                                            <td class="monitoringTd" width="${resultWidth}">มกราคม</td>
                                            <td class="monitoringTd" width="${resultWidth}">กุมภาพันธ์</td>
                                            <td class="monitoringTd" width="${resultWidth}">มีนาคม</td>
                                            <td class="monitoringTd" width="${resultWidth}">เมษายน</td>
                                            <td class="monitoringTd" width="${resultWidth}">พฤษภาคม</td>
                                            <td class="monitoringTd" width="${resultWidth}">มิถุนายน</td>
                                            <td class="monitoringTd" width="${resultWidth}">กรกฏาคม</td>
                                            <td class="monitoringTd" width="${resultWidth}">สิงหาคม</td>
                                            <td class="monitoringTd" width="${resultWidth}">กันยายน</td>
                                            <td class="monitoringTd" width="${resultWidth}">ตุลาคม</td>
                                            <td class="monitoringTd" width="${resultWidth}">พฤศจิกายน</td>
                                            <td class="monitoringTd" width="${resultWidth}">ธันวาคม</td>
                                        </tr>
                                        <c:forEach items="${requestScope.monitoringReportDtoList}" var="row">

                                            <c:forEach items="${row.dsVersionList}" var="vrow">
                                        <tr>
                                            <td align="center" class="monitoringTd"><c:out value="${index}"/><c:set var="index" value="${index + 1}"/></td>
                                            <td align="center" class="monitoringTd"><c:out value="${row.dsTitle.name}"/></td>
                                            <td align="center" class="monitoringTd"><c:out value="${vrow.version}"/></td>
                                            <td align="center" class="monitoringTd">
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
                                            <td align="center" class="monitoringTd" bgcolor="${row.january.bgColor}">
                                                ${row.january.displayMessage}
                                            </td>
                                            <td align="center" class="monitoringTd" bgcolor="${row.february.bgColor}">
                                                ${row.february.displayMessage}
                                            </td>
                                            <td align="center" class="monitoringTd" bgcolor="${row.march.bgColor}">
                                                ${row.march.displayMessage}
                                            </td>
                                            <td align="center" class="monitoringTd" bgcolor="${row.april.bgColor}">
                                                ${row.april.displayMessage}
                                            </td>
                                            <td align="center" class="monitoringTd" bgcolor="${row.may.bgColor}">
                                                ${row.may.displayMessage}
                                            </td>
                                            <td align="center" class="monitoringTd" bgcolor="${row.june.bgColor}">
                                                ${row.june.displayMessage}
                                            </td>
                                            <td align="center" class="monitoringTd" bgcolor="${row.july.bgColor}">
                                                ${row.july.displayMessage}
                                            </td>
                                            <td align="center" class="monitoringTd" bgcolor="${row.august.bgColor}">
                                                ${row.august.displayMessage}
                                            </td>
                                            <td align="center" class="monitoringTd" bgcolor="${row.september.bgColor}">
                                                ${row.september.displayMessage}
                                            </td>
                                            <td align="center" class="monitoringTd" bgcolor="${row.october.bgColor}">
                                                ${row.october.displayMessage}
                                            </td>
                                            <td align="center" class="monitoringTd" bgcolor="${row.november.bgColor}">
                                                ${row.november.displayMessage}
                                            </td>
                                            <td align="center" class="monitoringTd" bgcolor="${row.december.bgColor}">
                                                ${row.december.displayMessage}
                                            </td>
                                        </tr>
                                            </c:forEach>
                                        </c:forEach>
                                    </table>
                                    </c:if>
                                    <br/><br/>

                                    <c:if test="${not empty requestScope.monitoringReportFortnightlyDtoList and (empty requestScope.frequency or requestScope.frequency eq '1')}">
                                    <c:forEach items="${requestScope.monitoringReportFortnightlyDtoList}" var="row">
                                    <table class="monitoringTable" width="${tableWidth}">
                                        <tr class="headerTable">
                                            <td class="monitoringTd" width="${indexWidth}">ลำดับที่</td>
                                            <td class="monitoringTd" width="${datasetWidth}">Dataset Name</td>
                                            <td class="monitoringTd" width="${frequencyWidth}">Frequency</td>
                                            <td class="monitoringTd" width="${resultWidth}">
                                                <fmt:formatDate value="${row.january[0].datasetDateFrom}" pattern="dd MMM"/> -
                                                <fmt:formatDate value="${row.january[0].datasetDate}" pattern="dd MMM yy"/>
                                            </td>
                                            <td class="monitoringTd" width="${resultWidth}">
                                                <fmt:formatDate value="${row.february[0].datasetDateFrom}" pattern="dd MMM"/> -
                                                <fmt:formatDate value="${row.february[0].datasetDate}" pattern="dd MMM yy"/>
                                            </td>
                                            <td class="monitoringTd" width="${resultWidth}">
                                                <fmt:formatDate value="${row.march[0].datasetDateFrom}" pattern="dd MMM"/> -
                                                <fmt:formatDate value="${row.march[0].datasetDate}" pattern="dd MMM yy"/>
                                            </td>
                                            <td class="monitoringTd" width="${resultWidth}">
                                                <fmt:formatDate value="${row.april[0].datasetDateFrom}" pattern="dd MMM"/> -
                                                <fmt:formatDate value="${row.april[0].datasetDate}" pattern="dd MMM yy"/>
                                            </td>
                                            <td class="monitoringTd" width="${resultWidth}">
                                                <fmt:formatDate value="${row.may[0].datasetDateFrom}" pattern="dd MMM"/> -
                                                <fmt:formatDate value="${row.may[0].datasetDate}" pattern="dd MMM yy"/>
                                            </td>
                                            <td class="monitoringTd" width="${resultWidth}">
                                                <fmt:formatDate value="${row.june[0].datasetDateFrom}" pattern="dd MMM"/> -
                                                <fmt:formatDate value="${row.june[0].datasetDate}" pattern="dd MMM yy"/>
                                            </td>
                                            <td class="monitoringTd" width="${resultWidth}">
                                                <fmt:formatDate value="${row.july[0].datasetDateFrom}" pattern="dd MMM"/> -
                                                <fmt:formatDate value="${row.july[0].datasetDate}" pattern="dd MMM yy"/>
                                            </td>
                                            <td class="monitoringTd" width="${resultWidth}">
                                                <fmt:formatDate value="${row.august[0].datasetDateFrom}" pattern="dd MMM"/> -
                                                <fmt:formatDate value="${row.august[0].datasetDate}" pattern="dd MMM yy"/>
                                            </td>
                                            <td class="monitoringTd" width="${resultWidth}">
                                                <fmt:formatDate value="${row.september[0].datasetDateFrom}" pattern="dd MMM"/> -
                                                <fmt:formatDate value="${row.september[0].datasetDate}" pattern="dd MMM yy"/>
                                            </td>
                                            <td class="monitoringTd" width="${resultWidth}">
                                                <fmt:formatDate value="${row.october[0].datasetDateFrom}" pattern="dd MMM"/> -
                                                <fmt:formatDate value="${row.october[0].datasetDate}" pattern="dd MMM yy"/>
                                            </td>
                                            <td class="monitoringTd" width="${resultWidth}">
                                                <fmt:formatDate value="${row.november[0].datasetDateFrom}" pattern="dd MMM"/> -
                                                <fmt:formatDate value="${row.november[0].datasetDate}" pattern="dd MMM yy"/>
                                            </td>
                                            <td class="monitoringTd" width="${resultWidth}">
                                                <fmt:formatDate value="${row.december[0].datasetDateFrom}" pattern="dd MMM"/> -
                                                <fmt:formatDate value="${row.december[0].datasetDate}" pattern="dd MMM yy"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" class="monitoringTd" rowspan="5"><c:out value="${index}"/><c:set var="index" value="${index + 1}"/></td>
                                            <td align="center" class="monitoringTd" rowspan="5"><c:out value="${row.dsTitle.name}"/></td>
                                            <td align="center" class="monitoringTd" rowspan="5">รายปักษ์</td>

                                            <c:if test="${row.january ne '[]'}">
                                                <td align="center" class="monitoringTd" bgcolor="${row.january[0].bgColor}">
                                                    ${row.january[0].displayMessage}
                                                </td>
                                            </c:if>
                                            <c:if test="${row.january eq '[]'}">
                                                <td align="center" class="monitoringTd">-</td>
                                            </c:if>

                                            <c:if test="${row.february ne '[]'}">
                                                <td align="center" class="monitoringTd" bgcolor="${row.february[0].bgColor}">
                                                    ${row.february[0].displayMessage}
                                                </td>
                                            </c:if>
                                            <c:if test="${row.february eq '[]'}">
                                                <td align="center" class="monitoringTd">-</td>
                                            </c:if>

                                            <c:if test="${row.march ne '[]'}">
                                                <td align="center" class="monitoringTd" bgcolor="${row.march[0].bgColor}">
                                                    ${row.march[0].displayMessage}
                                                </td>
                                            </c:if>
                                            <c:if test="${row.march eq '[]'}">
                                                <td align="center" class="monitoringTd">-</td>
                                            </c:if>

                                            <c:if test="${row.april ne '[]'}">
                                                <td align="center" class="monitoringTd" bgcolor="${row.april[0].bgColor}">
                                                    ${row.april[0].displayMessage}
                                                </td>
                                            </c:if>
                                            <c:if test="${row.april eq '[]'}">
                                                <td align="center" class="monitoringTd">-</td>
                                            </c:if>

                                            <c:if test="${row.may ne '[]'}">
                                                <td align="center" class="monitoringTd" bgcolor="${row.may[0].bgColor}">
                                                    ${row.may[0].displayMessage}
                                                </td>
                                            </c:if>
                                            <c:if test="${row.may eq '[]'}">
                                                <td align="center" class="monitoringTd">-</td>
                                            </c:if>

                                            <c:if test="${row.june ne '[]'}">
                                                <td align="center" class="monitoringTd" bgcolor="${row.june[0].bgColor}">
                                                    ${row.june[0].displayMessage}
                                                </td>
                                            </c:if>
                                            <c:if test="${row.june eq '[]'}">
                                                <td align="center" class="monitoringTd">-</td>
                                            </c:if>

                                            <c:if test="${row.july ne '[]'}">
                                                <td align="center" class="monitoringTd" bgcolor="${row.july[0].bgColor}">
                                                    ${row.july[0].displayMessage}
                                                </td>
                                            </c:if>
                                            <c:if test="${row.july eq '[]'}">
                                                <td align="center" class="monitoringTd">-</td>
                                            </c:if>

                                            <c:if test="${row.august ne '[]'}">
                                                <td align="center" class="monitoringTd" bgcolor="${row.august[0].bgColor}">
                                                    ${row.august[0].displayMessage}
                                                </td>
                                            </c:if>
                                            <c:if test="${row.august eq '[]'}">
                                                <td align="center" class="monitoringTd">-</td>
                                            </c:if>

                                            <c:if test="${row.september ne '[]'}">
                                                <td align="center" class="monitoringTd" bgcolor="${row.september[0].bgColor}">
                                                    ${row.september[0].displayMessage}
                                                </td>
                                            </c:if>
                                            <c:if test="${row.september eq '[]'}">
                                                <td align="center" class="monitoringTd">-</td>
                                            </c:if>

                                            <c:if test="${row.october ne '[]'}">
                                                <td align="center" class="monitoringTd" bgcolor="${row.october[0].bgColor}">
                                                    ${row.october[0].displayMessage}
                                                </td>
                                            </c:if>
                                            <c:if test="${row.october eq '[]'}">
                                                <td align="center" class="monitoringTd">-</td>
                                            </c:if>

                                            <c:if test="${row.november ne '[]'}">
                                                <td align="center" class="monitoringTd" bgcolor="${row.november[0].bgColor}">
                                                    ${row.november[0].displayMessage}
                                                </td>
                                            </c:if>
                                            <c:if test="${row.november eq '[]'}">
                                                <td align="center" class="monitoringTd">-</td>
                                            </c:if>

                                            <c:if test="${row.december ne '[]'}">
                                                <td align="center" class="monitoringTd" bgcolor="${row.december[0].bgColor}">
                                                    ${row.december[0].displayMessage}
                                                </td>
                                            </c:if>
                                            <c:if test="${row.december eq '[]'}">
                                                <td align="center" class="monitoringTd">-</td>
                                            </c:if>
                                        </tr>
                                        <tr class="headerTable">
                                            <td class="monitoringTd">
                                                <fmt:formatDate value="${row.january[1].datasetDateFrom}" pattern="dd MMM"/> -
                                                <fmt:formatDate value="${row.january[1].datasetDate}" pattern="dd MMM yy"/>
                                            </td>
                                            <td class="monitoringTd">
                                                <fmt:formatDate value="${row.february[1].datasetDateFrom}" pattern="dd MMM"/> -
                                                <fmt:formatDate value="${row.february[1].datasetDate}" pattern="dd MMM yy"/>
                                            </td>
                                            <td class="monitoringTd">
                                                <fmt:formatDate value="${row.march[1].datasetDateFrom}" pattern="dd MMM"/> -
                                                <fmt:formatDate value="${row.march[1].datasetDate}" pattern="dd MMM yy"/>
                                            </td>
                                            <td class="monitoringTd">
                                                <fmt:formatDate value="${row.april[1].datasetDateFrom}" pattern="dd MMM"/> -
                                                <fmt:formatDate value="${row.april[1].datasetDate}" pattern="dd MMM yy"/>
                                            </td>
                                            <td class="monitoringTd">
                                                <fmt:formatDate value="${row.may[1].datasetDateFrom}" pattern="dd MMM"/> -
                                                <fmt:formatDate value="${row.may[1].datasetDate}" pattern="dd MMM yy"/>
                                            </td>
                                            <td class="monitoringTd">
                                                <fmt:formatDate value="${row.june[1].datasetDateFrom}" pattern="dd MMM"/> -
                                                <fmt:formatDate value="${row.june[1].datasetDate}" pattern="dd MMM yy"/>
                                            </td>
                                            <td class="monitoringTd">
                                                <fmt:formatDate value="${row.july[1].datasetDateFrom}" pattern="dd MMM"/> -
                                                <fmt:formatDate value="${row.july[1].datasetDate}" pattern="dd MMM yy"/>
                                            </td>
                                            <td class="monitoringTd">
                                                <fmt:formatDate value="${row.august[1].datasetDateFrom}" pattern="dd MMM"/> -
                                                <fmt:formatDate value="${row.august[1].datasetDate}" pattern="dd MMM yy"/>
                                            </td>
                                            <td class="monitoringTd">
                                                <fmt:formatDate value="${row.september[1].datasetDateFrom}" pattern="dd MMM"/> -
                                                <fmt:formatDate value="${row.september[1].datasetDate}" pattern="dd MMM yy"/>
                                            </td>
                                            <td class="monitoringTd">
                                                <fmt:formatDate value="${row.october[1].datasetDateFrom}" pattern="dd MMM"/> -
                                                <fmt:formatDate value="${row.october[1].datasetDate}" pattern="dd MMM yy"/>
                                            </td>
                                            <td class="monitoringTd">
                                                <fmt:formatDate value="${row.november[1].datasetDateFrom}" pattern="dd MMM"/> -
                                                <fmt:formatDate value="${row.november[1].datasetDate}" pattern="dd MMM yy"/>
                                            </td>
                                            <td class="monitoringTd">
                                                <fmt:formatDate value="${row.december[1].datasetDateFrom}" pattern="dd MMM"/> -
                                                <fmt:formatDate value="${row.december[1].datasetDate}" pattern="dd MMM yy"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <c:if test="${row.january ne '[]'}">
                                                <td align="center" class="monitoringTd" bgcolor="${row.january[1].bgColor}">
                                                    ${row.january[1].displayMessage}
                                                </td>
                                            </c:if>
                                            <c:if test="${row.january eq '[]'}">
                                                <td align="center" class="monitoringTd">-</td>
                                            </c:if>

                                            <c:if test="${row.february ne '[]'}">
                                                <td align="center" class="monitoringTd" bgcolor="${row.february[1].bgColor}">
                                                    ${row.february[1].displayMessage}
                                                </td>
                                            </c:if>
                                            <c:if test="${row.february eq '[]'}">
                                                <td align="center" class="monitoringTd">-</td>
                                            </c:if>

                                            <c:if test="${row.march ne '[]'}">
                                                <td align="center" class="monitoringTd" bgcolor="${row.march[1].bgColor}">
                                                    ${row.march[1].displayMessage}
                                                </td>
                                            </c:if>
                                            <c:if test="${row.march eq '[]'}">
                                                <td align="center" class="monitoringTd">-</td>
                                            </c:if>

                                            <c:if test="${row.april ne '[]'}">
                                                <td align="center" class="monitoringTd" bgcolor="${row.april[1].bgColor}">
                                                    ${row.april[1].displayMessage}
                                                </td>
                                            </c:if>
                                            <c:if test="${row.april eq '[]'}">
                                                <td align="center" class="monitoringTd">-</td>
                                            </c:if>

                                            <c:if test="${row.may ne '[]'}">
                                                <td align="center" class="monitoringTd" bgcolor="${row.may[1].bgColor}">
                                                    ${row.may[1].displayMessage}
                                                </td>
                                            </c:if>
                                            <c:if test="${row.may eq '[]'}">
                                                <td align="center" class="monitoringTd">-</td>
                                            </c:if>

                                            <c:if test="${row.june ne '[]'}">
                                                <td align="center" class="monitoringTd" bgcolor="${row.june[1].bgColor}">
                                                    ${row.june[1].displayMessage}
                                                </td>
                                            </c:if>
                                            <c:if test="${row.june eq '[]'}">
                                                <td align="center" class="monitoringTd">-</td>
                                            </c:if>

                                            <c:if test="${row.july ne '[]'}">
                                                <td align="center" class="monitoringTd" bgcolor="${row.july[1].bgColor}">
                                                    ${row.july[1].displayMessage}
                                                </td>
                                            </c:if>
                                            <c:if test="${row.july eq '[]'}">
                                                <td align="center" class="monitoringTd">-</td>
                                            </c:if>

                                            <c:if test="${row.august ne '[]'}">
                                                <td align="center" class="monitoringTd" bgcolor="${row.august[1].bgColor}">
                                                    ${row.august[1].displayMessage}
                                                </td>
                                            </c:if>
                                            <c:if test="${row.august eq '[]'}">
                                                <td align="center" class="monitoringTd">-</td>
                                            </c:if>

                                            <c:if test="${row.september ne '[]'}">
                                                <td align="center" class="monitoringTd" bgcolor="${row.september[1].bgColor}">
                                                    ${row.september[1].displayMessage}
                                                </td>
                                            </c:if>
                                            <c:if test="${row.september eq '[]'}">
                                                <td align="center" class="monitoringTd">-</td>
                                            </c:if>

                                            <c:if test="${row.october ne '[]'}">
                                                <td align="center" class="monitoringTd" bgcolor="${row.october[1].bgColor}">
                                                    ${row.october[1].displayMessage}
                                                </td>
                                            </c:if>
                                            <c:if test="${row.october eq '[]'}">
                                                <td align="center" class="monitoringTd">-</td>
                                            </c:if>

                                            <c:if test="${row.november ne '[]'}">
                                                <td align="center" class="monitoringTd" bgcolor="${row.november[1].bgColor}">
                                                    ${row.november[1].displayMessage}
                                                </td>
                                            </c:if>
                                            <c:if test="${row.november eq '[]'}">
                                                <td align="center" class="monitoringTd">-</td>
                                            </c:if>

                                            <c:if test="${row.december ne '[]'}">
                                                <td align="center" class="monitoringTd" bgcolor="${row.december[1].bgColor}">
                                                    ${row.december[1].displayMessage}
                                                </td>
                                            </c:if>
                                            <c:if test="${row.december eq '[]'}">
                                                <td align="center" class="monitoringTd">-</td>
                                            </c:if>
                                        </tr>
                                        <tr>
                                            <c:if test="${row.januarySize eq 3}">
                                                <td class="headerTable monitoringTd">
                                                    <fmt:formatDate value="${row.january[2].datasetDateFrom}" pattern="dd MMM"/> -
                                                    <fmt:formatDate value="${row.january[2].datasetDate}" pattern="dd MMM yy"/>
                                                </td>
                                            </c:if>
                                            <c:if test="${row.januarySize lt 3}">
                                                <td class="monitoringTd" rowspan="2"></td>
                                            </c:if>
                                            <c:if test="${row.februarySize eq 3}">
                                                <td class="headerTable monitoringTd">
                                                    <fmt:formatDate value="${row.february[2].datasetDateFrom}" pattern="dd MMM"/> -
                                                    <fmt:formatDate value="${row.february[2].datasetDate}" pattern="dd MMM yy"/>
                                                </td>
                                            </c:if>
                                            <c:if test="${row.februarySize lt 3}">
                                                <td class="monitoringTd" rowspan="2"></td>
                                            </c:if>
                                            <c:if test="${row.marchSize eq 3}">
                                                <td class="headerTable monitoringTd">
                                                    <fmt:formatDate value="${row.march[2].datasetDateFrom}" pattern="dd MMM"/> -
                                                    <fmt:formatDate value="${row.march[2].datasetDate}" pattern="dd MMM yy"/>
                                                </td>
                                            </c:if>
                                            <c:if test="${row.marchSize lt 3}">
                                                <td class="monitoringTd" rowspan="2"></td>
                                            </c:if>
                                            <c:if test="${row.aprilSize eq 3}">
                                                <td class="headerTable monitoringTd">
                                                    <fmt:formatDate value="${row.april[2].datasetDateFrom}" pattern="dd MMM"/> -
                                                    <fmt:formatDate value="${row.april[2].datasetDate}" pattern="dd MMM yy"/>
                                                </td>
                                            </c:if>
                                            <c:if test="${row.aprilSize lt 3}">
                                                <td class="monitoringTd" rowspan="2"></td>
                                            </c:if>
                                            <c:if test="${row.maySize eq 3}">
                                                <td class="headerTable monitoringTd">
                                                    <fmt:formatDate value="${row.may[2].datasetDateFrom}" pattern="dd MMM"/> -
                                                    <fmt:formatDate value="${row.may[2].datasetDate}" pattern="dd MMM yy"/>
                                                </td>
                                            </c:if>
                                            <c:if test="${row.maySize lt 3}">
                                                <td class="monitoringTd" rowspan="2"></td>
                                            </c:if>
                                            <c:if test="${row.juneSize eq 3}">
                                                <td class="headerTable monitoringTd">
                                                    <fmt:formatDate value="${row.june[2].datasetDateFrom}" pattern="dd MMM"/> -
                                                    <fmt:formatDate value="${row.june[2].datasetDate}" pattern="dd MMM yy"/>
                                                </td>
                                            </c:if>
                                            <c:if test="${row.juneSize lt 3}">
                                                <td class="monitoringTd" rowspan="2"></td>
                                            </c:if>
                                            <c:if test="${row.julySize eq 3}">
                                                <td class="headerTable monitoringTd">
                                                    <fmt:formatDate value="${row.july[2].datasetDateFrom}" pattern="dd MMM"/> -
                                                    <fmt:formatDate value="${row.july[2].datasetDate}" pattern="dd MMM yy"/>
                                                </td>
                                            </c:if>
                                            <c:if test="${row.julySize lt 3}">
                                                <td class="monitoringTd" rowspan="2"></td>
                                            </c:if>
                                            <c:if test="${row.augustSize eq 3}">
                                                <td class="headerTable monitoringTd">
                                                    <fmt:formatDate value="${row.august[2].datasetDateFrom}" pattern="dd MMM"/> -
                                                    <fmt:formatDate value="${row.august[2].datasetDate}" pattern="dd MMM yy"/>
                                                </td>
                                            </c:if>
                                            <c:if test="${row.augustSize lt 3}">
                                                <td class="monitoringTd" rowspan="2"></td>
                                            </c:if>
                                            <c:if test="${row.septemberSize eq 3}">
                                                <td class="headerTable monitoringTd">
                                                    <fmt:formatDate value="${row.september[2].datasetDateFrom}" pattern="dd MMM"/> -
                                                    <fmt:formatDate value="${row.september[2].datasetDate}" pattern="dd MMM yy"/>
                                                </td>
                                            </c:if>
                                            <c:if test="${row.septemberSize lt 3}">
                                                <td class="monitoringTd" rowspan="2"></td>
                                            </c:if>
                                            <c:if test="${row.octoberSize eq 3}">
                                                <td class="headerTable monitoringTd">
                                                    <fmt:formatDate value="${row.october[2].datasetDateFrom}" pattern="dd MMM"/> -
                                                    <fmt:formatDate value="${row.october[2].datasetDate}" pattern="dd MMM yy"/>
                                                </td>
                                            </c:if>
                                            <c:if test="${row.octoberSize lt 3}">
                                                <td class="monitoringTd" rowspan="2"></td>
                                            </c:if>
                                            <c:if test="${row.novemberSize eq 3}">
                                                <td class="headerTable monitoringTd">
                                                    <fmt:formatDate value="${row.november[2].datasetDateFrom}" pattern="dd MMM"/> -
                                                    <fmt:formatDate value="${row.november[2].datasetDate}" pattern="dd MMM yy"/>
                                                </td>
                                            </c:if>
                                            <c:if test="${row.novemberSize lt 3}">
                                                <td class="monitoringTd" rowspan="2"></td>
                                            </c:if>
                                            <c:if test="${row.decemberSize eq 3}">
                                                <td class="headerTable monitoringTd">
                                                    <fmt:formatDate value="${row.december[2].datasetDateFrom}" pattern="dd MMM"/> -
                                                    <fmt:formatDate value="${row.december[2].datasetDate}" pattern="dd MMM yy"/>
                                                </td>
                                            </c:if>
                                            <c:if test="${row.decemberSize lt 3}">
                                                <td class="monitoringTd" rowspan="2"></td>
                                            </c:if>
                                        </tr>
                                        <tr>
                                            <c:if test="${row.januarySize eq 3}">
                                                <td align="center" class="monitoringTd" bgcolor="${row.january[2].bgColor}">
                                                    ${row.january[2].displayMessage}
                                                </td>
                                            </c:if>
                                            <c:if test="${row.februarySize eq 3}">
                                                <td align="center" class="monitoringTd" bgcolor="${row.february[2].bgColor}">
                                                    ${row.february[2].displayMessage}
                                                </td>
                                            </c:if>
                                            <c:if test="${row.marchSize eq 3}">
                                                <td align="center" class="monitoringTd" bgcolor="${row.march[2].bgColor}">
                                                    ${row.march[2].displayMessage}
                                                </td>
                                            </c:if>
                                            <c:if test="${row.aprilSize eq 3}">
                                                <td align="center" class="monitoringTd" bgcolor="${row.april[2].bgColor}">
                                                    ${row.april[2].displayMessage}
                                                </td>
                                            </c:if>
                                            <c:if test="${row.maySize eq 3}">
                                                <td align="center" class="monitoringTd" bgcolor="${row.may[2].bgColor}">
                                                    ${row.may[2].displayMessage}
                                                </td>
                                            </c:if>
                                            <c:if test="${row.juneSize eq 3}">
                                                <td align="center" class="monitoringTd" bgcolor="${row.june[2].bgColor}">
                                                    ${row.june[2].displayMessage}
                                                </td>
                                            </c:if>
                                            <c:if test="${row.julySize eq 3}">
                                                <td align="center" class="monitoringTd" bgcolor="${row.july[2].bgColor}">
                                                    ${row.july[2].displayMessage}
                                                </td>
                                            </c:if>
                                            <c:if test="${row.augustSize eq 3}">
                                                <td align="center" class="monitoringTd" bgcolor="${row.august[2].bgColor}">
                                                    ${row.august[2].displayMessage}
                                                </td>
                                            </c:if>
                                            <c:if test="${row.septemberSize eq 3}">
                                                <td align="center" class="monitoringTd" bgcolor="${row.september[2].bgColor}">
                                                    ${row.september[2].displayMessage}
                                                </td>
                                            </c:if>
                                            <c:if test="${row.octoberSize eq 3}">
                                                <td align="center" class="monitoringTd" bgcolor="${row.october[2].bgColor}">
                                                    ${row.october[2].displayMessage}
                                                </td>
                                            </c:if>
                                            <c:if test="${row.novemberSize eq 3}">
                                                <td align="center" class="monitoringTd" bgcolor="${row.november[2].bgColor}">
                                                    ${row.november[2].displayMessage}
                                                </td>
                                            </c:if>
                                            <c:if test="${row.decemberSize eq 3}">
                                                <td align="center" class="monitoringTd" bgcolor="${row.december[2].bgColor}">
                                                    ${row.december[2].displayMessage}
                                                </td>
                                            </c:if>
                                        </tr>
                                    </table>
                                    <br/>
                                    </c:forEach>
                                    </c:if>

                                    <c:set var="sendingWaiveColor" value="#9999ff"/>
                                    <c:set var="noTransactionColor" value="#baf6d8"/>
                                    <c:set var="failColor" value="#ffcc66"/>
                                    <table width="100%">
                                        <c:set var="colorDescHeight" value="22px"/>
                                        <tr style="height:${colorDescHeight}">
                                            <td bgcolor="${sendingWaiveColor}" width="${resultWidth}px">&nbsp;</td>
                                            <td><strong>Sending Waive</strong></td>
                                        </tr>
                                        <tr style="height:${colorDescHeight}">
                                            <td bgcolor="${failColor}">&nbsp;</td>
                                            <td><strong>Fail</strong></td>
                                        </tr>
                                        <tr style="height:${colorDescHeight}">
                                            <td bgcolor="#ffccff">&nbsp;</td>
                                            <td><strong>ไม่ใช้ Dataset นี้</strong></td>
                                        </tr>
                                        <tr style="height:${colorDescHeight}">
                                            <td bgcolor="${noTransactionColor}">&nbsp;</td>
                                            <td><strong>ไม่มีธุรกรรม</strong></td>
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
    var jq = jQuery.noConflict();

    jq("#monitoring_report").keypress(function(event){
      if(event.keyCode == 13){
          jq("#btnSearch").click();
      }
    });
    var thisForm = document.getElementsByTagName('form')[0];


    function letsGo(action) {

        var sfi = document.getElementById('sfi').value;
        var year = document.getElementById('year').value;

        pageLink1 = action + '?sfi=' + sfi;
        pageLink2 = '&year=' + year;

        //alert(pageLink1.concat(pageLink2));

        location.href = pageLink1.concat(pageLink2);

    }
</script>
</body>
</html>