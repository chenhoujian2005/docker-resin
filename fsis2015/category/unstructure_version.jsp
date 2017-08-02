<%--
  Created by IntelliJ IDEA.
  User: Arisara
  Date: 7/7/14
  Time: 3:06 PM
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
            thisForm.effectiveDate.value = '';
        }
    </script>
</head>
<body>
<s:form action="unstructure_version">
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
                                        <b>Unstructured Version</b>
                                    </td>
                                    <td width="65%" align="right">
                                        <c:if test="${sessionScope.menuAuthentication.unstructuredDatasetManage}">
                                            <input type="button" class="button" name="butNewAdd" id="butNewAdd" value="Add" style="width:150px" onclick="letsGo('unstructure_version_detail.action','')"/>
                                        </c:if>
                                    </td>

                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <table width="100%" class="displayTable">
                                            <tr class="bgGreen2">
                                                <td class="label">Version :</td>
                                                <td>
                                                    <s:textfield name="version" id="version" cssStyle="width:150px"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label">Description :</td>
                                                <td>
                                                    <s:textfield name="description" id="description" cssStyle="width:350px"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                             <td class="label">Effective Date :</td>
                                             <td>
                                                 <s:textfield name="effectiveDate" id="effectiveDate" readonly="true" size="8"/>
                                                 <img alt="" border="0" src="../images/dd.gif" name="dateBtn" width="15" height="15"
                                                      onclick="displayCalendar(document.forms[0].effectiveDate,'dd/mm/yyyy',this);"
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
                                         <display:table name="unstructureVersionList" id="row" export="false" class="displayTag" requestURI="unstructure_version.action" style="width:100%;text-align:center" pagesize="50" size="${requestScope.totalRecord}">
                                            <display:column title="Version" style="text-align:left;width:15%;" headerClass="headerTable" sortable="false" sortName="version">
                                               <a href="unstructured_dataset.action?unstructureVersionId=${row.id}">${row.version}</a>
                                            </display:column>
                                            <display:column title="Description" property="description" style="text-align:left;width:30%;" headerClass="headerTable" sortable="false" sortName="description"/>
                                            <display:column title="Effective Date " property="effectiveDate" style="text-align:center;width:15%;" headerClass="headerTable" sortable="false" sortName="effectiveDate" format="{0,date,dd MMM yyyy}"/>

                                             <c:if test="${sessionScope.menuAuthentication.unstructuredDatasetManage}">
                                                <display:column title="Edit" headerClass="headerTable" style="text-align:center;width:10%">
                                                    <img src=../images/edit.gif border="no" align=""
                                                         onclick="letsGo('unstructure_version_detail.action','${row.id}')" style="cursor:pointer">
                                                </display:column>
                                                 <display:column title="Move" headerClass="headerTable" style="text-align:center;width:10%">
                                                     <img src=../images/edit.gif border="no" align=""
                                                          onclick="letsGo('move_unstructured_dataset.action','${row.id}')" style="cursor:pointer">
                                                 </display:column>
                                                 <display:column title="Copy" headerClass="headerTable" style="text-align:center;width:10%">
                                                     <div onMouseOver="setId('${row.id}');">
                                                         <s:submit method="copy" type="image" src="../images/copy-icon.png" onclick="return confirm('Do you want to copy this record ?')" title="Copy"/>
                                                     </div>
                                                 </display:column>
                                                <display:column title="Delete" headerClass="headerTable" style="text-align:center;width:10%">
                                                   <div onMouseOver="setId('${row.id}');">
                                                   <s:submit method="delete" type="image" src="../images/delete.gif" onclick="return confirm('Do you want to delete this record ?')" title="Delete"/>
                                                   </div>
                                                </display:column>

                                                 </c:if>

                                        </display:table>
                                        <br>
                                        <c:if test="${requestScope.errorFlag eq 'false'}">
                                            <font color="red">Cannot delete access is denied the data may be in use.</font>
                                        </c:if>
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
         var effectiveDate = document.getElementById("effectiveDate").value;
        
         pageLink1 = action + '?id=' + id;
         pageLink2 = '&<%=Constants.UnstructureVersionField.VERSION_HIDDEN%>=' + version;
         pageLink3 = '&<%=Constants.UnstructureVersionField.DESCRIPTION_HIDDEN%>=' + description;
         pageLink4 = '&<%=Constants.UnstructureVersionField.EFFECTIVE_HIDDEN%>=' + effectiveDate;

        location.href = pageLink1.concat(pageLink2, pageLink3, pageLink4);
    }
    
</script>
</body>
</html>