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
                                      headerValue="------------------------------------  Please Select  ------------------------------------"
                                      listKey="id"
                                      listValue="displayNameCodeAndCode"/>
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
<c:set var="tableWidth"
       value="${indexWidth + datasetDateOfUnsWidth + datasetWidth + frequencyWidth + (resultWidth * 13)}"/>

<c:set var="indexWidth" value="${indexWidth}px"/>
<c:set var="datasetWidth" value="${datasetWidth}px"/>
<c:set var="datasetDateOfUnsWidth" value="${datasetDateOfUnsWidth}px"/>
<c:set var="frequencyWidth" value="${frequencyWidth}px"/>
<c:set var="resultWidth" value="${resultWidth}px"/>
<c:set var="tableWidth" value="${tableWidth}px"/>
<c:if test="${not empty requestScope.kpiReportDTOList}">
<table class="kpiTable" width="${tableWidth}" border="1" bordercolor="5A9113">
<tr>
    <td colspan="17" align="left">
        <input type="button" class="button" value="Print" onclick="window.print();return false;"/>
        <%--<a class="button" style="height:18px;width:150px;vertical-align:bottom;text-align:center;"--%>
           <%--href="../report/kpi_report_unstructured_convert_to_excel.action?sfi=${requestScope.sfi}&year=${requestScope.year}">--%>
            <%--&nbsp;Convert To Excel&nbsp;--%>
        <%--</a>--%>
        <input type="button" value="Convert To Excel" class="button" id="convertExcel"  style="width:150px" onclick="letsGo('kpi_report_unstructured_convert_to_excel.action')"/>
    </td>
</tr>
<tr class="headerTable">
    <td rowspan="2" class="kpiTd" width="${datasetWidth}">รายการ</td>
    <td rowspan="2" class="kpiTd" width="${frequencyWidth}">ความถี่</td>
    <td rowspan="2" class="kpiTd" width="${datasetDateOfUnsWidth}">กำหนดส่งและวันเวลา <br>ที่จะนับเป็นการผ่าน
        KPI
    </td>
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

<c:set value="${requestScope.dateNow}" var="dateNow"></c:set>
<c:set value="${requestScope.monthNow}" var="monthNow"></c:set>
<c:set value="${requestScope.yearNow}" var="yearNow"></c:set>
<c:set value="${requestScope.year}" var="year"></c:set>

<td align="left" class="kpiTd">${row[0]}</td>
<td align="center" class="kpiTd">${row[1]}</td>
<td align="center" class="kpiTd">${row[2]}</td>

    <c:choose>
        <c:when test="${row[30] eq '8'}">
            <td style="text-align:center"></td>
        </c:when>
        <c:when test="${row[30] eq '5'}">
            <c:choose>
            <c:when test="${empty row[3] && !empty row[4]}">
                <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                <c:if test="${year >= yearNow && monthNow <= 1 }"><td style="text-align:center">-</td></c:if>
                <c:if test="${year >= yearNow && monthNow > 1 }"><td style="text-align:center">No Change</td></c:if>
            </c:when>
            <c:when test="${empty row[3] && empty row[4]}">
                <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                <c:if test="${year >= yearNow && monthNow <= 1 }"><td style="text-align:center">-</td></c:if>
                <c:if test="${year >= yearNow && monthNow > 1 }"><td style="text-align:center">No Change</td></c:if>
            </c:when>
            <c:when test="${!empty row[3]}">
                <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[3]}</td>
            </c:when>
            </c:choose>
        </c:when>
        <c:when test="${row[30] ne '5'}">
            <c:choose>
            <c:when test="${empty row[3]}">
                <c:choose>
                <c:when test="${row[31] eq 'waive'}"><td style="text-align:center" bgcolor="#9999ff"></td></c:when>
                <c:when test="${empty row[4]}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:when>
                <c:when test="${!empty row[4]}">
                    <c:if test="${row[4]<dateNow}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:if>
                    <c:if test="${row[4]>=dateNow}"><td style="text-align:center">-</td></c:if>
                </c:when>
                </c:choose>
            </c:when>
            <c:when test="${!empty row[3]}">
                <c:if test="${row[4]>=row[3]}"><td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[3]}</td></c:if>
                <c:if test="${row[4]<row[3]}"><td style="text-align:center"><img src="../images/windows-error_16x16.gif"/><br>${row[3]}</td></c:if>
                <c:if test="${empty row[4]}"><td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[3]}</td></c:if>
            </c:when>
            </c:choose>
        </c:when>
    </c:choose>

