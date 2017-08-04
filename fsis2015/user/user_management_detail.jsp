<%@ page import="th.go.mof.fpo.Constants" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head><title>Simple jsp page</title>
<link rel="stylesheet" type="text/css" href="../includes/css/style.css">
<script type='text/javascript' src='<%=request.getContextPath()%>/dwr/engine.js'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/dwr/util.js'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/dwr/interface/AjaxManager.js'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/includes/js/util.js'></script>
<script type='text/javascript'  src="<%=request.getContextPath()%>/includes/js/tp/utils.js"></script>
<script type='text/javascript'  src="<%=request.getContextPath()%>/includes/js/tp/validate.js"></script>
<script type="text/javascript">

    function validateLoginName(){
          if (isEmptyById('username')) {
            alert('Please Input Username !!');
            document.getElementById('username').focus();
            return false;
        } else {
            return checkLoginName();
        }
    }

    function checkLoginName() {
        var loginName = document.getElementById('username').value;
        if (!isEmptyValue(loginName)) {
            AjaxManager.checkLoginName(loginName, function(isExits) {
                displayResult(isExits);
                return isExits;
            });
        }
        return false;
    }

    function displayResult(result) {
        if (result) {
            document.getElementById('resultDisplay').innerHTML = '<font color="red">Username is Exists !!</font>';
        } else {
            document.getElementById('resultDisplay').innerHTML = 'OK !!';
        }
    }

    function selectAllSfiRight() {
        var objBtn = document.user_management_detail.btnSelectAllSfiRight;
        var objChk = document.user_management_detail.sfiRight;
        var isCheck = objBtn.value == 'Select All';

        if (objChk != undefined) {
            if (objChk.length == undefined) {
                objChk.checked = isCheck;
            } else {
                for (var i = 0; i < objChk.length; i ++) {
                    objChk[i].checked = isCheck;
                }
            }
        }

        if (objBtn.value == 'Select All') {
            objBtn.value = 'Select None'
        } else {
            objBtn.value = 'Select All'
        }
    }

    function findSuperVisor(id,userId, zone, keyName, keyValue) {
        AjaxManager.findSuperVisor(id,userId, function(data) {
            prepareOptionOne(zone, data, keyName, keyValue);
        });
    }

    function prepareOptionOne(zone, data, keyName, keyValue) {
        dwr.util.removeAllOptions(zone);
        document.getElementById(zone).options[0] = new Option('----------  Please Select  ----------', '');
        dwr.util.addOptions(zone, data, keyName, keyValue);
    }

    function validateSfiRight(orgId) {
        var objDivSfiRight = document.getElementById('divSfiRight');
        if (orgId == '000') {
            objDivSfiRight.style.display = 'inline';
        } else {
            objDivSfiRight.style.display = 'none';
        }
    }

    function validateRole(orgId){
        if(orgId != EMPTY){
            var objRole = document.getElementById('role');
            dwr.util.removeAllOptions("role");
            if(orgId == '<%=Constants.FPO_ID%>'){
                objRole.options[0] = new Option('Administrator','ADM');
                objRole.options[1] = new Option('MIS','MIS');
                objRole.options[2] = new Option('EIS','EIS');
                showPermission('ADM');
            } else {
                objRole.options[0] = new Option('SFI','SFI');
                showPermission('SFI');
            }
        }
    }
