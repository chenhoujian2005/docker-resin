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
<%--<link href="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.css" rel="stylesheet" type="text/css">--%>
<script type='text/javascript' src='../dwr/engine.js'></script>
<script type='text/javascript' src='../dwr/util.js'></script>
<script type='text/javascript' src='../dwr/interface/AjaxManager.js'></script>
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
        thisForm.group.value = '';
        thisForm.title.value = '';
        thisForm.subTitle.value = '';
        thisForm.subTitle2.value = '';
        if(typeof thisForm.subTitle3 != 'undefined'){
            thisForm.subTitle3.value = '';
        }
        if(typeof thisForm.subTitle4 != 'undefined'){
            thisForm.subTitle4.value = '';
        }
        if(typeof thisForm.subTitle5 != 'undefined'){
            thisForm.subTitle5.value = '';
        }
        if(typeof thisForm.subTitle6 != 'undefined'){
            thisForm.subTitle6.value = '';
        }
        if(typeof thisForm.subTitle7 != 'undefined'){
            thisForm.subTitle7.value = '';
        }
//        thisForm.subTitle4.value = '';
//        thisForm.subTitle5.value = '';
//        thisForm.subTitle6.value = '';
//        thisForm.subTitle7.value = '';
        thisForm.dateFrom.value='';
        thisForm.dateTo.value='';
    }

    function findTitle(id, zone, keyName, keyValue, clearZones) {

//        var vid = document.getElementById('unstructureVersionId').value;
        var unstructuredRight = document.getElementById('unstructuredRight').value;
        AjaxManager.findUnstructuredTitleByRight(id,unstructuredRight, function (data) {
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
    function setId(id) {
        document.getElementById('id').value = id;
    }

</script>
</head>
<body>
<s:form action="sending_waive_unstructure" id="sending_waive_unstructure_list">
    <s:hidden name="id" id="id"/>
    <s:hidden name="unstructureVersionId" id="unstructureVersionId"/>
    <s:hidden name="unstructuredRight" id="unstructuredRight" />
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
                                                <td width="50%" align="left"><b>Sending Waive Unstructure</b></td>
                                                <td width="50%" align="right">
                                                    <c:if test="${sessionScope.menuAuthentication.sendingWaiveUnstructuredManage}">
                                                        <input type="button" id="btnAdd" name="btnAdd" value="Add Sending Waive Unstructure" class="button" style="width:200px" onclick="letsGo('sending_waive_unstructure_detail.action','')"/>
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
                                                    <%--<select name="title" id="title">--%>
                                                        <%--<option value="">-----------------  Please Select  -----------------</option>--%>
                                                        <%--<c:forEach items="${requestScope.titleList}" var="obj">--%>
                                                            <%--<option value="${obj.unstructuredId}" <c:if test="${obj.unstructuredId == title}">selected="selected"</c:if>>${obj.name}</option>--%>
                                                        <%--</c:forEach>--%>
                                                    <%--</select>--%>
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
                                                    <display:table name="objectList" id="row" export="false" cellpadding="0" cellspacing="1" class="displayTag"
                                                                   style="width:100%" pagesize="20" requestURI="sending_waive_unstructure.action">
                                                        <display:column title="Sfi Name"  headerClass="headerTable" style="text-align:left;width=25%;">
                                                            ${row[1]}
                                                        </display:column>
                                                        <display:column title="Unstructure Title"  headerClass="headerTable" style="text-align:left;width=36%;">
                                                            ${row[3]}
                                                            ${row[5]}
                                                            ${row[7]}
                                                            ${row[9]}
                                                            ${row[11]}
                                                            ${row[13]}
                                                            ${row[15]}
                                                            ${row[17]}
                                                            ${row[19]}
                                                        </display:column>
                                                        <display:column title="Dataset Date From" headerClass="headerTable" style="width:12%;text-align:center;">
                                                            <fmt:formatDate pattern="dd MMM yyyy" value="${row[20]}" />
                                                        </display:column>
                                                        <display:column title="Dataset Date To" headerClass="headerTable" style="width:12%;text-align:center;">
                                                            <fmt:formatDate pattern="dd MMM yyyy" value="${row[21]}" />
                                                        </display:column>
                                                        <display:column title="Enable" headerClass="headerTable" style="width:5%;text-align:center" sortable="true">
                                                            <c:if test="${row[22]}">
                                                                Enable
                                                            </c:if>
                                                            <c:if test="${not row[22]}">
                                                                Disable
                                                            </c:if>
                                                        </display:column>
                                                        <c:if test="${sessionScope.menuAuthentication.sendingWaiveUnstructuredManage}">
                                                            <display:column title="Edit" headerClass="headerTable" style="text-align:center;width:5%">
                                                                <img src=../images/edit.gif border="no" align="" title="Edit" onclick="letsGo('sending_waive_unstructure_detail.action','${row[0]}')" style="cursor:pointer">
                                                            </display:column>
                                                            <display:column title="Delete" headerClass="headerTable" style="text-align:center;width:5%">
                                                                <div onClick="return confirmDelete('${row[0]}');">
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

    jq("#sending_waive_unstructure_list").keypress(function(event){
        if(event.keyCode == 13){
            jq("#btnAdd").attr('disabled','disabled');
            jq("#btnSearch").click();
        }
    })



    function letsGo(action, id) {
        pageLink1 = action + '?id=' + id;

        if (document.getElementById('sfi') != null) {
            pageLink1 += '&<%=Constants.SendingWaiveFieldUnstructured.SFI_HIDDEN%>=' + document.getElementById("sfi").value;
        }
        if (document.getElementById('group') != null) {
            pageLink1 += '&<%=Constants.SendingWaiveFieldUnstructured.GROUP_HIDDEN%>=' + document.getElementById("group").value;
        }
        if (document.getElementById('title') != null) {
            pageLink1 += '&<%=Constants.SendingWaiveFieldUnstructured.TITLE_HIDDEN%>=' + document.getElementById("title").value;
        }
        if (document.getElementById('subTitle2') != null) {
            pageLink1 += '&<%=Constants.SendingWaiveFieldUnstructured.SUB_TITLE_HIDDEN%>=' + document.getElementById("subTitle").value;
        }
        if (document.getElementById('subTitle2') != null) {
            pageLink1 += '&<%=Constants.SendingWaiveFieldUnstructured.SUB_TITLE2_HIDDEN%>=' + document.getElementById("subTitle2").value;
        }
        if (document.getElementById('subTitle3') != null) {
            pageLink1 += '&<%=Constants.SendingWaiveFieldUnstructured.SUB_TITLE3_HIDDEN%>=' + document.getElementById("subTitle3").value;
        }
        if (document.getElementById('subTitle4') != null) {
            pageLink1 += '&<%=Constants.SendingWaiveFieldUnstructured.SUB_TITLE4_HIDDEN%>=' + document.getElementById("subTitle4").value;
        }
        if (document.getElementById('subTitle5') != null) {
            pageLink1 += '&<%=Constants.SendingWaiveFieldUnstructured.SUB_TITLE5_HIDDEN%>=' + document.getElementById("subTitle5").value;
        }
        if (document.getElementById('subTitle6') != null) {
            pageLink1 += '&<%=Constants.SendingWaiveFieldUnstructured.SUB_TITLE6_HIDDEN%>=' + document.getElementById("subTitle6").value;
        }
        if (document.getElementById('subTitle7') != null) {
            pageLink1 += '&<%=Constants.SendingWaiveFieldUnstructured.SUB_TITLE7_HIDDEN%>=' + document.getElementById("subTitle7").value;
        }
        if (document.getElementById('dateFrom') != null) {
            pageLink1 += '&<%=Constants.SendingWaiveFieldUnstructured.DATASET_DATE_FROM_HIDDEN%>=' + document.getElementById("dateFrom").value;
        }
        if (document.getElementById('dateTo') != null) {
            pageLink1 += '&<%=Constants.SendingWaiveFieldUnstructured.DATASET_DATE_TO_HIDDEN%>=' + document.getElementById("dateTo").value;
        }
        location.href = pageLink1;
        return false;
    }


      <%--function letsGo(action, id) {--%>
        <%--var sfi = document.getElementById("sfi").value;--%>
        <%--var dataset = document.getElementById("dsTitle").value;--%>
        <%--var datasetDateFrom = document.getElementById("dateFrom").value;--%>
        <%--var datasetDateTo = document.getElementById("dateTo").value;--%>
      <%----%>
        <%--pageLink1 = action + '?id=' + id;--%>
        <%--pageLink2 = '&<%=Constants.SendingWaiveField.SFI_HIDDEN%>=' + sfi;--%>
        <%--pageLink3 = '&<%=Constants.SendingWaiveField.DATASET_HIDDEN%>=' + dataset;--%>
        <%--pageLink4 = '&<%=Constants.SendingWaiveField.DATASET_DATE_FROM_HIDDEN%>=' + datasetDateFrom;--%>
        <%--pageLink5 = '&<%=Constants.SendingWaiveField.DATASET_DATE_TO_HIDDEN%>=' + datasetDateTo;--%>

        <%--location.href = pageLink1.concat(pageLink2, pageLink3, pageLink4, pageLink5);--%>
    <%--}--%>


</script>
</body>
</html>