<%--
  Created by IntelliJ IDEA.
  User: Arisara
  Date: 5/21/14
  Time: 1:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="th.go.mof.fpo.Constants" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="sx" uri="/struts-tags" %>
<html>
<head>
    <title>Simple jsp page</title>
    <script type="text/javascript" src="../includes/js/jquery.js"></script>
    <script type="text/javascript" src="../includes/js/tp/utils.js"></script>
    <script type="text/javascript" src="../includes/js/jquery.min.js"></script>
    <script type="text/javascript" src="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.js"></script>
    <script type='text/javascript' src='../dwr/engine.js'></script>
    <script type='text/javascript' src='../dwr/util.js'></script>
    <script type='text/javascript' src='../dwr/interface/AjaxManager.js'></script>
    <link href="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="../includes/css/style.css">
    <script type="text/javascript">
        function changeOrderBy() {
            jq("#btnSearch").click();
        }

        function resetForm(){
            thisForm.datasetDateFrom.value = "";
            thisForm.datasetDateTo.value = "";
            thisForm.dueDateFrom.value = "";
            thisForm.dueDateTo.value = "";
            thisForm.uploadDateFrom.value = "";
            thisForm.uploadDateTo.value = "";
            thisForm.sfi.selectedIndex = 0;
            thisForm.group.value = '';
            thisForm.title.value = '';
            thisForm.subTitle.value = '';
            thisForm.subTitle2.value = '';
            thisForm.subTitle3.value = '';
            thisForm.subTitle4.value = '';
            thisForm.subTitle5.value = '';
            thisForm.subTitle6.value = '';
            thisForm.subTitle7.value = '';
        }

        function validateForm(){
            if(thisForm.datasetDateFrom.value == ''){
                alert('Please select Dataset Date From');
                return false;
            }
            if(thisForm.datasetDateTo.value == ''){
                alert('Please select Dataset Date To');
                return false;
            }
            if(thisForm.sfi.value == ''){
                alert('Please select SFIs Name');
                return false;
            }
            return true;
        }


        function findTitle(id, zone, keyName, keyValue, clearZones) {

            var vid = document.getElementById('unstructureVersionId').value;
            AjaxManager.findUnstructureTitleByIdDistrinct(id, function (data) {
                prepareOption(zone, data, keyName, keyValue, clearZones);
            });
        }


        function prepareOption(zone, data, keyName, keyValue, clearZones) {
            dwr.util.removeAllOptions(zone);
            document.getElementById(zone).options[0] = new Option('------------  Please Select  ------------', '');
            dwr.util.addOptions(zone, data, keyName, keyValue);
            if (clearZones != null) {
                for (var i = 0; i < clearZones.length; i++) {
                    dwr.util.removeAllOptions(clearZones[i]);
                    document.getElementById(clearZones[i]).options[0] = new Option('------------  Please Select  ------------', '');
                }
            }
        }


    </script>
</head>
<body>
<s:form action="document_status_log_unstructured" id="document_status_log_unstructured">
<s:hidden name="unstructureVersionId" id="unstructureVersionId"/>
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
        <td><b>Document Status Unstructured</b></td>
    </tr>
