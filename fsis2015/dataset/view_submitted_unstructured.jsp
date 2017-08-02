<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<html>
<head>
    <title>Simple jsp page</title>

    <script type="text/javascript" src="../includes/js/jquery.js"></script>
    <link rel="stylesheet" type="text/css" href="../includes/css/style.css">
    <script type='text/javascript' src='../dwr/engine.js'></script>
    <script type='text/javascript' src='../dwr/util.js'></script>
    <script type='text/javascript' src='../dwr/interface/AjaxManager.js'></script>
    <script language="javascript" src="../includes/js/tp/utils.js"></script>
    <script language="javascript" src="../includes/js/tp/validate.js"></script>
    <script type="text/javascript" src="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.js"></script>
    <link href="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.css" rel="stylesheet" type="text/css">
    <script type="text/javascript">
        function resetForm() {
        <c:if test="${sessionScope.userLogin.sfi.id eq 000}">
            thisForm.organization.value = '';
        </c:if>

            thisForm.status.value = '';
            thisForm.unstructureVersionId.value = ''
            thisForm.dataset.value = '';
            thisForm.description.value = '';
            thisForm.dsDateStart.value = '';
            thisForm.dsDateEnd.value = '';
            thisForm.createDateStart.value = '';
            thisForm.createDateEnd.value = '';
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

        function findGroup(id, zone, keyName, keyValue, clearZones) {
            var right = document.getElementById('unstructuredRight').value;
            AjaxManager.findGroupListByVersion(right,id , function (data) {
                prepareOption(zone, data, keyName, keyValue, clearZones);
            });
        }

        function findTitle(id, zone, keyName, keyValue, clearZones) {
            var vid = document.getElementById('unstructureVersionId').value;
            var unstructuredRight = document.getElementById('unstructuredRight').value;
            AjaxManager.findTitleByRightAndVersion(id,unstructuredRight,vid, function (data) {
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
        var jq = jQuery.noConflict();


        function confirmDelete(deleteId) {
            if (confirm("Do you want to delete this record ?")) {
                document.getElementById('deleteId').value = deleteId;
                return true;
            }
            return false;
        }
    </script>
</head>
<body>
<s:form id ="view_submitted_unstructured" action="view_submitted_unstructured"  >
<s:hidden name="deleteId" id="deleteId"/>
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
                        <td width="43" background="../images/table004.gif"><img src="../images/table004.gif" width="43"
                                                                                height="37" alt=""></td>
                        <td>
                            <table width="100%" border="0" align="center" style="height:100%">
                                <tr>
                                    <td>
                                        <%--content here--%>
                                        <table width="100%">
                                            <tr>
                                                <td><b>View Submitted Unstructured </b></td>
                                            </tr>
                                        </table>
                                        <table width="100%" class="displayTable">
                                            <tr class="bgGreen2">
                                                <td align="right" width="20%" class="label">Document status :</td>
                                                <td>
                                                    <s:select name="status"
                                                              list="#{'':'---- Please Select ----','UNA':'Unapproved','APP':'Approved','REJ':'Rejected'}"
                                                              id="status"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td align="right" width="20%" class="label">Search By :</td>
                                                <td>
                                                    <s:radio name="searchBy"
                                                             list="#{'G':'Group','D':'Dataset Info'}"
                                                             id="searchBy"
                                                             onclick="prepareZone(this.value);"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2 group">
                                                <td class="label">Unstructured Version :</td>
                                                <td colspan="3">
                                                    <s:select list="unstructureVersionList"
                                                              name="unstructureVersionId"
                                                              id="unstructureVersionId"
                                                              listKey="id"
                                                              listValue="description"
                                                              headerKey=""
                                                              headerValue="-------- Please Select --------"
                                                              onchange="findGroup(this.value,'group','id','name');"/>
                                                </td>
                                            </tr>
                                            <tr class="${bgGreen}">
                                                <td width="19%" height=30 align="right" class="label">Group : </td>
                                                <td width="81%">
                                                    <s:select list="groupList"
                                                        name="group"
                                                        listKey="unstructuredId"
                                                        listValue="name"
                                                        headerKey=""
                                                        headerValue="------------  Please Select  ------------"
                                                        id="group"
                                                        onchange="findTitle(this.value,'title','id','name');"/>
                                                </td>
                                            </tr>
                                            <tr class="${bgGreen}">
                                                <td height=30 align="right" class="label">Title : </td>
                                                <td>
                                                    <s:select list="titleList"
                                                        name="title"
                                                        listKey="unstructuredId"
                                                        listValue="name"
                                                        headerKey=""
                                                        headerValue="------------  Please Select  ------------"
                                                        id="title"
                                                        onchange="findTitle(this.value,'subTitle','id','name');"/>
                                                </td>
                                            </tr>
                                            <tr class="${bgGreen}">
                                                <td height=30 align="right" class="label">Subtitle : </td>
                                                <td>
                                                    <s:select list="subTitleList"
                                                        name="subTitle"
                                                        listKey="unstructuredId"
                                                        listValue="name"
                                                        headerKey=""
                                                        headerValue="------------  Please Select  ------------"
                                                        id="subTitle"
                                                        onchange="findTitle(this.value,'subTitle2','id','name');"/>
                                                </td>
                                            </tr>
                                            <c:choose>
                                                <c:when test="${level eq 3}">
                                                    <tr class="${bgGreen}">
                                                        <td height=30 align="right" class="label">Subtitle2 : </td>
                                                        <td>
                                                            <s:select list="subTitle2List"
                                                                      name="subTitle2"
                                                                      listKey="unstructuredId"
                                                                      listValue="name"
                                                                      headerKey=""
                                                                      headerValue="------------  Please Select  ------------"
                                                                      id="subTitle2"/>
                                                        </td>
                                                    </tr>
                                                </c:when>
                                                <c:when test="${level > 3}">
                                                    <tr class="${bgGreen}">
                                                        <td height=30 align="right" class="label">Subtitle2 :</td>
                                                        <td>
                                                            <s:select list="subTitle2List"
                                                                      name="subTitle2"
                                                                      listKey="unstructuredId"
                                                                      listValue="name"
                                                                      headerKey=""
                                                                      headerValue="------------  Please Select  ------------"
                                                                      id="subTitle2"
                                                                      onchange="findTitle(this.value,'subTitle3','id','name');"/>
                                                        </td>
                                                    </tr>
                                                </c:when>
                                            </c:choose>
                                            <c:choose>
                                                <c:when test="${level eq 4}">
                                                    <tr class="${bgGreen}">
                                                        <td height=30 align="right" class="label">Subtitle3 :</td>
                                                        <td>
                                                            <s:select list="subTitle3List"
                                                                      name="subTitle3"
                                                                      listKey="unstructuredId"
                                                                      listValue="name"
                                                                      headerKey=""
                                                                      headerValue="------------  Please Select  ------------"
                                                                      id="subTitle3"/>
                                                        </td>
                                                    </tr>
                                                </c:when>
                                                <c:when test="${level > 4}">
                                                    <tr class="${bgGreen}">
                                                        <td height=30 align="right" class="label">Subtitle3 : </td>
                                                        <td>
                                                            <s:select list="subTitle3List"
                                                                      name="subTitle3"
                                                                      listKey="unstructuredId"
                                                                      listValue="name"
                                                                      headerKey=""
                                                                      headerValue="------------  Please Select  ------------"
                                                                      id="subTitle3"
                                                                      onchange="findTitle(this.value,'subTitle4','id','name');"/>
                                                        </td>
                                                    </tr>
                                                </c:when>
                                            </c:choose>
                                            <c:choose>
                                                <c:when test="${level eq 5}">
                                                    <tr class="${bgGreen}">
                                                        <td height=30 align="right" class="label">Subtitle4 : </td>
                                                        <td>
                                                            <s:select list="subTitle4List"
                                                                      name="subTitle4"
                                                                      listKey="unstructuredId"
                                                                      listValue="name"
                                                                      headerKey=""
                                                                      headerValue="------------  Please Select  ------------"
                                                                      id="subTitle4"/>
                                                        </td>
                                                    </tr>
                                                </c:when>
                                                <c:when test="${level > 5}">
                                                    <tr class="${bgGreen}">
                                                        <td height=30 align="right" class="label">Subtitle4 : </td>
                                                        <td>
                                                            <s:select list="subTitle4List"
                                                                      name="subTitle4"
                                                                      listKey="unstructuredId"
                                                                      listValue="name"
                                                                      headerKey=""
                                                                      headerValue="------------  Please Select  ------------"
                                                                      id="subTitle4"
                                                                      onchange="findTitle(this.value,'subTitle5','id','name');"/>
                                                        </td>
                                                    </tr>
                                                </c:when>
                                            </c:choose>
                                            <c:choose>
                                                <c:when test="${level eq 6}">
                                                    <tr class="${bgGreen}">
                                                        <td height=30 align="right" class="label">Subtitle5 : </td>
                                                        <td>
                                                            <s:select list="subTitle5List"
                                                                      name="subTitle5"
                                                                      listKey="unstructuredId"
                                                                      listValue="name"
                                                                      headerKey=""
                                                                      headerValue="------------  Please Select  ------------"
                                                                      id="subTitle5"/>
                                                        </td>
                                                    </tr>
                                                </c:when>
                                                <c:when test="${level > 6}">
                                                    <tr class="${bgGreen}">
                                                        <td height=30 align="right" class="label">Subtitle5 : </td>
                                                        <td>
                                                            <s:select list="subTitle5List"
                                                                      name="subTitle5"
                                                                      listKey="unstructuredId"
                                                                      listValue="name"
                                                                      headerKey=""
                                                                      headerValue="------------  Please Select  ------------"
                                                                      id="subTitle5"
                                                                      onchange="findTitle(this.value,'subTitle6','id','name');"/>
                                                        </td>
                                                    </tr>
                                                </c:when>
                                            </c:choose>
                                            <c:choose>
                                                <c:when test="${level eq 7}">
                                                    <tr class="${bgGreen}">
                                                        <td height=30 align="right" class="label">Subtitle6 : </td>
                                                        <td>
                                                            <s:select list="subTitle6List"
                                                                      name="subTitle6"
                                                                      listKey="unstructuredId"
                                                                      listValue="name"
                                                                      headerKey=""
                                                                      headerValue="------------  Please Select  ------------"
                                                                      id="subTitle6"/>
                                                        </td>
                                                    </tr>
                                                </c:when>
                                                <c:when test="${level > 7}">
                                                    <tr class="${bgGreen}">
                                                        <td height=30 align="right" class="label">Subtitle6 : </td>
                                                        <td>
                                                            <s:select list="subTitle6List"
                                                                      name="subTitle6"
                                                                      listKey="unstructuredId"
                                                                      listValue="name"
                                                                      headerKey=""
                                                                      headerValue="------------  Please Select  ------------"
                                                                      id="subTitle6"
                                                                      onchange="findTitle(this.value,'subTitle7','id','name');"/>
                                                        </td>
                                                    </tr>
                                                </c:when>
                                            </c:choose>
                                            <c:choose>
                                                <c:when test="${level eq 8}">
                                                    <tr class="${bgGreen}">
                                                        <td height=30 align="right" class="label">Subtitle7 : </td>
                                                        <td>
                                                            <s:select list="subTitle7List"
                                                                      name="subTitle7"
                                                                      listKey="unstructuredId"
                                                                      listValue="name"
                                                                      headerKey=""
                                                                      headerValue="------------  Please Select  ------------"
                                                                      id="subTitle7"/>
                                                        </td>
                                                    </tr>
                                                </c:when>
                                            </c:choose>


                                            <tr class="bgGreen2 dsInfo">
                                                <td align="right" width="20%" class="label">Dataset Info :</td>
                                                <td>
                                                    <s:textfield name="dataset" id="dataset" size="70"/><br>
                                                    Search group, title, subtitle. e.g. bls, bls ars.
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <c:if test="${not empty sessionScope.userLogin}">
                                                    <td align="right" width="20%" class="label">SFIs Name : </td>
                                                    <td>
                                                        <c:if test="${sessionScope.userLogin.sfi.id eq 000}">
                                                            <s:textfield name="organization" size="70"/><br>
                                                            Search SFIs name. e.g. gsb, gsb ghb.
                                                        </c:if>
                                                        <c:if test="${sessionScope.userLogin.sfi.id ne 000}">
                                                            <c:out value="${sfiName}"/>
                                                        </c:if>
                                                    </td>
                                                </c:if>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td align="right" width="20%" class="label">Description :</td>
                                                <td><s:textfield name="description" id="description" size="70"/><br>
                                                    Search dataset description.
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td align="right" width="20%" class="label">Dataset Date : </td>
                                                <td width="79%">
                                                    <table width="80%">
                                                        <tr align="center">
                                                            <td width="10%">
                                                                <div align="left" class="label">From : </div>
                                                            </td>
                                                            <td width="40%" align="left">
                                                                <s:textfield name="dsDateStart" id="dsDateStart" size="15" cssStyle="font-size:14px" readonly="true"/>
                                                                <img border="0" src="../images/dd.gif" name="dateBtn" width="15" height="15" onclick="displayCalendar(document.forms[0].dsDateStart,'dd/mm/yyyy',this);" align="absmiddle">
                                                            </td>
                                                            <td width="10%">
                                                                <div align="left" class="label">To : </div>
                                                            </td>
                                                            <td width="40%" align="left">
                                                                <s:textfield name="dsDateEnd"  id="dsDateEnd" size="15" cssStyle="font-size:14px" readonly="true"/>
                                                                <img border="0" src="../images/dd.gif" name="dateBtn" width="15" height="15" onclick="displayCalendar(document.forms[0].dsDateEnd,'dd/mm/yyyy',this);" align="absmiddle">
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td align="right" width="20%" class="label">Upload Date : </td>
                                                <td width="79%">
                                                    <table width=80%>
                                                        <tr align="center">
                                                            <td width="10%">
                                                                <div align="left" class="label">From : </div>
                                                            </td>
                                                            <td width="40%" align="left">
                                                                <s:textfield name="createDateStart" id="createDateStart" size="15" cssStyle="font-size:14px" readonly="true"/>
                                                                <img border="0" src="../images/dd.gif" name="dateBtn" width="15" height="15" onclick="displayCalendar(document.forms[0].createDateStart,'dd/mm/yyyy',this);" align="absmiddle">
                                                            </td>
                                                            <td width="10%">
                                                                <div align="left" class="label">To : </div>
                                                            </td>
                                                            <td width="40%" align="left">
                                                                <s:textfield name="createDateEnd" id="createDateEnd" size="15" cssStyle="font-size:14px" readonly="true"/>
                                                                <img border="0" src="../images/dd.gif" name="dateBtn" width="15" height="15" onclick="displayCalendar(document.forms[0].createDateEnd,'dd/mm/yyyy',this);" align="absmiddle">
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                        <table width="100%">
                                            <tr>
                                                <td width="100%" align="center">
                                                    <s:submit name="ok" value="Search" cssClass="button" method="search"/>&nbsp;
                                                    <%--<input type="reset" id="reset" name="reset" value="Reset" class="button"/>--%>
                                                    <button class="button" onclick="resetForm()">Reset</button>
                                                </td>
                                            </tr>
                                        </table>
                                        <c:if test="${requestScope.objectList ne null}">
                                        <display:table name="objectList" id="row"  export="false" class="displayTag" requestURI="view_submitted_unstructured.action" style="width:100%;text-align:center" pagesize="20">
                                            <display:column title="Dataset Date" format="{0,date,dd MMM yyyy}"  property="dsDate" style="text-align:center;width:8%" headerClass="headerTable" sortable="true"/>
                                            <display:column title="Version" property="version" style="text-align:center;width:5%" headerClass="headerTable" sortable="true"/>
                                            <display:column title="Unstructured Title" style="text-align:left;width:30%" headerClass="headerTable" sortable="true">
                                                <a href="javascript:" onclick="detail('${row.fileuploadId}')">
                                                    <c:choose>
                                                        <c:when test="${row.title eq null}">
                                                            ${row.group}
                                                        </c:when>
                                                        <c:when test="${row.subTitle eq null}">
                                                            ${row.title}<br>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;${row.group}
                                                        </c:when>
                                                        <c:when test="${row.subTitle1 eq null}">
                                                            ${row.subTitle}<br>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;${row.title}<br>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.group}
                                                       </c:when>
                                                        <c:when test="${row.subTitle2 eq null}">
                                                            ${row.subTitle1}<br>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle}<br>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.title}<br>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.group}
                                                        </c:when>
                                                        <c:when test="${row.subTitle3 eq null}">
                                                            ${row.subTitle2}<br>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle1}<br>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle}<br>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.title}<br>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.group}
                                                        </c:when>
                                                        <c:when test="${row.subTitle4 eq null}">
                                                            ${row.subTitle3}<br>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle2}<br>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle1}<br>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle}<br>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.title}<br>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.group}
                                                        </c:when>
                                                        <c:when test="${row.subTitle5 eq null}">
                                                            ${row.subTitle4}<br>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle3}<br>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle2}<br>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle1}<br>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle}<br>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.title}<br>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.group}
                                                        </c:when>
                                                        <c:when test="${row.subTitle6 eq null}">
                                                            ${row.subTitle5}<br>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle4}<br>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle3}<br>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle2}<br>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle1}<br>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle}<br>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.title}<br>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.group}
                                                        </c:when>
                                                        <c:otherwise>
                                                            ${row.subTitle6}<br>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle5}<br>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle4}<br>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle3}<br>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle2}<br>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle1}<br>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle}<br>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.title}<br>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.group}
                                                        </c:otherwise>
                                                    </c:choose>
                                                </a>
                                            </display:column>
                                            <display:column title="Description" style="text-align:left;width:19%" headerClass="headerTable" sortable="true">
                                                <a href="javascript:" onclick="detail('${row.fileuploadId}')">
                                                    ${row.description}
                                                </a>
                                            </display:column>
                                            <display:column title="Status" style="text-align:center;width:5%" headerClass="headerTable" sortable="true">
                                                <a href="javascript:" onclick="detail('${row.fileuploadId}')">
                                                    ${row.status}
                                                </a>
                                            </display:column>
                                            <display:column title="SFIs Name" style="text-align:left;width:8%" headerClass="headerTable" sortable="true">
                                                <a href="javascript:" onclick="detail('${row.fileuploadId}')">
                                                    ${row.sfiName}
                                                </a>
                                            </display:column>
                                            <display:column title="Upload Date"  property="updateDate" format="{0,date,dd MMM yyyy HH:mm}" style="text-align:center;width:10%" headerClass="headerTable" sortable="true"/>
                                            <display:column title="Upload By" style="text-align:left;width:10%" headerClass="headerTable" sortable="true">
                                                <a href="javascript:" onclick="detail('${row.fileuploadId}')">
                                                    ${row.updateBy}
                                                </a>
                                            </display:column>
                                            <display:column title="New" style="text-align:center;width:5%" headerClass="headerTable" sortable="true">
                                                <a href="javascript:" onclick="detail('${row.fileuploadId}')">
                                                    <c:if test="${row.enable eq true}">
                                                        <span class="require_field">*</span>
                                                    </c:if>
                                                </a>
                                            </display:column>
                                            <c:if test="${sessionScope.menuAuthentication.viewSubmittedUnstructuredManage}">
                                            <display:column title="Delete" style="width:5%;text-align:center;" headerClass="headerTable">
                                                   <div onClick="return confirmDelete('${row.fileuploadId}');">
                                                    <s:submit type="image" src="../images/delete.gif" method="delete" title="Delete"/>
                                                </div>
                                            </display:column>
                                            </c:if>
                                        </display:table>
                                        </c:if>
                                        <c:if test="${objectList ne null}">
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
    function detail(fileUploadId) {
        window.open("../dataset/document_unstructured_detail.action?fileUploadId=" + fileUploadId,null,"height=700,width=900 ,resizable=1,scrollbars=1'");
    }


    function prepareZone(zone) {
        if (zone == 'G') {
            jq('.dsInfo').hide();
            jq('.group').show();
        } else {
            jq('.group').hide();
            jq('.dsInfo').show();
        }
    }
    <c:if test="${not empty(requestScope.searchBy)}">
    prepareZone('${requestScope.searchBy}');
    </c:if>

</script>
</body>
</html>
