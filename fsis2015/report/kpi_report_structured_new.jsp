<%@ page import="th.go.mof.fpo.Constants" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

<html>
<head>
    <title>Simple jsp page</title>

    <script type="text/javascript" src="../includes/js/popcalendar.js"></script>
    <script type="text/javascript" src="../includes/js/jquery.js"></script>
    <link rel="stylesheet" type="text/css" href="../includes/css/style.css">
    <script type='text/javascript' src='../dwr/engine.js'></script>
    <script type='text/javascript' src='../dwr/util.js'></script>
    <script type='text/javascript' src='../dwr/interface/AjaxManager.js'></script>
    <script language="text/javascript" src="../includes/js/tp/utils.js"></script>
    <script language="text/javascript" src="../includes/js/tp/validate.js"></script>
    <script type="text/javascript" src="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.js"></script>
    <link href="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.css" rel="stylesheet"
          type="text/css">
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
        function ConvertToExcel(ConvertToExcel) {
            window.open('../ConvertToExcel.excel?file=' + ConvertToExcel);
        }
    </script>

</head>
<body>
<s:form action="kpi_report_structured" id="kpi_report_structured" name="kpi_report_structured" validate="false">
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
            <b>KPI Report Structured</b>
        </td>
    </tr>
    <tr>
        <td>
            <table width="100%" class="displayTable">
                <tr class="bgGreen2">
                    <td height="28px" width="20%" class="label">
                        SFIs Name<span class="require_field">*</span> :
                    </td>
                    <td width="80%">
                        <c:choose>
                            <c:when test="${sessionScope.userLogin.sfi.id eq 000}">
                                <s:select list="sfiList"
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

<br><br>
<c:set var="indexWidth" value="50"/>
<c:set var="datasetWidth" value="110"/>
<c:set var="frequencyWidth" value="120"/>
<c:set var="resultWidth" value="120"/>
<c:set var="tableWidth" value="${indexWidth + datasetWidth + frequencyWidth + (resultWidth * 13)}"/>

<c:set var="indexWidth" value="${indexWidth}px"/>
<c:set var="datasetWidth" value="${datasetWidth}px"/>
<c:set var="frequencyWidth" value="${frequencyWidth}px"/>
<c:set var="resultWidth" value="${resultWidth}px"/>
<c:set var="tableWidth" value="${tableWidth}px"/>

<c:if test="${not empty requestScope.kpiReportDTOList}">
<table>
    <tr>
        <td colspan="17" align="left">
            <input type="button" class="button" value="Print"  onclick="window.print();return false;"/>
            <a class="button" style="height:18px;width:150px;vertical-align:bottom;text-align:center;"
               href="../report/kpi_report_structured_convert_to_excel.action?sfi=${requestScope.sfi}&year=${requestScope.year}">
                &nbsp;Convert To Excel&nbsp;</a>
        </td>
    </tr>
</table>
<table id="tableResult" width="${tableWidth}" border="1" bordercolor="5A9113" cellpadding="0" cellspacing="0"
       class="displayTag  tableresult2">
<thead>

<tr>
    <th scope="col" width="${indexWidth}" class="headerTable">ลำดับที่</th>
    <th scope="col" width="${datasetWidth}" class="headerTable">Dataset Name</th>
    <th scope="col" width="${datasetWidth}" class="headerTable">Dataset Version</th>
    <th scope="col" width="${frequencyWidth}" class="headerTable">Frequency</th>
    <th scope="col" width="${resultWidth}" class="headerTable">Status</th>
    <th scope="col" width="${resultWidth}" class="headerTable">มกราคม</th>
    <th scope="col" width="${resultWidth}" class="headerTable">กุมภาพันธ์</th>
    <th scope="col" width="${resultWidth}" class="headerTable">มีนาคม</th>
    <th scope="col" width="${resultWidth}" class="headerTable">เมษายน</th>
    <th scope="col" width="${resultWidth}" class="headerTable">พฤษภาคม</th>
    <th scope="col" width="${resultWidth}" class="headerTable">มิถุนายน</th>
    <th scope="col" width="${resultWidth}" class="headerTable">กรกฏาคม</th>
    <th scope="col" width="${resultWidth}" class="headerTable">สิงหาคม</th>
    <th scope="col" width="${resultWidth}" class="headerTable">กันยายน</th>
    <th scope="col" width="${resultWidth}" class="headerTable">ตุลาคม</th>
    <th scope="col" width="${resultWidth}" class="headerTable">พฤศจิกายน</th>
    <th scope="col" width="${resultWidth}" class="headerTable">ธันวาคม</th>
</tr>
</thead>
<tbody>
<c:set var="index" value="1"/>
<c:forEach items="${requestScope.kpiReportDTOList}" var="row" varStatus="status">
<tr>
<c:set value="${requestScope.dateNow}" var="dateNow"></c:set>
<c:set value="${requestScope.monthNow}" var="monthNow"></c:set>
<c:set value="${requestScope.yearNow}" var="yearNow"></c:set>
<c:set value="${requestScope.year}" var="year"></c:set>


<td style="text-align:center"><c:out value="${index}"/><c:set var="index" value="${index + 1}"/></td>
<td style="text-align:center">${row[1]}</td>
<td style="text-align:center">${row[2]}</td>
<td style="text-align:center">${row[3]}</td>
<td style="text-align:center">${row[0]}</td>

<c:choose>
    <c:when test="${row[3] eq 'ไม่ใช้ Dataset นี้'}">
        <td style="text-align:center" bgcolor="#ffccff">${row[4]}</td>
    </c:when>
    <c:otherwise>
        <c:choose>
            <c:when test="${empty row[4]}">
                <c:choose>
                    <c:when test="${row[30] eq 'waive'}"><td style="text-align:center" bgcolor="#9999ff"></td></c:when>
                    <c:when test="${empty row[5] && row[42] ne '5'}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:when>
                    <c:when test="${!empty row[5] && row[42] ne '5'}">
                        <c:if test="${row[5]<dateNow}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:if>
                        <c:if test="${row[5]>=dateNow}"><td style="text-align:center">-</td></c:if>
                    </c:when>
                    <c:when test="${!empty row[5] && row[42] eq '5'}">
                        <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                        <c:if test="${year >= yearNow && monthNow <= 1 }"><td style="text-align:center">-</td></c:if>
                        <c:if test="${year >= yearNow && monthNow > 1 }"><td style="text-align:center">No Change</td></c:if>
                    </c:when>
                    <c:when test="${empty row[5] && row[42] eq '5'}">
                        <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                        <c:if test="${year >= yearNow && monthNow <= 1 }"><td style="text-align:center">-</td></c:if>
                        <c:if test="${year >= yearNow && monthNow > 1 }"><td style="text-align:center">No Change</td></c:if>
                    </c:when>
                </c:choose>
            </c:when>
            <c:otherwise>
                <c:choose>
                    <c:when test="${row[5]>=row[4]}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[4]}</td>
                    </c:when>
                    <c:when test="${row[5]<row[4]}">
                        <td style="text-align:center"><img src="../images/windows-error_16x16.gif"/><br>${row[4]}</td>
                    </c:when>
                    <c:when test="${row[3] eq 'เมื่อมีการเปลี่ยนแปลง'}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[4]}</td>
                    </c:when>
                    <c:when test="${empty row[5]}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[4]}</td>
                    </c:when>
                </c:choose>
            </c:otherwise>
        </c:choose>
    </c:otherwise>
