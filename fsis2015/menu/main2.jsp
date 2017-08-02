<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Specialized Financial Institutions Information System</title>
    <script type="text/javascript" src="../includes/js/tp/utils.js"></script>
    <script type="text/javascript" src="../includes/jsTree/_lib/jquery.js"></script>
    <script type="text/javascript" src="../includes/jsTree/jquery.jstree.js"></script>
    <style type="text/css">
        html, body {
            font-size: 11px;
            font-family: "Ms Sans Serif";
            overflow-x: hidden;
            overflow-y: hidden;
            margin:0px;
            padding:0px;
            height: 100%;
            border: none;
        }
        table {
            margin:0px;
            padding:0px;
         }
        #menuTree{
            height:100%; 
        }
    </style>
    <script type="text/javascript" class="source below">
    $(function () {
        //$("#menuTree").jstree({ "plugins" : ["themes","html_data","ui"] })
        $("#menuTree").jstree({ "plugins" : ["themes","apple","ui"] })
                .bind("select_node.jstree", function (event, data) {
                    var state = data.inst.is_open(data.rslt.obj);
                    var WebPaths = data.rslt.obj.attr("id");
                    if (state) { data.inst.close_node(data.rslt.obj); }
                    else { data.inst.open_node(data.rslt.obj); }
                    if (WebPaths != '#') { window.frames['bodyFrame'].location.href = WebPaths; } })
                .delegate("a", "click", function (event, data) {
        })
    });

    function logout() {
        if (confirm("Are you sure you want to log out?")) {
            window.location = '../account/logout.action';
        }
    }
</script>
</head>
<body>
<s:form action="main" cssStyle="width:100%;height:100%">
<table style="width:100%;height:100%;" border="0" cellspacing="0px" cellpadding="0px">
<tr style="width:100%;height:80px;background-image:url(../images/head/h3.jpg);background-repeat:no-repeat;">
    <td colspan="3"/>
</tr>
<tr>
    <td style="width:100%;height:20px;" colspan="3">
        <table width="100%" border="0px" cellspacing="0px" cellpadding="0px">
            <tr id="upperbar">
                <td width="50%" align="left" background="../images/bg_negative.gif" class="navicator">&nbsp;</td>
                <td height="25" background="../images/bg_negative.gif" class="txtWhite" align="right">
                    <b>
                        <span style="color:#FFFFFF; font-family:Verdana; color:#A5FFA7; font-size:12px;">Welcome </span>
                        <span style="color:#FFFFFF; font-family:Verdana; color:white; font-size:12px;">${sessionScope.userLogin.userName} (${sessionScope.userLogin.fullNameRole}), ${sessionScope.userLogin.sfi.abbreviationEn} </span>
                        <font face="Arial Narrow" color="orange" onclick="logout();"
                              onmouseover="this.style.cursor='hand'; style.color='#A5FFA7';"
                              onmouseout="style.color='orange'"
                              style="padding-right:5px; padding-left:15px; font-size:12px; cursor:pointer;">Log out</font>
                    </b>
                </td>
            </tr>
        </table>
    </td>