<c:choose>
    <c:when test="${row[30] eq '8'}">
        <td style="text-align:center" ></td>
    </c:when>
    <c:when test="${row[30] eq '5'}">
        <c:choose>
            <c:when test="${empty row[5] && !empty row[6]}">
                <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                <c:if test="${year >= yearNow && monthNow <= 2 }"><td style="text-align:center">-</td></c:if>
                <c:if test="${year >= yearNow && monthNow > 2 }"><td style="text-align:center">No Change</td></c:if>
            </c:when>
            <c:when test="${empty row[5] && empty row[6]}">
                <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                <c:if test="${year >= yearNow && monthNow <= 2 }"><td style="text-align:center">-</td></c:if>
                <c:if test="${year >= yearNow && monthNow > 2 }"><td style="text-align:center">No Change</td></c:if>
            </c:when>
            <c:when test="${!empty row[5]}">
                <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[5]}</td>
            </c:when>
        </c:choose>
    </c:when>
    <c:when test="${row[30] ne '5'}">
        <c:choose>
            <c:when test="${empty row[5]}">
                <c:choose>
                    <c:when test="${row[31] eq 'waive'}"><td style="text-align:center" bgcolor="#9999ff"></td></c:when>
                    <c:when test="${empty row[6]}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:when>
                    <c:when test="${!empty row[6]}">
                        <c:if test="${row[6]<dateNow}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:if>
                        <c:if test="${row[6]>=dateNow}"><td style="text-align:center">-</td></c:if>
                    </c:when>
                </c:choose>
            </c:when>
            <c:when test="${!empty row[5]}">
                <c:if test="${row[6]>=row[5]}"><td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[5]}</td></c:if>
                <c:if test="${row[6]<row[5]}"><td style="text-align:center"><img src="../images/windows-error_16x16.gif"/><br>${row[5]}</td></c:if>
                <c:if test="${empty row[6]}"><td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[5]}</td></c:if>
            </c:when>
        </c:choose>
    </c:when>
</c:choose>

<c:choose>
    <c:when test="${row[30] eq '8'}">
        <td style="text-align:center" ></td>
    </c:when>
    <c:when test="${row[30] eq '5'}">
        <c:choose>
            <c:when test="${empty row[7] && !empty row[8]}">
                <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                <c:if test="${year >= yearNow && monthNow <= 3 }"><td style="text-align:center">-</td></c:if>
                <c:if test="${year >= yearNow && monthNow > 3 }"><td style="text-align:center">No Change</td></c:if>
            </c:when>
            <c:when test="${empty row[7] && empty row[8]}">
                <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                <c:if test="${year >= yearNow && monthNow <= 3 }"><td style="text-align:center">-</td></c:if>
                <c:if test="${year >= yearNow && monthNow > 3 }"><td style="text-align:center">No Change</td></c:if>
            </c:when>
            <c:when test="${!empty row[7]}">
                <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[7]}</td>
            </c:when>
        </c:choose>
    </c:when>
    <c:when test="${row[30] ne '5'}">
        <c:choose>
            <c:when test="${empty row[7]}">
                <c:choose>
                    <c:when test="${row[31] eq 'waive'}"><td style="text-align:center" bgcolor="#9999ff"></td></c:when>
                    <c:when test="${empty row[8]}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:when>
                    <c:when test="${!empty row[8]}">
                        <c:if test="${row[8]<dateNow}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:if>
                        <c:if test="${row[8]>=dateNow}"><td style="text-align:center">-</td></c:if>
                    </c:when>
                </c:choose>
            </c:when>
            <c:when test="${!empty row[7]}">
                <c:if test="${row[8]>=row[7]}"><td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[7]}</td></c:if>
                <c:if test="${row[8]<row[7]}"><td style="text-align:center"><img src="../images/windows-error_16x16.gif"/><br>${row[7]}</td></c:if>
                <c:if test="${empty row[8]}"><td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[7]}</td></c:if>
            </c:when>
        </c:choose>
    </c:when>
