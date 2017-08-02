<%@ page import="th.go.mof.fpo.Constants" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<html>
<head>
<title>Simple jsp page</title>
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="0">
<link rel="stylesheet" type="text/css" href="../includes/css/style.css">
<link href="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.js"></script>        
<script type="text/javascript" src="../includes/js/tp/utils.js"></script>
<script type="text/javascript" src="../includes/js/jquery.js"></script>
<script type="text/javascript">
    function confirmDelete(id) {
        if (confirm("Do you want to delete this record ?")) {
            document.getElementById('id').value = id;
            return true;
        }
        return false;
    }
    function resetForm() {
        thisForm.sfi.selectedIndex = 0;
        thisForm.dsTitle.selectedIndex = 0;
        thisForm.dateFrom.value='';
        thisForm.dateTo.value='';
    }

    function setId(id) {
        document.getElementById('id').value = id;
    }

</script>
</head>
<body>
<s:form action="sending_waive" id="sending_waive_list">
    <s:hidden name="id" id="id"/>
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
                        <td width="43" background="../images/table004.gif"><img src="../images/table004.gif" width="43"  height="37" alt=""></td>
                        <td>
                            <table width="100%" border="0" align="center" style="height:100%">
                                <tr>
                                    <td style="height:100%">
                                        <%--content here--%>
                                        <table width="100%">
                                            <tr>
                                                <td width="50%" align="left"><b>Sending Waive</b></td>
                                                <td width="50%" align="right">
                                                    <c:if test="${sessionScope.menuAuthentication.sendingWaiveManage}">
                                                        <%--<s:submit value="Add Sending Waive" id="btnAdd" action="sending_waive_detail"cssClass="button" cssStyle="width:150px" onclick="setId('')"/>--%>
                                                        <input type="button" value="Add Sending Waive" id="btnAdd" style="width:150px" class="button" onclick="letsGo('sending_waive_detail.action','')"/>
                                                    </c:if>
                                                </td>
                                            </tr>
                                        </table>
                                        <table width="100%" class="displayTable">
                                            <tr class="bgGreen2">
                                                <td width="20%" class="label">
                                                    SFIs Name :
                                                </td>
                                                <td width="80%" colspan="3">
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
                                                <td class="label">
                                                    Dataset Name :
                                                </td>
                                                <td colspan="3">
                                                    <s:select name="dsTitle"
                                                              id="dsTitle"
                                                              list="dsTitleList"
                                                              listKey="id"
                                                              listValue="name"
                                                              headerKey=""
                                                              headerValue="----------  Please Select  ----------"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td class="label">
                                                    Dataset Date From :
                                                </td>
                                                <td>
                                                    <s:textfield name="dateFrom" id="dateFrom" readonly="true" size="8"/>
                                                    <img alt="" border="0" src="../images/dd.gif" name="dateBtn"
                                                         width="15" height="15"
                                                         onclick="displayCalendar(document.forms[0].dateFrom,'dd/mm/yyyy',this);"
                                                         align="absmiddle">
                                                </td>
                                                <td class="label">
                                                    To :
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
                                                <td width="100%" align="center">
                                                    <s:submit method="search" id="btnSearch" cssClass="button" value="Search"/>&nbsp;
                                                    <button class="button" onclick="resetForm()">Reset</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <display:table name="sendingWaiveList" id="row" export="false" cellpadding="0" cellspacing="1" class="displayTag" style="width:100%" pagesize="15" requestURI="sending_waive.action">
                                                        <display:column title="SFIs Name" property="sfi.nameTh" headerClass="headerTable" style="text-align:left" sortable="true"/>
                                                        <display:column title="Dataset Name" property="dsTitle.name" headerClass="headerTable" style="text-align:left" sortable="true"/>
                                                        <display:column title="Dataset Date From" property="dateFrom" format="{0,date,dd MMM yyyy}" headerClass="headerTable" style="text-align:center" sortable="true"/>
                                                        <display:column title="Dataset Date To" property="dateTo" format="{0,date,dd MMM yyyy}" headerClass="headerTable" style="text-align:center" sortable="true"/>
                                                        <display:column title="Enable" headerClass="headerTable" style="width:5%;text-align:center" sortable="true">
                                                            <c:if test="${row.enable}">
                                                                Enable
                                                            </c:if>
                                                            <c:if test="${not row.enable}">
                                                                Disable
                                                            </c:if>
                                                        </display:column>
                                                        <c:if test="${sessionScope.menuAuthentication.sendingWaiveManage}">
                                                            <display:column title="Edit" headerClass="headerTable" style="text-align:center;width:5%">
                                                                <img src=../images/edit.gif border="no" align="" title="Edit" onclick="letsGo('sending_waive_detail.action','${row.id}')" style="cursor:pointer">
                                                            </display:column>
                                                            <display:column title="Delete" headerClass="headerTable" style="text-align:center;width:5%">
                                                                <div onClick="return confirmDelete('${row.id}');">
                                                                    <s:submit type="image" src="../images/delete.gif" method="delete" title="Delete"/>
                                                                </div>
                                                            </display:column>
                                                        </c:if>
                                                    </display:table>
                                                </td>
                                            </tr>
                                        </table>
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

    jq("#sending_waive_list").keypress(function(event){
      if(event.keyCode == 13){
          jq("#btnAdd").attr('disabled','disabled');
          jq("#btnSearch").click();
      }
    })

    function letsGo(action, id) {
        pageLink1 = action + '?id=' + id;

        if (document.getElementById('sfi') != null) {
            pageLink1 += '&<%=Constants.SendingWaiveField.SFI_HIDDEN%>=' + document.getElementById("sfi").value;
        }
        if (document.getElementById('dsTitle') != null) {
            pageLink1 += '&<%=Constants.SendingWaiveField.DATASET_HIDDEN%>=' + document.getElementById("dsTitle").value;
        }
        if (document.getElementById('dateFrom') != null) {
            pageLink1 += '&<%=Constants.SendingWaiveField.DATASET_DATE_FROM_HIDDEN%>=' + document.getElementById("dateFrom").value;
        }
        if (document.getElementById('dateTo') != null) {
            pageLink1 += '&<%=Constants.SendingWaiveField.DATASET_DATE_TO_HIDDEN%>=' + document.getElementById("dateTo").value;
        }
        location.href= pageLink1;
        return false;
    }

</script>
</body>
</html>