</script>
</head>
<body>
<s:form action="user_management_detail" validate="false">
<s:hidden name="userId" id="userId"/>
<s:hidden name="userNameHidden"/>
<s:hidden name="thaiNameHidden"/>
<s:hidden name="englishNameHidden"/>
<s:hidden name="organizationHidden"/>
<s:hidden name="roleHidden"/>
<s:hidden name="enableHidden"/>
<s:hidden name="disableHidden"/>
    <table width="97%" border="0" cellspacing="0" cellpadding="0" style="margin-left:27px;margin-top:27px;margin-right:20px">
        <tr><td>
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
                                    <td style="height:100%">
                                        <%--content here--%>
                                        <table width=100%>
                                            <tr>
                                                <td><b>User Management : Add/Edit</b></td>
                                            </tr>
                                        </table>
                                        <table width="100%" class="displayTable" border="0">
                                            <tr class="bgGreen2">
                                                <td width="19%" height=30 align="right"><b>Username<b class="require_field">*</b> :</b></td>
                                                <td width="81%">
                                                    <c:if test="${empty requestScope.userId}">
                                                        <s:textfield name="username" size="15" id="username" maxLength="16"/>
                                                        <button type="button" class="button" onClick="validateLoginName();">Check</button>
                                                        <span id="resultDisplay"/>
                                                    </c:if>
                                                    <c:if test="${not empty requestScope.userId}">
                                                        <s:property value="username"/>
                                                    </c:if>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td height=30 align="right"><b>Password<b class="require_field">*</b> :</b></td>
                                                <td>
                                                    <s:password name="password" size="15" id="password" showPassword="true" maxLength="64"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td height=30 align="right"><b>Thai Name<b class="require_field">*</b> :</b></td>
                                                <td>
                                                    <s:textfield name="thaiName" id="thaiName" size="40" maxLength="256"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td height=30 align="right"><b>English Name<b class="require_field">*</b> :</b></td>
                                                <td>
                                                    <s:textfield name="englishName" id="englishName" size="40" maxLength="256"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td height=30 align="right"><b>Organization Name<b class="require_field">*</b> :</b></td>
                                                <td>
                                                    <s:select name="organization"
                                                              id="organization"
                                                              list="organizationList"
                                                              listKey="id"
                                                              listValue="nameTh"
                                                              headerKey=""
                                                              headerValue="--------------------------  Please Select  --------------------------"
                                                              onchange="findSuperVisor(this.value,document.getElementById('userId').values,'supervisor','id','name'),validateSfiRight(this.value),validateRole(this.value)"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td height=30 align="right"><b>Super Visor :</b></td>
                                                <td>
                                                    <select name="supervisor" id="supervisor">
                                                        <option value="">----------  Please Select  ----------</option>
                                                        <c:forEach items="${requestScope.supervisorList}" var="obj">
                                                            <option value="${obj.id}">${obj.name}</option>
                                                        </c:forEach>
                                                    </select>

                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td height=30 align="right"><b>Telephone no :</b></td>
                                                <td>
                                                    <s:textfield name="telephone" size="25" maxLength="32"/>
                                                    <b>Ext. (If any) :</b>
                                                    <s:textfield name="telephoneExt" size="7" maxLength="10"/>
                                                </td>
                                            </tr>

                                            <tr class="bgGreen1">
                                                <td height=30 align="right"><b>E-Mail<b class="require_field">*</b> :</b></td>
                                                <td>
                                                    <s:textfield name="email" id="email" size="40" maxLength="64"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td align="right"><b>Role :</b></td>
                                                <td>
                                                    <s:select name="role"
                                                              id="role"
                                                              list="roleList"
                                                              listKey="key"
                                                              listValue="value"
                                                              onchange="showPermission(this.value);"/>

                                                    <table width="100%">
                                                        <tr >
                                                            <td>
                                                                <input type="button" id="btnSelectAllRole" name="btnSelectAllRole" value="Select All" class="button" style="width:100px" onclick="selectAllRole()"/>
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td colspan="2" width="50%" valign="top">
                                                                <table class="displayTable">
                                                                    <tr class="bgGreen2">
                                                                        <td width="40%" align="center"><strong>Menu</strong></td>
                                                                        <td width="5%" align="center"><strong>View</strong></td>
                                                                        <td width="5%" align="center"><strong>Management</strong></td>
                                                                    </tr>
                                                                    <tr class="bgGreen1">
                                                                        <td>News & Information</td>
                                                                        <td align="center"><s:checkbox name="newsInformationView" id="newsInformationView"/></td>
                                                                        <td align="center"><s:checkbox name="newsInformationManage" id="newsInformationManage"/></td>
                                                                    </tr>
                                                                     <tr class="bgGreen2">
                                                                        <td>User Management</td>
                                                                        <td align="center"><s:checkbox name="userManagementView" id="userManagementView"/></td>
                                                                        <td align="center"><s:checkbox name="userManagementManage" id="userManagementManage"/></td>
                                                                    </tr>
                                                                    <tr class="bgGreen1">
                                                                        <td colspan="3">SFIs Management</td>
                                                                    </tr>
                                                                     <tr class="bgGreen2">
                                                                        <td>&nbsp;&nbsp;&nbsp;> SFIs Management</td>
                                                                        <td align="center"><s:checkbox name="sfiManagementView" id="sfiManagementView"/></td>
                                                                        <td align="center"><s:checkbox name="sfiManagementManage" id="sfiManagementManage"/></td>
                                                                    </tr>
                                                                    <tr class="bgGreen1">
                                                                        <td>&nbsp;&nbsp;&nbsp;> Branch Code</td>
                                                                        <td align="center"><s:checkbox name="branchCodeView" id="branchCodeView"/></td>
                                                                        <td align="center"><s:checkbox name="branchCodeManage" id="branchCodeManage"/></td>
                                                                    </tr>
                                                                    <tr class="bgGreen2">
                                                                        <td colspan="3">Document Category</td>
                                                                    </tr>
                                                                    <tr class="bgGreen1">
                                                                        <td>&nbsp;&nbsp;&nbsp;> Structured Dataset</td>
                                                                        <td align="center"><s:checkbox name="structuredDatasetView" id="structuredDatasetView"/></td>
                                                                        <td align="center"><s:checkbox name="structuredDatasetManage" id="structuredDatasetManage"/></td>
                                                                    </tr>
                                                                     <tr class="bgGreen2">
                                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;>> Classification</td>
                                                                        <td align="center"><s:checkbox name="classificationView" id="classificationView"/></td>
                                                                        <td align="center"><s:checkbox name="classificationManage" id="classificationManage"/></td>
                                                                    </tr>
                                                                    <tr class="bgGreen1">
                                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;>> ISIC Code</td>
                                                                        <td align="center"><s:checkbox name="isicCodeView" id="isicCodeView"/></td>
                                                                        <td align="center"><s:checkbox name="isicCodeManage" id="isicCodeManage"/></td>
                                                                    </tr>
                                                                     <tr class="bgGreen2">
                                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;>> Government Agency Code</td>
                                                                        <td align="center"><s:checkbox name="governmentAgencyCodeView" id="governmentAgencyCodeView"/></td>
                                                                        <td align="center"><s:checkbox name="governmentAgencyCodeManage" id="governmentAgencyCodeManage"/></td>
                                                                    </tr>
                                                                    <tr class="bgGreen1">
                                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;>> Report Type</td>
                                                                        <td align="center"><s:checkbox name="reportTypeView" id="reportTypeView"/></td>
                                                                        <td align="center"><s:checkbox name="reportTypeManage" id="reportTypeManage"/></td>
                                                                    </tr>
                                                                    <tr class="bgGreen2">
                                                                        <td>&nbsp;&nbsp;&nbsp;> Unstructured Dataset</td>
                                                                        <td align="center"><s:checkbox name="unstructuredDatasetView" id="unstructuredDatasetView"/></td>
                                                                        <td align="center"><s:checkbox name="unstructuredDatasetManage" id="unstructuredDatasetManage"/></td>
                                                                    </tr>
                                                                    <tr class="bgGreen1">
                                                                        <td>&nbsp;&nbsp;&nbsp;> Move Unstructured Dataset</td>
                                                                        <td align="center"><s:checkbox name="moveUnStructuredManage" id="moveUnStructuredManage"/></td>
                                                                        <td></td>
                                                                    </tr>
                                                                    <tr class="bgGreen2">
                                                                        <td>&nbsp;&nbsp;&nbsp;> Rules Validation</td>
                                                                        <td align="center"><s:checkbox name="rulesValidationView" id="rulesValidationView"/></td>
                                                                        <td align="center"><s:checkbox name="rulesValidationManage" id="rulesValidationManage"/></td>
                                                                    </tr>
                                                                    <tr class="bgGreen1">
                                                                        <td>&nbsp;&nbsp;&nbsp;> Publish Document</td>
                                                                        <td align="center"><s:checkbox name="viewPublishView" id="viewPublishView"/></td>
                                                                        <td align="center"><s:checkbox name="viewPublishManage" id="viewPublishManage"/></td>
                                                                    </tr>
                                                                     <tr class="bgGreen2">
                                                                        <td colspan="3">Structured Dataset Submission</td>
                                                                    </tr>
                                                                     <tr class="bgGreen1">
                                                                        <td>&nbsp;&nbsp;&nbsp;> Submit Structured</td>
                                                                        <td align="center"><s:checkbox name="submitStructuredView" id="submitStructuredView"/></td>
                                                                        <td></td>
                                                                    </tr>
                                                                    <tr class="bgGreen2">
                                                                        <td>&nbsp;&nbsp;&nbsp;> View Submitted Structured</td>
                                                                        <td align="center"><s:checkbox name="viewSubmittedStructuredView" id="viewSubmittedStructuredView"/></td>
                                                                        <td></td>
                                                                    </tr>
                                                                     <tr class="bgGreen1">
                                                                        <td>&nbsp;&nbsp;&nbsp;> Submit Adjust</td>
                                                                        <td align="center"><s:checkbox name="submitAdjustView" id="submitAdjustView"/></td>
                                                                        <td></td>
                                                                    </tr>
                                                                    <tr class="bgGreen2">
                                                                        <td>&nbsp;&nbsp;&nbsp;> View Submitted Adjust</td>
                                                                        <td align="center"><s:checkbox name="viewSumbittedAdjustView" id="viewSumbittedAdjustView"/></td>
                                                                        <td></td>
                                                                    </tr>
                                                                    <tr class="bgGreen1">
                                                                        <td colspan="3">Unstructured Dataset Submission</td>
                                                                    </tr>
                                                                    <tr class="bgGreen2">
                                                                        <td>&nbsp;&nbsp;&nbsp;>Composite Rating and Input</td>
                                                                        <td align="center"><s:checkbox name="compositeRatingAndInputView" id="compositeRatingAndInputView"/></td>
                                                                        <td align="center"><s:checkbox name="compositeRatingAndInputManage" id="compositeRatingAndInputManage"/></td>

                                                                    </tr>
                                                                    <tr class="bgGreen1">
                                                                        <td>&nbsp;&nbsp;&nbsp;> Submit Unstructured</td>
                                                                        <td align="center"><s:checkbox name="submitUnstructuredView" id="submitUnstructuredView"/></td>
                                                                        <td></td>
                                                                    </tr>
                                                                     <tr class="bgGreen2">
                                                                        <td>&nbsp;&nbsp;&nbsp;> View Submitted Unstructured</td>
                                                                        <td align="center"><s:checkbox name="viewSubmittedUnstructuredView" id="viewSubmittedUnstructuredView"/></td>
                                                                        <td align="center"><s:checkbox name="viewSubmittedUnstructuredManage" id="viewSubmittedUnstructuredManage"/></td>
                                                                    </tr>
                                                                   <tr class="bgGreen1">
                                                                        <td colspan="3">Publish Document Submission</td>
                                                                    </tr>
                                                                    <tr class="bgGreen2">
                                                                        <td>&nbsp;&nbsp;&nbsp;> Submit Publish Document</td>
                                                                        <td align="center"><s:checkbox name="submitPublishDocumentView" id="submitPublishDocumentView"/></td>
                                                                        <td></td>
                                                                    </tr>
                                                                     <tr class="bgGreen1">
                                                                        <td>&nbsp;&nbsp;&nbsp;> View Publish Document</td>
                                                                        <td align="center"><s:checkbox name="viewPublishDocumentView" id="viewPublishDocumentView"/></td>
                                                                        <td align="center"><s:checkbox name="viewPublishDocumentManage" id="viewPublishDocumentManage"/></td>
                                                                    </tr>
                                                                    <tr class="bgGreen2">
                                                                        <td>Upload CSV File For BI</td>
                                                                        <td align="center"><s:checkbox name="uploadCSVFileFroBIView" id="uploadCSVFileFroBIView"/></td>
                                                                        <td align="center"><s:checkbox name="uploadCSVFileFroBIManage" id="uploadCSVFileFroBIManage"/></td>

                                                                    </tr>
                                                                </table>
                                                            </td>
                                                            <td colspan="2" width="50%" valign="top">
                                                                <table class="displayTable">
                                                                     <tr class="bgGreen2">
                                                                        <td width="40%" align="center"><strong>Menu</strong></td>
                                                                        <td width="5%" align="center"><strong>View</strong></td>
                                                                        <td width="5%" align="center"><strong>Management</strong></td>
                                                                    </tr>
                                                                    <tr class="bgGreen1">
                                                                        <td colspan="3">Logs</td>
                                                                    </tr>
                                                                     <tr class="bgGreen2">
                                                                        <td>&nbsp;&nbsp;&nbsp;> Structured Transfer</td>
                                                                        <td align="center"><s:checkbox name="structuredTransferView" id="structuredTransferView"/></td>
                                                                        <td></td>
                                                                    </tr>
                                                                    <tr class="bgGreen1">
                                                                        <td>&nbsp;&nbsp;&nbsp;> Adjust Structured Transfer</td>
                                                                        <td align="center"><s:checkbox name="adjustStructuredTransferView" id="adjustStructuredTransferView"/></td>
                                                                        <td></td>
                                                                    </tr>
                                                                     <tr class="bgGreen2">
                                                                        <td>&nbsp;&nbsp;&nbsp;> Activity</td>
                                                                        <td align="center"><s:checkbox name="activityView" id="activityView"/></td>
                                                                        <td></td>
                                                                    </tr>
                                                                    <tr class="bgGreen1">
                                                                        <td>&nbsp;&nbsp;&nbsp;> Document Structured Status </td>
                                                                        <td align="center"><s:checkbox name="documentStatusView" id="documentStatusView"/></td>
                                                                        <td></td>
                                                                    </tr>
                                                                    <tr class="bgGreen2">
                                                                        <td>&nbsp;&nbsp;&nbsp;> Document UnStructured Status </td>
                                                                        <td align="center"><s:checkbox name="documentStatusUnstructuredView" id="documentStatusUnstructuredView"/></td>
                                                                        <td></td>
                                                                    </tr>
                                                                     <tr class="bgGreen1">
                                                                        <td colspan="3">Report</td>
                                                                    </tr>
                                                                    <tr class="bgGreen2">
                                                                        <td>&nbsp;&nbsp;&nbsp;> Executive Report</td>
                                                                        <td align="center"><s:checkbox name="executiveReportView" id="executiveReportView"/></td>
                                                                        <td align="center"><s:checkbox name="executiveReportManage" id="executiveReportManage"/></td>
                                                                    </tr>
                                                                    <tr class="bgGreen1">
                                                                        <td>&nbsp;&nbsp;&nbsp;> KPI Structured Report</td>
                                                                        <td align="center"><s:checkbox name="kpiReportStructuredView" id="kpiReportStructuredView"/></td>
                                                                        <td></td>
                                                                    </tr>

                                                                    <tr class="bgGreen2">
                                                                        <td>&nbsp;&nbsp;&nbsp;> KPI UnStructured Report</td>
                                                                        <td align="center"><s:checkbox name="kpiReportUnstructuredView" id="kpiReportUnstructuredView"/></td>
                                                                        <td></td>
                                                                    </tr>
                                                                    <tr class="bgGreen1">
                                                                        <td>&nbsp;&nbsp;&nbsp;> KPI Structured By Search</td>
                                                                        <td align="center"><s:checkbox name="kpiReportStructuredBySearchView" id="kpiReportStructuredBySearchView"/></td>
                                                                        <td></td>
                                                                    </tr>
                                                                    <tr class="bgGreen2">
                                                                        <td>&nbsp;&nbsp;&nbsp;> KPI Structured Report (BOT Status)</td>
                                                                        <td align="center"><s:checkbox name="kpiReportStructuredBOTView" id="kpiReportStructuredBOTView"/></td>
                                                                        <td></td>
                                                                    </tr>
                                                                    <tr class="bgGreen1">
                                                                        <td>&nbsp;&nbsp;&nbsp;> KPI Structured By Search (BOT Status)</td>
                                                                        <td align="center"><s:checkbox name="kpiReportStructuredBySearchBOTView" id="kpiReportStructuredBySearchBOTView"/></td>
                                                                        <td></td>
                                                                    </tr>
                                                                    <tr class="bgGreen2">
                                                                        <td>&nbsp;&nbsp;&nbsp;> Monitoring Submit Structured</td>
                                                                        <td align="center"><s:checkbox name="monitoringSubmitDatasetView" id="monitoringSubmitDatasetView"/></td>
                                                                        <td></td>
                                                                    </tr>
                                                                    <tr class="bgGreen1">
                                                                        <td>&nbsp;&nbsp;&nbsp;> Monitoring Submit Unstructured</td>
                                                                        <td align="center"><s:checkbox name="monitoringUnstructuredView" id="monitoringUnstructuredView"/></td>
                                                                        <td></td>
                                                                    </tr>
                                                                    <tr class="bgGreen2">
                                                                        <td>&nbsp;&nbsp;&nbsp;> Export Log Report</td>
                                                                        <td align="center"><s:checkbox name="exportLogReportView" id="exportLogReportView"/></td>
                                                                        <td></td>
                                                                    </tr>
                                                                     <tr class="bgGreen1">
                                                                        <td colspan="3">Export Data</td>
                                                                    </tr>
                                                                    <tr class="bgGreen2">
                                                                        <td>&nbsp;&nbsp;&nbsp;> Defined Data</td>
                                                                        <td align="center"><s:checkbox name="definedDataView" id="definedDataView"/></td>
                                                                        <td align="center"><s:checkbox name="definedDataManage" id="definedDataManage"/></td>
                                                                    </tr>
                                                                     <tr class="bgGreen1">
                                                                        <td>&nbsp;&nbsp;&nbsp;> Export Data</td>
                                                                        <td align="center"><s:checkbox name="exportDataView" id="exportDataView"/></td>
                                                                        <td align="center"><s:checkbox name="exportDataManage" id="exportDataManage"/></td>
                                                                    </tr>
                                                                    <tr class="bgGreen2">
                                                                        <td>&nbsp;&nbsp;&nbsp;> Defined Unstructured</td>
                                                                        <td align="center"><s:checkbox name="definedDataUnstructuredView" id="definedDataUnstructuredView"/></td>
                                                                        <td align="center"><s:checkbox name="definedDataUnstructuredManage" id="definedDataUnstructuredManage"/></td>
                                                                    </tr>
                                                                    <tr class="bgGreen1">
                                                                        <td>&nbsp;&nbsp;&nbsp;> Export Unstructured</td>
                                                                        <td align="center"><s:checkbox name="exportDataUnstructuredView" id="exportDataUnstructuredView"/></td>
                                                                        <td align="center"><s:checkbox name="exportDataUnstructuredManage" id="exportDataUnstructuredManage"/></td>
                                                                    </tr>
                                                                    <tr class="bgGreen2">
                                                                        <td colspan="3">Configuration</td>
                                                                    </tr>
                                                                     <tr class="bgGreen1">
                                                                        <td>&nbsp;&nbsp;&nbsp;> System</td>
                                                                        <td align="center"><s:checkbox name="systemView" id="systemView"/></td>
                                                                        <td align="center"><s:checkbox name="systemManage" id="systemManage"/></td>
                                                                    </tr>
                                                                    <tr class="bgGreen2">
                                                                        <td>&nbsp;&nbsp;&nbsp;> Frequency Structured</td>
                                                                        <td align="center"><s:checkbox name="frequencyView" id="frequencyView"/></td>
                                                                        <td align="center"><s:checkbox name="frequencyManage" id="frequencyManage"/></td>
                                                                    </tr>
                                                                    <tr class="bgGreen1">
                                                                        <td>&nbsp;&nbsp;&nbsp;> Frequency UnStructured</td>
                                                                        <td align="center"><s:checkbox name="frequencyUnstructuredView" id="frequencyUnstructuredView"/></td>
                                                                        <td align="center"><s:checkbox name="frequencyUnstructuredManage" id="frequencyUnstructuredManage"/></td>
                                                                    </tr>
                                                                    <tr class="bgGreen2">
                                                                        <td>&nbsp;&nbsp;&nbsp;> Sending Waive Structured</td>
                                                                        <td align="center"><s:checkbox name="sendingWaiveView" id="sendingWaiveView"/></td>
                                                                        <td align="center"><s:checkbox name="sendingWaiveManage" id="sendingWaiveManage"/></td>
                                                                    </tr>
                                                                    <tr class="bgGreen1">
                                                                        <td>&nbsp;&nbsp;&nbsp;> Sending Waive UnStructured</td>
                                                                        <td align="center"><s:checkbox name="sendingWaiveUnstructuredView" id="sendingWaiveUnstructuredView"/></td>
                                                                        <td align="center"><s:checkbox name="sendingWaiveUnstructuredManage" id="sendingWaiveUnstructuredManage"/></td>
                                                                    </tr>
                                                                    <tr class="bgGreen2">
                                                                        <td>&nbsp;&nbsp;&nbsp;> Official Holiday</td>
                                                                        <td align="center"><s:checkbox name="officialHolidayView" id="officialHolidayView"/></td>
                                                                        <td align="center"><s:checkbox name="officialHolidayManage" id="officialHolidayManage"/></td>
                                                                    </tr>
                                                                    <tr class="bgGreen1">
                                                                        <td>&nbsp;&nbsp;&nbsp;> No Transaction</td>
                                                                        <td align="center"><s:checkbox name="noTransactionView" id="noTransactionView"/></td>
                                                                        <td align="center"><s:checkbox name="noTransactionManage" id="noTransactionManage"/></td>
                                                                    </tr>
                                                                    <tr class="bgGreen2">
                                                                        <td colspan="3">Defect Log</td>
                                                                    </tr>
                                                                    <tr class="bgGreen1">
                                                                        <td>&nbsp;&nbsp;&nbsp;> Defect Log</td>
                                                                        <td align="center"><s:checkbox name="defectLogView" id="defectLogView"/></td>
                                                                        <td align="center"><s:checkbox name="defectLogManage" id="defectLogManage"/></td>
                                                                    </tr>

                                                                    <tr class="bgGreen2">
                                                                        <td colspan="3">System</td>
                                                                    </tr>
                                                                    <tr class="bgGreen1">
                                                                        <td>&nbsp;&nbsp;&nbsp;> Help</td>
                                                                        <td align="center"><s:checkbox name="helpView" id="helpView"/></td>
                                                                        <td align="center"><s:checkbox name="helpManage" id="helpManage"/></td>
                                                                    </tr>
                                                                    <tr class="bgGreen2">
                                                                        <td>&nbsp;&nbsp;&nbsp;> Q&A</td>
                                                                        <td align="center"><s:checkbox name="qaView" id="qaView"/></td>
                                                                        <td align="center"><s:checkbox name="qaManage" id="qaManage"/></td>
                                                                    </tr>
                                                                    <tr class="bgGreen1">
                                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;>> Q&A Group</td>
                                                                        <td align="center"><s:checkbox name="qaGroupView" id="qaGroupView"/></td>
                                                                        <td align="center"><s:checkbox name="qaGroupManage" id="qaGroupManage"/></td>
                                                                    </tr>
                                                                    <tr class="bgGreen2">
                                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;>> Submit Q&A</td>
                                                                        <td align="center"><s:checkbox name="submitQaView" id="submitQaView"/></td>
                                                                        <td align="center"><s:checkbox name="submitQaManage" id="submitQaManage"/></td>
                                                                    </tr>
                                                                    <tr class="bgGreen1">
                                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;>> View Q&A</td>
                                                                        <td align="center"><s:checkbox name="viewQaView" id="viewQaView"/></td>
                                                                        <td align="center"><s:checkbox name="viewQaManage" id="viewQaManage"/></td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>

                                                    </table>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td height=30 align="right"><b>Sfi Right :</b></td>
                                                <td>
                                                    <div id="divSfiRight" style="display:none;">
                                                        <table width="100%">
                                                            <tr bgcolor="#E7FFC8">
                                                                <td>
                                                                    <input type="button" id="btnSelectAllSfiRight" name="btnSelectAllSfiRight" value="Select All" onclick="selectAllSfiRight()"/>
                                                                </td>
                                                            </tr>
                                                            <c:forEach items="${requestScope.organizationWithOutFPOList}" var="thisOrganization" varStatus="rowCounter">
                                                                <c:if test="${rowCounter.count mod 2 ne 0}">
                                                                    <tr>
                                                                        <td>
                                                                            <input type="checkbox" name="sfiRight" id="${thisOrganization.abbreviationEn}" value="${thisOrganization.abbreviationEn}"/>${thisOrganization.nameTh}
                                                                        </td>
                                                                </c:if>
                                                                <c:if test="${rowCounter.count mod 2 eq 0}">
                                                                        <td>
                                                                            <input type="checkbox" name="sfiRight" id="${thisOrganization.abbreviationEn}" value="${thisOrganization.abbreviationEn}"/>${thisOrganization.nameTh}
                                                                        </td>
                                                                    </tr>
                                                                </c:if>
                                                            </c:forEach>
                                                        </table>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td height=30 align="right"><b>Enable :</b></td>
                                                <td>
                                                    <s:checkbox name="status"/>
                                                </td>
                                            </tr>
                                        </table>
                                        <table width="100%">
                                            <tr>
                                                <td width="100%" align="center">
                                                    <s:submit id="saveBtn" value="Save" cssClass="button" method="save" onclick="return validateForm();"/>&nbsp;
                                                    <s:reset name="resetBtn" value="Reset" cssClass="button"/>&nbsp;
                                                    <s:submit id="backBtn" method="back" value="Back" cssClass="button"/>
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
    
    var isSubmit = false;
    function validateForm() {
        if(isSubmit){
            thisForm.saveBtn.disabled = true;
            thisForm.resetBtn.disabled = true;
            thisForm.backBtn.disabled = true;
            return false;
        }
        if (isEmptyById('userId')) {
            if (isEmptyById('username')) {
                alert('Please Input Username !!');
                document.getElementById('username').focus();
                return false;
            } else {
                if (checkLoginName()) {
                    return false;
                }
            }
        }
        if (isEmptyById('password')) {
            alert('Please Input Password !!');
            document.getElementById('password').focus();
            return false;
        }
        if (isEmptyById('thaiName')) {
            alert('Please Input Thai Name !!');
            document.getElementById('thaiName').focus();
            return false;
        }
        if (isEmptyById('englishName')) {
            alert('Please Input English Name !!');
            document.getElementById('englishName').focus();
            return false;
        }
        if (document.getElementById('organization').selectedIndex == 0) {
            alert('Please Select Organization Name !!');
            return false;
        }
        if (isEmptyById('email')) {
            alert("Please Input Email !!");
            document.getElementById('email').focus();
            return false;
        }
        var email = document.getElementById('email');
        if (checkEmail(email.value)) {
            alert("Email Invalid Format !!");
            email.value = EMPTY;
            email.focus();
            return false
        }
        if (isEmptyById('role')) {
            alert("Please Select Role !!");
            return false;
        }
        isSubmit = true;
        return true;
    }

    var roleALL = new Array('newsInformationView','newsInformationManage','userManagementView','userManagementManage','sfiManagementView',
                            'sfiManagementManage','branchCodeView','branchCodeManage','structuredDatasetView','structuredDatasetManage',
                            'classificationView','classificationManage','isicCodeView','isicCodeManage','governmentAgencyCodeView',
                            'governmentAgencyCodeManage','reportTypeView','reportTypeManage','unstructuredDatasetView','unstructuredDatasetManage',
                            'submitStructuredView','viewSubmittedStructuredView','submitAdjustView','viewSumbittedAdjustView','submitUnstructuredView',
                            'viewSubmittedUnstructuredView','structuredTransferView','adjustStructuredTransferView','activityView','documentStatusView',
                            'documentStatusUnstructuredView','executiveReportView','executiveReportManage','kpiReportStructuredView','monitoringSubmitDatasetView',
                            'monitoringUnstructuredView','definedDataView','definedDataManage','exportDataView','exportDataManage','definedDataUnstructuredView','definedDataUnstructuredManage','exportDataUnstructuredView','exportDataUnstructuredManage',
                            'systemView','systemManage','frequencyView','frequencyManage','sendingWaiveView',
                            'sendingWaiveManage','helpView','helpManage','officialHolidayView','officialHolidayManage',
                            'noTransactionView','noTransactionManage','submitPublishDocumentView','viewPublishDocumentView','viewPublishDocumentManage',
                            'viewPublishView','viewPublishManage','rulesValidationView','rulesValidationManage','viewSubmittedUnstructuredManage',
                            'compositeRatingAndInputView','compositeRatingAndInputManage','uploadCSVFileFroBIView','uploadCSVFileFroBIManage','moveUnStructuredManage','kpiReportStructuredBySearchView','frequencyUnstructuredView',
                            'frequencyUnstructuredManage','sendingWaiveUnstructuredView','sendingWaiveUnstructuredManage','kpiReportUnstructuredView','defectLogView','defectLogManage','exportLogReportView',
                            'qaView','qaManage','qaGroupView','qaGroupManage','submitQaView','submitQaManage','viewQaView','viewQaManage');
    var roleADM = new Array('newsInformationView','newsInformationManage','userManagementView','userManagementManage','sfiManagementView',
                            'sfiManagementManage','branchCodeView','branchCodeManage','structuredDatasetView','structuredDatasetManage',
                            'classificationView','classificationManage','isicCodeView','isicCodeManage','governmentAgencyCodeView',
                            'governmentAgencyCodeManage','reportTypeView','reportTypeManage','unstructuredDatasetView','unstructuredDatasetManage',
                            'submitStructuredView','viewSubmittedStructuredView','submitAdjustView','viewSumbittedAdjustView','submitUnstructuredView',
                            'viewSubmittedUnstructuredView','structuredTransferView','adjustStructuredTransferView','activityView','documentStatusView',
                            'documentStatusUnstructuredView','executiveReportView','executiveReportManage','kpiReportStructuredView','monitoringSubmitDatasetView',
                            'monitoringUnstructuredView','definedDataView','definedDataManage','exportDataView','exportDataManage','definedDataUnstructuredView','definedDataUnstructuredManage','exportDataUnstructuredView','exportDataUnstructuredManage',
                            'systemView','systemManage','frequencyView','frequencyManage','sendingWaiveView',
                            'sendingWaiveManage','helpView','helpManage','submitPublishDocumentView','viewPublishDocumentView',
                            'viewPublishDocumentManage','viewPublishView','viewPublishManage','rulesValidationView','rulesValidationManage',
                            'moveUnStructuredManage','kpiReportStructuredBySearchView','frequencyUnstructuredView','frequencyUnstructuredManage','sendingWaiveUnstructuredView',
                            'sendingWaiveUnstructuredManage','kpiReportUnstructuredView','defectLogView','defectLogManage','exportLogReportView',
                            'qaView','qaManage','qaGroupView','qaGroupManage','submitQaView','submitQaManage','viewQaView','viewQaManage','compositeRatingAndInputManage','uploadCSVFileFroBIManage');
    var roleMIS = new Array('newsInformationView','newsInformationManage','sfiManagementView','sfiManagementManage','branchCodeView','branchCodeManage','structuredDatasetView','structuredDatasetManage',
                            'classificationView','classificationManage','isicCodeView','isicCodeManage','governmentAgencyCodeView','governmentAgencyCodeManage','unstructuredDatasetView','unstructuredDatasetManage',
                            'submitStructuredView','viewSubmittedStructuredView','submitAdjustView','viewSumbittedAdjustView','submitUnstructuredView',
                            'viewSubmittedUnstructuredView','structuredTransferView','adjustStructuredTransferView','activityView','documentStatusView',
                            'documentStatusUnstructuredView','executiveReportView','executiveReportManage','kpiReportStructuredView','monitoringSubmitDatasetView',
                            'frequencyView','frequencyManage','sendingWaiveView','sendingWaiveManage','helpView','helpManage',
                            'moveUnStructuredManage','kpiReportStructuredBySearchView','frequencyUnstructuredView','frequencyUnstructuredManage','sendingWaiveUnstructuredView',
                            'sendingWaiveUnstructuredManage','kpiReportUnstructuredView','defectLogView','defectLogManage',
                            'qaView','qaManage','qaGroupView','qaGroupManage','submitQaView','submitQaManage','viewQaView','viewQaManage','compositeRatingAndInputManage','uploadCSVFileFroBIManage');
    var roleEIS = new Array('newsInformationView','newsInformationManage','sfiManagementView','sfiManagementManage','branchCodeView',
                            'branchCodeManage','structuredDatasetView','structuredDatasetManage','classificationView','classificationManage',
                            'isicCodeView','isicCodeManage','governmentAgencyCodeView','governmentAgencyCodeManage','unstructuredDatasetView',
                            'unstructuredDatasetManage','submitStructuredView','viewSubmittedStructuredView','submitAdjustView','viewSumbittedAdjustView',
                            'submitUnstructuredView','viewSubmittedUnstructuredView','structuredTransferView','adjustStructuredTransferView','activityView',
                            'documentStatusView','documentStatusUnstructuredView','executiveReportView','executiveReportManage','kpiReportStructuredView',
                            'monitoringSubmitDatasetView', 'frequencyView','frequencyManage','sendingWaiveView','sendingWaiveManage',
                            'helpView','helpManage','moveUnStructuredManage','kpiReportStructuredBySearchView','frequencyUnstructuredView',
                            'frequencyUnstructuredManage','sendingWaiveUnstructuredView','sendingWaiveUnstructuredManage','kpiReportUnstructuredView','defectLogView','defectLogManage');
    var roleSFI = new Array('newsInformationView','newsInformationManage','structuredDatasetView','structuredDatasetManage','unstructuredDatasetView',
                            'unstructuredDatasetManage','submitStructuredView','viewSubmittedStructuredView','submitAdjustView','viewSumbittedAdjustView',
                            'submitUnstructuredView','viewSubmittedUnstructuredView','structuredTransferView','adjustStructuredTransferView','documentStatusView',
                            'documentStatusUnstructuredView','executiveReportView','executiveReportManage','kpiReportStructuredView','monitoringSubmitDatasetView',
                            'helpView','helpManage', 'moveUnStructuredManage','kpiReportStructuredBySearchView','frequencyUnstructuredView',
                            'frequencyUnstructuredManage','sendingWaiveUnstructuredView','sendingWaiveUnstructuredManage','kpiReportUnstructuredView','defectLogView','defectLogManage');

    function getCurrentRole(role){
        return roleALL;
    }

    function showPermission(role) {
        var thisRole = getCurrentRole(role);

        for(var i = 0 ; i < roleALL.length ; i++){
            document.getElementById(roleALL[i]).checked = false;
            document.getElementById(roleALL[i]).disabled = true;
        }
        for(var j = 0 ; j < thisRole.length ; j++){
            document.getElementById(thisRole[j]).disabled = false;
        }
    }
    function showPermissionOnLoad(role) {
        var thisRole = getCurrentRole(role);
        for(var i = 0 ; i < roleALL.length ; i++){
            document.getElementById(roleALL[i]).disabled = true;
        }
        for(var j = 0 ; j < thisRole.length ; j++){
            document.getElementById(thisRole[j]).disabled = false;
        }
    }

    function selectAllRole() {
        var objSelectAllRole = document.user_management_detail.btnSelectAllRole;
        var thisRole = getCurrentRole(document.getElementById('role').value);
        if(thisRole != undefined && thisRole != EMPTY){
            if (objSelectAllRole.value == 'Select All') {
                objSelectAllRole.value = 'Select None';
                for(var i = 0 ; i < thisRole.length ; i++){
                    document.getElementById(thisRole[i]).checked = true;
                }
            } else {
                objSelectAllRole.value = 'Select All';
                for(var j = 0 ; j < thisRole.length ; j++){
                    document.getElementById(thisRole[j]).checked = false;
                }
            }
        } else {
            alert('Please Select Role !!');
        }
    }

    <c:if test="${not empty(requestScope.userId)}">
        showPermissionOnLoad('${requestScope.role}');
        validateSfiRight('${requestScope.organization}');
    </c:if>

    <c:if test="${not empty requestScope.sfiRightList}">
        <c:forEach items="${requestScope.sfiRightList}" var="thisSfiRight">
            <c:if test="${not empty thisSfiRight}">
                document.getElementById('${thisSfiRight}').checked = true;
            </c:if>
        </c:forEach>
    </c:if>
</script>
</body>
</html>