<%@ page import="th.go.mof.fpo.Constants" %>
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
    <script language="text/javascript" src="../includes/js/tp/utils.js"></script>
    <script language="text/javascript" src="../includes/js/tp/validate.js"></script>
    <script type="text/javascript" src="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.js"></script>
    <link href="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.css" rel="stylesheet" type="text/css">
    <script type="text/javascript">
        function resetForm() {
        <c:if test="${sessionScope.userLogin.sfi.id eq 000}">
            thisForm.organization.value = '';
        </c:if>
            thisForm.status.selectedIndex = 0;
            thisForm.dataset.value = '';
            thisForm.group.value = '';
            thisForm.description.value = '';
            thisForm.dsDateStart.value = '';
            thisForm.dsDateEnd.value = '';
            thisForm.createDateStart.value = '';
            thisForm.createDateEnd.value = '';
            thisForm.reportAppDateStart.value  ='';
            thisForm.reportAppDateEnd.value  = '';
            thisForm.importBIDateStart.value  ='';
            thisForm.importBIDateEnd.value  = '';
            thisForm.reportApprove[0].checked = true;
            thisForm.transfer[0].checked = true;

        }

    function findTitle(id, zone, keyName, keyValue, clearZones) {
        AjaxManager.findDsTitleById(id, function(data) {
            prepareOption(zone, data, keyName, keyValue, clearZones);
        });
    }

    function findVersion(id, zone, keyName, keyValue) {
        AjaxManager.findDsVersionById(id, function(data) {
            prepareOptionOne(zone, data, keyName, keyValue);
        });
    }
    function prepareOptionOne(zone, data, keyName, keyValue) {
        dwr.util.removeAllOptions(zone);
        document.getElementById(zone).options[0] = new Option('----- Please Select -----', '');
        dwr.util.addOptions(zone, data, keyName, keyValue);
    }

    function prepareOption(zone, data, keyName, keyValue, clearZones) {
        dwr.util.removeAllOptions(zone);
        document.getElementById(zone).options[0] = new Option('----- Please Select -----', '');
        dwr.util.addOptions(zone, data, keyName, keyValue);
        if (clearZones != null) {
            for (var i = 0; i < clearZones.length; i++) {
                dwr.util.removeAllOptions(clearZones[i]);
                document.getElementById(clearZones[i]).options[0] = new Option('----- Please Select -----', '');
            }
        }
    }
     var jq = jQuery.noConflict();