</table>
<table width="100%" class="displayTable">
    <tr class="bgGreen2">
        <td width="20%" class="label">
            Dataset Date From<span class="require_field">*</span> :
        </td>
        <td width="20%">
            <s:textfield name="datasetDateFrom" size="8" readonly="true"/>
            <img border="0" src="../images/dd.gif" name="dateBtn" width="15" height="15"
                 onclick="displayCalendar(document.forms[0].datasetDateFrom,'dd/mm/yyyy',this);"
                 align="absmiddle">
        </td>
        <td width="5%" class="label">
            To<span class="require_field">*</span> :
        </td>
        <td width="55%">
            <s:textfield name="datasetDateTo" size="8" readonly="true"/>
            <img border="0" src="../images/dd.gif" name="dateBtn" width="15" height="15"
                 onclick="displayCalendar(document.forms[0].datasetDateTo,'dd/mm/yyyy',this);"
                 align="absmiddle">
        </td>
    </tr>
    <tr class="bgGreen1">
        <td class="label">
            Due Date From :
        </td>
        <td>
            <s:textfield name="dueDateFrom" size="8" readonly="true"/>
            <img border="0" src="../images/dd.gif" name="dateBtn" width="15" height="15"
                 onclick="displayCalendar(document.forms[0].dueDateFrom,'dd/mm/yyyy',this);"
                 align="absmiddle">
        </td>
        <td class="label">
            To :
        </td>
        <td>
            <s:textfield name="dueDateTo" size="8" readonly="true"/>
            <img border="0" src="../images/dd.gif" name="dateBtn" width="15" height="15"
                 onclick="displayCalendar(document.forms[0].dueDateTo,'dd/mm/yyyy',this);"
                 align="absmiddle">
        </td>
    </tr>
    <tr class="bgGreen2">
        <td class="label">
            Upload Date From :
        </td>
        <td>
            <s:textfield name="uploadDateFrom" size="8" readonly="true"/>
            <img border="0" src="../images/dd.gif" name="dateBtn" width="15" height="15"
                 onclick="displayCalendar(document.forms[0].uploadDateFrom,'dd/mm/yyyy',this);"
                 align="absmiddle">
        </td>
        <td class="label">
            To :
        </td>
        <td>
            <s:textfield name="uploadDateTo" size="8" readonly="true"/>
            <img border="0" src="../images/dd.gif" name="dateBtn" width="15" height="15"
                 onclick="displayCalendar(document.forms[0].uploadDateTo,'dd/mm/yyyy',this);"
                 align="absmiddle">
        </td>
    </tr>
    <tr class="bgGreen1">
        <td class="label">
            SFIs Name<span class="require_field">*</span> :
        </td>
        <td colspan="3">
            <c:if test="${sessionScope.userLogin.sfi.id eq 000}" >
                <s:select list="sfiList"
                          name="sfi"
                          listKey="id"
                          listValue="displayNameCodeAndCode"
                          headerKey=""
                          headerValue="-------------------------------------  Please Select  -------------------------------------"/>
            </c:if>
            <c:if test="${sessionScope.userLogin.sfi.id ne 000}">
                <s:hidden name="sfi"/>
                ${requestScope.sfiName}
            </c:if>
        </td>
    </tr>
    <%--<tr class="bgGreen2">--%>
        <%--<td class="label">--%>
            <%--Dataset Name :--%>
        <%--</td>--%>
        <%--<td colspan="3">--%>
            <%--<s:select list="dsTitleList"--%>
                      <%--name="dsTitle"--%>
                      <%--listKey="id"--%>
                      <%--listValue="name"--%>
                      <%--headerKey=""--%>
                      <%--headerValue="-  Please Select  -"/>--%>
        <%--</td>--%>
    <%--</tr>--%>

    <tr class="${bgGreen}">
        <td class="label">Group :</td>
        <td colspan="3">
            <s:select list="groupList"
                      name="group"
                      listKey="unstructuredId"
                      listValue="name"
                      headerKey=""
                      headerValue="------------  Please Select  ------------"
                      onchange="findTitle(this.value,'title','id','name');"/>
        </td>
    </tr>

    <tr class="${bgGreen}">
        <td class="label">Title :</td>
        <td colspan="3">
            <s:select list="titleList"
                      name="title"
                      id="title"
                      listKey="unstructuredId"
                      listValue="name"
                      headerKey=""
                      headerValue="------------  Please Select  ------------"
                      onchange="findTitle(this.value,'subTitle','id','name');"/>
        </td>
    </tr>
    <tr class="${bgGreen}">
        <td class="label">Sub Title :</td>
        <td colspan="3">
            <s:select list="subTitleList"
                      name="subTitle"
                      id="subTitle"
                      listKey="unstructuredId"
                      listValue="name"
                      headerKey=""
                      headerValue="------------  Please Select  ------------"
                      onchange="findTitle(this.value,'subTitle2','id','name');"/>
        </td>
    </tr>

    <c:choose>
        <c:when test="${level eq 3}">
            <tr class="${bgGreen}">
                <td class="label">Sub Title2 :</td>
                <td colspan="3">
                    <s:select list="subTitle2List"
                              name="subTitle2"
                              id="subTitle2"
                              listKey="unstructuredId"
                              listValue="name"
                              headerKey=""
                              headerValue="------------  Please Select  ------------"/>
                </td>
            </tr>
        </c:when>
        <c:when test="${level > 3}">
            <tr class="${bgGreen}">
                <td class="label">Sub Title2 :</td>
                <td colspan="3">
                    <s:select name="subTitle2"
                              id="subTitle2"
                              list="subTitle2List"
                              listKey="unstructuredId"
                              listValue="name"
                              headerKey=""
                              headerValue="------------  Please Select  ------------"
                              onchange="findTitle(this.value,'subTitle3','id','name');"/>
                </td>
            </tr>
        </c:when>
    </c:choose>
    <c:choose>
        <c:when test="${level eq 4}">
            <tr class="${bgGreen}" id="g3">
                <td class="label">Sub Title3 :</td>
                <td colspan="3">
                    <s:select name="subTitle3"
                              id="subTitle3"
                              list="subTitle3List"
                              listKey="unstructuredId"
                              listValue="name"
                              headerKey=""
                              headerValue="------------  Please Select  ------------"/>
                </td>
            </tr>
        </c:when>
        <c:when test="${level > 4}">
            <tr class="${bgGreen}" id="g3">
                <td class="label">Sub Title3 :</td>
                <td colspan="3">
                    <s:select name="subTitle3"
                              id="subTitle3"
                              list="subTitle3List"
                              listKey="unstructuredId"
                              listValue="name"
                              headerKey=""
                              headerValue="------------  Please Select  ------------"
                              onchange="findTitle(this.value,'subTitle4','id','name');"/>
                </td>
            </tr>
        </c:when>
    </c:choose>
    <c:choose>
        <c:when test="${level eq 5}">
            <tr class="${bgGreen}" id="g4">
                <td class="label">Sub Title4 :</td>
                <td colspan="3">
                    <s:select name="subTitle4"
                              id="subTitle4"
                              list="subTitle4List"
                              listKey="unstructuredId"
                              listValue="name"
                              headerKey=""
                              headerValue="------------  Please Select  ------------"/>
                </td>
            </tr>
        </c:when>
        <c:when test="${level > 5}">
            <tr class="${bgGreen}" id="g4">
                <td class="label">Sub Title4 :</td>
                <td colspan="3">
                    <s:select name="subTitle4"
                              id="subTitle4"
                              list="subTitle4List"
                              listKey="unstructuredId"
                              listValue="name"
                              headerKey=""
                              headerValue="------------  Please Select  ------------"
                              onchange="findTitle(this.value,'subTitle5','id','name');"/>
                </td>
            </tr>
        </c:when>
    </c:choose>
    <c:choose>
        <c:when test="${level eq 6}">
            <tr class="${bgGreen}" id="g5">
                <td class="label">Sub Title5 :</td>
                <td colspan="3">
                    <s:select name="subTitle5"
                              id="subTitle5"
                              list="subTitle5List"
                              listKey="unstructuredId"
                              listValue="name"
                              headerKey=""
                              headerValue="------------  Please Select  ------------"/>
                </td>
            </tr>
        </c:when>
        <c:when test="${level > 6}">
            <tr class="${bgGreen}" id="g5">
                <td class="label">Sub Title5 :</td>
                <td colspan="3">
                    <s:select name="subTitle5"
                              id="subTitle5"
                              list="subTitle5List"
                              listKey="unstructuredId"
                              listValue="name"
                              headerKey=""
                              headerValue="------------  Please Select  ------------"
                              onchange="findTitle(this.value,'subTitle6','id','name');"/>
                </td>
            </tr>
        </c:when>
    </c:choose>
    <c:choose>
        <c:when test="${level eq 7}">
            <tr class="${bgGreen}" id="g6">
                <td class="label">Sub Title6 :</td>
                <td colspan="3">
                    <s:select name="subTitle6"
                              id="subTitle6"
                              list="subTitle6List"
                              listKey="unstructuredId"
                              listValue="name"
                              headerKey=""
                              headerValue="------------  Please Select  ------------"/>
                </td>
            </tr>
        </c:when>
        <c:when test="${level > 7}">
            <tr class="${bgGreen}" id="g6">
                <td class="label">Sub Title6 :</td>
                <td colspan="3">
                    <s:select name="subTitle6"
                              id="subTitle6"
                              list="subTitle6List"
                              listKey="unstructuredId"
                              listValue="name"
                              headerKey=""
                              headerValue="------------  Please Select  ------------"
                              onchange="findTitle(this.value,'subTitle7','id','name');"/>
                </td>
            </tr>
        </c:when>
    </c:choose>
    <c:choose>
        <c:when test="${level eq 8}">
            <tr class="${bgGreen}" id="g7">
                <td class="label">SubTitle7 :</td>
                <td colspan="3">
                    <s:select name="subTitle7"
                              id="subTitle7"
                              list="subTitle7List"
                              listKey="unstructuredId"
                              listValue="name"
                              headerKey=""
                              headerValue="------------  Please Select  ------------"/>
                </td>
            </tr>
        </c:when>
    </c:choose>

    <tr class="bgGreen1">
        <td class="label">Sending Status :</td>
        <td colspan="3">
            <s:checkbox name="onTime"/>Ontime&nbsp;&nbsp;
            <s:checkbox name="late"/>Late&nbsp;&nbsp;
            <s:checkbox name="notSend"/>Not Send&nbsp;&nbsp;
        </td>
    </tr>