</c:choose>
<c:choose>
    <c:when test="${(row[3] eq 'ไม่ใช้ Dataset นี้')}">
        <td style="text-align:center" bgcolor="#ffccff">${row[6]}</td>
    </c:when>
    <c:otherwise>
        <c:choose>
            <c:when test="${empty row[6]}">
                <c:choose>
                    <c:when test="${row[31] eq 'waive'}"><td style="text-align:center" bgcolor="#9999ff"></td></c:when>
                    <c:when test="${empty row[7] && row[42] ne '5'}"> <td style="text-align:center" bgcolor="#a9a9a9"></td></c:when>
                    <c:when test="${!empty row[7] && row[42] ne '5'}">
                        <c:if test="${row[7]<dateNow}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:if>
                        <c:if test="${row[7]>=dateNow}"><td style="text-align:center">-</td></c:if>
                    </c:when>
                    <c:when test="${!empty row[7] && row[42] eq '5'}">
                        <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                        <c:if test="${year >= yearNow && monthNow <= 2 }"><td style="text-align:center">-</td></c:if>
                        <c:if test="${year >= yearNow && monthNow > 2 }"><td style="text-align:center">No Change</td></c:if>
                    </c:when>
                    <c:when test="${empty row[7] && row[42] eq '5'}">
                        <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                        <c:if test="${year >= yearNow && monthNow <= 2 }"><td style="text-align:center">-</td></c:if>
                        <c:if test="${year >= yearNow && monthNow > 2 }"><td style="text-align:center">No Change</td></c:if>
                    </c:when>
                </c:choose>
            </c:when>
            <c:otherwise>
                <c:choose>
                    <c:when test="${row[7]>=row[6]}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br> ${row[6]}</td>
                    </c:when>
                    <c:when test="${row[7]<row[6]}">
                        <td style="text-align:center"><img src="../images/windows-error_16x16.gif"/><br>${row[6]}</td>
                    </c:when>
                    <c:when test="${row[3] eq 'เมื่อมีการเปลี่ยนแปลง'}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[6]}</td>
                    </c:when>
                    <c:when test="${empty row[7]}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[6]}</td>
                    </c:when>
                </c:choose>
            </c:otherwise>
        </c:choose>
    </c:otherwise>
</c:choose>
<c:choose>
    <c:when test="${(row[3] eq 'ไม่ใช้ Dataset นี้')}">
        <td style="text-align:center" bgcolor="#ffccff">${row[8]}</td>
    </c:when>
    <c:otherwise>
        <c:choose>
            <c:when test="${empty row[8]}">
                <c:choose>
                    <c:when test="${row[32] eq 'waive'}"><td style="text-align:center" bgcolor="#9999ff"></td></c:when>
                    <c:when test="${empty row[9] && row[42] ne '5'}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:when>
                    <c:when test="${!empty row[9] && row[42] ne '5'}">
                        <c:if test="${row[9]<dateNow}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:if>
                        <c:if test="${row[9]>=dateNow}"><td style="text-align:center">-</td></c:if>
                    </c:when>
                    <c:when test="${!empty row[9] && row[42] eq '5'}">
                        <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                        <c:if test="${year >= yearNow && monthNow <= 3 }"><td style="text-align:center">-</td></c:if>
                        <c:if test="${year >= yearNow && monthNow > 3 }"><td style="text-align:center">No Change</td></c:if>
                    </c:when>
                    <c:when test="${empty row[9] && row[42] eq '5'}">
                        <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                        <c:if test="${year >= yearNow && monthNow <= 3 }"><td style="text-align:center">-</td></c:if>
                        <c:if test="${year >= yearNow && monthNow > 3 }"><td style="text-align:center">No Change</td></c:if>

                    </c:when>
                </c:choose>
            </c:when>
            <c:otherwise>
                <c:choose>
                    <c:when test="${row[9]>=row[8]}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[8]}</td>
                    </c:when>
                    <c:when test="${row[9]<row[8]}">
                        <td style="text-align:center"><img src="../images/windows-error_16x16.gif"/><br> ${row[8]}</td>
                    </c:when>
                    <c:when test="${row[3] eq 'เมื่อมีการเปลี่ยนแปลง'}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[8]}</td>
                    </c:when>
                    <c:when test="${empty row[9]}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[8]}</td>
                    </c:when>
                </c:choose>
            </c:otherwise>
        </c:choose>
    </c:otherwise>
</c:choose>
<c:choose>
    <c:when test="${(row[3] eq 'ไม่ใช้ Dataset นี้')}">
        <td style="text-align:center" bgcolor="#ffccff">${row[10]}</td>
    </c:when>
    <c:otherwise>
        <c:choose>
            <c:when test="${empty row[10]}">
                <c:choose>
                    <c:when test="${row[33] eq 'waive'}"><td style="text-align:center" bgcolor="#9999ff"></td></c:when>
                    <c:when test="${empty row[11] && row[42] ne '5'}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:when>
                    <c:when test="${!empty row[11] && row[42] ne '5'}">
                        <c:if test="${row[11]<dateNow}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:if>
                        <c:if test="${row[11]>=dateNow}"><td style="text-align:center">-</td></c:if>
                    </c:when>
                    <c:when test="${!empty row[11] && row[42] eq '5'}">
                        <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                        <c:if test="${year >= yearNow && monthNow <= 4 }"><td style="text-align:center">-</td></c:if>
                        <c:if test="${year >= yearNow && monthNow > 4 }"><td style="text-align:center">No Change</td></c:if>
                    </c:when>
                    <c:when test="${empty row[11] && row[42] eq '5'}">
                        <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                        <c:if test="${year >= yearNow && monthNow <= 4 }"><td style="text-align:center">-</td></c:if>
                        <c:if test="${year >= yearNow && monthNow > 4 }"><td style="text-align:center">No Change</td></c:if>
                    </c:when>
                </c:choose>
            </c:when>
            <c:otherwise>
                <c:choose>
                    <c:when test="${row[11]>=row[10]}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[10]}</td>
                    </c:when>
                    <c:when test="${row[11]<row[10]}">
                        <td style="text-align:center"><img src="../images/windows-error_16x16.gif"/><br>${row[10]}</td>
                    </c:when>
                    <c:when test="${row[3] eq 'เมื่อมีการเปลี่ยนแปลง'}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[10]}</td>
                    </c:when>
                    <c:when test="${empty row[11]}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[10]}</td>
                    </c:when>
                </c:choose>
            </c:otherwise>
        </c:choose>
    </c:otherwise>
