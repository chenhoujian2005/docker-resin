<%--
  Created by IntelliJ IDEA.
  User: Witsanu
  Date: 25 ส.ค. 2557
  Time: 16:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="th.go.mof.fpo.Constants" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<html>
<head>
    <title>Simple jsp page</title>
    <link rel="stylesheet" type="text/css" href="../includes/css/style.css">
    <script type="text/javascript" src="../includes/js/jquery.js"></script>
    <script type="text/javascript" src="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.js"></script>
    <link href="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.css" rel="stylesheet" type="text/css">
    <script type="text/javascript">
        function setId(id){
            thisForm.id.value = id;
        }

        function resetForm(){
            thisForm.dateFrom.value = '';
            thisForm.dateTo.value = '';
        }
    </script>
</head>
<body>
<s:form action="csv_upload_view" id="csv_upload_view">
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
                        <td width="43" background="../images/table004.gif"><img src="../images/table004.gif" width="43" height="37" alt=""></td>
                        <td>
                            <table width="100%" border="0" align="center" style="height:100%">
                                <tr>
                                    <td>
                                            <%--content here--%>
                                        <table width="100%">
                                            <tr>
                                                <td width="25%">
                                                    <b>Upload CSV File for BI</b>
                                                </td>
                                                <td width="25%" align="right">
                                                    <c:if test="${sessionScope.menuAuthentication.uploadCSVFileFroBIManage}">
                                                        <%--<s:submit method="add" id="butAdd" value="Add Help" cssClass="button" onclick="setId('');" cssStyle="width:150px"/>--%>
                                                        <input type="button" id="btnNew" class="button" value="Upload CSV File for BI" style="width:150px" onclick="letsGo('csv_upload.action', '',null)"/>
                                                    </c:if>
                                                </td>
                                            </tr>
                                        </table>
                                        <table width="100%" class="displayTable">
                                            <tr class="bgGreen2">
                                                <td class="label" width="25%">
                                                    Upload Date From :
                                                </td>
                                                <td width="25%">
                                                    <s:textfield name="dateFrom" id="dateFrom" readonly="true" size="8"/>
                                                    <img alt="" border="0" src="../images/dd.gif" name="dateBtn"
                                                         width="15" height="15"
                                                         onclick="displayCalendar(document.forms[0].dateFrom,'dd/mm/yyyy',this);"
                                                         align="absmiddle">
                                                </td>
                                                <td class="label">
                                                    Upload Date To :
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
                                                <td colspan="2" align="center">
                                                    <s:submit method="search" id="btnSearch" cssClass="button" value="Search"/>&nbsp;
                                                    <button class="button" onclick="resetForm()">Reset</button>

                                                </td>
                                            </tr>
                                        </table>
                                        <table width="100%">
                                            <tr>
                                                <td colspan="2">
                                                    <display:table name="uploadBiList" id="row" export="false" cellpadding="0" cellspacing="1" class="displayTag" style="width:100%" pagesize="15" requestURI="help.action">

                                                        <display:column title="Bi Title" property="biTitle" headerClass="headerTable" style="text-align:left;width:15%" sortable="true"/>
                                                        <display:column title="Description" property="description" headerClass="headerTable" style="text-align:left;width:35%" sortable="true"/>
                                                        <display:column title="FileName" property="fileName" headerClass="headerTable" style="text-align:left;width:15%" sortable="true" />
                                                        <display:column title="Upload Path" property="uploadPath" headerClass="headerTable" style="text-align:left;width:10%" sortable="true" />
                                                        <display:column title="Upload Date" property="uploadDate" format="{0,date,dd MMM yyyy}" headerClass="headerTable" style="text-align:center;width:10%" sortable="true"/>
                                                        <display:column title="Upload By" property="uploadBy" headerClass="headerTable" style="text-align:left;width:15%" sortable="true" />


                                                    </display:table>
                                                </td>
                                            </tr>
                                        </table>
                                            <%--content here--%>
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

    var jq = jQuery.noConflict();

    jq("#help").keypress(function(event){
        if(event.keyCode == 13){
            jq("#butAdd").attr('disabled','disabled');
            jq("#btnSearch").click();
        }
    });


    function letsGo(action, id) {
        var dateFrom  = document.getElementById("dateFrom").value;
        var dateTo = document.getElementById("dateTo").value;

        pageLink1 = action + '?id=' + id;
        pageLink2 = '&<%=Constants.UploadCsvField.DATE_FROM_HIDDEN%>=' + dateFrom;
        pageLink3 = '&<%=Constants.UploadCsvField.DATE_TO_HIDDEN%>=' + dateTo;

        location.href = pageLink1.concat(pageLink2,pageLink3);
    }
</script>
</body>
</html>
</body>
</html>