</c:choose>


<c:choose>
    <c:when test="${row[30] eq '8'}">
        <td style="text-align:center"></td>
    </c:when>
    <c:when test="${row[30] eq '5'}">
        <c:choose>
            <c:when test="${empty row[9] && !empty row[10]}">
                <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                <c:if test="${year >= yearNow && monthNow <= 4 }"><td style="text-align:center">-</td></c:if>
                <c:if test="${year >= yearNow && monthNow > 4 }"><td style="text-align:center">No Change</td></c:if>
            </c:when>
            <c:when test="${empty row[9] && empty row[10]}">
                <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                <c:if test="${year >= yearNow && monthNow <= 4 }"><td style="text-align:center">-</td></c:if>
                <c:if test="${year >= yearNow && monthNow > 4 }"><td style="text-align:center">No Change</td></c:if>
            </c:when>
            <c:when test="${!empty row[9]}">
                <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[9]}</td>
            </c:when>
        </c:choose>
    </c:when>
    <c:when test="${row[30] ne '5'}">
        <c:choose>
            <c:when test="${empty row[9]}">
                <c:choose>
                    <c:when test="${row[31] eq 'waive'}"><td style="text-align:center" bgcolor="#9999ff"></td></c:when>
                    <c:when test="${empty row[10]}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:when>
                    <c:when test="${!empty row[10]}">
                        <c:if test="${row[10]<dateNow}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:if>
                        <c:if test="${row[10]>=dateNow}"><td style="text-align:center">-</td></c:if>
                    </c:when>
                </c:choose>
            </c:when>
            <c:when test="${!empty row[9]}">
                <c:if test="${row[10]>=row[9]}"><td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[9]}</td></c:if>
                <c:if test="${row[10]<row[9]}"><td style="text-align:center"><img src="../images/windows-error_16x16.gif"/><br>${row[9]}</td></c:if>
                <c:if test="${empty row[10]}"><td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[9]}</td></c:if>
            </c:when>
        </c:choose>
    </c:when>
</c:choose>

<c:choose>
    <c:when test="${row[30] eq '8'}">
        <td style="text-align:center" ></td>
    </c:when>
    <c:when test="${row[30] eq '5'}">
        <c:choose>
            <c:when test="${empty row[11] && !empty row[12]}">
                <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                <c:if test="${year >= yearNow && monthNow <= 5 }"><td style="text-align:center">-</td></c:if>
                <c:if test="${year >= yearNow && monthNow > 5 }"><td style="text-align:center">No Change</td></c:if>
            </c:when>
            <c:when test="${empty row[11] && empty row[12]}">
                <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                <c:if test="${year >= yearNow && monthNow <= 5 }"><td style="text-align:center">-</td></c:if>
                <c:if test="${year >= yearNow && monthNow > 5 }"><td style="text-align:center">No Change</td></c:if>
            </c:when>
            <c:when test="${!empty row[11]}">
                <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[11]}</td>
            </c:when>
        </c:choose>
    </c:when>
    <c:when test="${row[30] ne '5'}">
        <c:choose>
            <c:when test="${empty row[11]}">
                <c:choose>
                    <c:when test="${row[31] eq 'waive'}"><td style="text-align:center" bgcolor="#9999ff"></td></c:when>
                    <c:when test="${empty row[12]}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:when>
                    <c:when test="${!empty row[12]}">
                        <c:if test="${row[12]<dateNow}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:if>
                        <c:if test="${row[12]>=dateNow}"><td style="text-align:center">-</td></c:if>
                    </c:when>
                </c:choose>
            </c:when>
            <c:when test="${!empty row[11]}">
                <c:if test="${row[12]>=row[11]}"><td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[11]}</td></c:if>
                <c:if test="${row[12]<row[11]}"><td style="text-align:center"><img src="../images/windows-error_16x16.gif"/><br>${row[11]}</td></c:if>
                <c:if test="${empty row[12]}"><td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[11]}</td></c:if>
            </c:when>
        </c:choose>
    </c:when>