</c:choose>
<c:choose>
    <c:when test="${(row[3] eq 'ไม่ใช้ Dataset นี้')}">
        <td style="text-align:center" bgcolor="#ffccff">${row[12]}</td>
    </c:when>
    <c:otherwise>
        <c:choose>
            <c:when test="${empty row[12]}">
                <c:choose>
                    <c:when test="${row[34] eq 'waive'}"><td style="text-align:center" bgcolor="#9999ff"></td></c:when>
                    <c:when test="${empty row[13] && row[42] ne '5'}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:when>
                    <c:when test="${!empty row[13] && row[42] ne '5'}">
                        <c:if test="${row[13]<dateNow}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:if>
                        <c:if test="${row[13]>=dateNow}"><td style="text-align:center">-</td></c:if>
                    </c:when>
                    <c:when test="${!empty row[13] && row[42] eq '5'}">
                        <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                        <c:if test="${year >= yearNow && monthNow <= 5 }"><td style="text-align:center">-</td></c:if>
                        <c:if test="${year >= yearNow && monthNow > 5 }"><td style="text-align:center">No Change</td></c:if>
                    </c:when>
                    <c:when test="${empty row[13] && row[42] eq '5'}">
                        <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                        <c:if test="${year >= yearNow && monthNow <= 5 }"><td style="text-align:center">-</td></c:if>
                        <c:if test="${year >= yearNow && monthNow > 5 }"><td style="text-align:center">No Change</td></c:if>
                    </c:when>
                </c:choose>
            </c:when>
            <c:otherwise>
                <c:choose>
                    <c:when test="${row[13]>=row[12]}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[12]}</td>
                    </c:when>
                    <c:when test="${row[13]<row[12]}">
                        <td style="text-align:center"><img src="../images/windows-error_16x16.gif"/><br>${row[12]}</td>
                    </c:when>
                    <c:when test="${row[3] eq 'เมื่อมีการเปลี่ยนแปลง'}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[12]}</td>
                    </c:when>
                    <c:when test="${empty row[13]}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[12]}</td>
                    </c:when>
                </c:choose>
            </c:otherwise>
        </c:choose>
    </c:otherwise>
</c:choose>
<c:choose>
    <c:when test="${(row[3] eq 'ไม่ใช้ Dataset นี้')}">
        <td style="text-align:center" bgcolor="#ffccff">${row[14]}</td>
    </c:when>
    <c:otherwise>
        <c:choose>
            <c:when test="${empty row[14]}">
                <c:choose>
                    <c:when test="${row[35] eq 'waive'}"><td style="text-align:center" bgcolor="#9999ff"></td></c:when>
                    <c:when test="${empty row[15] && row[42] ne '5'}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:when>
                    <c:when test="${!empty row[15] && row[42] ne '5'}">
                        <c:if test="${row[15]<dateNow}"><td style="text-align:center" bgcolor="#a9a9a9"></td> </c:if>
                        <c:if test="${row[15]>=dateNow}"><td style="text-align:center">-</td> </c:if>
                    </c:when>
                    <c:when test="${!empty row[15] && row[42] eq '5'}">
                        <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                        <c:if test="${year >= yearNow && monthNow <= 6 }"><td style="text-align:center">-</td></c:if>
                        <c:if test="${year >= yearNow && monthNow > 6 }"><td style="text-align:center">No Change</td></c:if>
                    </c:when>
                    <c:when test="${empty row[15] && row[42] eq '5'}">
                        <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                        <c:if test="${year >= yearNow && monthNow <= 6 }"><td style="text-align:center">-</td></c:if>
                        <c:if test="${year >= yearNow && monthNow > 6 }"><td style="text-align:center">No Change</td></c:if>
                    </c:when>
                </c:choose>
            </c:when>
            <c:otherwise>
                <c:choose>
                    <c:when test="${row[15]>=row[14]}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br> ${row[14]}</td>
                    </c:when>
                    <c:when test="${row[15]<row[14]}">
                        <td style="text-align:center"><img src="../images/windows-error_16x16.gif"/><br>${row[14]}</td>
                    </c:when>
                    <c:when test="${row[3] eq 'เมื่อมีการเปลี่ยนแปลง'}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[14]}</td>
                    </c:when>
                    <c:when test="${empty row[15]}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[14]}</td>
                    </c:when>
                </c:choose>
            </c:otherwise>
        </c:choose>
    </c:otherwise>
</c:choose>
<c:choose>
    <c:when test="${(row[3] eq 'ไม่ใช้ Dataset นี้')}">
        <td style="text-align:center" bgcolor="#ffccff">${row[16]}</td>
    </c:when>
    <c:otherwise>
        <c:choose>
            <c:when test="${empty row[16]}">
                <c:choose>
                    <c:when test="${row[36] eq 'waive'}"><td style="text-align:center" bgcolor="#9999ff"></td></c:when>
                    <c:when test="${empty row[17] && row[42] ne '5'}"> <td style="text-align:center" bgcolor="#a9a9a9"></td> </c:when>
                    <c:when test="${!empty row[17] && row[42] ne '5'}">
                        <c:if test="${row[17]<dateNow}"> <td style="text-align:center" bgcolor="#a9a9a9"></td> </c:if>
                        <c:if test="${row[17]>=dateNow}"> <td style="text-align:center">-</td> </c:if>
                    </c:when>
                    <c:when test="${!empty row[17] && row[42] eq '5'}">
                        <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                        <c:if test="${year >= yearNow && monthNow <= 7 }"><td style="text-align:center">-</td></c:if>
                        <c:if test="${year >= yearNow && monthNow > 7 }"><td style="text-align:center">No Change</td></c:if>
                    </c:when>
                    <c:when test="${empty row[17] && row[42] eq '5'}">
                        <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                        <c:if test="${year >= yearNow && monthNow <= 7 }"><td style="text-align:center">-</td></c:if>
                        <c:if test="${year >= yearNow && monthNow > 7 }"><td style="text-align:center">No Change</td></c:if>
                    </c:when>
                </c:choose>
            </c:when>
            <c:otherwise>
                <c:choose>
                    <c:when test="${row[17]>=row[16]}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br> ${row[16]} </td>
                    </c:when>
                    <c:when test="${row[17]<row[16]}">
                        <td style="text-align:center"><img src="../images/windows-error_16x16.gif"/><br> ${row[16]} </td>
                    </c:when>
                    <c:when test="${row[3] eq 'เมื่อมีการเปลี่ยนแปลง'}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[16]}</td>
                    </c:when>
                    <c:when test="${empty row[17]}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[16]}</td>
                    </c:when>
                </c:choose>
            </c:otherwise>
        </c:choose>
    </c:otherwise>
