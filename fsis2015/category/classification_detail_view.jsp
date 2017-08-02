<%--
  Created by IntelliJ IDEA.
  User: iRambo
  Date: Mar 23, 2012
  Time: 2:57:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head><title>Simple jsp page</title>
<link rel="stylesheet" type="text/css" href="../includes/css/style.css">
<script type="text/javascript" src="../includes/js/tp/utils.js"></script>
</head>
<script type="text/javascript">
    function setId(id) {
        thisForm.classificationItemId.value = id;
    }

    function AddItem() {
//        window.location = "../classification_item_view.action?classificationId=" + thisForm.classificationItemId.value;
        window.location = "../classification_item.action?classificationId=" + thisForm.classificationItemId.value;

    }
</script>
<body>
<s:form action="classification_detail_view">
    <s:hidden id="classificationId" name="classificationId"/>
    <s:hidden id="classificationItemId" name="classificationItemId"/>
<%--<s:hidden id="versionClassificationHidden" name="versionClassificationHidden"/>--%>
<%--<s:hidden id="classificationNameHidden" name="classificationNameHidden"/>--%>
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
                                    <td style="height:100%">
                                        <%--content here--%>
                                        <table>
                                            <tr>
                                                <td><b>Classification : View</b></td>
                                            </tr>
                                        </table>
                                        <table width="100%" align="center" class="displayTable">
                                            <tr class="bgGreen2">
                                                <td width="25%" class="label">Code :</td>
                                                <td width="75%">
                                                  <s:textfield name="code" id="code" size="30" maxLength="512" cssStyle="width:380px"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td width="25%" class="label">Name : </td>
                                                <td width="75%">
                                                    <s:textfield name="name" id="name" size="30" maxLength="512" cssStyle="width:380px"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label">Description :</td>
                                                <td><s:textfield name="description" id="description" size="30" maxLength="512" cssStyle="width:380px"/></td>
                                            </tr>
                                        </table>
                                        <table width="100%">
                                            <tr align="center">
                                                <td>
                                                    <s:submit name="Search" value="search" method="search" cssClass="button"/>&nbsp;
                                                    <input type="button" class="button" id="reset" name="reset" value="Reset" onclick="resetFrom()"/>&nbsp;
                                                    <s:submit name="back" value="Back" method="back" cssClass="button"/>
                                                </td>
                                            </tr>
                                        </table>
                                        <c:if test="${not empty requestScope.classificationId}">
                                        <table width="100%">
                                            <tr>
                                                <td width="35%">
                                                    <b>Classification Item</b>
                                                </td>
                                                <td width="65%" align="right">
                                                    <c:if test="${sessionScope.menuAuthentication.classificationManage}">
                                                        <c:if test="${requestScope.classificationId != null and not empty requestScope.classificationId and requestScope.classificationId != 0}">
                                                            <s:submit value="Add Item" action="classification_item_view" cssClass="button" cssStyle="width:150px" onclick="return AddItem()"/>
                                                        </c:if>
                                                    </c:if>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <display:table name="classificationItemList" id="row" export="false" class="displayTag" requestURI="classification_detail_view.action" style="width:100%;text-align:center" pagesize="25" size="${requestScope.totalRecord}">
                                                        <display:column title="Code" property="code" style="text-align:left;width:10%" headerClass="headerTable" sortable="true" sortName="code"/>
                                                        <display:column title="Name" property="name" style="text-align:left;width:30%" headerClass="headerTable" sortable="true" sortName="name"/>
                                                        <display:column title="Description" property="description" style="text-align:left;width:20%" headerClass="headerTable" sortable="true" sortName="description"/>
                                                        <c:if test="${sessionScope.menuAuthentication.classificationManage}">
                                                        <display:column title="Edit" headerClass="headerTable" style="text-align:center;width:10%">
                                                         <a href="classification_item_view.action?id=${row.id}" title="Edit"><img src=../images/edit.gif border="no" align=""></a>
                                                        </display:column>
                                                        <display:column title="Delete" headerClass="headerTable" style="text-align:center;width:10%">
                                                            <div onmouseover="setId('${row.id}');">
                                                                <s:submit method="delete" type="image" src="../images/delete.gif" onclick="return confirm('Do you want to delete this record ?')" title="Delete"/>
                                                            </div>
                                                        </display:column>
                                                        </c:if>
                                                    </display:table>
                                                </td>
                                            </tr>
                                        </table>
                                        </c:if>
                                        <%--content here--%>
                                    </td>
                                    <td width="20px">&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                        <td width="28" background="../images/table005.gif"><img src="../images/table005.gif" width="28" height="37" alt=""></td>
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
        thisForm.code.value = '';
        thisForm.name.value = '';
        thisForm.description.value = '';
    }
 </script>
</body>
</html>
