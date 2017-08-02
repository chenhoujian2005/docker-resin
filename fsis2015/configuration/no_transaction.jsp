<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ page import="th.go.mof.fpo.Constants" %>
<html>
<head>
<title>Simple jsp page</title>
<script type="text/javascript" src="../includes/js/jquery.js"></script>
<link rel="stylesheet" type="text/css" href="../includes/css/style.css">
<script type="text/javascript" src="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.js"></script>
<link href="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
    function resetForm() {
        thisForm.sfi.selectedIndex = 0;
        thisForm.dsTitle.selectedIndex = 0;
        thisForm.dateFrom.value = '';
        thisForm.dateTo.value = '';
    }
    function setId(id){
        thisForm.id.value = id;
    }
</script>
</head>
<body>
<s:form action="no_transaction" id="no_transaction" name="no_transaction" validate="false">
    <s:hidden id="id" name="id"/>
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
                                                <td width="50%">
                                                    <b>No Transaction</b>
                                                </td>
                                                <td width="50%" align="right">
                                                    <c:if test="${sessionScope.menuAuthentication.noTransactionManage}">
                                                        <%--<s:submit action="no_transaction_detail" id="btnNew" value="Add No Transaction" cssClass="button" cssStyle="width:150px" onmouseover="setId('')"/>--%>
                                                        <input type="button" id="btnNew" name="btnNew"  value="Add No Transaction" class="button" style="width:150px" onclick="letsGo('no_transaction_detail.action','')"/>
                                                    </c:if>
                                                </td>
                                            </tr>
                                        </table>
                                        <table width="100%" class="displayTable">
                                            <tr class="bgGreen2">
                                                <td class="label" width="20%">
                                                    SFIs Name :
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
                                                    <%--<s:select list="sfiList"--%>
                                                        <%--name="sfi"--%>
                                                        <%--id="sfi"--%>
                                                        <%--listKey="id"--%>
                                                        <%--listValue="displayNameCodeAndCode"--%>
                                                        <%--headerKey=""--%>
                                                        <%--headerValue="-------------------------------------  Please Select  -------------------------------------"/>--%>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label">
                                                    Dataset Name :
                                                </td>
                                                <td>
                                                    <s:select list="dsTitleList"
                                                        name="dsTitle"
                                                        id="dsTitle"
                                                        listKey="id"
                                                        listValue="name"
                                                        headerKey=""
                                                        headerValue="--  Please Select  --"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td class="label">
                                                    Dataset Date From :
                                                </td>
                                                <td colspan="2">
                                                    <s:textfield name="dateFrom" id="dateFrom" readonly="true" size="8"/>
                                                    <img alt="" border="0" src="../images/dd.gif" name="dateBtn"
                                                         width="15" height="15"
                                                         onclick="displayCalendar(document.forms[0].dateFrom,'dd/mm/yyyy',this);"
                                                         align="absmiddle">
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label">
                                                    Dataset Date To :
                                                </td>
                                                <td colspan="2">
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
                                                    <s:submit method="search" cssClass="button" id="btnSearch" value="Search"/>&nbsp;
                                                    <button class="button" onClick="resetForm()">Reset</button>
                                                </td>
                                            </tr>
                                        </table>
                                        <c:if test="${requestScope.noTransactionList ne null}">
                                            <display:table name="noTransactionList" id="row" export="false" class="displayTag" requestURI="no_transaction.action" style="width:100%;text-align:center" pagesize="20">
                                                <display:column title="SFIs Name" property="sfi.nameTh" style="width:45%;text-align:left" headerClass="headerTable" sortable="true"/>
                                                <display:column title="Dataset Name" property="dsTitle.name" style="width:12%;text-align:center" headerClass="headerTable" sortable="true"/>
                                                <display:column title="Dataset Date From" property="dateFrom" format="{0,date,dd MMM yyyy}" style="width:14%;text-align:center" headerClass="headerTable" sortable="true"/>
                                                <display:column title="Dataset Date To" property="dateTo" format="{0,date,dd MMM yyyy}" style="width:14%;text-align:center" headerClass="headerTable" sortable="true"/>
                                                <display:column title="Edit" style="width:7%;text-align:center" headerClass="headerTable" >
                                                    <%--<a href="no_transaction_detail.action?id=${row.id}" title="Edit"> <img src="../images/edit.gif " border="no"> </a>--%>
                                                    <img src="../images/edit.gif" border="no" align="" onclick="letsGo('no_transaction_detail.action','${row.id}')" style="cursor:pointer">
                                                </display:column>
                                                <display:column title="Delete" style="width:7%;text-align:center" headerClass="headerTable">
                                                    <div onMouseOver="setId('${row.id}');">
                                                        <s:submit method="delete" title="Delete" type="image" src="../images/delete.gif" onclick="return confirm('Do you want to delete this record ?')"/>
                                                    </div>
                                                </display:column>
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

    var jq = jQuery.noConflict();

    jq("#no_transaction").keypress(function(event){
      if(event.keyCode == 13){
          jq("#btnNew").attr('disabled','disabled');
          jq("#btnSearch").click();
      }
    });

    function letsGo(action, id) {
        var sfi = document.getElementById("sfi").value;
        var dsTitle = document.getElementById("dsTitle").value;
        var dateFrom = document.getElementById("dateFrom").value;
        var dateTo = document.getElementById("dateTo").value;

        pageLink1 = action + '?id=' + id;
        pageLink2 = '&<%=Constants.NoTransactionField.SFI_HIDDEN%>=' + sfi;
        pageLink3 = '&<%=Constants.NoTransactionField.DATASET_NAME_HIDDEN%>=' + dsTitle;
        pageLink4 = '&<%=Constants.NoTransactionField.DATE_FROM_HIDDEN%>=' + dateFrom;
        pageLink5 = '&<%=Constants.NoTransactionField.DATE_TO_HIDDEN%>=' + dateTo;

        location.href = pageLink1.concat(pageLink2,pageLink3,pageLink4,pageLink5);
    }

</script>
</body>
</html>