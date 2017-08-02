<%@ page import="th.go.mof.fpo.Constants" %>
<%@ page import="th.go.mof.fpo.model.FileUpload" %>
<%@ page import="th.go.mof.fpo.model.UploadVersion" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.Set" %>
<%@ page import="th.go.mof.fpo.model.dao.UploadVersionDAO" %>
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
<script type='text/javascript' src='<%=request.getContextPath()%>/dwr/engine.js'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/dwr/util.js'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/dwr/interface/AjaxManager.js'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/includes/js/manager.js'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/includes/js/util.js'></script>
<link rel="stylesheet" type="text/css" href="../includes/css/style.css">
<script type="text/javascript" src="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.js"></script>
<link href="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
    function resetForm(){
        thisForm.dateFrom.value = '';
        thisForm.dateTo.value = '';
        thisForm.datasetDateFrom.value = '';
        thisForm.datasetDateTo.value = '';
        <c:if test="${sessionScope.userLogin.sfi.id eq 000}">
            thisForm.sfi.selectedIndex = 0;
        </c:if>
        thisForm.dsTitle.selectedIndex = 0;
        thisForm.documentStatus.selectedIndex = 0;
    }
</script>
</head>
<body>
<s:form action="structured_transfer" id="structured_transfer">
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
            <td><b>Structured Transfer</b></td>
        </tr>
    </table>
    <table width="100%" class="displayTable">
        <tr class="bgGreen2">
            <td class="label" width="20%">
                Upload Date From :
            </td>
            <td width="20%">
                <s:textfield name="dateFrom" size="8" readonly="true"/>
                <img border="0" src="../images/dd.gif" name="dateBtn" width="15" height="15"
                     onclick="displayCalendar(document.forms[0].dateFrom,'dd/mm/yyyy',this);"
                     align="absmiddle">
            </td>
            <td class="label" width="5%">
                To :
            </td>
            <td width="55%">
                <s:textfield name="dateTo" size="8" readonly="true"/>
                <img border="0" src="../images/dd.gif" name="dateBtn" width="15" height="15"
                     onclick="displayCalendar(document.forms[0].dateTo,'dd/mm/yyyy',this);"
                     align="absmiddle">
            </td>
        </tr>
        <tr class="bgGreen1">
            <td class="label">
                Dataset Date From :
            </td>
            <td>
                <s:textfield name="datasetDateFrom" size="8" readonly="true"/>
                <img border="0" src="../images/dd.gif" name="dateBtn" width="15" height="15"
                     onclick="displayCalendar(document.forms[0].datasetDateFrom,'dd/mm/yyyy',this);"
                     align="absmiddle">
            </td>
            <td class="label">
                To :
            </td>
            <td>
                <s:textfield name="datasetDateTo" size="8" readonly="true"/>
                <img border="0" src="../images/dd.gif" name="dateBtn" width="15" height="15"
                     onclick="displayCalendar(document.forms[0].datasetDateTo,'dd/mm/yyyy',this);"
                     align="absmiddle">
            </td>
        </tr>
        <tr class="bgGreen2">
            <td class="label">
                SFIs Name :
            </td>
            <td colspan="3">
                <c:if test="${sessionScope.userLogin.sfi.id eq 000}">
                    <s:select list="sfiFpoList"
                          name="sfi"
                          listKey="id"
                          listValue="displayNameCodeAndCode"
                          headerKey=""
                          headerValue="------------------------------  Please Select  ------------------------------"/>
                </c:if>
                <c:if test="${sessionScope.userLogin.sfi.id ne 000}">
                    <s:hidden name="sfi"/>
                    <s:property value="sfiName"/>
                </c:if>
            </td>
        </tr>
        <tr class="bgGreen1">
            <td class="label">
                Dataset Name :
            </td>
            <td colspan="3">
                <s:select list="dsTitleList"
                          name="dsTitle"
                          id="dsTitle"
                          listKey="id"
                          listValue="name"
                          headerKey=""
                          headerValue="-------------  Please Select  -------------"/>
            </td>
        </tr>
        <tr class="bgGreen2">
            <td class="label">
                Document Status :
            </td>
            <td colspan="3">
                <s:select name="documentStatus"
                    list="#{'':'-------------  Please Select  -------------',
                    'REC':'Received',
                    'CAN':'Cancelled',
                    'PKB':'Passed Key Basic Validation',
                    'FKB':'Failed Key Basic Validation',
                    'PCX':'Passed Complex Validation',
                    'FCX':'Failed Complex Validation',
                    'PCS':'Passed Cross Validation',
                    'WRS':'Waiting For Related Sets'}"
                    id="status"/>

            </td>
        </tr>
    </table>
    <table width="100%">
        <tr>
            <td width="100%" align="center">
                <s:submit name="search" id="btnSearch" value="Search" cssClass="button" method="search"/>&nbsp;
                <button class="button" onclick="resetForm()">Reset</button>
            </td>
        </tr>
    </table>
    <c:if test="${requestScope.fileUploadList ne null}">
        <display:table name="fileUploadList" id="row" export="false" class="displayTag" pagesize="15" requestURI="structured_transfer.action" style="width:100%;">
        <display:column title="Upload Date" property="createDate" format="{0,date,dd MMM yyyy}" headerClass="headerTable" sortable="true" style="width:13%;text-align:center"/>
        <display:column title="Upload Time" headerClass="headerTable" sortable="true" style="width:8%;text-align:center">
            <a href="javascript:" onclick="detail(${row.id})">
                <fmt:formatDate value="${row.createDate}" pattern="HH:mm:ss"/>
            </a>
        </display:column>
        <display:column title="Dataset Date" property="dsDate" format="{0,date,dd MMM yyyy}" headerClass="headerTable" sortable="true" style="width:10%;text-align:center"/>
        <display:column title="Dataset Name" headerClass="headerTable" sortable="true" style="width:8%;text-align:center">
            <a href="javascript:" onclick="detail(${row.id})">
                ${row.dsTitle3.name}
            </a>
        </display:column>
        <display:column title="Dataset Version" headerClass="headerTable" sortable="true" style="width:8%;text-align:center">
            <a href="javascript:" onclick="detail(${row.id})">
                ${row.dsVersion.version}
            </a>
        </display:column>
        <display:column title="SFIs Name" headerClass="headerTable" sortable="true" style="width:10%;text-align:left">
            <a href="javascript:" onclick="detail(${row.id})">
                ${row.sfi.abbreviationTh}
            </a>
        </display:column>
        <display:column title="Sender Name" headerClass="headerTable" sortable="true" style="width:12%;text-align:left">
            <a href="javascript:" onclick="detail(${row.id})">
                ${row.createBy}
            </a>
        </display:column>
        <display:column title="File Name" headerClass="headerTable" sortable="true" style="width:20%;text-align:left">
            <%--<a href="javascript:" onclick="detail(${row.id})">--%>
               <%--${row.fileName}--%>
            <%--</a>--%>
             <a href="../downloadFile2.sl?uploadFileId=${row.id}" title="Click here to download.">
                ${row.fileName} 
             </a>
         </display:column>
        <display:column title="Status" headerClass="headerTable" sortable="true" style="width:16%;text-align:center">
            <a href="javascript:" onclick="detail(${row.id})">
               ${row.status}
            </a>
         </display:column>
         <%--<display:column title="Download" headerClass="headerTable" sortable="true" style="width:8%;text-align:center">--%>
             <%--<a href="../downloadFile2.sl?uploadFileId=${row.id}" title="Click here to download.">--%>
                 <%--<img src="../images/download_icon2.png" style="border:none" width="16" height="16">--%>
             <%--</a>--%>
         <%--</display:column>--%>
            <display:column title="Excel" style="width:5%;text-align:center" headerClass="headerTable">
                <div onMouseOver="setId('${row.id}');">
                    <%--<a href="../convertToExcel.sl?uploadVersionId=${requestScope.uploadVersion.id}&dsVersionId=${requestScope.fileUpload.dsVersion.id}&reportType=${requestScope.excelPath}">--%>
                        <%--<img src="../images/Excel-icon.png"/></a>--%>

                        <c:forEach var="uploadVersions" begin="0" end="1" items="${row.uploadVersions}">
                            <a type="" href="../convertToExcel.sl?uploadVersionId=${uploadVersions.id}&dsVersionId=${row.dsVersion.id}&reportType=${requestScope.excelPath}">
                                <img border="no" src="../images/Excel-icon.png" alt="Convert To Excel"/>
                            </a>
                        </c:forEach>

                    <%--<s:submit method="delete" title="Convert To Excel" type="image" src="../images/Excel-icon.png" />--%>
                </div>
            </display:column>
    </display:table>
    </c:if>
    <c:if test="${requestScope.fileUploadList ne null}">
        <table width="100%">
            <tr>
                <td width="30%">
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
                <td>
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
                            <td class="docStatus">PCS :</td>
                            <td class="docStatusDesc">Passed Cross Validation</td>
                        </tr>
                        <tr class="docStatusDesc">
                            <td class="docStatus">WRS :</td>
                            <td class="docStatusDesc">Waiting For Related Sets</td>
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

    var jq = jQuery.noConflict();

    jq("#structured_transfer").keypress(function(event){
      if(event.keyCode == 13){
          jq("#btnSearch").click();
      }
    });

    function detail(id){
      window.open('file_transfer_detail.action?id='+ id,null,"height=700,width=900 ,resizable=1,scrollbars=1'");
    }

</script>
</body>
</html>