</c:choose>


<c:choose>
    <c:when test="${row[30] eq '8'}">
        <td style="text-align:center" ></td>
    </c:when>
    <c:when test="${row[30] eq '5'}">
        <c:choose>
            <c:when test="${empty row[13] && !empty row[14]}">
                <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                <c:if test="${year >= yearNow && monthNow <= 6 }"><td style="text-align:center">-</td></c:if>
                <c:if test="${year >= yearNow && monthNow > 6 }"><td style="text-align:center">No Change</td></c:if>
            </c:when>
            <c:when test="${empty row[13] && empty row[14]}">
                <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                <c:if test="${year >= yearNow && monthNow <= 6 }"><td style="text-align:center">-</td></c:if>
                <c:if test="${year >= yearNow && monthNow > 6 }"><td style="text-align:center">No Change</td></c:if>
            </c:when>
            <c:when test="${!empty row[13]}">
                <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[13]}</td>
            </c:when>
        </c:choose>
    </c:when>
    <c:when test="${row[30] ne '5'}">
        <c:choose>
            <c:when test="${empty row[13]}">
                <c:choose>
                    <c:when test="${row[31] eq 'waive'}"><td style="text-align:center" bgcolor="#9999ff"></td></c:when>
                    <c:when test="${empty row[14]}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:when>
                    <c:when test="${!empty row[14]}">
                        <c:if test="${row[14]<dateNow}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:if>
                        <c:if test="${row[14]>=dateNow}"><td style="text-align:center">-</td></c:if>
                    </c:when>
                </c:choose>
            </c:when>
            <c:when test="${!empty row[13]}">
                <c:if test="${row[14]>=row[13]}"><td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[13]}</td></c:if>
                <c:if test="${row[14]<row[13]}"><td style="text-align:center"><img src="../images/windows-error_16x16.gif"/><br>${row[13]}</td></c:if>
                <c:if test="${empty row[14]}"><td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[13]}</td></c:if>
            </c:when>
        </c:choose>
    </c:when>
</c:choose>


<c:choose>
    <c:when test="${row[30] eq '8'}">
        <td style="text-align:center" ></td>
    </c:when>
    <c:when test="${row[30] eq '5'}">
        <c:choose>
            <c:when test="${empty row[15] && !empty row[16]}">
                <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                <c:if test="${year >= yearNow && monthNow <= 7 }"><td style="text-align:center">-</td></c:if>
                <c:if test="${year >= yearNow && monthNow > 7 }"><td style="text-align:center">No Change</td></c:if>
            </c:when>
            <c:when test="${empty row[15] && empty row[16]}">
                <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                <c:if test="${year >= yearNow && monthNow <= 7 }"><td style="text-align:center">-</td></c:if>
                <c:if test="${year >= yearNow && monthNow > 7 }"><td style="text-align:center">No Change</td></c:if>
            </c:when>
            <c:when test="${!empty row[15]}">
                <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[15]}</td>
            </c:when>
        </c:choose>
    </c:when>
    <c:when test="${row[30] ne '5'}">
        <c:choose>
            <c:when test="${empty row[15]}">
                <c:choose>
                    <c:when test="${row[31] eq 'waive'}"><td style="text-align:center" bgcolor="#9999ff"></td></c:when>
                    <c:when test="${empty row[16]}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:when>
                    <c:when test="${!empty row[16]}">
                        <c:if test="${row[16]<dateNow}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:if>
                        <c:if test="${row[16]>=dateNow}"><td style="text-align:center">-</td></c:if>
                    </c:when>
                </c:choose>
            </c:when>
            <c:when test="${!empty row[15]}">
                <c:if test="${row[16]>=row[15]}"><td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[15]}</td></c:if>
                <c:if test="${row[16]<row[15]}"><td style="text-align:center"><img src="../images/windows-error_16x16.gif"/><br>${row[15]}</td></c:if>
                <c:if test="${empty row[16]}"><td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[15]}</td></c:if>
            </c:when>
        </c:choose>
    </c:when>