</c:choose>
<c:choose>
    <c:when test="${(row[3] eq 'ไม่ใช้ Dataset นี้')}">
        <td style="text-align:center" bgcolor="#ffccff">${row[18]}</td>
    </c:when>
    <c:otherwise>
        <c:choose>
            <c:when test="${empty row[18]}">
                <c:choose>
                    <c:when test="${row[37] eq 'waive'}"><td style="text-align:center" bgcolor="#9999ff"></td></c:when>
                    <c:when test="${empty row[19] && row[42] ne '5'}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:when>
                    <c:when test="${!empty row[19] && row[42] ne '5'}">
                        <c:if test="${row[19]<dateNow}"> <td style="text-align:center" bgcolor="#a9a9a9"></td></c:if>
                        <c:if test="${row[19]>=dateNow}"> <td style="text-align:center">-</td></c:if>
                    </c:when>
                    <c:when test="${!empty row[19] && row[42] eq '5'}">
                        <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                        <c:if test="${year >= yearNow && monthNow <= 8 }"><td style="text-align:center">-</td></c:if>
                        <c:if test="${year >= yearNow && monthNow > 8 }"><td style="text-align:center">No Change</td></c:if>
                    </c:when>
                    <c:when test="${empty row[19] && row[42] eq '5'}">
                        <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                        <c:if test="${year >= yearNow && monthNow <= 8 }"><td style="text-align:center">-</td></c:if>
                        <c:if test="${year >= yearNow && monthNow > 8 }"><td style="text-align:center">No Change</td></c:if>
                    </c:when>
                </c:choose>
            </c:when>
            <c:otherwise>
                <c:choose>
                    <c:when test="${row[19]>=row[18]}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[18]}</td>
                    </c:when>
                    <c:when test="${row[19]<row[18]}">
                        <td style="text-align:center"><img src="../images/windows-error_16x16.gif"/><br> ${row[18]}</td>
                    </c:when>
                    <c:when test="${row[3] eq 'เมื่อมีการเปลี่ยนแปลง'}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[18]}</td>
                    </c:when>
                    <c:when test="${empty row[19]}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[18]}</td>
                    </c:when>
                </c:choose>
            </c:otherwise>
        </c:choose>
    </c:otherwise>
</c:choose>
<c:choose>
    <c:when test="${(row[3] eq 'ไม่ใช้ Dataset นี้')}">
        <td style="text-align:center" bgcolor="#ffccff">${row[20]}</td>
    </c:when>
    <c:otherwise>
        <c:choose>
            <c:when test="${empty row[20]}">
                <c:choose>
                    <c:when test="${row[38] eq 'waive'}"><td style="text-align:center" bgcolor="#9999ff"></td></c:when>
                    <%--<c:when test="${empty row[21] && row[3] eq 'เมื่อมีการเปลี่ยนแปลง'}"><td style="text-align:center">No Change</td></c:when>--%>
                    <c:when test="${empty row[21] && row[42] ne '5'}"><td style="text-align:center" bgcolor="#a9a9a9"></td>  </c:when>
                    <c:when test="${!empty row[21] && row[42] ne '5'}">
                        <c:if test="${row[21]<dateNow}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:if>
                        <c:if test="${row[21]>=dateNow}"><td style="text-align:center">-</td></c:if>
                    </c:when>
                    <c:when test="${!empty row[21] && row[42] eq '5'}">
                        <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                        <c:if test="${year >= yearNow && monthNow <= 9 }"><td style="text-align:center">-</td></c:if>
                        <c:if test="${year >= yearNow && monthNow > 9 }"><td style="text-align:center">No Change</td></c:if>
                    </c:when>
                    <c:when test="${empty row[21] && row[42] eq '5'}">
                        <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                        <c:if test="${year >= yearNow && monthNow <= 9 }"><td style="text-align:center">-</td></c:if>
                        <c:if test="${year >= yearNow && monthNow > 9 }"><td style="text-align:center">No Change</td></c:if>
                    </c:when>
                </c:choose>
            </c:when>
            <c:otherwise>
                <c:choose>
                    <c:when test="${row[21]>=row[20]}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[20]}</td>
                    </c:when>
                    <c:when test="${row[21]<row[20]}">
                        <td style="text-align:center"><img src="../images/windows-error_16x16.gif"/><br>${row[20]}</td>
                    </c:when>
                    <c:when test="${row[3] eq 'เมื่อมีการเปลี่ยนแปลง'}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[20]}</td>
                    </c:when>
                    <c:when test="${empty row[21]}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[20]}</td>
                    </c:when>
                </c:choose>
            </c:otherwise>
        </c:choose>
    </c:otherwise>
