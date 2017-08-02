<%@ page import="th.go.mof.fpo.Constants" %>
<%--
  Created by IntelliJ IDEA.
  User: Sompoch
  Date: 04-Jun-2010
  Time: 14:00:04
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<!--script type="text/javascript" src="../includes/js/jquery.js"></script-->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/includes/css/style.css">
<script type="text/javascript">
    function setId(id) {
        thisForm.classificationId.value = id;
    }

    function letsGo(action, id) {
        var classificationName = document.getElementById("classificationName").value;
        var description = document.getElementById("description").value;

        pageLink1 = action + '?id=' + id;
        pageLink2 = '&<%=Constants.ClassificationField.CLASSIFICATION_NAME_HIDDEN%>=' + classificationName;
        pageLink3 = '&<%=Constants.ClassificationField.DESCRIPTION_HIDDEN%>=' + description;

        location.href = pageLink1.concat(pageLink2, pageLink3);
    }

</script>
</head>
<body>
<s:form action="classification">
<s:hidden id="classificationId" name="classificationId" />
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
                                    <b>Classification</b>
                                </td>
                                <td width="65%" align="right">
                                  <c:if test="${sessionScope.menuAuthentication.classificationManage}">
                                      <input type="button" class="button"  value="Add" style="width:150px" onclick="letsGo('classification_detail.action','')">
                                        <c:if test="${requestScope.flagUpload}">
                                            <s:submit action="classification_upload" value="Upload File" id="butAdd" cssClass="button" cssStyle="width:150px"/>
                                       </c:if>
                                    </c:if>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <table width="100%" class="displayTable">
                                        <tr class="bgGreen1">
                                            <td class="label">Classification Name :</td>
                                            <td>
                                                <s:textfield name="classificationName" id="classificationName" cssStyle="width:350px"/>
                                            </td>
                                        </tr>
                                        <tr class="bgGreen2">
                                            <td class="label">Description :</td>
                                            <td>
                                                <s:textfield name="description" id="description" cssStyle="width:350px"/>
                                            </td>
                                        </tr>

                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <s:submit name="search" id="btnSearch" method="search" value="Search" cssClass="button"/>  &nbsp;
                                    <input type="button" name="reset" id="reset" value="Reset" class="button" onclick="resetFrom()"/>   &nbsp;
                                    <s:submit name="back" id="btnBack" method="back" value="Back" cssClass="button"/>
                                    <%--<s:reset id="reset" name="reset" value="Reset" cssClass="button"/> &nbsp;--%>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <display:table name="classificationList" id="row" export="false" class="displayTag" requestURI="classification.action" style="width:100%;text-align:center" pagesize="50"  size="${requestScope.totalRecord}">
                                     <display:column title="Version" property="classificationVersion.version" style="text-align:center;width:10%;" headerClass="headerTable" sortable="true" sortName="versionClassification"/>
                                     <%--<display:column title="Classification Name" property="name" href="classification_detail_view.action" paramId="classificationId" paramProperty="id"  style="text-align:left;width:30%;" headerClass="headerTable" sortable="true" sortName="name"/>--%>
                                        <display:column title="Classification Name" property="name" href="classification_detail_view.action" paramId="classificationId" paramProperty="id"  style="text-align:left;width:30%;" headerClass="headerTable" sortable="true" sortName="name"/>
                                        <display:column title="Description" property="description" style="text-align:left;width:30%;" headerClass="headerTable" sortable="true" sortName="description"/>
                                        <c:if test="${sessionScope.menuAuthentication.classificationManage}">
                                            <display:column title="Edit" headerClass="headerTable" style="text-align:center;width:7%">
                                                <img src=../images/edit.gif border="no" align="" onclick="letsGo('classification_detail.action','${row.id}')" style="cursor:pointer">
                                            </display:column>
                                            <display:column title="Delete" headerClass="headerTable" style="text-align:center;width:8%">
                                        <div onmouseover="setId('${row.id}');">
                                                    <s:submit method="delete" type="image" src="../images/delete.gif" onclick="return confirm('Do you want to delete this record ?')" title="Delete"/>
                                                </div>
                                            </display:column>
                                        </c:if>
                                    </display:table>
                                </td>
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

    function resetFrom(){
        thisForm.classificationName.value = '';
        thisForm.description.value = '';
    }

</script>
</body>
</html>


