<%--
  Created by IntelliJ IDEA.
  User: iRambo
  Date: May 8, 2012
  Time: 3:12:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
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
<s:form action="monitoring_unstructured" id="monitoring_unstructured" name="monitoring_unstructured" validate="false">
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
                        <td width="43" background="../images/table004.gif"><img src="../images/table004.gif" width="43"
                                                                                height="37" alt=""></td>
                        <td>
                            <table width="100%" border="0" align="center" style="height:100%">
                                <tr>
                                    <td>
                                            <%--content here--%>
                                        <table width="100%">
                                            <tr>
                                                <td width="100%" colspan="2">
                                                    <b>Monitoring Unstructured</b>
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
                                                                                  id="sfi"
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
                                                            <td class="label">Year<span class="require_field">*</span> :
                                                            </td>
                                                            <td><s:select list="yearList" id="year" name="year"/></td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                        <table width="100%">
                                            <tr>
                                                <td width="100%" align="center">
                                                    <s:submit method="search" id="btnSearch" cssClass="button"
                                                              value="Search"
                                                              onclick="return validateForm()"/>&nbsp;
                                                    <button class="button" onclick="resetForm()">Reset</button>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="20px">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <c:if test="${not empty requestScope.dtoList}">
                                        <table class="kpiTable" width="100%">
                                            <tr>
                                                <td colspan="6" align="left">
                                                    <input type="button" class="button" value="Print"  onclick="window.print();return false;"/>
                                                    <%--<a class="button"--%>
                                                       <%--style="height:18px;width:150px;vertical-align:bottom;text-align:center;"--%>
                                                       <%--href="../report/monitoring_unstructured_convert_to_excel.action?sfi=${requestScope.sfi}&year=${requestScope.year}">--%>
                                                        <%--&nbsp;Convert To Excel&nbsp;</a>--%>
                                                    <input type="button" value="Convert To Excel" class="button" id="convertExcel"  style="width:150px" onclick="letsGo('monitoring_unstructured_convert_to_excel.action')"/>
                                                </td>
                                            </tr>
                                            <tr class="headerTable">
                                                <td class="kpiTd" style="width:43%;">Title</td>
                                                <td class="kpiTd" style="width:13%;">Frequency</td>
                                                <td class="kpiTd" style="width:17%;">Submit Date</td>
                                                <td class="kpiTd" style="width:10%;">Dataset Date</td>
                                                <td class="kpiTd" style="width:10%;">Due Date</td>
                                                <td class="kpiTd" style="width:7%;">Sending Status</td>
                                            </tr>
                                            <c:forEach items="${requestScope.dtoList}" var="row">
                                                <tr>
                                                    <td class="kpiTd">${row.nameUnstructured}</td>
                                                        <%--${row.nameUnstructured}--%>
                                                    <td align="center" class="kpiTd">
                                                        <c:choose>
                                                            <c:when test="${not empty row.frequencyName}">
                                                                <c:out value="${row.frequencyName}"/>
                                                            </c:when>
                                                            <c:otherwise> -  </c:otherwise>
                                                        </c:choose>
                                                    </td>
                                                    <c:choose>
                                                        <c:when test='${not empty row.displayMessage}'>
                                                            <td align="center" class="kpiTd">${row.displayMessage}</td>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <td align="center" class="kpiTd">&nbsp;&nbsp; -  &nbsp;&nbsp;</td>
                                                        </c:otherwise>
                                                    </c:choose>
                                                    <td align="center" class="kpiTd">
                                                        <c:choose>
                                                            <c:when test="${not empty row.dsDate}">
                                                                <fmt:formatDate value="${row.dsDate}"  pattern="dd MMM yyyy"/>
                                                            </c:when>
                                                            <c:otherwise>  -  </c:otherwise>
                                                        </c:choose>
                                                    </td>
                                                    <td align="center" class="kpiTd">
                                                        <c:choose>
                                                            <c:when test="${not empty row.dueDate}">
                                                                <fmt:formatDate value="${row.dueDate}"  pattern="dd MMM yyyy"/>
                                                            </c:when>
                                                            <c:otherwise>  - </c:otherwise>
                                                        </c:choose>
                                                    </td>
                                                    <td align="center" class="kpiTd"> ${row.sendingStatus} </td>

                                                </tr>
                                            </c:forEach>
                                        </table>
                                        </c:if>

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
    var jq = jQuery.noConflict();

    jq("#kpi_report_structured").keypress(function (event) {
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

        location.href = pageLink1.concat(pageLink2);

    }
</script>
</body>
</html>