</c:choose>
<c:choose>
    <c:when test="${(row[3] eq 'ไม่ใช้ Dataset นี้')}">
        <td style="text-align:center" bgcolor="#ffccff">${row[22]}</td>
    </c:when>
    <c:otherwise>
        <c:choose>
            <c:when test="${empty row[22]}">
                <c:choose>
                    <c:when test="${row[39] eq 'waive'}"><td style="text-align:center" bgcolor="#9999ff"></td></c:when>
                    <%--<c:when test="${empty row[23] && row[3] eq 'เมื่อมีการเปลี่ยนแปลง'}"><td style="text-align:center">No Change</td></c:when>--%>
                    <c:when test="${empty row[23] && row[42] ne '5'}"> <td style="text-align:center" bgcolor="#a9a9a9"></td></c:when>
                    <c:when test="${!empty row[23] && row[42] ne '5'}">
                        <c:if test="${row[23]<dateNow}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:if>
                        <c:if test="${row[23]>=dateNow}"><td style="text-align:center">-</td></c:if>
                    </c:when>
                    <c:when test="${!empty row[23] && row[42] eq '5'}">
                        <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                        <c:if test="${year >= yearNow && monthNow <= 10 }"><td style="text-align:center">-</td></c:if>
                        <c:if test="${year >= yearNow && monthNow > 10 }"><td style="text-align:center">No Change</td></c:if>
                    </c:when>
                    <c:when test="${empty row[23] && row[42] eq '5'}">
                        <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                        <c:if test="${year >= yearNow && monthNow <= 10 }"><td style="text-align:center">-</td></c:if>
                        <c:if test="${year >= yearNow && monthNow > 10 }"><td style="text-align:center">No Change</td></c:if>
                    </c:when>
                </c:choose>
            </c:when>
            <c:otherwise>
                <c:choose>
                    <c:when test="${row[23]>=row[22]}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[22]}</td>
                    </c:when>
                    <c:when test="${row[23]<row[22]}">
                        <td style="text-align:center"><img src="../images/windows-error_16x16.gif"/><br> ${row[22]}</td>
                    </c:when>
                    <c:when test="${row[3] eq 'เมื่อมีการเปลี่ยนแปลง'}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[22]}</td>
                    </c:when>
                    <c:when test="${empty row[23]}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[22]}</td>
                    </c:when>
                </c:choose>
            </c:otherwise>
        </c:choose>
    </c:otherwise>
</c:choose>
<c:choose>
    <c:when test="${(row[3] eq 'ไม่ใช้ Dataset นี้')}">
        <td style="text-align:center" bgcolor="#ffccff">${row[24]}</td>
    </c:when>
    <c:otherwise>
        <c:choose>
            <c:when test="${empty row[24]}">
                <c:choose>
                    <c:when test="${row[40] eq 'waive'}"><td style="text-align:center" bgcolor="#9999ff"></td></c:when>
                    <%--<c:when test="${empty row[25] && row[3] eq 'เมื่อมีการเปลี่ยนแปลง'}"><td style="text-align:center">No Change</td></c:when>--%>
                    <c:when test="${empty row[25] && row[42] ne '5'}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:when>
                    <c:when test="${!empty row[25] && row[42] ne '5'}">
                        <c:if test="${row[25]<dateNow}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:if>
                        <c:if test="${row[25]>=dateNow}"><td style="text-align:center">-</td> </c:if>
                    </c:when>
                    <c:when test="${!empty row[25] && row[42] eq '5'}">
                        <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                        <c:if test="${year >= yearNow && monthNow <= 11 }"><td style="text-align:center">-</td></c:if>
                        <c:if test="${year >= yearNow && monthNow > 11 }"><td style="text-align:center">No Change</td></c:if>
                    </c:when>
                    <c:when test="${empty row[25] && row[42] eq '5'}">
                        <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                        <c:if test="${year >= yearNow && monthNow <= 11 }"><td style="text-align:center">-</td></c:if>
                        <c:if test="${year >= yearNow && monthNow > 11 }"><td style="text-align:center">No Change</td></c:if>
                    </c:when>
                </c:choose>
            </c:when>
            <c:otherwise>
                <c:choose>
                    <c:when test="${row[25]>=row[24]}">
                        <td style="text-align:center"> <img src="../images/windows-success_16x16.gif"/><br>${row[24]}</td>
                    </c:when>
                    <c:when test="${row[25]<row[24]}">
                        <td style="text-align:center"> <img src="../images/windows-error_16x16.gif"/><br>${row[24]}</td>
                    </c:when>
                    <c:when test="${row[3] eq 'เมื่อมีการเปลี่ยนแปลง'}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[24]}</td>
                    </c:when>
                    <c:when test="${empty row[25]}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[24]}</td>
                    </c:when>
                </c:choose>
            </c:otherwise>
        </c:choose>
    </c:otherwise>
</c:choose>
<c:choose>
    <c:when test="${(row[3] eq 'ไม่ใช้ Dataset นี้')}">
        <td style="text-align:center" bgcolor="#ffccff">${row[26]}</td>
    </c:when>
    <c:otherwise>
        <c:choose>
            <c:when test="${empty row[26]}">
                <c:choose>
                    <c:when test="${row[41] eq 'waive'}"><td style="text-align:center" bgcolor="#9999ff"></td></c:when>
                    <%--<c:when test="${empty row[27] && row[3] eq 'เมื่อมีการเปลี่ยนแปลง'}"><td style="text-align:center">No Change</td></c:when>--%>
                    <c:when test="${empty row[27] && row[42] ne '5'}"><td style="text-align:center" bgcolor="#a9a9a9" ></td></c:when>
                    <c:when test="${!empty row[27] && row[42] ne '5'}">
                        <c:if test="${row[27]<dateNow}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:if>
                        <c:if test="${row[27]>= dateNow}"><td style="text-align:center">-</td></c:if>
                    </c:when>
                    <c:when test="${!empty row[27] && row[42] eq '5'}">
                        <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                        <c:if test="${year >= yearNow && monthNow <= 12 }"><td style="text-align:center">-</td></c:if>
                        <c:if test="${year >= yearNow && monthNow > 12 }"><td style="text-align:center">No Change</td></c:if>
                    </c:when>
                    <c:when test="${empty row[27] && row[42] eq '5'}">
                        <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                        <c:if test="${year >= yearNow && monthNow <= 12 }"><td style="text-align:center">-</td></c:if>
                        <c:if test="${year >= yearNow && monthNow > 12 }"><td style="text-align:center">No Change</td></c:if>
                    </c:when>
                </c:choose>
            </c:when>
            <c:otherwise>
                <c:choose>
                    <c:when test="${row[27]>=row[26]}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br> ${row[26]}</td>
                    </c:when>
                    <c:when test="${row[27]<row[26]}">
                        <td style="text-align:center"><img src="../images/windows-error_16x16.gif"/><br>${row[26]}</td>
                    </c:when>
                    <c:when test="${row[3] eq 'เมื่อมีการเปลี่ยนแปลง'}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[26]}</td>
                    </c:when>
                    <c:when test="${empty row[27]}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[26]}</td>
                    </c:when>
                </c:choose>
            </c:otherwise>
        </c:choose>
    </c:otherwise>
</c:choose>


</tr>
</c:forEach>