</tr>
<tr>
<td valign="top" style="background-color:lightcyan;width:240px;height:100%;overflow-y:scroll;overflow-x:hidden;">
<br/>
<div id="menuTree" style="background-color:lightcyan;width:240px;height:80%">
<ul>
    <li id="../home/home.action"><a href="#">Home</a></li>
    <c:if test="${sessionScope.menuAuthentication.newsInformationView}">
        <li id="../news/news_information.action"><a href="#">News & Information</a></li>
    </c:if>
    <c:if test="${sessionScope.menuAuthentication.userManagementView}">
        <li id="../user/user_management.action"><a href="#">User Management</a></li>
    </c:if>
    <c:if test="${sessionScope.menuAuthentication.sfiManagementView || sessionScope.menuAuthentication.branchCodeView}">
        <li id="#" class="jstree-close"><a href="#">SFIs Management</a>
            <ul>
                <c:if test="${sessionScope.menuAuthentication.sfiManagementView}">
                    <li id="../sfis/sfi_management.action"><a href="#">SFIs Management</a></li>
                </c:if>
                <c:if test="${sessionScope.menuAuthentication.branchCodeView}">
                    <li id="../sfis/branch_code.action"><a href="#">Branch Code</a></li>
                </c:if>
            </ul>
        </li>
    </c:if>
    <c:if test="${sessionScope.menuAuthentication.structuredDatasetView || sessionScope.menuAuthentication.unstructuredDatasetView || sessionScope.menuAuthentication.rulesValidationView}">
        <li id="#" class="jstree-close"><a href="#">Document Category</a>
            <ul>
                <c:if test="${sessionScope.menuAuthentication.structuredDatasetView}">
                    <li id="../category/structured_dataset.action" class="jstree-close">
                        <a href="#">Structured Dataset</a>
                        <ul>
                            <c:if test="${sessionScope.menuAuthentication.classificationView || sessionScope.menuAuthentication.isicCodeView || sessionScope.menuAuthentication.governmentAgencyCodeView || sessionScope.menuAuthentication.reportTypeView}">
                                <c:if test="${sessionScope.menuAuthentication.classificationView}">
                                    <li id="../category/classification.action"><a href="#">Classification</a></li>
                                    <li id="../category/classification_version.action"><a href="#">Classification Version</a></li>
                                </c:if>
                                <c:if test="${sessionScope.menuAuthentication.isicCodeView}">
                                    <li id="../category/isic_version.action"><a href="#">ISIC Code</a> </li>
                                </c:if>
                                <c:if test="${sessionScope.menuAuthentication.governmentAgencyCodeView}">
                                    <li id="../category/government_agency_code.action">
                                        <a href="#">Government Agency Code</a></li>
                                </c:if>
                                <c:if test="${sessionScope.menuAuthentication.reportTypeView}">
                                    <li id="../category/report_type.action"><a href="#">Report</a>
                                    </li>
                                </c:if>
                            </c:if>
                        </ul>
                    </li>
                </c:if>
                <c:if test="${sessionScope.menuAuthentication.unstructuredDatasetView}">
                    <li id="../category/unstructured_dataset.action"><a href="#">Unstructured Dataset</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.menuAuthentication.rulesValidationView}">
                    <li id="../category/rules_validation.action"><a href="#">Rules Validation</a></li>
                </c:if>
            </ul>
        </li>
    </c:if>
    <c:if test="${sessionScope.menuAuthentication.submitStructuredView || sessionScope.menuAuthentication.viewSubmittedStructuredView || sessionScope.menuAuthentication.submitAdjustView || sessionScope.menuAuthentication.viewSumbittedAdjustView}">
        <li id="#" class="jstree-close"><a href="#">Structured Dataset Submission</a>
            <ul>
                <c:if test="${sessionScope.menuAuthentication.submitStructuredView}">
                    <li id="../dataset/submit_structured.action"><a href="#">Submit Structured</a></li>
                </c:if>
                <c:if test="${sessionScope.menuAuthentication.viewSubmittedStructuredView}">
                    <li id="../dataset/view_submitted_structured.action"><a href="#">View Submitted Structured</a></li>
                </c:if>
                <c:if test="${sessionScope.menuAuthentication.submitAdjustView}">
                    <li id="../dataset/submit_adjust.action"><a href="#">Submit Adjust</a></li>
                </c:if>
                <c:if test="${sessionScope.menuAuthentication.viewSumbittedAdjustView}">
                    <li id="../dataset/view_submitted_adjust.action"><a href="#">View Submitted Adjust</a>
                    </li>
                </c:if>
            </ul>
        </li>
    </c:if>
    <c:if test="${sessionScope.menuAuthentication.submitUnstructuredView || sessionScope.menuAuthentication.viewSubmittedUnstructuredView}">
        <li id="#" class="jstree-close"><a href="#">Unstructured Dataset Submission</a>
            <ul>
                <c:if test="${sessionScope.menuAuthentication.submitUnstructuredView}">
                    <li id="../dataset/submit_unstructured.action"><a href="#">Submit Unstructured</a></li>
                </c:if>
                <c:if test="${sessionScope.menuAuthentication.viewSubmittedUnstructuredView}">
                    <li id="../dataset/view_submitted_unstructured.action"><a href="#">View Submitted Unstructured</a></li>
                </c:if>
            </ul>
        </li>
    </c:if>
    <c:if test="${sessionScope.menuAuthentication.structuredTransferView || sessionScope.menuAuthentication.adjustStructuredTransferView || sessionScope.menuAuthentication.activityView || sessionScope.menuAuthentication.documentStatusView}">
        <li id="#" class="jstree-close"><a href="#">Logs</a>
            <ul>
                <c:if test="${sessionScope.menuAuthentication.structuredTransferView}">
                    <li id="../logs/structured_transfer.action"><a href="#">Structured Transfer</a></li>
                </c:if>
                <c:if test="${sessionScope.menuAuthentication.adjustStructuredTransferView}">
                    <li id="../logs/adjust_structured_transfer.action"><a href="#">Adjust Structured Transfer</a></li>
                </c:if>
                <c:if test="${sessionScope.menuAuthentication.activityView}">
                    <li id="../logs/activity.action"><a href="#">Activity</a></li>
                </c:if>
                <c:if test="${sessionScope.menuAuthentication.documentStatusView}">
                    <li id="../logs/document_status_log.action"><a href="#">Document Status</a></li>
                </c:if>
            </ul>
        </li>
    </c:if>
    <c:if test="${sessionScope.menuAuthentication.executiveReportView || sessionScope.menuAuthentication.kpiReportStructuredView || sessionScope.menuAuthentication.kpiReportUnstructuredView || sessionScope.menuAuthentication.monitoringSubmitDatasetView}">
        <li id="#" class="jstree-close"><a href="#">Report</a>
            <ul>
                <c:if test="${sessionScope.menuAuthentication.executiveReportView}">
                    <li id="../report/executive_report.action"><a href="#">Executive Report</a></li>
                </c:if>
                <c:if test="${sessionScope.menuAuthentication.kpiReportStructuredView}">
                    <li id="../report/kpi_report_structured.action"><a href="#">KPI Structured Report</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.menuAuthentication.monitoringSubmitDatasetView}">
                    <li id="../report/monitoring_report.action"><a href="#">Monitoring Submit Dataset</a>
                    </li>
                </c:if>
            </ul>
        </li>
    </c:if>
    <c:if test="${sessionScope.menuAuthentication.definedDataView || sessionScope.menuAuthentication.exportDataView}">
        <li id="#" class="jstree-close"><a href="#">Export Data</a>
            <ul>
                <c:if test="${sessionScope.menuAuthentication.definedDataView}">
                    <li id="../export/defined_data.action"><a href="#">Defined Data</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.menuAuthentication.exportDataView}">
                    <li id="../export/export_data.action"><a href="#">Export Data</a>
                    </li>
                </c:if>
            </ul>
        </li>
    </c:if>
    <c:if test="${sessionScope.menuAuthentication.systemView || sessionScope.menuAuthentication.frequencyView || sessionScope.menuAuthentication.sendingWaiveView}">
        <li id="#" class="jstree-close"><a href="#">Configuration</a>
            <ul>
                <c:if test="${sessionScope.menuAuthentication.systemView}">
                    <li id="../configuration/system.action"><a href="#">System</a></li>
                </c:if>
                    <%--<c:if test="${sessionScope.menuAuthentication.frequencyView}">--%>
                    <%--var frequencyNode = new YAHOO.widget.TextNode({label:"Frequency",id:"../configuration/frequency.action"}, ConfigurationNode, false);--%>
                    <%--</c:if>--%>
                <c:if test="${sessionScope.menuAuthentication.frequencyView}">
                    <li id="../configuration/frequency_config.action"><a href="#">Frequency</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.menuAuthentication.sendingWaiveView}">
                    <li id="../configuration/sending_waive.action"><a href="#">Sending Waive</a></li>
                </c:if>
                <c:if test="${sessionScope.menuAuthentication.officialHolidayView}">
                    <li id="../configuration/official_holiday.action"><a href="#">Official Holiday</a></li>
                </c:if>
                <c:if test="${sessionScope.menuAuthentication.noTransactionView}">
                    <li id="../configuration/no_transaction.action"><a href="#">No Transaction</a>
                    </li>
                </c:if>
            </ul>
        </li>
    </c:if>
    <li id="#" class="jstree-close"><a href="#">System</a>
        <ul>
            <li id="../system/change_password.action"><a href="#">Change Password</a>
            </li>
            <li id="#" class="jstree-close" onclick="logout()"><a href="#">Log out</a>
            </li>
            <c:if test="${sessionScope.menuAuthentication.helpView}">
                <li id="../system/help.action"><a href="#">Help</a></li>
            </c:if>
        </ul>
    </li>
</ul>
</div>
</td>
<td style="vertical-align:top;height:100%;width:100%;">
    <iframe src="../home/home.action"
            id="bodyFrame" name="bodyFrame"
            frameborder="0" border="0" width="100%" height="83%" scrolling="auto">
    </iframe>
</td>
</tr>
</table>
</s:form>
</body>
</html>