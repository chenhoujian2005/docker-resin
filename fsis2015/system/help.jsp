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
        thisForm.title.value = '';
    }
</script>
</head>
<body>
<s:form action="help" id="help">
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
                                                    <b>Help</b>
                                                </td>
                                                <td width="75%" align="right">
                                                    <c:if test="${sessionScope.menuAuthentication.helpManage}">
                                                        <%--<s:submit method="add" id="butAdd" value="Add Help" cssClass="button" onclick="setId('');" cssStyle="width:150px"/>--%>
                                                     <input type="button" id="btnNew" class="button" value="Add Help" style="width:150px" onclick="letsGo('help_detail.action', '',null)"/>
                                                    </c:if>
                                                </td>
                                            </tr>
                                        </table>
                                        <table width="100%" class="displayTable">
                                            <tr class="bgGreen2">
                                                <td class="label" width="20%">
                                                    Action Date From :
                                                </td>
                                                <td width="80%">
                                                    <s:textfield name="dateFrom" id="dateFrom" readonly="true" size="8"/>
                                                    <img alt="" border="0" src="../images/dd.gif" name="dateBtn"
                                                         width="15" height="15"
                                                         onclick="displayCalendar(document.forms[0].dateFrom,'dd/mm/yyyy',this);"
                                                         align="absmiddle">
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label">
                                                    Action Date To :
                                                </td>
                                                <td>
                                                    <s:textfield name="dateTo" id="dateTo" readonly="true" size="8"/>
                                                    <img alt="" border="0" src="../images/dd.gif" name="dateBtn"
                                                         width="15" height="15"
                                                         onclick="displayCalendar(document.forms[0].dateTo,'dd/mm/yyyy',this);"
                                                         align="absmiddle">
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td class="label">
                                                    Title :
                                                </td>
                                                <td>
                                                    <s:textfield name="title" id="title" size="60"/>
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
                                                    <display:table name="helpDocList" id="row" export="false" cellpadding="0" cellspacing="1" class="displayTag" style="width:100%"pagesize="15" requestURI="help.action">
                                                        <display:column title="Action Date" property="actionDate" format="{0,date,dd MMM yyyy}" headerClass="headerTable" style="text-align:center;width:10%" sortable="true"/>
                                                        <display:column title="Title" property="title" headerClass="headerTable" style="text-align:left;width:25%" sortable="true"/>
                                                        <display:column title="Description" property="description" headerClass="headerTable" style="text-align:left;width:35%" sortable="true"/>
                                                        <display:column title="File" headerClass="headerTable" style="text-align:left;width:15%" sortable="true">
                                                            <a href="../downloadFile.sl?fileName=${row.fileName}&originalFileName=${row.originalFileName}&systemName=<%=Constants.Fsis2010UploadDirectory.HELP%>" title="Download attachment file">${row.originalFileName}</a>
                                                        </display:column>
                                                        <c:if test="${sessionScope.menuAuthentication.helpManage}">
                                                            <display:column title="Edit" headerClass="headerTable" style="text-align:center;width:8%">
                                                                <%--<a href="help_detail.action?id=${row.id}"> <img src=../images/edit.gif border="no" align="" title="Edit"> </a>--%>
                                                                <img src=../images/edit.gif border="no" align="" onclick="letsGo('help_detail.action','${row.id}',null)" style="cursor:pointer">
                                                            </display:column>
                                                            <display:column title="Delete" headerClass="headerTable" style="text-align:center;width:8%">
                                                                <div onmouseover="setId('${row.id}');">
                                                                    <s:submit method="delete" type="image" src="../images/delete.gif" onclick="return confirm('Do you want to delete this record ?')" title="Delete"/>
                                                                </div>
                                                            </display:column>
                                                        </c:if>
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
       var title = document.getElementById("title").value;
 
       pageLink1 = action + '?id=' + id;
       pageLink2 = '&<%=Constants.HelpField.DATE_FROM_HIDDEN%>=' + dateFrom;
       pageLink3 = '&<%=Constants.HelpField.DATE_TO_HIDDEN%>=' + dateTo;
       pageLink4 = '&<%=Constants.HelpField.TITLE_HIDDEN%>=' + title;

       location.href = pageLink1.concat(pageLink2,pageLink3,pageLink4);
   }
</script>
</body>
</html>
</body>
</html>