</c:choose>


<c:choose>
    <c:when test="${row[30] eq '8'}">
        <td style="text-align:center" ></td>
    </c:when>
    <c:when test="${row[30] eq '5'}">
        <c:choose>
            <c:when test="${empty row[17] && !empty row[18]}">
                <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                <c:if test="${year >= yearNow && monthNow <= 8 }"><td style="text-align:center">-</td></c:if>
                <c:if test="${year >= yearNow && monthNow > 8 }"><td style="text-align:center">No Change</td></c:if>
            </c:when>
            <c:when test="${empty row[17] && empty row[18]}">
                <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                <c:if test="${year >= yearNow && monthNow <= 8 }"><td style="text-align:center">-</td></c:if>
                <c:if test="${year >= yearNow && monthNow > 8 }"><td style="text-align:center">No Change</td></c:if>
            </c:when>
            <c:when test="${!empty row[17]}">
                <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[17]}</td>
            </c:when>
        </c:choose>
    </c:when>
    <c:when test="${row[30] ne '5'}">
        <c:choose>
            <c:when test="${empty row[17]}">
                <c:choose>
                    <c:when test="${row[31] eq 'waive'}"><td style="text-align:center" bgcolor="#9999ff"></td></c:when>
                    <c:when test="${empty row[18]}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:when>
                    <c:when test="${!empty row[18]}">
                        <c:if test="${row[18]<dateNow}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:if>
                        <c:if test="${row[18]>=dateNow}"><td style="text-align:center">-</td></c:if>
                    </c:when>
                </c:choose>
            </c:when>
            <c:when test="${!empty row[17]}">
                <c:if test="${row[18]>=row[17]}"><td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[17]}</td></c:if>
                <c:if test="${row[18]<row[17]}"><td style="text-align:center"><img src="../images/windows-error_16x16.gif"/><br>${row[17]}</td></c:if>
                <c:if test="${empty row[18]}"><td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[17]}</td></c:if>
            </c:when>
        </c:choose>
    </c:when>
</c:choose>


<c:choose>
    <c:when test="${row[30] eq '8'}">
        <td style="text-align:center" ></td>
    </c:when>
    <c:when test="${row[30] eq '5'}">
        <c:choose>
            <c:when test="${empty row[19] && !empty row[20]}">
                <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                <c:if test="${year >= yearNow && monthNow <= 9 }"><td style="text-align:center">-</td></c:if>
                <c:if test="${year >= yearNow && monthNow > 9 }"><td style="text-align:center">No Change</td></c:if>
            </c:when>
            <c:when test="${empty row[19] && empty row[20]}">
                <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                <c:if test="${year >= yearNow && monthNow <= 9 }"><td style="text-align:center">-</td></c:if>
                <c:if test="${year >= yearNow && monthNow > 9 }"><td style="text-align:center">No Change</td></c:if>
            </c:when>
            <c:when test="${!empty row[19]}">
                <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[19]}</td>
            </c:when>
        </c:choose>
    </c:when>
    <c:when test="${row[30] ne '5'}">
        <c:choose>
            <c:when test="${empty row[19]}">
                <c:choose>
                    <c:when test="${row[31] eq 'waive'}"><td style="text-align:center" bgcolor="#9999ff"></td></c:when>
                    <c:when test="${empty row[20]}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:when>
                    <c:when test="${!empty row[20]}">
                        <c:if test="${row[20]<dateNow}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:if>
                        <c:if test="${row[20]>=dateNow}"><td style="text-align:center">-</td></c:if>
                    </c:when>
                </c:choose>
            </c:when>
            <c:when test="${!empty row[19]}">
                <c:if test="${row[20]>=row[19]}"><td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[19]}</td></c:if>
                <c:if test="${row[20]<row[19]}"><td style="text-align:center"><img src="../images/windows-error_16x16.gif"/><br>${row[19]}</td></c:if>
                <c:if test="${empty row[20]}"><td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[19]}</td></c:if>
            </c:when>
        </c:choose>
    </c:when>
