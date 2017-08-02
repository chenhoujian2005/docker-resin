<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>Specialized Financial Institutions Information System</title>

<link rel="stylesheet" type="text/css" href="../includes/css/reset.css">
<link rel="stylesheet" type="text/css" href="../includes/css/fonts.css">
<link rel="stylesheet" type="text/css" href="../includes/css/treeview.css">
<link rel="stylesheet" type="text/css" href="../includes/css/menu.css">

<script type="text/javascript" src="../includes/js/yahoo-dom-event.js"></script>
<script type="text/javascript" src="../includes/js/container_core.js"></script>
<script type="text/javascript" src="../includes/js/treeview.js"></script>
<script type="text/javascript" src="../includes/js/menu.js"></script>
<script type="text/javascript" src="../includes/js/tp/utils.js"></script>

<script type="text/javascript">
    YAHOO.util.Event.onAvailable("treeMenu", function () {
        var oTreeView = new YAHOO.widget.TreeView("treeMenu");

            var homeNode = new YAHOO.widget.TextNode({label:"Home",id:"../home/home.action"}, oTreeView.getRoot(), true);
            <c:if test="${sessionScope.menuAuthentication.newsInformationView}">
                var newsInformationNode = new YAHOO.widget.TextNode({label:"News & Information",id:"../news/news_information.action"}, oTreeView.getRoot(), false);
            </c:if>
            <c:if test="${sessionScope.menuAuthentication.userManagementView}">
                var userManagementsNode = new YAHOO.widget.TextNode({label:"User Management",id:"../user/user_management.action"}, oTreeView.getRoot(), false);
            </c:if>
            <c:if test="${sessionScope.menuAuthentication.sfiManagementView || sessionScope.menuAuthentication.branchCodeView}">
                var SFIsManagementNode = new YAHOO.widget.TextNode({label:"SFIs Management",id:"SFIs Management"},oTreeView.getRoot(), false);
                <c:if test="${sessionScope.menuAuthentication.sfiManagementView}">
                    var sfiSManagementNode = new YAHOO.widget.TextNode({label:"SFIs Management",id:"../sfis/sfi_management.action"}, SFIsManagementNode, false);
                </c:if>
                <c:if test="${sessionScope.menuAuthentication.branchCodeView}">
                    var branchCodeNode = new YAHOO.widget.TextNode({label:"Branch Code",id:"../sfis/branch_code.action"}, SFIsManagementNode, false);
                </c:if>
            </c:if>
            <c:if test="${sessionScope.menuAuthentication.structuredDatasetView || sessionScope.menuAuthentication.unstructuredDatasetView}">
                var documentCategoryNode = new YAHOO.widget.TextNode({label:"Document Category",id:"DocumentCategory"}, oTreeView.getRoot(), false);
                <c:if test="${sessionScope.menuAuthentication.structuredDatasetView}">
                    var structuredDataSetNode = new YAHOO.widget.TextNode({label:"Structured Dataset",id:"../category/structured_dataset.action"}, documentCategoryNode, false);
                    <c:if test="${sessionScope.menuAuthentication.classificationView || sessionScope.menuAuthentication.isicCodeView || sessionScope.menuAuthentication.governmentAgencyCodeView || sessionScope.menuAuthentication.reportTypeView}">
                        <c:if test="${sessionScope.menuAuthentication.classificationView}">
                            var classificationNode = new YAHOO.widget.TextNode({label:"Classification",id:"../category/classification.action"}, structuredDataSetNode, false);
                        </c:if>
                        <c:if test="${sessionScope.menuAuthentication.isicCodeView}">
                        var isiCCodeNode = new YAHOO.widget.TextNode({label:"ISIC Code",id:"../category/isic_version.action"}, structuredDataSetNode, false);
                        </c:if>

                        <c:if test="${sessionScope.menuAuthentication.governmentAgencyCodeView}">
                            var governmentAgencyCodeNode = new YAHOO.widget.TextNode({label:"Government Agency Code",id:"../category/government_agency_code.action"}, structuredDataSetNode, false);
                        </c:if>
                        <c:if test="${sessionScope.menuAuthentication.reportTypeView}">
                            var reportTypeNode = new YAHOO.widget.TextNode({label:"Report Type",id:"../category/report_type.action"}, structuredDataSetNode, false);
                        </c:if>
                    </c:if>
                </c:if>
                <c:if test="${sessionScope.menuAuthentication.unstructuredDatasetView}">
                    var unStructuredDataSetNode = new YAHOO.widget.TextNode({label:"Unstructured Dataset",id:"../category/unstructured_dataset.action"}, documentCategoryNode, false);
                </c:if>
            </c:if>
            <c:if test="${sessionScope.menuAuthentication.submitStructuredView || sessionScope.menuAuthentication.viewSubmittedStructuredView || sessionScope.menuAuthentication.submitAdjustView || sessionScope.menuAuthentication.viewSumbittedAdjustView}">
                var structuredDataSetSubmissionNode = new YAHOO.widget.TextNode({label:"Structured Dataset Submission",id:"Structured Dataset Submission"}, oTreeView.getRoot(), false);
                <c:if test="${sessionScope.menuAuthentication.submitStructuredView}">
                    var submitStructuredNode = new YAHOO.widget.TextNode({label:"Submit Structured",id:"../dataset/submit_structured.action"}, structuredDataSetSubmissionNode, false);
                </c:if>
                <c:if test="${sessionScope.menuAuthentication.viewSubmittedStructuredView}">
                    var viewSubmittedStructuredNode = new YAHOO.widget.TextNode({label:"View Submitted Structured",id:"../dataset/view_submitted_structured.action"}, structuredDataSetSubmissionNode, false);
                </c:if>
                <c:if test="${sessionScope.menuAuthentication.submitAdjustView}">
                    var submitAdjustNode = new YAHOO.widget.TextNode({label:"Submit Adjust",id:"../dataset/submit_adjust.action"}, structuredDataSetSubmissionNode, false);
                </c:if>
                <c:if test="${sessionScope.menuAuthentication.viewSumbittedAdjustView}">
                    var viewSubmittedAdjustNode = new YAHOO.widget.TextNode({label:"View Submitted Adjust",id:"../dataset/view_submitted_adjust.action"}, structuredDataSetSubmissionNode, false);
                </c:if>
            </c:if>
            <c:if test="${sessionScope.menuAuthentication.submitUnstructuredView || sessionScope.menuAuthentication.viewSubmittedUnstructuredView}">
                var unStructuredDataSetSubmissionNode = new YAHOO.widget.TextNode({label:"Unstructured Dataset Submission",id:"Unstructured Dataset Submission"}, oTreeView.getRoot(), false);
                <c:if test="${sessionScope.menuAuthentication.submitUnstructuredView}">
                    var submitUnstructuredNode = new YAHOO.widget.TextNode({label:"Submit Unstructured",id:"../dataset/submit_unstructured.action"}, unStructuredDataSetSubmissionNode, false);
                </c:if>
                <c:if test="${sessionScope.menuAuthentication.viewSubmittedUnstructuredView}">
                    var viewSubmittedUnstructuredNode = new YAHOO.widget.TextNode({label:"View Submitted Unstructured",id:"../dataset/view_submitted_unstructured.action"}, unStructuredDataSetSubmissionNode, false);
                </c:if>
            </c:if>
            <c:if test="${sessionScope.menuAuthentication.structuredTransferView || sessionScope.menuAuthentication.adjustStructuredTransferView || sessionScope.menuAuthentication.activityView || sessionScope.menuAuthentication.documentStatusView || sessionScope.menuAuthentication.documentStatusUnstructuredView}">
                var logsNode = new YAHOO.widget.TextNode({label:"Logs",id:"Logs"}, oTreeView.getRoot(), false);
                <c:if test="${sessionScope.menuAuthentication.structuredTransferView}">
                    var structuredTransferNode = new YAHOO.widget.TextNode({label:"Structured Transfer",id:"../logs/structured_transfer.action"}, logsNode, false);
                </c:if>
                <c:if test="${sessionScope.menuAuthentication.adjustStructuredTransferView}">
                    var adjustStructuredTransferNode = new YAHOO.widget.TextNode({label:"Adjust Structured Transfer",id:"../logs/adjust_structured_transfer.action"}, logsNode, false);
                </c:if>
                <c:if test="${sessionScope.menuAuthentication.activityView}">
                    var activityNode = new YAHOO.widget.TextNode({label:"Activity",id:"../logs/activity.action"}, logsNode, false);
                </c:if>
                <c:if test="${sessionScope.menuAuthentication.documentStatusView}">
                    var documentStatusLogNode = new YAHOO.widget.TextNode({label:"Document Status",id:"../logs/document_status_log.action"}, logsNode, false);
                </c:if>
                <c:if test="${sessionScope.menuAuthentication.documentStatusUnstructuredView}">
                    var documentStatusUnStructuredLogNode = new YAHOO.widget.TextNode({label:"Document UnStructured Status",id:"../logs/document_status_log.action"}, logsNode, false);
                </c:if>
            </c:if>

            <c:if test="${sessionScope.menuAuthentication.executiveReportView || sessionScope.menuAuthentication.kpiReportStructuredView || sessionScope.menuAuthentication.kpiReportUnstructuredView ||sessionScope.menuAuthentication.kpiReportStructuredBySearchView || sessionScope.menuAuthentication.monitoringSubmitDatasetView || sessionScope.menuAuthentication.monitoringUnstructuredView}">
                var reportNode = new YAHOO.widget.TextNode({label:"Report",id:"Report"}, oTreeView.getRoot(), false);
                <c:if test="${sessionScope.menuAuthentication.executiveReportView}">
                    var executiveReportNode = new YAHOO.widget.TextNode({label:"Executive Report",id:"../report/executive_report.action"}, reportNode, false);
                </c:if>
                <c:if test="${sessionScope.menuAuthentication.kpiReportStructuredView}">
                    var kpiStructuredNode = new YAHOO.widget.TextNode({label:"KPI Structured Report",id:"../report/kpi_report_structured.action"}, reportNode, false);
                </c:if>
                <c:if test="${sessionScope.menuAuthentication.kpiReportUnstructuredView}">
                    var kpiUnStructuredNode = new YAHOO.widget.TextNode({label:"KPI UnStructured Report",id:"../report/kpi_report_structured.action"}, reportNode, false);
                </c:if>
                <c:if test="${sessionScope.menuAuthentication.kpiReportStructuredBySearchView}">
                    var kpiStructuredBySearchNode = new YAHOO.widget.TextNode({label:"KPI Structured By Search",id:"../report/kpi_report_structured_by_search.action"}, reportNode, false);
                </c:if>
                <c:if test="${sessionScope.menuAuthentication.monitoringSubmitDatasetView}">
                    var monitoringStructuredReportNode = new YAHOO.widget.TextNode({label:"Monitoring Submit Dataset",id:"../report/monitoring_report.action"}, reportNode, false);
                </c:if>
                <c:if test="${sessionScope.menuAuthentication.monitoringUnstructuredView}">
                    var monitoringUnStructuredReportNode = new YAHOO.widget.TextNode({label:"Monitoring Submit Dataset",id:"../report/monitoring_report.action"}, reportNode, false);
                </c:if>
            </c:if>
            <c:if test="${sessionScope.menuAuthentication.definedDataView || sessionScope.menuAuthentication.exportDataView}">
                var exportDataNode = new YAHOO.widget.TextNode({label:"Export Data",id:"Export Data"}, oTreeView.getRoot(), false);
                <c:if test="${sessionScope.menuAuthentication.definedDataView}">
                    var definedDataNode = new YAHOO.widget.TextNode({label:"Defined Data",id:"../export/defined_data.action"}, exportDataNode, false);
                </c:if>
                <c:if test="${sessionScope.menuAuthentication.exportDataView}">
                    var exportDatasNode = new YAHOO.widget.TextNode({label:"Export Data",id:"../export/export_data.action"}, exportDataNode, false);
                </c:if>
            </c:if>

            <c:if test="${sessionScope.menuAuthentication.systemView || sessionScope.menuAuthentication.frequencyView || sessionScope.menuAuthentication.frequencyUnstructuredView || sessionScope.menuAuthentication.sendingWaiveView || sessionScope.menuAuthentication.sendingWaiveUnstructuredView}">
                var ConfigurationNode = new YAHOO.widget.TextNode({label:"Configuration",id:"Configuration"}, oTreeView.getRoot(), false);
                <c:if test="${sessionScope.menuAuthentication.systemView}">
                    var systemNode = new YAHOO.widget.TextNode({label:"System",id:"../configuration/system.action"}, ConfigurationNode, false);
                </c:if>
                <c:if test="${sessionScope.menuAuthentication.frequencyView}">
                    var frequencyNode = new YAHOO.widget.TextNode({label:"Frequency Structured",id:"../configuration/frequency_config.action"}, ConfigurationNode, false);
                </c:if>
                <c:if test="${sessionScope.menuAuthentication.frequencyUnstructuredView}">
                   var frequencyUnStructuredNode = new YAHOO.widget.TextNode({label:"Frequency UnStructured",id:"../configuration/frequency_config.action"}, ConfigurationNode, false);
                </c:if>
                <c:if test="${sessionScope.menuAuthentication.sendingWaiveView}">
                    var sendingWaiveStructuredNode = new YAHOO.widget.TextNode({label:"Sending Waive Structured",id:"../configuration/sending_waive.action"}, ConfigurationNode, false);
                </c:if>
                <c:if test="${sessionScope.menuAuthentication.sendingWaiveUnstructuredView}">
                    var sendingWaiveUnStructuredNode = new YAHOO.widget.TextNode({label:"Sending Waive UnStructured",id:"../configuration/sending_waive.action"}, ConfigurationNode, false);
                </c:if>
                <c:if test="${sessionScope.menuAuthentication.officialHolidayView}">
                    var officialHolidayNode = new YAHOO.widget.TextNode({label:"Official Holiday",id:"../configuration/official_holiday.action"}, ConfigurationNode, false);
                </c:if>
                <c:if test="${sessionScope.menuAuthentication.noTransactionView}">
                    var noTransactionNode = new YAHOO.widget.TextNode({label:"No Transaction",id:"../configuration/no_transaction.action"}, ConfigurationNode, false);
                </c:if>
            </c:if>
            var systemNode = new YAHOO.widget.TextNode({label:"System",id:"System"}, oTreeView.getRoot(), false);
                var changePasswordNode = new YAHOO.widget.TextNode({label:"Change Password",id:"../system/change_password.action"}, systemNode, false);
                var logOutNode = new YAHOO.widget.TextNode({label:"Log out",id:"Log out"}, systemNode, false);
                <c:if test="${sessionScope.menuAuthentication.helpView}">
                    var helpNode = new YAHOO.widget.TextNode({label:"Help",id:"../system/help.action"}, systemNode, false);
                </c:if>





        oTreeView.subscribe("labelClick", function(node) {
            if(node.data.id.indexOf(".action") > 0){
                window.frames['bodyFrame'].location.href = node.data.id;
            }
            else if (! node.data.id.indexOf("Log out") > 0){
                logout();
            }
        });
        oTreeView.draw();
    });

    function logout(){
        if (confirm("Are you sure you want to log out?")){
		   window.location = '../account/logout.action';
        }
    }