</tbody>
</table>
</c:if>
<br/><br/>
    <c:if test="${not empty requestScope.kpiReportFortnightlyDTOList}">
    <table id="tableResult" width="${tableWidth}" border="1" bordercolor="5A9113" cellpadding="0" cellspacing="0"
           class="displayTag  tableresult2">
    <thead>

    <tr>
        <th scope="col" width="${indexWidth}" class="headerTable">ลำดับที่</th>
        <th scope="col" width="${datasetWidth}" class="headerTable">Dataset Name</th>
        <th scope="col" width="${datasetWidth}" class="headerTable">Dataset Version</th>
        <th scope="col" width="${frequencyWidth}" class="headerTable">Frequency</th>
        <th scope="col" width="${resultWidth}" class="headerTable">Status</th>
        <th scope="col" width="${resultWidth}" class="headerTable">มกราคม</th>
        <th scope="col" width="${resultWidth}" class="headerTable">กุมภาพันธ์</th>
        <th scope="col" width="${resultWidth}" class="headerTable">มีนาคม</th>
        <th scope="col" width="${resultWidth}" class="headerTable">เมษายน</th>
        <th scope="col" width="${resultWidth}" class="headerTable">พฤษภาคม</th>
        <th scope="col" width="${resultWidth}" class="headerTable">มิถุนายน</th>
        <th scope="col" width="${resultWidth}" class="headerTable">กรกฏาคม</th>
        <th scope="col" width="${resultWidth}" class="headerTable">สิงหาคม</th>
        <th scope="col" width="${resultWidth}" class="headerTable">กันยายน</th>
        <th scope="col" width="${resultWidth}" class="headerTable">ตุลาคม</th>
        <th scope="col" width="${resultWidth}" class="headerTable">พฤศจิกายน</th>
        <th scope="col" width="${resultWidth}" class="headerTable">ธันวาคม</th>
    </tr>
    </thead>
    <tbody>
        <c:set var="index2" value="1"/>

<c:forEach items="${requestScope.kpiReportFortnightlyDTOList}" var="row2">
<tr>
<c:set value="${requestScope.dateNow}" var="dateNow"></c:set>

<td style="text-align:center"><c:out value="${index2}"/><c:set var="index2" value="${index2 + 1}"/></td>
<td style="text-align:center">${row2[1]}</td>
<td style="text-align:center">${row2[2]}</td>
<td style="text-align:center">${row2[3]}</td>
<td style="text-align:center">${row2[0]}</td>

<c:choose>
    <c:when test="${(row2[3] eq 'ไม่ใช้ Dataset นี้')}">
        <td style="text-align:center" bgcolor="#ffccff">${row2[4]}</td>
    </c:when>
    <c:otherwise>
        <c:choose>
            <c:when test="${empty row2[4]}">
                <c:choose>
                    <c:when test="${row2[30] eq 'waive'}"><td style="text-align:center" bgcolor="#9999ff"></td></c:when>
                     <c:when test="${empty row2[5]}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:when>
                    <c:when test="${!empty row2[5]}">
                        <c:if test="${row2[5]<dateNow}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:if>
                        <c:if test="${row2[5]>=dateNow}"><td style="text-align:center">-</td></c:if>
                    </c:when>
                </c:choose>
            </c:when>
            <c:otherwise>
                <c:choose>
                    <c:when test="${row2[5]>=row2[4]}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br> ${row2[4]}</td>
                    </c:when>
                    <c:when test="${row2[5]<row2[4]}">
                        <td style="text-align:center"> <img src="../images/windows-error_16x16.gif"/><br>${row2[4]}</td>
                    </c:when>
                    <c:when test="${empty row2[5]}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row2[4]}</td>
                    </c:when>
                </c:choose>

            </c:otherwise>
        </c:choose>
    </c:otherwise>
</c:choose>
<c:choose>
    <c:when test="${(row2[3] eq 'ไม่ใช้ Dataset นี้')}">
        <td style="text-align:center" bgcolor="#ffccff">${row2[6]}</td>
    </c:when>
    <c:otherwise>
        <c:choose>
            <c:when test="${empty row2[6]}">
                <c:choose>
                    <c:when test="${row2[31] eq 'waive'}"><td style="text-align:center" bgcolor="#9999ff"></td></c:when>
                    <c:when test="${empty row2[7]}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:when>
                    <c:when test="${!empty row2[7]}">
                        <c:if test="${row2[7]<dateNow}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:if>
                        <c:if test="${row2[7]>=dateNow}"><td style="text-align:center">-</td></c:if>
                    </c:when>
                </c:choose>
            </c:when>
            <c:otherwise>
                <c:choose>
                    <c:when test="${row2[7]>=row2[6]}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row2[6]}</td>
                    </c:when>
                    <c:when test="${row2[7]<row2[6]}">
                        <td style="text-align:center"><img src="../images/windows-error_16x16.gif"/><br>${row2[6]}</td>
                    </c:when>
                    <c:when test="${empty row2[7]}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row2[6]}</td>
                    </c:when>
                </c:choose>
            </c:otherwise>
        </c:choose>
    </c:otherwise>
</c:choose>
<c:choose>
    <c:when test="${(row2[3] eq 'ไม่ใช้ Dataset นี้')}">
        <td style="text-align:center" bgcolor="#ffccff">${row2[8]}</td>
    </c:when>
    <c:otherwise>
        <c:choose>
            <c:when test="${empty row2[8]}">
                <c:choose>
                    <c:when test="${row2[32] eq 'waive'}"><td style="text-align:center" bgcolor="#9999ff"></td></c:when>
                    <c:when test="${empty row2[9]}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:when>
                    <c:when test="${!empty row2[9]}">
                        <c:if test="${row2[9]<dateNow}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:if>
                        <c:if test="${row2[9]>=dateNow}"><td style="text-align:center">-</td></c:if>
                    </c:when>
                </c:choose>
            </c:when>
            <c:otherwise>
                <c:choose>
                    <c:when test="${row2[9]>=row2[8]}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row2[8]}</td>
                    </c:when>
                    <c:when test="${row2[9]<row2[8]}">
                        <td style="text-align:center"><img src="../images/windows-error_16x16.gif"/><br>${row2[8]}</td>
                    </c:when>
                    <c:when test="${empty row2[9]}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row2[8]}</td>
                    </c:when>
                </c:choose>
            </c:otherwise>
        </c:choose>
    </c:otherwise>
