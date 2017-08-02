<%--
  Created by IntelliJ IDEA.
  User: iRambo
  Date: Feb 16, 2012
  Time: 4:24:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="th.go.mof.fpo.Constants" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><title>Simple jsp page</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/includes/css/style.css">

    <script type="text/javascript">
        function setId(id) {
            thisForm.deleteReportUpload.value = id;
        }

        function resetForm() {
            thisForm.reportName.value = '';
            thisForm.description.value = '';
            document.getElementById("enable").checked = true;
            document.getElementById("disable").checked = false;
        }
    </script>
</head>
  <body>

  <s:form action="view_publish_document">
      <s:hidden id="deleteReportUpload" name="deleteReportUpload"/>
      <s:hidden id="errrMassage" name="errrMassage"/>
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
                    <tr>  <td width="43" background="../images/table004.gif"><img src="../images/table004.gif" width="43" height="37" alt=""></td>
                        <td>
                            <table width="100%" border="0" align="center" style="height:100%">
                                <tr>
                                    <td>
                                        <%--content here--%>
                                        <table width="100%">
                                            <tr>
                                                <td><b>View Publish Document </b></td>
                                            </tr>
                                        </table>
                                        <table width="100%" class="displayTable">
                                            <tr class="bgGreen2">
                                                <td align="right" width="20%">Name :</td>
                                                <td><s:textfield name="reportName" id="reportName" size="50"/></td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td align="right" width="20%">Description :</td>
                                                <td><s:textfield name="description" id="description" size="70"/><br>
                                                    Search Publish Document description.
                                                </td>
                                            </tr>
                                             <c:if test="${sessionScope.menuAuthentication.viewPublishDocumentManage}">
                                             <tr class="bgGreen2">
                                                 <td align="right">Status :</td>
                                                 <%--<td><s:checkbox name="status" id="status"/> </td>--%>
                                                 <td>
                                                     <s:checkbox name="enable" id="enable"/>Enable
                                                     <s:checkbox name="disable" id="disable" />Disable
                                                 </td>
                                            </tr>
                                            </c:if>
                                            <c:if test="${sessionScope.menuAuthentication.viewPublishDocumentManage eq false}">
                                                 <s:hidden id="enable" name="enable" value="true"/>
                                            </c:if>
                                        </table>
                                        <table width="100%">
                                            <tr>
                                                <td width="100%" align="center">
                                                    <s:submit name="search" value="Search" cssClass="button" method="search"/>&nbsp;
                                                    <button class="button" onclick="resetForm()">Reset</button>
                                                </td>
                                            </tr>
                                        </table>
                                        <c:if test="${requestScope.resultList ne null}">
                                        <display:table name="resultList" id="row" export="false" class="displayTag" requestURI="view_publish_document.action" style="width:100%;text-align:center" pagesize="15">
                                            <display:column title="Group" style="text-align:center;width:25%" headerClass="headerTable" sortable="true">
                                                    ${row.reportTitle.reportName}
                                            </display:column>
                                            <display:column title="Name" property="reportName" style="text-align:center;width:15%" headerClass="headerTable" sortable="true"/>
                                            <%--<display:column title="Name" property="originalFileName" style="text-align:center;width:15%" headerClass="headerTable" sortable="true"/>--%>
                                            <display:column title="Description" property="description" style="text-align:left;width:20%" headerClass="headerTable" sortable="true"/>
                                            <display:column title="Upload By" property="createBy" style="text-align:center;width:15%" headerClass="headerTable" sortable="true"/>
                                           <c:if test="${sessionScope.menuAuthentication.viewPublishDocumentManage}">
                                               <display:column title="Status" style="text-align:center;width:10%" headerClass="headerTable" sortable="true">
                                                <c:choose> <c:when test="${row.status eq true}">Enable</c:when> <c:otherwise>Disable</c:otherwise> </c:choose>
                                            </display:column>
                                                <display:column title="Edit" headerClass="headerTable" style="text-align:center;width:5%">
                                                     <%--<a href="../publish/submit_publish_document_detail.action?reportUploadId=${row.id}">--%>  <%--</a>--%>
                                                          <img src="../images/edit.gif " border="no" title="Edit" onclick="letsGo('submit_publish_document_detail.action','${row.id}')" style="cursor:pointer"/>
                                                </display:column>
                                                <display:column title="Delete" headerClass="headerTable" style="text-align:center;width:5%">
                                                 <div onMouseOver="setId('${row.id}');">
                                                  <s:submit method="delete" type="image" src="../images/delete.gif" onclick="return confirm('Do you want to delete this record ?')" title="Delete"/>
                                                 </div>
                                                </display:column>
                                            </c:if>
                                            <display:column title="Download" url="/publish/download_publish_document.action" paramId="reportUploadId" paramProperty="id" headerClass="headerTable" style="width:5%;text-align:center">
                                                 <img src="../images/download_icon2.png" style="border:none" width="16" height="16">
                                            </display:column>
                                        </display:table>
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


    function letsGo(action, id) {
        var reportName = document.getElementById('reportName').value;
        var desc = document.getElementById('description').value;

        pageLink1 = action + '?reportUploadId=' + id;
        pageLink2 = '&<%=Constants.ViewPublishDocument.REPORT_NAME_HIDDEN%>=' + reportName;
        pageLink3 = '&<%=Constants.ViewPublishDocument.DESCRIPTION_HIDDEN %>=' + desc;

        location.href = pageLink1.concat(pageLink2, pageLink3);
    }


    </script>
  </body>
</html>