</script>

<style type="text/css">
    body  {
        font-size: 11px;
        font-family: "Ms Sans Serif";
        overflow-x : hidden;
        overflow-y : hidden;
    }
</style>
</head>
<body leftmargin="0" topmargin="0" SCROLL="no">
<s:form action="main">
<table width="100%" border="0" cellspacing="0" cellpadding="0" style="height:100%">
    <tr style="height:71px">
        <td background="../images/bg_head_m.gif" width="180"><img src="../images/logo_m.gif" width="223" height="71" alt=""></td>
        <td background="../images/bg_head_m.gif">&nbsp;</td>
        <td background="../images/bg_head_m.gif" width="245"><img src="../images/head_02.jpg" alt=""></td>
    </tr>
    <tr>
        <td height="20" colspan="3">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr id="upperbar">
                    <td width="50%" align="left" background="../images/bg_negative.gif" class="navicator">&nbsp;</td>
                    <td height="25" background="../images/bg_negative.gif" class="txtWhite" align="right">
			            <b>
			                <span style="color:#FFFFFF; font-family:Verdana; color:#A5FFA7; font-size:12px;">Welcome </span>
                            <span style="color:#FFFFFF; font-family:Verdana; color:white; font-size:12px;">${sessionScope.userLogin.userName} (${sessionScope.userLogin.fullNameRole})</span>
		                    <font face="Arial Narrow" color="orange" onclick="logout();" onmouseover="this.style.cursor='hand'; style.color='#A5FFA7';" onmouseout="style.color='orange'" style="padding-right:5px; padding-left:15px; font-size:12px;">Log out</font>
			            </b>
		            </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td colspan="3">
            <table width="100%" border="0" cellpadding="0" cellspacing="0" style="height:100%">
                <tr>
                    <td width="210" bgcolor="lightblue" valign="top" style="height:100%;">
                        <div style="height:100%;overflow-y:auto">
                        <table width="100%" style="overflow-y:auto;">
                            <tr><td colspan="2">&nbsp;</td></tr>
                            <tr>
                                <td width="2px">&nbsp;</td>
                                <td>
                                    <div id="treeMenu" style="background-color:lightblue;"/>
                                </td>
                            </tr>
                        </table>
                        </div>
                    </td>
                    <td valign="top" bgcolor="red">
                        <iframe src="../home/home.action" id="bodyFrame" name="bodyFrame" frameborder="0" border=0 width="100%" height="100%" scrolling="auto"></iframe>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</s:form>
</body>
</html>