</c:choose>
<c:choose>
    <c:when test="${(row2[3] eq 'ไม่ใช้ Dataset นี้')}">
        <td style="text-align:center" bgcolor="#ffccff">${row2[10]}</td>
    </c:when>
    <c:otherwise>
        <c:choose>
            <c:when test="${empty row2[10]}">
                <c:choose>
                    <c:when test="${row2[33] eq 'waive'}"><td style="text-align:center" bgcolor="#9999ff"></td></c:when>
                    <c:when test="${empty row2[11]}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:when>
                    <c:when test="${!empty row2[11]}">
                        <c:if test="${row2[11]<dateNow}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:if>
                        <c:if test="${row2[11]>=dateNow}"><td style="text-align:center">-</td></c:if>
                    </c:when>
                </c:choose>
            </c:when>
            <c:otherwise>
                <c:choose>
                    <c:when test="${row2[11]>=row2[10]}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row2[10]}</td>
                    </c:when>
                    <c:when test="${row2[11]<row2[10]}">
                        <td style="text-align:center"><img src="../images/windows-error_16x16.gif"/><br>${row2[10]}</td>
                    </c:when>
                    <c:when test="${empty row2[11]}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row2[10]}</td>
                    </c:when>
                </c:choose>
            </c:otherwise>
        </c:choose>
    </c:otherwise>
</c:choose>
<c:choose>
    <c:when test="${(row2[3] eq 'ไม่ใช้ Dataset นี้')}">
        <td style="text-align:center" bgcolor="#ffccff">${row2[12]}</td>
    </c:when>
    <c:otherwise>
        <c:choose>
            <c:when test="${empty row2[12]}">
                <c:choose>
                    <c:when test="${row2[34] eq 'waive'}"><td style="text-align:center" bgcolor="#9999ff"></td></c:when>
                    <c:when test="${empty row2[13]}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:when>
                    <c:when test="${!empty row2[13]}">
                        <c:if test="${row2[13]<dateNow}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:if>
                        <c:if test="${row2[13]>=dateNow}"><td style="text-align:center">-</td></c:if>
                    </c:when>
                </c:choose>
            </c:when>
            <c:otherwise>
                <c:choose>
                    <c:when test="${row2[13]>=row2[12]}">
                        <td style="text-align:center"> <img src="../images/windows-success_16x16.gif"/><br>${row2[12]}</td>
                    </c:when>
                    <c:when test="${row2[13]<row2[12]}">
                        <td style="text-align:center"><img src="../images/windows-error_16x16.gif"/><br>${row2[12]}</td>
                    </c:when>
                    <c:when test="${empty row2[13]}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row2[12]}</td>
                    </c:when>
                </c:choose>
            </c:otherwise>
        </c:choose>
    </c:otherwise>
</c:choose>
<c:choose>
    <c:when test="${(row2[3] eq 'ไม่ใช้ Dataset นี้')}">
        <td style="text-align:center" bgcolor="#ffccff">${row2[14]}</td>
    </c:when>
    <c:otherwise>
        <c:choose>
            <c:when test="${empty row2[14]}">
                <c:choose>
                    <c:when test="${row2[35] eq 'waive'}"><td style="text-align:center" bgcolor="#9999ff"></td></c:when>
                    <c:when test="${empty row2[15]}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:when>
                    <c:when test="${!empty row2[15]}">
                        <c:if test="${row2[15]<dateNow}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:if>
                        <c:if test="${row2[15]>=dateNow}"><td style="text-align:center">-</td></c:if>
                    </c:when>
                </c:choose>
            </c:when>
            <c:otherwise>
                <c:choose>
                    <c:when test="${row2[15]>=row2[14]}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row2[14]}</td>
                    </c:when>
                    <c:when test="${row2[15]<row2[14]}">
                        <td style="text-align:center"><img src="../images/windows-error_16x16.gif"/><br>${row2[14]}</td>
                    </c:when>
                    <c:when test="${empty row2[15]}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row2[14]}</td>
                    </c:when>
                </c:choose>
            </c:otherwise>
        </c:choose>
    </c:otherwise>
</c:choose>
<c:choose>
    <c:when test="${(row2[3] eq 'ไม่ใช้ Dataset นี้')}">
        <td style="text-align:center" bgcolor="#ffccff">${row2[16]}</td>
    </c:when>
    <c:otherwise>
        <c:choose>
            <c:when test="${empty row2[16]}">
                <c:choose>
                    <c:when test="${row2[36] eq 'waive'}"><td style="text-align:center" bgcolor="#9999ff"></td></c:when>
                    <c:when test="${empty row2[17]}"><td style="text-align:center" bgcolor="#a9a9a9"></td>
                    </c:when>
                    <c:when test="${!empty row2[17]}">
                        <c:if test="${row2[17]<dateNow}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:if>
                        <c:if test="${row2[17]>=dateNow}"><td style="text-align:center">-</td></c:if>
                    </c:when>
                </c:choose>
            </c:when>
            <c:otherwise>
                <c:choose>
                    <c:when test="${row2[17]>=row2[16]}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row2[16]}</td>
                    </c:when>
                    <c:when test="${row2[17]<row2[16]}">
                        <td style="text-align:center"><img src="../images/windows-error_16x16.gif"/><br>${row2[16]}</td>
                    </c:when>
                    <c:when test="${empty row2[17]}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row2[16]}</td>
                    </c:when>
                </c:choose>
            </c:otherwise>
        </c:choose>
    </c:otherwise>
</c:choose>
<c:choose>
    <c:when test="${(row2[3] eq 'ไม่ใช้ Dataset นี้')}">
        <td style="text-align:center" bgcolor="#ffccff">${row2[18]}</td>
    </c:when>
    <c:otherwise>
        <c:choose>
            <c:when test="${empty row2[18]}">
                <c:choose>
                    <c:when test="${row2[37] eq 'waive'}"><td style="text-align:center" bgcolor="#9999ff"></td></c:when>
                    <c:when test="${empty row2[19]}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:when>
                    <c:when test="${!empty row2[19]}">
                        <c:if test="${row2[19]<dateNow}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:if>
                        <c:if test="${row2[19]>=dateNow}"> <td style="text-align:center">-</td></c:if>
                    </c:when>
                </c:choose>
            </c:when>
            <c:otherwise>
                <c:choose>
                    <c:when test="${row2[19]>=row2[18]}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row2[18]}</td>
                    </c:when>
                    <c:when test="${row2[19]<row2[18]}">
                        <td style="text-align:center"><img src="../images/windows-error_16x16.gif"/><br>${row2[18]}</td>
                    </c:when>
                    <c:when test="${empty row2[19]}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row2[18]}</td>
                    </c:when>
                </c:choose>
            </c:otherwise>
        </c:choose>
    </c:otherwise>
