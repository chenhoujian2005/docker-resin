<%--
  Created by IntelliJ IDEA.
  User: jrambo
  Date: 7 �.�. 2554
  Time: 13:12:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="th.go.mof.fpo.Constants" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
  <head><title>Activity Log Detail</title>
      <link rel="stylesheet" type="text/css" href="../includes/css/style.css"/>
  </head>
  <body>
<s:form action="structured_dataset_version_log" enctype="multipart/form-data">
<s:hidden name="id"/>
<s:hidden name="change"/>
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
                        <td width="43" background="../images/table004.gif">
                            <img src="../images/table004.gif" width="43" height="37" alt="">
                        </td>
                        <td>
                            <table width="100%" border="0" align="center" style="height:100%">
                                <tr>
                                    <td style="height:100%">
                                        <%--content here--%>
                                        <table width=100%>
                                            <tr>
                                                <td> <b> Log Version  </b> </td>
                                            </tr>
                                        </table>
                                        <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" class="displayTable">
                                            <tr class="bgGreen2">
                                                <td class="label">Group :</td>
                                                <td colspan="2">
                                                    <s:select list="groupList" name="group" listKey="id" listValue="name" onchange="findDsTitle('group')" disabled="true"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label">Title :</td>
                                                <td colspan="2">
                                                    <s:select list="titleList" name="title" listKey="id" listValue="name" onchange="findDsTitle('title')"  disabled="true"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td class="label">Sub Title :</td>
                                                <td colspan="2">
                                                    <s:select list="subTitleList" name="subTitle" listKey="id" listValue="name" disabled="true"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label" width="25%">Version :</td>
                                                <td width="65%">
                                                    <s:textfield name="version" id="version" maxLength="16" cssStyle="width:100%" disabled="true"/>
                                                </td>
                                                <td width="10%">
                                                    <%--
                                                    <c:if test="${not empty requestScope.id}">
                                                        <s:submit type="image" src="../images/delete.gif" method="delete" title="delete" onclick="return confirmDelete('${requestScope.id}');"/>
                                                    </c:if>
                                                    --%>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td class="label">Manual :</td>
                                                <td colspan="2" valign="middle">
                                                   <c:if test="${not empty requestScope.manualUploadFileName}">
                                                         <br/>
                                                        <a href="../downloadFile.sl?fileName=${requestScope.manualUploadFileName}&originalFileName=${requestScope.originalManualFileName}&systemName=<%=Constants.Fsis2010UploadDirectory.MANUAL%>" title="Download attachment file">${requestScope.originalManualFileName}</a>
                                                        </c:if>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label">Data Entry Path :</td>
                                                <td colspan="2" valign="middle">
                                                    <c:if test="${not empty requestScope.dataEntryUploadFileName}">
                                                       <br/>
                                                        <a href="../downloadFile.sl?fileName=${requestScope.dataEntryUploadFileName}&originalFileName=${requestScope.originalDataEntryFileName}&systemName=<%=Constants.Fsis2010UploadDirectory.ENTRY%>" title="Download attachment file">${requestScope.originalDataEntryFileName}</a>
                                                     </c:if>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td class="label">XSD Path :</td>
                                                <td colspan="2" valign="middle">
                                                     <c:if test="${not empty requestScope.xsdUploadFileName}">
                                                        <br/>
                                                        <a href="../downloadFile.sl?fileName=${requestScope.xsdUploadFileName}&originalFileName=${requestScope.originalXsdFileName}&systemName=<%=Constants.Fsis2010UploadDirectory.XSD_FILE%>" title="Download attachment file">${requestScope.originalXsdFileName}</a>
                                                     </c:if>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label">Basic Validation Script :</td>
                                                <td colspan="2">
                                                    <s:textarea rows="15" cssStyle="width:440px" name="basicValidationScript" disabled="true"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td class="label">Complex Validation Script :</td>
                                                <td colspan="2">
                                                    <s:textarea rows="15" cssStyle="width:440px" name="complexValidationScript" disabled="true"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label">Cross Validation Script :</td>
                                                <td colspan="2">
                                                    <c:if test="${not empty requestScope.id}">
                                                        <button class="button" onclick="openPopup()" style="width:220px" disabled="disabled">Cross Validation Script Management</button>
                                                    </c:if>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td class="label">Effective Date From :</td>
                                                <td colspan="2">
                                                    <s:textfield name="startDate" id="dateFrom" readonly="true" size="8" disabled="true"/>
                                                 </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label">Effective Date To :</td>
                                                <td colspan="2">
                                                    <s:textfield name="endDate" id="endDate" readonly="true" size="8" disabled="true"/>
                                                 </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td class="label">Enable :</td>
                                                <td colspan="2">
                                                    <s:checkbox name="enable" disabled="true"/>
                                                </td>
                                            </tr>
                                        </table>
                                        <table width="100%">
                                            <tr>
                                                <td width="100%" align="center">
                                                  <input class="button" type="button" id="closeBtn" name="closeBtn" value="Close" onclick="window.close();"/>
                                                </td>
                                            </tr>
                                        </table>
                                        <font style="color:red;">* เป็นข้อมูลก่อนการแก้ไข</font>
                                        <%--content here--%>
                                    </td>
                                    <td width="20px">&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                        <td width="28" background="../images/table005.gif">
                            <img src="../images/table005.gif" width="28" height="37" alt=""></td>
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
    if(thisForm.id.value != ''){
        thisForm.group.disabled = true;
        thisForm.title.disabled = true;
        thisForm.subTitle.disabled = true;
    }

    function openPopup() {
        window.open("../category/cross_validation.action?dsVersionId=" + thisForm.id.value,null,"height=700,width=900 ,resizable=1,scrollbars=1'");
    }
</script>
</body>
</html>