</script>
</head>
<body>
<s:form action="view_submitted_structured">
<s:hidden name="datasetRight" id="datasetRight"/>
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
                                                <td><b>View Submitted Structured </b></td>
                                            </tr>
                                        </table>
                                        <table width="100%" class="displayTable">
                                            <tr class="bgGreen2">
                                                <td align="right" width="20%">Document status :</td>
                                                <td>
                                                    <s:select name="status"
                                                        list="#{'':'-------------  Please Select  -------------',
                                                        'REC':'Received',
                                                        'PKB':'Passed Key Basic Validation',
                                                        'FKB':'Failed Key Basic Validation',
                                                        'PCX':'Passed Complex Validation',
                                                        'FCX':'Failed Complex Validation',
                                                        'PCS':'Passed Cross Validation',
                                                        'WRS':'Waiting For Related Sets',
                                                        'CAN':'Cancelled' }"
                                                        id="status"/>

                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td align="right" width="20%">Search By :</td>
                                                <td>
                                                    <s:radio name="searchBy"
                                                              list="#{'G':'Group','D':'Dataset Info'}"
                                                              id="searchBy" onclick="prepareZone(this.value);"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2 group">
                                                <td width="19%" height=30 align="right">Group : </td>
                                                <td width="81%">
                                                    <s:select list="groupList" name="group" listKey="id"
                                                              listValue="name"
                                                              headerKey="" headerValue="----- Please Select -----"
                                                              id="group"
                                                              onchange="findTitle(this.value,'title','id','name');"/>
                                                              <%--onchange="findTitle(this.value,'title','id','name', new Array('subTitle','version'));"/>--%>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1 group">
                                                <td height=30 align="right">Title : </td>
                                                <td>
                                                    <s:select list="titleList" name="title" listKey="id"
                                                              listValue="name"
                                                              headerKey="" headerValue="----- Please Select -----"
                                                              id="title"
                                                              onchange="findTitle(this.value,'subTitle','id','name');"/>
                                                              <%--onchange="findTitle(this.value,'subTitle','id','name', new Array('version'));"/>--%>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2 group">
                                                <td height=30 align="right">Subtitle : </td>
                                                <td>
                                                    <s:select list="subTitleList" name="subTitle" listKey="id"
                                                              listValue="name"
                                                              headerKey="" headerValue="----- Please Select -----"
                                                              id="subTitle"
                                                              onchange="findVersion(this.value,'version','id','name');"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1 group">
                                                <td height=30 align="right">Version : </td>
                                                <td>
                                                    <s:select list="versionList" name="version" listKey="id"
                                                              listValue="version"
                                                              headerKey="" headerValue="----- Please Select -----"
                                                              id="version"
                                                            />
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1 dsInfo">
                                                <td align="right" width="20%">Dataset Info :</td>
                                                <td><s:textfield name="dataset" size="70"/><br>
                                                    Search group, title, subtitle. e.g. bls, bls ars.
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <c:if test="${not empty sessionScope.userLogin}">
                                                    <td align="right" width="20%">SFIs Name : </td>
                                                    <td>
                                                        <c:if test="${sessionScope.userLogin.sfi.id eq 000}" >
                                                            <s:textfield name="organization" size="70"/><br>
                                                            Search SFIs name. e.g. gsb,ghb.
                                                        </c:if>
                                                        <c:if test="${sessionScope.userLogin.sfi.id ne 000}">
                                                            <c:out value="${sfiName}"/>
                                                        </c:if>
                                                    </td>
                                                </c:if>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td align="right" width="20%">Description :</td>
                                                <td><s:textfield name="description" size="70"/><br>
                                                    Search dataset description.
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td align="right" width="20%">Dataset Date : </td>
                                                <td width="79%">
                                                    <table width="80%">
                                                        <tr align="center">
                                                            <td width="10%">
                                                                <div align="left">From : </div>
                                                            </td>
                                                            <td width="40%" align="left">
                                                                <s:textfield name="dsDateStart" size="15" cssStyle="font-size:14px" readonly="true"/>
                                                                <img border="0" src="../images/dd.gif" name="dateBtn"
                                                                     width="15"
                                                                     height="15"
                                                                     onclick="displayCalendar(document.forms[0].dsDateStart,'dd/mm/yyyy',this);"
                                                                     align="absmiddle">
                                                            </td>
                                                            <td width="10%" align="right">
                                                                <div align="left">To : </div>
                                                            </td>
                                                            <td width="40%" align="left">
                                                                <s:textfield name="dsDateEnd" size="15" cssStyle="font-size:14px" readonly="true"/>
                                                                <img border="0" src="../images/dd.gif" name="dateBtn"
                                                                     width="15"
                                                                     height="15"
                                                                    onclick="displayCalendar(document.forms[0].dsDateEnd,'dd/mm/yyyy',this);"
                                                                     align="absmiddle">
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td align="right" width="20%">Upload Date : </td>
                                                <td width="79%">
                                                    <table width=80%>
                                                        <tr align="center">
                                                            <td width="10%">
                                                                <div align="left">From : </div>
                                                            </td>
                                                            <td width="40%" align="left">
                                                                <s:textfield name="createDateStart" size="15" cssStyle="font-size:14px" readonly="true"/>
                                                                <img border="0" src="../images/dd.gif" name="dateBtn"
                                                                     width="15"
                                                                     height="15"
                                                                     onclick="displayCalendar(document.forms[0].createDateStart,'dd/mm/yyyy',this);"
                                                                     align="absmiddle">
                                                            </td>
                                                            <td width="10%">
                                                                <div align="left">To : </div>
                                                            </td>
                                                            <td width="40%" align="left">
                                                                <s:textfield name="createDateEnd" size="15" cssStyle="font-size:14px" readonly="true"/>
                                                                <img border="0" src="../images/dd.gif" name="dateBtn"
                                                                     width="15"
                                                                     height="15"
                                                                     onclick="displayCalendar(document.forms[0].createDateEnd,'dd/mm/yyyy',this);"
                                                                     align="absmiddle">
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <c:if test="${sessionScope.userLogin.sfi.id eq 000}">
                                            <tr class="bgGreen2">
                                                <td align="right" width="20%">Report Approve Date : </td>
                                                <td width="79%">
                                                    <table width="80%">
                                                        <tr align="center">
                                                            <td width="10%">
                                                                <div align="left">From : </div>
                                                            </td>
                                                            <td width="40%" align="left">
                                                                <s:textfield name="reportAppDateStart" size="15" cssStyle="font-size:14px" readonly="true"/>
                                                                <img border="0" src="../images/dd.gif" name="dateBtn"
                                                                     width="15"
                                                                     height="15"
                                                                     onclick="displayCalendar(document.forms[0].reportAppDateStart,'dd/mm/yyyy',this);"
                                                                     align="absmiddle">
                                                            </td>
                                                            <td width="10%" align="right">
                                                                <div align="left">To : </div>
                                                            </td>
                                                            <td width="40%" align="left">
                                                                <s:textfield name="reportAppDateEnd" size="15" cssStyle="font-size:14px" readonly="true"/>
                                                                <img border="0" src="../images/dd.gif" name="dateBtn"
                                                                     width="15"
                                                                     height="15"
                                                                     onclick="displayCalendar(document.forms[0].reportAppDateEnd,'dd/mm/yyyy',this);"
                                                                     align="absmiddle">
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td align="right" width="20%">Import BI Date : </td>
                                                <td width="79%">
                                                    <table width=80%>
                                                        <tr align="center">
                                                            <td width="10%">
                                                                <div align="left">From : </div>
                                                            </td>
                                                            <td width="40%" align="left">
                                                                <s:textfield name="importBIDateStart" size="15" cssStyle="font-size:14px" readonly="true"/>
                                                                <img border="0" src="../images/dd.gif" name="dateBtn"
                                                                     width="15"
                                                                     height="15"
                                                                     onclick="displayCalendar(document.forms[0].importBIDateStart,'dd/mm/yyyy',this);"
                                                                     align="absmiddle">
                                                            </td>
                                                            <td width="10%">
                                                                <div align="left">To : </div>
                                                            </td>
                                                            <td width="40%" align="left">
                                                                <s:textfield name="importBIDateEnd" size="15" cssStyle="font-size:14px" readonly="true"/>
                                                                <img border="0" src="../images/dd.gif" name="dateBtn"
                                                                     width="15"
                                                                     height="15"
                                                                     onclick="displayCalendar(document.forms[0].importBIDateEnd,'dd/mm/yyyy',this);"
                                                                     align="absmiddle">
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td align="right">Report Approve : </td>
                                                <td>
                                                    <s:radio list="#{'':'All','UNA':'Waiting','APP':'Approved','REJ':'Rejected'}" name="reportApprove" id="reportApprove"/>
                                                </td>
                                            </tr>

                                            <tr class="bgGreen1">
                                                <td align="right">Transfer Data : </td>
                                                <td>
                                                    <s:radio list="#{'':'All','T':'True','F':'False'}" name="transfer" id="transfer"/>
                                                </td>
                                            </tr>
                                            </c:if>
                                        </table>
                                        <table width="100%">
                                            <tr>
                                                <td width="100%" align="center">
                                                    <s:submit name="ok" value="Search" cssClass="button" method="search"/>&nbsp;
                                                    <button class="button" onclick="resetForm()">Reset</button>
                                                </td>
                                            </tr>
                                        </table>
                                        <%--content here--%>
                                        <c:if test="${requestScope.resultList2 ne null}">
                                            <display:table name="${requestScope.resultList2}" id="row" export="false" class="displayTag" requestURI="view_submitted_structured.action" style="width:100%;text-align:center" pagesize="<%=Constants.Pagination.DEFAULT_PAGE_SIZE%>" partialList="true" size="${requestScope.totalRecord}">
                                                <display:column title="Dataset Date" property="dsDate" format="{0,date,dd MMM yyyy}" style="text-align:center;width:8%" headerClass="headerTable" sortable="true"/>
                                                <display:column title="Title"  style="text-align:left;width:15%" headerClass="headerTable" sortable="true">
                                                    <a href="javascript:" onclick="detail('${row.id}','_blank')" title="Send to : ${row.exportTo}">
                                                        ${row.dsTitle2.name}
                                                    </a>
                                                </display:column>
                                                <display:column title="SubTitle" style="text-align:left;width:8%" headerClass="headerTable" sortable="true">
                                                    <a href="javascript:" onclick="detail('${row.id}')">
                                                        ${row.dsTitle3.name}
                                                    </a>
                                                </display:column>
                                                <display:column title="Version" style="text-align:left;width:6%" headerClass="headerTable" sortable="true">
                                                    <a href="javascript:" onclick="detail('${row.id}')">
                                                        ${row.dsVersion.version}
                                                    </a>
                                                </display:column>
                                                <display:column title="Description" style="text-align:left;width:12%" headerClass="headerTable" sortable="true">
                                                    <a href="javascript:" onclick="detail('${row.id}')">
                                                        ${row.description}
                                                    </a>
                                                </display:column>
                                                <display:column title="Status" style="text-align:center;width:5%" headerClass="headerTable" sortable="true">
                                                    <a href="javascript:" onclick="popupCrossResult('${row.id}','_blank')">
                                                        ${row.status}
                                                    </a>
                                                </display:column>
                                                <c:if test="${sessionScope.userLogin.sfi.id eq 000}">
                                                <display:column title="Report Approve" headerClass="headerTable" style="width:5%;text-align:center" sortable="true">
                                                    <a href="javascript:" onclick="detail('${row.id}')">
                                                        ${row.approveReportStatus}
                                                     </a>
                                                </display:column>
                                                <display:column title="Transfer Data" headerClass="headerTable" style="width:5%;text-align:center" sortable="true">
                                                    <a href="javascript:" onclick="detail('${row.id}')">
                                                        <c:if test="${row.transfer}">
                                                            True
                                                        </c:if>
                                                        <c:if test="${not row.transfer}">
                                                            False
                                                        </c:if>
                                                    </a>
                                                </display:column>
                                                </c:if>
                                                <display:column title="SFIs Name" style="text-align:left;width:5%" headerClass="headerTable" sortable="true">
                                                    <a href="javascript:" onclick="detail('${row.id}')">
                                                        ${row.sfi.abbreviationTh}
                                                    </a>
                                                </display:column>
                                                <display:column title="Upload Date" property="createDate" format="{0,date,dd MMM yyyy HH:mm}" style="text-align:center;width:10%" headerClass="headerTable" sortable="true"/>
                                                <display:column title="Upload By" style="text-align:left;width:10%" headerClass="headerTable" sortable="true">
                                                    <a href="javascript:" onclick="detail('${row.id}')">
                                                        ${row.createBy}
                                                    </a>
                                                </display:column>
                                                <display:column title="Excel" style="width:5%;text-align:center" headerClass="headerTable">
                                                    <a type="" href="../convertToExcel.sl?uploadVersionId=${row.uploadVersionId}&dsVersionId=${row.dsVersion.id}&reportType=${requestScope.excelPath}">
                                                            <img border="no" src="../images/Excel-icon.png" alt="Convert To Excel"/>
                                                        </a>
                                                </display:column>
                                            </display:table>
                                        </c:if>

                                        <c:if test="${requestScope.resultList2 ne null and requestScope.resultList2 ne '[]'}">
                                            <table width="100%">
                                                <tr>
                                                    <td width="30%" valign="top">
                                                        <table>
                                                            <tr class="docStatusDesc">
                                                                <td class="docStatus">REC :</td>
                                                                <td class="docStatusDesc">Received</td>
                                                            </tr>
                                                            <tr class="docStatusDesc">
                                                                <td class="docStatus">CAN :</td>
                                                                <td class="docStatusDesc">Cancelled</td>
                                                            </tr>
                                                            <tr class="docStatusDesc">
                                                                <td class="docStatus">PKB :</td>
                                                                <td class="docStatusDesc">Passed Key Basic Validation
                                                                </td>
                                                            </tr>
                                                            <tr class="docStatusDesc">
                                                                <td class="docStatus">FKB :</td>
                                                                <td class="docStatusDesc">Failed Key Basic Validation
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                    <td valign="top">
                                                        <table>
                                                            <tr class="docStatusDesc">
                                                                <td class="docStatus">PCX :</td>
                                                                <td class="docStatusDesc">Passed Complex Validation</td>
                                                            </tr>
                                                            <tr class="docStatusDesc">
                                                                <td class="docStatus">FCX :</td>
                                                                <td class="docStatusDesc">Failed Complex Validation</td>
                                                            </tr>
                                                            <tr class="docStatusDesc">
                                                                <td class="docStatus">WRS :</td>
                                                                <td class="docStatusDesc">Waiting For Related Sets</td>
                                                            </tr>
                                                            <tr class="docStatusDesc">
                                                                <td class="docStatus">PCS :</td>
                                                                <td class="docStatusDesc">Passed Cross Validation</td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
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
    var thisForm = document.getElementsByTagName('form')[0];
    function detail(fileUploadId) {
        window.open("../dataset/document_detail.action?fileUploadId=" + fileUploadId,null,"height=700,width=900 ,resizable=1,scrollbars=1'");
    }
    function popupCrossResult(fileUploadId){
        //alert(fileUploadId);
        window.open("../dataset/cross_result.action?fileUploadId=" + fileUploadId,null,"height=580,width=780 ,resizable=1,scrollbars=1'");
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
