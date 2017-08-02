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
    function window.onload() {
        init_cal('ENz');
    }
</script>
<style type="text/css">
    .kpiTable {
        border: 1px solid #5A9113;
        border-spacing:0;
        border-collapse:collapse;
    }
    .kpiTd {
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
<s:form action="kpi_report_structured_summary" id="kpi_report_structured_summary" name="kpi_report_structured_summary" validate="false">
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
                                                <b>KPI Report Structured Summary</b>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <table width="100%" class="displayTable">
                                                    <tr class="bgGreen2">
                                                        <td height="28px" width="20%" class="label">
                                                            Year :
                                                        </td>
                                                        <td width="80%">
                                                            <s:select list="yearList" name="year"/>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                    <br>
                                    <div align="center">
                                        <s:submit method="search" id="btnSearch" cssClass="button" value="Search"/>
                                    </div>
                                    <br>

                                    <c:set var="sfiNameWidth" value="100"/>
                                    <c:set var="resultWidth" value="70"/>
                                    <c:set var="tableWidth" value="${sfiNameWidth + (resultWidth * 13)}"/>

                                    <c:set var="sfiNameWidth" value="${sfiNameWidth}px"/>
                                    <c:set var="resultWidth" value="${resultWidth}px"/>
                                    <c:set var="tableWidth" value="${tableWidth}px"/>

                                    <c:if test="${not empty requestScope.dtoList}">
                                    <table class="kpiTable" width="${tableWidth}">
                                        <tr class="headerTable">
                                            <td class="kpiTd" width="${sfiNameWidth}">SFIs / เดือน</td>
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
                                        <c:set var="index" value="1"/>
                                        <c:forEach items="${requestScope.dtoList}" var="row">
                                        <tr>
                                            <td class="kpiTd"><c:out value="${row.sfi.abbreviationTh}"/></td>
                                            <td align="center" class="kpiTd">
                                                <%--${row.january.displayMessage}--%>
                                            </td>
                                            <td align="center" class="kpiTd">
                                                <%--${row.february.displayMessage}--%>
                                            </td>
                                            <td align="center" class="kpiTd">
                                                <%--${row.march.displayMessage}--%>
                                            </td>
                                            <td align="center" class="kpiTd">
                                                <%--${row.april.displayMessage}--%>
                                            </td>
                                            <td align="center" class="kpiTd">
                                                <%--${row.may.displayMessage}--%>
                                            </td>
                                            <td align="center" class="kpiTd">
                                                <%--${row.june.displayMessage}--%>
                                            </td>
                                            <td align="center" class="kpiTd">
                                                <%--${row.july.displayMessage}--%>
                                            </td>
                                            <td align="center" class="kpiTd">
                                                <%--${row.august.displayMessage}--%>
                                            </td>
                                            <td align="center" class="kpiTd">
                                                <%--${row.september.displayMessage}--%>
                                            </td>
                                            <td align="center" class="kpiTd">
                                                <%--${row.october.displayMessage}--%>
                                            </td>
                                            <td align="center" class="kpiTd">
                                                <%--${row.november.displayMessage}--%>
                                            </td>
                                            <td align="center" class="kpiTd">
                                                <%--${row.december.displayMessage}--%>
                                            </td>
                                        </tr>
                                        </c:forEach>
                                    </table>
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
    var jq = jQuery.noConflict();

    jq("#kpi_report_structured").keypress(function(event){
      if(event.keyCode == 13){
          jq("#btnSearch").click();
      }
    });
    var thisForm = document.getElementsByTagName('form')[0];
</script>
</body>
</html>