</c:choose>

<c:choose>
    <c:when test="${row[30] eq '8'}">
        <td style="text-align:center" ></td>
    </c:when>
    <c:when test="${row[30] eq '5'}">
        <c:choose>
            <c:when test="${empty row[21] && !empty row[22]}">
                <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                <c:if test="${year >= yearNow && monthNow <= 10 }"><td style="text-align:center">-</td></c:if>
                <c:if test="${year >= yearNow && monthNow > 10 }"><td style="text-align:center">No Change</td></c:if>
            </c:when>
            <c:when test="${empty row[21] && empty row[22]}">
                <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                <c:if test="${year >= yearNow && monthNow <= 10 }"><td style="text-align:center">-</td></c:if>
                <c:if test="${year >= yearNow && monthNow > 10 }"><td style="text-align:center">No Change</td></c:if>
            </c:when>
            <c:when test="${!empty row[21]}">
                <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[21]}</td>
            </c:when>
        </c:choose>
    </c:when>
    <c:when test="${row[30] ne '5'}">
        <c:choose>
            <c:when test="${empty row[21]}">
                <c:choose>
                    <c:when test="${row[31] eq 'waive'}"><td style="text-align:center" bgcolor="#9999ff"></td></c:when>
                    <c:when test="${empty row[22]}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:when>
                    <c:when test="${!empty row[22]}">
                        <c:if test="${row[22]<dateNow}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:if>
                        <c:if test="${row[22]>=dateNow}"><td style="text-align:center">-</td></c:if>
                    </c:when>
                </c:choose>
            </c:when>
            <c:when test="${!empty row[21]}">
                <c:if test="${row[22]>=row[21]}"><td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[21]}</td></c:if>
                <c:if test="${row[22]<row[21]}"><td style="text-align:center"><img src="../images/windows-error_16x16.gif"/><br>${row[21]}</td></c:if>
                <c:if test="${empty row[22]}"><td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[21]}</td></c:if>
            </c:when>
        </c:choose>
    </c:when>
</c:choose>


<c:choose>
    <c:when test="${row[30] eq '8'}">
        <td style="text-align:center"></td>
    </c:when>
    <c:when test="${row[30] eq '5'}">
        <c:choose>
            <c:when test="${empty row[23] && !empty row[24]}">
                <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                <c:if test="${year >= yearNow && monthNow <= 11 }"><td style="text-align:center">-</td></c:if>
                <c:if test="${year >= yearNow && monthNow > 11 }"><td style="text-align:center">No Change</td></c:if>
            </c:when>
            <c:when test="${empty row[23] && empty row[24]}">
                <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                <c:if test="${year >= yearNow && monthNow <= 11 }"><td style="text-align:center">-</td></c:if>
                <c:if test="${year >= yearNow && monthNow > 11 }"><td style="text-align:center">No Change</td></c:if>
            </c:when>
            <c:when test="${!empty row[23]}">
                <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[23]}</td>
            </c:when>
        </c:choose>
    </c:when>
    <c:when test="${row[30] ne '5'}">
        <c:choose>
            <c:when test="${empty row[23]}">
                <c:choose>
                    <c:when test="${row[31] eq 'waive'}"><td style="text-align:center" bgcolor="#9999ff"></td></c:when>
                    <c:when test="${empty row[24]}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:when>
                    <c:when test="${!empty row[24]}">
                        <c:if test="${row[24]<dateNow}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:if>
                        <c:if test="${row[24]>=dateNow}"><td style="text-align:center">-</td></c:if>
                    </c:when>
                </c:choose>
            </c:when>
            <c:when test="${!empty row[23]}">
                <c:if test="${row[24]>=row[23]}"><td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[23]}</td></c:if>
                <c:if test="${row[24]<row[23]}"><td style="text-align:center"><img src="../images/windows-error_16x16.gif"/><br>${row[23]}</td></c:if>
                <c:if test="${empty row[24]}"><td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[23]}</td></c:if>
            </c:when>
        </c:choose>
    </c:when>