</c:choose>
<c:choose>
    <c:when test="${(row2[3] eq 'ไม่ใช้ Dataset นี้')}">
        <td style="text-align:center" bgcolor="#ffccff">${row2[20]}</td>
    </c:when>
    <c:otherwise>
        <c:choose>
            <c:when test="${empty row2[20]}">
                <c:choose>
                    <c:when test="${row2[38] eq 'waive'}"><td style="text-align:center" bgcolor="#9999ff"></td></c:when>
                    <c:when test="${empty row2[21]}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:when>
                    <c:when test="${!empty row2[21]}">
                        <c:if test="${row2[21]<dateNow}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:if>
                        <c:if test="${row2[21]>=dateNow}"><td style="text-align:center">-</td></c:if>
                    </c:when>
                </c:choose>
            </c:when>
            <c:otherwise>
                <c:choose>
                    <c:when test="${row2[21]>=row2[20]}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row2[20]}</td>
                    </c:when>
                    <c:when test="${row2[21]<row2[20]}">
                        <td style="text-align:center"><img src="../images/windows-error_16x16.gif"/><br>${row2[20]}</td>
                    </c:when>
                    <c:when test="${empty row2[21]}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row2[20]}</td>
                    </c:when>
                </c:choose>
            </c:otherwise>
        </c:choose>
    </c:otherwise>
</c:choose>
<c:choose>
    <c:when test="${(row2[3] eq 'ไม่ใช้ Dataset นี้')}">
        <td style="text-align:center" bgcolor="#ffccff">${row2[22]}</td>
    </c:when>
    <c:otherwise>
        <c:choose>
            <c:when test="${empty row2[22]}">
                <c:choose>
                    <c:when test="${row2[39] eq 'waive'}"><td style="text-align:center" bgcolor="#9999ff"></td></c:when>
                    <c:when test="${empty row2[23]}"> <td style="text-align:center" bgcolor="#a9a9a9"></td></c:when>
                    <c:when test="${!empty row2[23]}">
                        <c:if test="${row2[23]<dateNow}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:if>
                        <c:if test="${row2[23]>=dateNow}"><td style="text-align:center">-</td></c:if>
                    </c:when>
                </c:choose>
            </c:when>
            <c:otherwise>
                <c:choose>
                    <c:when test="${row2[23]>=row2[22]}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row2[22]}</td>
                    </c:when>
                    <c:when test="${row2[23]<row2[22]}">
                        <td style="text-align:center"><img src="../images/windows-error_16x16.gif"/><br>${row2[22]}</td>
                    </c:when>
                    <c:when test="${empty row2[23]}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row2[22]}</td>
                    </c:when>
                </c:choose>
            </c:otherwise>
        </c:choose>
    </c:otherwise>
</c:choose>
<c:choose>
    <c:when test="${(row2[3] eq 'ไม่ใช้ Dataset นี้')}">
        <td style="text-align:center" bgcolor="#ffccff">${row2[24]}</td>
    </c:when>
    <c:otherwise>
        <c:choose>
            <c:when test="${empty row2[24]}">
                <c:choose>
                    <c:when test="${row2[40] eq 'waive'}"><td style="text-align:center" bgcolor="#9999ff"></td></c:when>
                    <c:when test="${empty row2[25]}"> <td style="text-align:center" bgcolor="#a9a9a9"></td></c:when>
                    <c:when test="${!empty row2[25]}">
                        <c:if test="${row2[25]<dateNow}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:if>
                        <c:if test="${row2[25]>=dateNow}"><td style="text-align:center">-</td></c:if>
                    </c:when>
                </c:choose>
            </c:when>
            <c:otherwise>
                <c:choose>
                    <c:when test="${row2[25]>=row2[24]}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row2[24]}</td>
                    </c:when>
                    <c:when test="${row2[25]<row2[24]}">
                        <td style="text-align:center"><img src="../images/windows-error_16x16.gif"/><br>${row2[24]}</td>
                    </c:when>
                    <c:when test="${empty row2[25]}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row2[24]}</td>
                    </c:when>
                </c:choose>
            </c:otherwise>
        </c:choose>
    </c:otherwise>
</c:choose>
<c:choose>
    <c:when test="${(row2[3] eq 'ไม่ใช้ Dataset นี้')}">
        <td style="text-align:center" bgcolor="#ffccff">${row2[26]}</td>
    </c:when>
    <c:otherwise>
        <c:choose>
            <c:when test="${empty row2[26]}">
                <c:choose>
                    <c:when test="${row2[41] eq 'waive'}"><td style="text-align:center" bgcolor="#9999ff"></td></c:when>
                    <c:when test="${empty row2[27]}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:when>
                    <c:when test="${!empty row2[27]}">
                        <c:if test="${row2[27]<dateNow}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:if>
                        <c:if test="${row2[27]>=dateNow}"><td style="text-align:center">-</td></c:if>
                    </c:when>
                </c:choose>
            </c:when>
            <c:otherwise>
                <c:choose>
                    <c:when test="${row2[27]>=row2[26]}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row2[26]}</td>
                    </c:when>
                    <c:when test="${row2[27]<row2[26]}">
                        <td style="text-align:center"><img src="../images/windows-error_16x16.gif"/><br>${row2[26]}</td>
                    </c:when>
                    <c:when test="${empty row2[27]}">
                        <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row2[26]}</td>
                    </c:when>
                </c:choose>
            </c:otherwise>
        </c:choose>
    </c:otherwise>
</c:choose>


</tr>
    </c:forEach>
    </tbody>
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
    <tr style="height:${colorDescHeight}">
        <td bgcolor="${noTransactionColor}">&nbsp;</td>
        <td><strong>ไม่มีธุรกรรม</strong></td>
    </tr>
</table>
<br/>
<table width="100%">
    <tr class="docStatusDesc">
        <td class="docStatus">PCX :</td>
        <td class="docStatusDesc">Passed Complex Validation (วันที่ผ่าน Complex Validation ครั้งแรก)</td>
    </tr>
    <tr class="docStatusDesc">
        <td class="docStatus" align="right">PCS :</td>
        <td class="docStatusDesc">Passed Cross Validation (วันที่ผ่าน Cross Validation ครั้งแรก)</td>
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

    jq("#kpi_report_structured").keypress(function (event) {
        if (event.keyCode == 13) {
            jq("#btnSearch").click();
        }
    });
    var thisForm = document.getElementsByTagName('form')[0];
</script>
</body>
</html>