<%--
  Created by IntelliJ IDEA.
  User: Arisara
  Date: 3/6/13
  Time: 6:23 PM
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
        function setId(id) {
            thisForm.id.value = id;
        }
        function resetForm() {
            thisForm.version.value = '';
            thisForm.description.value = '';
            thisForm.effectiveDateSFI.value = '';
            thisForm.effectiveDateFI.value = '';
        }
    </script>
</head>
<body>
<s:form action="isic_version">
    <s:hidden id="id" name="id"/>
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
                                        <b>ISIC Version</b>
                                    </td>
                                    <td width="65%" align="right">
                                        <c:if test="${sessionScope.menuAuthentication.isicCodeManage}">
                                            <s:submit name="searchItem" value="Search ISIC Code Item" method="searchItem" cssClass="button" style="width:150px"/>&nbsp;
                                            <input type="button" class="button" name="butNewAdd" id="butNewAdd" value="Add" style="width:150px" onclick="letsGo('isic_version_detail.action','')"/>
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
                                                <td class="label">Effective Date SFI :</td>
                                                <td>
                                                    <s:textfield name="effectiveDateSFI" id="effectiveDateSFI" readonly="true" size="8"/>
                                                    <img alt="" border="0" src="../images/dd.gif" name="dateBtn" width="15" height="15"
                                                         onclick="displayCalendar(document.forms[0].effectiveDateSFI,'dd/mm/yyyy',this);"
                                                         align="absmiddle">
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label">Effective Date FI :</td>
                                                <td>
                                                    <s:textfield name="effectiveDateFI" id="effectiveDateFI" readonly="true" size="8"/>
                                                    <img alt="" border="0" src="../images/dd.gif" name="dateBtn" width="15" height="15"
                                                         onclick="displayCalendar(document.forms[0].effectiveDateFI,'dd/mm/yyyy',this);"
                                                         align="absmiddle">
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2">
                                        <s:submit  tabindex="1" name="search" id="btnSearch" method="search" value="Search" cssClass="button"  /> &nbsp;
                                        <button class="button" onclick="resetForm()">Reset</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <display:table name="isicVersionList" id="row" export="false" class="displayTag" requestURI="isic_version.action" style="width:100%;text-align:center" pagesize="50" size="${requestScope.totalRecord}">
                                            <display:column title="Version" style="text-align:left;width:10%;" headerClass="headerTable" sortable="false" sortName="id">
                                                <a href="isic_detail_view.action?versionId=${row.id}">${row.version}</a>
                                            </display:column>
                                            <display:column title="Description" property="description" style="text-align:left;width:40%;" headerClass="headerTable" sortable="false" sortName="description"/>
                                            <display:column title="Effective Date SFI" property="effectiveDateSFI" style="text-align:center;width:12%;" headerClass="headerTable" sortable="false" sortName="effectiveDateSFI" format="{0,date,dd MMM yyyy}"/>
                                            <display:column title="Effective Date FI" property="effectiveDateFI" style="text-align:center;width:12%;" headerClass="headerTable" sortable="false" sortName="effectiveDateFI" format="{0,date,dd MMM yyyy}"/>
                                            <c:if test="${sessionScope.menuAuthentication.isicCodeManage}">
                                                <display:column title="Edit" headerClass="headerTable" style="text-align:center;width:8%">
                                                    <img src=../images/edit.gif border="no" align=""
                                                         onclick="letsGo('isic_version_detail.action','${row.id}')" style="cursor:pointer">
                                                </display:column>
                                                <display:column title="Delete" headerClass="headerTable" style="text-align:center;width:8%">
                                                    <div onMouseOver="setId('${row.id}');">
                                                        <s:submit method="delete" type="image" src="../images/delete.gif"  onclick="return confirm('Do you want to delete this record ?')" title="Delete"/>
                                                    </div>
                                                </display:column>
                                                <display:column title="Copy" headerClass="headerTable" style="text-align:center;width:8%">
                                                    <div onMouseOver="setId('${row.id}');">
                                                        <s:submit method="copy" type="image" src="../images/copy-icon.png" onclick="return confirm('Do you want to copy this record ?')" title="Copy"/>
                                                    </div>
                                                </display:column>
                                            </c:if>
                                            <display:column title="Download" url="/category/isic_version_download.action" paramId="versionId" paramProperty="id" headerClass="headerTable" style="width:10%;text-align:center">
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
        var effectiveDateSFI = document.getElementById("effectiveDateSFI").value;
        var effectiveDateFI = document.getElementById("effectiveDateFI").value;

        pageLink1 = action + '?id=' + id;
        pageLink2 = '&<%=Constants.IsicVersionField.VERSION_HIDDEN%>=' + version;
        pageLink3 = '&<%=Constants.IsicVersionField.DESCRIPTION_HIDDEN%>=' + description;
        pageLink4 = '&<%=Constants.IsicVersionField.EFFECTIVE_DATE_SFI_HIDDEN%>=' + effectiveDateSFI;
        pageLink5 = '&<%=Constants.IsicVersionField.EFFECTIVE_DATE_FI_HIDDEN%>=' + effectiveDateFI;

        location.href = pageLink1.concat(pageLink2, pageLink3, pageLink4, pageLink5);
    }

</script>
</body>
</html>