</table>

<table width="100%">
    <tr>
        <td width="100%" align="center" colspan="2">
            <s:submit name="search" id="btnSearch" value="Search" cssClass="button" method="search" onclick="return validateForm()"/>&nbsp;
            <button class="button" onclick="resetForm()">Reset</button>
        </td>
    </tr>

</table>
<c:if test="${requestScope.documentStatusLogDtoList ne null}">
   <display:table name="${requestScope.documentStatusLogDtoList}" id="row" export="false" class="displayTag" requestURI="document_status_log_unstructured.action" style="width:100%;" size="${requestScope.totalRecord}" pagesize="<%=Constants.Pagination.DEFAULT_PAGE_SIZE%>">
        <display:column title="SFIs Name" property="sfi.nameTh" headerClass="headerTable" sortable="true" style="width:15%;text-align:left"/>
        <%--<display:column title="Dataset Name" property="unstructured.name" headerClass="headerTable" sortable="true" style="width:10%;text-align:left"/>--%>
       <display:column title="Dataset Name" headerClass="headerTable" sortable="true" style="width:25%;text-align:left">
           <c:choose>
               <c:when test="${empty row.title}">
                   ${row.group}
               </c:when>
               <c:when test="${empty row.subTitle }">
                   ${row.group}<br>
                   &nbsp;&nbsp;&nbsp;&nbsp;${row.title}
               </c:when>
               <c:when test="${empty row.subTitle2 }">
                   ${row.group}<br>
                   &nbsp;&nbsp;&nbsp;&nbsp;${row.title}<br>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle}
               </c:when>
               <c:when test="${empty row.subTitle3 }">
                   ${row.group}<br>
                   &nbsp;&nbsp;&nbsp;&nbsp;${row.title}<br>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle}<br>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle2}
               </c:when>
               <c:when test="${empty row.subTitle4 }">
                   ${row.group}<br>
                   &nbsp;&nbsp;&nbsp;&nbsp;${row.title}<br>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle}<br>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle2}<br>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle3}
               </c:when>
               <c:when test="${empty row.subTitle5 }">
                   ${row.group}<br>
                   &nbsp;&nbsp;&nbsp;&nbsp;${row.title}<br>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle}<br>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle2}<br>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle3}<br>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle4}
               </c:when>
               <c:when test="${empty row.subTitle6 }">
                   ${row.group}<br>
                   &nbsp;&nbsp;&nbsp;&nbsp;${row.title}<br>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle}<br>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle2}<br>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle3}<br>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle4}<br>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle5}
               </c:when>
               <c:when test="${empty row.subTitle7 }">
                   ${row.group}<br>
                   &nbsp;&nbsp;&nbsp;&nbsp;${row.title}<br>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle}<br>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle2}<br>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle3}<br>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle4}<br>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle5}
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle6}<br>

               </c:when>
               <c:otherwise>
                   ${row.group}<br>
                   &nbsp;&nbsp;&nbsp;&nbsp;${row.title}<br>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle}<br>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle2}<br>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle3}<br>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle4}<br>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle5}<br>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle6}<br>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle7}
               </c:otherwise>
           </c:choose>
       </display:column>
        <display:column title="Frequency" headerClass="headerTable" sortable="true" style="width:8%;text-align:left">
            <c:choose>
                <c:when test="${row.frequency eq 1}">รายปักษ์</c:when>
                <c:when test="${row.frequency eq 2}">รายเดือน</c:when>
                <c:when test="${row.frequency eq 3}">รายไตรมาส</c:when>
                <c:when test="${row.frequency eq 4}">รายครึ่งปี</c:when>
                <c:when test="${row.frequency eq 5}">เมื่อมีการเปลี่ยนแปลง</c:when>
                <c:when test="${row.frequency eq 6}">ยังไม่มีกำหนดการส่ง</c:when>
                <c:when test="${row.frequency eq 7}">รายปี</c:when>
            </c:choose>
        </display:column>
        <display:column title="Dataset Date" property="datasetDate" format="{0,date,dd MMM yyyy}" headerClass="headerTable" sortable="true" style="width:8%;text-align:center"/>
        <display:column title="Due Date" property="dueDate" format="{0,date,dd MMM yyyy}" headerClass="headerTable" sortable="true" style="width:8%;text-align:center"/>
        <display:column title="Upload Date" property="uploadDate" format="{0,date,dd MMM yyyy HH:mm}" headerClass="headerTable" sortable="true" style="width:8%;text-align:center"/>
        <display:column title="Document Status" property="documentStatus" headerClass="headerTable" sortable="true" style="width:8%;text-align:center"/>
        <display:column title="Sending Status" headerClass="headerTable" sortable="true" style="width:8%;text-align:center">
            <c:if test="${row.sendingStatus eq 'ONT'}">Ontime</c:if>
            <c:if test="${row.sendingStatus eq 'LAT'}">
                <font color="red">Late (${row.daysLate} day(s))</font>
            </c:if>
            <c:if test="${row.sendingStatus eq 'NTS'}">Not Send</c:if>
        </display:column>
    </display:table>
</c:if>
<c:if test="${requestScope.documentStatusLogDtoList ne null and requestScope.documentStatusLogDtoList ne '[]'}">
        <table width="100%">
            <tr>
                <td class="docStatus">UNA :</td>
                <td class="docStatusDesc">Unapproved</td>
            </tr>
            <tr class="docStatusDesc">
                <td class="docStatus">APP :</td>
                <td class="docStatusDesc">Approved</td>
            </tr>
            <tr class="docStatusDesc">
                <td class="docStatus">REJ :</td>
                <td class="docStatusDesc">Rejected</td>
            </tr>
        </table>

</c:if>
    <%--content here--%>
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

    jq("#document_status_log").keypress(function(event){
        if(event.keyCode == 13){
            jq("#btnSearch").click();
        }
    });
</script>
</body>
</html>

