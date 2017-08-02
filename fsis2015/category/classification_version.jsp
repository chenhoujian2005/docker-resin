<%--
  Created by IntelliJ IDEA.
  User: iRambo
  Date: 20-Jan-2012
  Time: 17:08:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="th.go.mof.fpo.Constants" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<html>
<head>
    <title>Simple jsp page</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/includes/css/style.css">
        <link href="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.js"></script>
    <script type="text/javascript">
        function setId(cvid) {
            thisForm.cvid.value = cvid;
        }
        function resetForm() {
            thisForm.version.value = '';
            thisForm.description.value = '';
            thisForm.effectiveDateFrom.value = '';
            thisForm.effectiveDateTo.value = '';

        }
    </script>
</head>
<body>
<s:form action="classification_version">
<s:hidden id="cvid" name="cvid"/>
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
                                    <td width="35%">
                                        <b>Classification Version</b>
                                    </td>
                                    <td width="65%" align="right">
                                        <c:if test="${sessionScope.menuAuthentication.classificationManage}">
                                            <s:submit name="searchItem" value="Search ClassificationItem" method="searchItem" cssClass="button" style="width:150px"/> &nbsp;
                                            <input type="button" class="button" name="butNewAdd" id="butNewAdd" value="Add" style="width:150px" onclick="letsGo('classification_version_detail.action','')"/>
                                         <%--<s:submit action="classification_version_detail"--%>
                                        </c:if>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <table width="100%" class="displayTable">
                                            <tr class="bgGreen2">
                                                <td class="label">Version :</td>
                                                <td colspan="3">
                                                    <s:textfield name="version" id="version" cssStyle="width:150px"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label">Description :</td>
                                                <td colspan="3">
                                                    <s:textfield name="description" id="description" cssStyle="width:350px"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                             <td class="label">Effective Date From :</td>
                                             <td>
                                                 <s:textfield name="effectiveDateFrom" id="effectiveDateFrom" readonly="true" size="8"/>
                                                 <img alt="" border="0" src="../images/dd.gif" name="dateBtn" width="15" height="15"
                                                      onclick="displayCalendar(document.forms[0].effectiveDateFrom,'dd/mm/yyyy',this);"
                                                      align="absmiddle">
                                             </td>
                                                <td class="label">To :</td>
                                                <td>
                                                    <s:textfield name="effectiveDateTo" id="effectiveDateTo" readonly="true" size="8"/>
                                                    <img alt="" border="0" src="../images/dd.gif" name="dateBtn" width="15" height="15"
                                                         onclick="displayCalendar(document.forms[0].effectiveDateTo,'dd/mm/yyyy',this);"
                                                         align="absmiddle">
                                                </td>
                                        </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2">
                                        <s:submit name="search" id="btnSearch" method="search" value="Search" cssClass="button"/> &nbsp;
                                        <button class="button" onclick="resetForm()">Reset</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                         <display:table name="classificationVersionList" id="row" export="false" class="displayTag" requestURI="classification_version.action" style="width:100%;text-align:center" pagesize="50" size="${requestScope.totalRecord}">
                                            <display:column title="Version" style="text-align:left;width:15%;" headerClass="headerTable" sortable="false" sortName="version">
                                               <a href="classification.action?classificationVersionId=${row.id}">${row.version}</a>
                                            </display:column>
                                            <display:column title="Description" property="description" style="text-align:left;width:40%;" headerClass="headerTable" sortable="false" sortName="description"/>
                                            <display:column title="Effective Date For Sfi" property="effectiveDate" style="text-align:center;width:15%;" headerClass="headerTable" sortable="false" sortName="effectiveDate" format="{0,date,dd MMM yyyy}"/>
                                            <display:column title="Effective Date For Fi" property="effectiveDateFi" style="text-align:center;width:15%;" headerClass="headerTable" sortable="false" sortName="effectiveDate" format="{0,date,dd MMM yyyy}"/>

                                             <c:if test="${sessionScope.menuAuthentication.classificationManage}">
                                                <display:column title="Edit" headerClass="headerTable" style="text-align:center;width:10%">
                                                    <img src=../images/edit.gif border="no" align=""
                                                         onclick="letsGo('classification_version_detail.action','${row.id}')" style="cursor:pointer">
                                                </display:column>
                                                <display:column title="Delete" headerClass="headerTable" style="text-align:center;width:10%">
                                                 <div onMouseOver="setId('${row.id}');">
                                                  <s:submit method="delete" type="image" src="../images/delete.gif" onclick="return confirm('Do you want to delete this record ?')" title="Delete"/>
                                                 </div>
                                                </display:column>
                                                <display:column title="Copy" headerClass="headerTable" style="text-align:center;width:9%">
                                                 <div onMouseOver="setId('${row.id}');">
                                                  <s:submit method="copy" type="image" src="../images/copy-icon.png" onclick="return confirm('Do you want to copy this record ?')" title="Copy"/>
                                                 </div>
                                             </display:column>
                                                 </c:if>
                                                <display:column title="Download" url="/category/classification_version_download.action" paramId="versionId" paramProperty="id" headerClass="headerTable" style="width:10%;text-align:center">
                                                    <img src="../images/download_icon2.png" style="border:none" align="" title="Download" width="16" height="16">
                                                </display:column>
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
    
    function letsGo(action, id) {
         var version = document.getElementById("version").value;
         var description = document.getElementById("description").value;
         var effectiveDateFrom = document.getElementById("effectiveDateFrom").value;
         var effectiveDateTo = document.getElementById("effectiveDateTo").value;


         pageLink1 = action + '?id=' + id;
         pageLink2 = '&<%=Constants.ClassificationVersionField.VERSION_HIDDEN%>=' + version;
         pageLink3 = '&<%=Constants.ClassificationVersionField.DESCRIPTION_HIDDEN%>=' + description;
         pageLink4 = '&<%=Constants.ClassificationVersionField.EFFECTIVE_FROM_HIDDEN%>=' + effectiveDateFrom;
         pageLink5 = '&<%=Constants.ClassificationVersionField.EFFECTIVE_TO_HIDDEN%>=' + effectiveDateTo;


        location.href = pageLink1.concat(pageLink2, pageLink3, pageLink4,pageLink5);
    }
    
</script>
</body>
</html>