<%@ page import="th.go.mof.fpo.Constants" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<script type="text/javascript" src="../includes/js/jquery.js"></script>
<script type='text/javascript' src="<%=request.getContextPath()%>/includes/js/popcalendar.js"></script>
<LINK href="<%=request.getContextPath()%>/includes/css/popcalendar.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/includes/css/style.css">
<script type="text/javascript">
    function setId(id) {
        thisForm.reportId.value = id;
    }

    function resetForm() {
        thisForm.datasetName.value = '';
        thisForm.datasetVersion.value = '';
    }
    function letsGo(action, id) {
        var datasetName = document.getElementById("datasetName").value;
        var datasetVersion = document.getElementById("datasetVersion").value;

        pageLink1 = action + '?reportId=' + id;
        pageLink2 = '&<%=Constants.ReportTypeField.DATASET_NAME_HIDDEN%>=' + datasetName;
        pageLink3 = '&<%=Constants.ReportTypeField.DATASET_VERSION_HIDDEN%>=' + datasetVersion;

        location.href = pageLink1.concat(pageLink2, pageLink3);
    }
</script>
</head>
<body>
<s:form action="report_type" id="report_type">
<s:hidden id="reportId" name="reportId"/>
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
                                <td width="15%">
                                    <b>Report Type</b>
                                </td>
                                <td align="right">
                                    <c:if test="${sessionScope.menuAuthentication.reportTypeManage}">
                                        <input type="button" name="butNewAdd" id="butNewAdd" class="button" value="Add Report Type" style="width:150px" onclick="letsGo('report_type_detail.action','')"/>
                                    </c:if>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <table width="100%" class="displayTable">
                                        <tr class="bgGreen2">
                                            <td class="label" width="20%">Dataset Name :</td>
                                            <td width="80%">
                                                <s:textfield name="datasetName" id="datasetName"/>
                                            </td>
                                        </tr>
                                        <tr class="bgGreen1">
                                            <td class="label">Dataset Version :</td>
                                            <td>
                                                <s:textfield name="datasetVersion" id="datasetVersion"/>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <s:submit name="search" id="btnSearch" method="search" value="Search" cssClass="button"/>  &nbsp;
                                    <button class="button" onclick="resetForm()">Reset</button>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <display:table name="${requestScope.reportTypeList}" id="obj"  cellpadding="0" cellspacing="1" export="false" class="displayTag" style="width:100%" requestURI="report_type.action" pagesize="15">
                                        <display:column title="Dataset Name" property="datasetVersion.dsTitle.name" style="text-align:center;width:15%" headerClass="headerTable" sortable="true"/>
                                        <display:column title="Dataset Version" property="datasetVersion.version" style="text-align:center;width:15%" headerClass="headerTable" sortable="true"/>
                                        <display:column title="File (for view)" style="text-align:center;width:30%" headerClass="headerTable" sortable="true">
                                            <a href="../downloadFile.sl?fileName=${obj.viewFileName}&originalFileName=${obj.originalViewFileName}&reportType=${requestScope.realPath}" title="Download attachment file">${obj.viewFileName}</a>
                                        </display:column>
                                        <display:column title="File (for convert to excel)" style="text-align:center;width:30%" headerClass="headerTable" sortable="true">
                                            <a href="../downloadFile.sl?fileName=${obj.excelFileName}&originalFileName=${obj.originalExcelFileName}&reportType=${requestScope.realPath}" title="Download attachment file">${obj.excelFileName}</a>
                                        </display:column>
                                        <c:if test="${sessionScope.userLogin.role eq 'ADM' or sessionScope.userLogin.role eq 'MIS'}">
                                        <display:column title="Edit" style="text-align:center;width:5%" headerClass="headerTable" >
                                            <%--<a href="../category/report_type_detail.action?reportId=${obj.id}"> <img src="../images/edit.gif " border="no" title="Edit" ></a>--%>
                                             <img src="../images/edit.gif " border="no" title="Edit" onclick="letsGo('report_type_detail.action',${obj.id})" style="cursor:pointer"/>
                                        </display:column>
                                        <display:column title="Delete" style="text-align:center;width:5%" headerClass="headerTable">
                                            <div onmouseover="setId('${obj.id}');">
                                                <s:submit method="delete" type="image" src="../images/delete.gif" onclick="return confirm('Do you want to delete this record ?')" title="Delete"/>
                                            </div>
                                        </display:column>
                                        </c:if>
                                    </display:table>
                                </td>
                            </tr>
                            <tr>

                            </tr>
                        </table>
                    </td>
                    <td width="28" background="../images/table005.gif"><img src="../images/table005.gif" width="28"/>
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

    jq("#report_type").keypress(function(event){
      if(event.keyCode == 13){
          jq("#butNewAdd").attr('disabled','disabled');
          jq("#btnSearch").click();
      }
    });
</script>
</body>
</html>