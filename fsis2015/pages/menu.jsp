<%--
  Created by IntelliJ IDEA.
  User: iRambo
  Date: Feb 14, 2012
  Time: 2:26:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
   <title>Specialized Financial Institutions Information System</title>

   <script type="text/javascript" src="../includes/js/tp/utils.js"></script>
    <script type="text/javascript" src="../includes/jsTree/_lib/jquery.js"></script>
    <script type="text/javascript" src="../includes/jsTree/jquery.jstree.js"></script>
   <script type="text/javascript" class="source below">
    $(function () {
        $("#menuTree").jstree({ "json_data" : {
            "data" : [
                { "data" : "Home", "metadata" : { id : "../home/home.action" }},
                <c:if test="${sessionScope.menuAuthentication.newsInformationView}">
                    { "data" : "News & Information", "metadata" : { id : "../news/news_information.action" } }
                </c:if>
                <c:if test="${sessionScope.menuAuthentication.userManagementView}">
                   , { "data" : "User Management", "metadata" : { id : "../user/user_management.action" } }
                </c:if>
                <c:if test="${sessionScope.menuAuthentication.sfiManagementView || sessionScope.menuAuthentication.branchCodeView}">
                , { "data" : "SFIs Management", "metadata" : { id : "#" },
                  "children" : [
                    <c:if test="${sessionScope.menuAuthentication.sfiManagementView}">
                        { "data" : "SFIs Management", "metadata" :{id:"../sfis/sfi_management.action"} },
                    </c:if>
                    <c:if test="${sessionScope.menuAuthentication.branchCodeView}">
                        ,{ "data" : "Branch Code", "metadata" :{id:"../sfis/branch_code.action"} }
                    </c:if>
                    ]
                }
                </c:if>
                <c:if test="${sessionScope.menuAuthentication.structuredDatasetView || sessionScope.menuAuthentication.unstructuredDatasetView  }">
                ,{ "data" : "Document Category", "metadata" : { id : "#" },
                  "children" : [
                    <c:if test="${sessionScope.menuAuthentication.structuredDatasetView}">
                        { "data" : "Structured Dataset", "metadata" :{id:"../category/structured_dataset.action"},
                          "children" : [
                            <c:if test="${sessionScope.menuAuthentication.classificationView || sessionScope.menuAuthentication.isicCodeView || sessionScope.menuAuthentication.governmentAgencyCodeView || sessionScope.menuAuthentication.reportTypeView || sessionScope.menuAuthentication.rulesValidationView}">
                                    <c:if test="${sessionScope.menuAuthentication.classificationView}">
                                        { "data" : "Classification", "metadata" :{id:"../category/classification_version.action"} }
                                    </c:if>
                                    <c:if test="${sessionScope.menuAuthentication.isicCodeView}">
                                      ,{ "data" : "ISIC Code", "metadata" :{id:"../category/isic_version.action"} }
                                    </c:if>
                                    <c:if test="${sessionScope.menuAuthentication.governmentAgencyCodeView}">
                                        ,{ "data" : "Government Agency Code", "metadata" :{id:"../category/government_agency_code.action"} }
                                    </c:if>
                                    <c:if test="${sessionScope.menuAuthentication.reportTypeView}">
                                        ,{ "data" : "Report Type", "metadata" :{id:"../category/report_type.action"} }
                                    </c:if>
                                    <c:if test="${sessionScope.menuAuthentication.rulesValidationView}">
                                        ,{ "data" : "Rules Validation", "metadata" :{id:"../category/rules_validation.action"} }
                                    </c:if>
                            </c:if>
                            ]
                        }
                    </c:if>
                   <c:if test="${sessionScope.menuAuthentication.unstructuredDatasetView}">
                        ,{ "data" : "Unstructured Dataset", "metadata" :{id:"../category/unstructure_version.action"} }
                   </c:if>
                  <c:if test="${sessionScope.menuAuthentication.moveUnStructuredManage}">
                        ,{ "data" : "Move File Unstructured Dataset", "metadata" :{id:"../category/move_file_unstructured_dataset.action"} }
                  </c:if>
                   ]
                 }
                </c:if>

                <c:if test="${sessionScope.menuAuthentication.submitStructuredView || sessionScope.menuAuthentication.viewSubmittedStructuredView || sessionScope.menuAuthentication.submitAdjustView || sessionScope.menuAuthentication.viewSumbittedAdjustView}">
                ,{ "data" : "Structured Dataset Submission", "metadata" : { id : "#" },
                 "children" : [
                            <c:if test="${sessionScope.menuAuthentication.submitStructuredView}">
                            { "data" : "Submit Structured", "metadata" :{id:"../dataset/submit_structured.action"} }
                            </c:if>
                            <c:if test="${sessionScope.menuAuthentication.viewSubmittedStructuredView}">
                            ,{ "data" : "View Submitted Structured", "metadata" :{id:"../dataset/view_submitted_structured.action"} }
                            </c:if>
                            <c:if test="${sessionScope.menuAuthentication.submitAdjustView}">
                            ,{ "data" : "Submit Adjust", "metadata" :{id:"../dataset/submit_adjust.action"} }
                            </c:if>
                            <c:if test="${sessionScope.menuAuthentication.viewSumbittedAdjustView}">
                            ,{ "data" : "View Submitted Adjust", "metadata" :{id:"../dataset/view_submitted_adjust.action"} }
                            </c:if>
                            ]
                 }
                </c:if>

                <c:if test="${sessionScope.menuAuthentication.submitUnstructuredView || sessionScope.menuAuthentication.viewSubmittedUnstructuredView}">
                , { "data" : "Unstructured Dataset Submission", "metadata" : { id : "#" },
                  "children" : [
                            <c:if test="${sessionScope.menuAuthentication.submitUnstructuredView}">
                            { "data" : "Submit Unstructured", "metadata" :{id:"../dataset/submit_unstructured.action"} }
                            </c:if>
                            <c:if test="${sessionScope.menuAuthentication.viewSubmittedUnstructuredView}">
                            ,{ "data" : "View Submitted Unstructured", "metadata" :{id:"../dataset/view_submitted_unstructured.action"} }
                            </c:if>
                  ]
                }
                </c:if>
                <c:if test="${sessionScope.menuAuthentication.submitPublishDocumentView || sessionScope.menuAuthentication.viewPublishDocumentView || sessionScope.menuAuthentication.viewPublishView}">
                 , { "data" : "Publish Document Submission", "metadata" : { id : "#" },
                  "children" : [
                                <c:if test="${sessionScope.menuAuthentication.viewPublishView}">
                                   { "data" : "Publish Document Group", "metadata" : {id:"../category/publish_document.action"} }
                                </c:if>
                                <c:if test="${sessionScope.menuAuthentication.submitPublishDocumentView}">
                                    ,{ "data" : "Submit Publish Document", "metadata" : {id:"../publish/submit_publish_document.action"} }
                                </c:if>
                                <c:if test="${sessionScope.menuAuthentication.viewPublishDocumentView}">
                                    ,{ "data" : "View Publish Document", "metadata" : {id:"../publish/view_publish_document.action"} }
                                </c:if>
                              ]
                    }
               </c:if>
               <c:if test="${sessionScope.menuAuthentication.uploadCSVFileFroBIView || sessionScope.menuAuthentication.compositeRatingAndInputView}">
                    , { "data" : "Data for BI", "metadata" : { id : "#" } ,
                    "children" :[
                            <c:if test="${sessionScope.menuAuthentication.uploadCSVFileFroBIView}">
                             { "data" : "Upload CSV File for BI", "metadata" : { id : "../csv/csv_upload_view.action" }  }
                            </c:if>
                            <c:if test="${sessionScope.menuAuthentication.compositeRatingAndInputView}">
                            ,{ "data" : "Composite Rating and Input", "metadata" : {id:"../composite/composite_rating.action"} }
                            </c:if>
                          ]
                     }
               </c:if>

              <c:if test="${sessionScope.menuAuthentication.structuredTransferView || sessionScope.menuAuthentication.adjustStructuredTransferView || sessionScope.menuAuthentication.activityView || sessionScope.menuAuthentication.documentStatusView || sessionScope.menuAuthentication.documentStatusUnstructuredView}">
                , { "data" : "Logs", "metadata" : { id : "#" },
                    "children" : [
                             <c:if test="${sessionScope.menuAuthentication.structuredTransferView}">
                                { "data" : "Structured Transfer", "metadata" :{id:"../logs/structured_transfer.action"} }
                             </c:if>
                            <c:if test="${sessionScope.menuAuthentication.adjustStructuredTransferView}">
                                ,{ "data" : "Adjust Structured Transfer", "metadata" :{id:"../logs/adjust_structured_transfer.action"} }
                             </c:if>
                             <c:if test="${sessionScope.menuAuthentication.activityView}">
                               ,{ "data" : "Activity", "metadata" :{id:"../logs/activity.action"} }
                             </c:if>
                             <c:if test="${sessionScope.menuAuthentication.documentStatusView}">
                               ,{ "data" : "Document Status Structured", "metadata" :{id:"../logs/document_status_log.action"} }
                             </c:if>
                             <c:if test="${sessionScope.menuAuthentication.documentStatusUnstructuredView}">
                               ,{ "data" : "Document Status Unstructured", "metadata" :{id:"../logs/document_status_log_unstructured.action"} }
                             </c:if>
                    ]
                }
                </c:if>
                <c:if test="${sessionScope.menuAuthentication.executiveReportView || sessionScope.menuAuthentication.kpiReportStructuredView || sessionScope.menuAuthentication.kpiReportUnstructuredView || sessionScope.menuAuthentication.monitoringSubmitDatasetView || sessionScope.menuAuthentication.monitoringUnstructuredView || sessionScope.menuAuthentication.kpiReportUnstructuredView || sessionScope.menuAuthentication.kpiReportStructuredBySearchView}">
                ,{ "data" : "Report", "metadata" : { id : "#" },
                  "children" : [
                            <c:if test="${sessionScope.menuAuthentication.executiveReportView}">
                                { "data" : "Executive Report", "metadata" :{id:"../report/executive_report.action"} }
                            </c:if>
                            <c:if test="${sessionScope.menuAuthentication.kpiReportStructuredView}">
                               ,{ "data" : "KPI Structured Report", "metadata" :{id:"../report/kpi_report_structured.action"} }
                            </c:if>
                            <c:if test="${sessionScope.menuAuthentication.kpiReportStructuredBySearchView}">
                              ,{ "data" : "KPI Structured By Search", "metadata" :{id:"../report/kpi_report_structured_by_search.action"} }
                            </c:if>

                            //TODO: add menu kpi
                            <c:if test="${sessionScope.menuAuthentication.kpiReportStructuredBOTView}">
                              ,{ "data" : "KPI Structured Report (BOT Status)", "metadata" :{id:"../report/kpi_report_structured_bot.action"} }
                            </c:if>
                            <c:if test="${sessionScope.menuAuthentication.kpiReportStructuredBySearchBOTView}">
                              ,{ "data" : "KPI Structured By Search (BOT Status)", "metadata" :{id:"../report/kpi_report_structured_by_search_bot.action"} }
                            </c:if>

                            <c:if test="${sessionScope.menuAuthentication.kpiReportUnstructuredView}">
                               ,{ "data" : "KPI UnStructured Report", "metadata" :{id:"../report/kpi_report_unstructured.action"} }
                            </c:if>
                            <c:if test="${sessionScope.menuAuthentication.monitoringSubmitDatasetView}">
                               ,{ "data" : "Monitoring Structured", "metadata" :{id:"../report/monitoring_report.action"} }
                            </c:if>
                            <c:if test="${sessionScope.menuAuthentication.monitoringUnstructuredView}">
                               ,{ "data" : "Monitoring Unstructured", "metadata" :{id:"../report/monitoring_unstructured.action"} }
                            </c:if>
                            <c:if test="${sessionScope.menuAuthentication.exportLogReportView}">
                               ,{ "data" : "Export Log Report", "metadata" :{id:"../report/export_log_report.action"} }
                            </c:if>
                            ]
                 }
                </c:if>
                <c:if test="${sessionScope.menuAuthentication.definedDataView || sessionScope.menuAuthentication.exportDataView || sessionScope.menuAuthentication.definedDataUnstructuredView || sessionScope.menuAuthentication.exportDataUnstructuredView}">
               , { "data" : "Export Data", "metadata" : { id : "#" },
                  "children" : [
                        <c:if test="${sessionScope.menuAuthentication.definedDataView}">
                            {  "data" : "Defined Data", "metadata" :{id:"../export/defined_data.action"} }
                        </c:if>
                        <c:if test="${sessionScope.menuAuthentication.exportDataView}">
                            ,{ "data" : "Export Data", "metadata" :{id:"../export/export_data.action"} }
                        </c:if>
                      <c:if test="${sessionScope.menuAuthentication.definedDataUnstructuredView}">
                        ,{ "data" : "Defined Unstructured", "metadata" :{id:"../export/defined_unstructured.action"} }
                      </c:if>
                      <c:if test="${sessionScope.menuAuthentication.exportDataUnstructuredView}">
                        ,{ "data" : "Export Unstructured", "metadata" :{id:"../export/export_unstructured.action"} }
                      </c:if>
                                ]
                 }
                </c:if>
                <c:if test="${sessionScope.menuAuthentication.systemView || sessionScope.menuAuthentication.frequencyView || sessionScope.menuAuthentication.sendingWaiveView || sessionScope.menuAuthentication.frequencyUnstructuredView || sessionScope.menuAuthentication.sendingWaiveUnstructuredView}">
                ,{ "data" : "Configuration", "metadata" : { id : "#" },
                  "children" : [
                     <c:if test="${sessionScope.menuAuthentication.systemView}">
                        { "data" : "System", "metadata" :{id:"../configuration/system.action"} },
                        </c:if>
                        <c:if test="${sessionScope.menuAuthentication.frequencyView}">
                        { "data" : "Frequency Structured", "metadata" :{id:"../configuration/frequency_config.action"} },
                        </c:if>
                        <c:if test="${sessionScope.menuAuthentication.frequencyUnstructuredView}">
                         { "data" : "Frequency UnStructured", "metadata" :{id:"../configuration/frequency_unstructured.action"} },
                        </c:if>
                        <c:if test="${sessionScope.menuAuthentication.sendingWaiveView}">
                        { "data" : "Sending Waive Structured", "metadata" :{id:"../configuration/sending_waive.action"} },
                        </c:if>
                        <c:if test="${sessionScope.menuAuthentication.sendingWaiveUnstructuredView}">
                        { "data" : "Sending Waive UnStructured", "metadata" :{id:"../configuration/sending_waive_unstructure.action"} },
                        </c:if>
                        <c:if test="${sessionScope.menuAuthentication.officialHolidayView}">
                        { "data" : "Official Holiday", "metadata" :{id:"../configuration/official_holiday.action"} },
                        </c:if>
                        <c:if test="${sessionScope.menuAuthentication.noTransactionView}">
                        { "data" : "No Transaction", "metadata" :{id:"../configuration/no_transaction.action"} }
                        </c:if>
                    ]
                 }
                </c:if>
                <c:if test="${sessionScope.menuAuthentication.defectLogView}">
                , { "data" : "Defect Log", "metadata" : { id : "../defectLog/defect_log.action" } }
                </c:if>
                ,{ "data" : "System", "metadata" : { id : "#" },
                  "children" : [
                    { "data" : "Change Password", "metadata" :{id:"../system/change_password.action"} },
                    { "data" : "Log out", "metadata" :{id:"logout"} }
                <c:if test="${sessionScope.menuAuthentication.helpView || sessionScope.menuAuthentication.qaView}">
                ,{ "data" : "Help", "metadata" :{id:"#"},
                      "children" : [
                          <c:if test="${sessionScope.menuAuthentication.helpView}">
                           { "data" : "Help", "metadata" :{id:"../system/help.action"} }
                          </c:if>
                          <c:if test="${sessionScope.menuAuthentication.qaView}">
                          ,{ "data" : "Question & Answer", "metadata" :{id:"#"},
                              "children" : [
                                  <c:if test="${sessionScope.menuAuthentication.qaGroupView}"> { "data" : "Question Group", "metadata" :{id:"../system/question_answer_group.action"} }</c:if>
                                  <c:if test="${sessionScope.menuAuthentication.submitQaView}">,{ "data" : "Submit Question & Answer", "metadata" :{id:"../system/submit_question_answer.action"} }</c:if>
                                  <c:if test="${sessionScope.menuAuthentication.viewQaView}">,{ "data" : "View Question & Answer", "metadata" :{id:"../system/view_question_answer.action"} }</c:if>
                              ]
                          }
                          </c:if>
                      ]
                 }
                 </c:if>

                    ]
                }
            ]
        },
            "plugins" : [ "themes", "json_data", "ui" ] })
                .bind("select_node.jstree", function (e, data) {
                    var state = data.inst.is_open(data.rslt.obj);
                    var webPaths = data.rslt.obj.data("id");
                    if (state) { data.inst.close_node(data.rslt.obj); }
                    else { data.inst.open_node(data.rslt.obj); }
                    if (webPaths != '#' && webPaths!= 'logout') { parent.bodyFrame.location = webPaths; }
                    else if(webPaths == 'logout'){logout();}
                });
            });
      function logout() {
        if (confirm("Are you sure you want to log out?")) {
           parent.bodyFrame.location = '../account/logout.action';
        }
    }
       
    </script>
      <style type="text/css">
        html, body {
            font-family:		tahoma, helv, arial, verdana, sans-serif;
            font-size:			11px;

            /*font-size: 11px;*/
            /*font-family: "Ms Sans Serif";*/
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
    </style>
   <script type="text/javascript" language="javascript">
       $(function() {
           $(this).bind("contextmenu", function(e) {
               e.preventDefault();
           });
       });
   </script>
  </head>
  <body>
   <div id="menuTree" style="padding-top:0px;scrolling:auto;overflow-y:auto;background-color:lightblue;width:250px;height:100%"></div>
  </body>
</html>