</c:choose>


<c:choose>
    <c:when test="${row[30] eq '8'}">
        <td style="text-align:center"></td>
    </c:when>
    <c:when test="${row[30] eq '5'}">
        <c:choose>
            <c:when test="${empty row[25] && !empty row[26]}">
                <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                <c:if test="${year >= yearNow && monthNow <= 12 }"><td style="text-align:center">-</td></c:if>
                <c:if test="${year >= yearNow && monthNow > 12 }"><td style="text-align:center">No Change</td></c:if>
            </c:when>
            <c:when test="${empty row[25] && empty row[26]}">
                <c:if test="${year < yearNow}"><td style="text-align:center">No Change</td></c:if>
                <c:if test="${year >= yearNow && monthNow <= 12 }"><td style="text-align:center">-</td></c:if>
                <c:if test="${year >= yearNow && monthNow > 12 }"><td style="text-align:center">No Change</td></c:if>
            </c:when>
            <c:when test="${!empty row[25]}">
                <td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[25]}</td>
            </c:when>
        </c:choose>
    </c:when>
    <c:when test="${row[30] ne '5'}">
        <c:choose>
            <c:when test="${empty row[25]}">
                <c:choose>
                    <c:when test="${row[31] eq 'waive'}"><td style="text-align:center" bgcolor="#9999ff"></td></c:when>
                    <c:when test="${empty row[26]}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:when>
                    <c:when test="${!empty row[26]}">
                        <c:if test="${row[26]<dateNow}"><td style="text-align:center" bgcolor="#a9a9a9"></td></c:if>
                        <c:if test="${row[26]>=dateNow}"><td style="text-align:center">-</td></c:if>
                    </c:when>
                </c:choose>
            </c:when>
            <c:when test="${!empty row[25]}">
                <c:if test="${row[26]>=row[25]}"><td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[25]}</td></c:if>
                <c:if test="${row[26]<row[25]}"><td style="text-align:center"><img src="../images/windows-error_16x16.gif"/><br>${row[25]}</td></c:if>
                <c:if test="${empty row[26]}"><td style="text-align:center"><img src="../images/windows-success_16x16.gif"/><br>${row[25]}</td></c:if>
            </c:when>
        </c:choose>
    </c:when>
</c:choose>

</tr>
</c:forEach>
</table>
</c:if>
<c:set var="sendingWaiveColor" value="#9999ff"/>
<c:set var="noTransactionColor" value="#baf6d8"/>
<table width="100%">
    <c:set var="colorDescHeight" value="22px"/>
    <tr>
        <td colspan="2"></td>
    </tr>
    <tr style="height:${colorDescHeight}">
        <td bgcolor="${sendingWaiveColor}" width="${resultWidth}px">&nbsp;</td>
        <td><strong>Sending Waive</strong></td>
    </tr>
    <%--<tr style="height:${colorDescHeight}">--%>
        <%--<td bgcolor="#ffccff">&nbsp;</td>--%>
        <%--<td><strong>ไม่ใช้ Dataset นี้</strong></td>--%>
    <%--</tr>--%>

</table>
<br/>

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