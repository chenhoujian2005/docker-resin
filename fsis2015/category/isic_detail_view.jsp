<%--
  Created by IntelliJ IDEA.
  User: Arisara
  Date: 3/25/13
  Time: 4:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="th.go.mof.fpo.Constants" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head><title>Simple jsp page</title>

    <link rel="stylesheet" type="text/css" href="../includes/css/style.css">
    <script type="text/javascript" src="../includes/js/tp/utils.js"></script>
</head>
<script type="text/javascript">
    function setId(id) {
        thisForm.isicCodeItemId.value = id;
    }
    function AddItem() {
        window.location = "../isic_detail_addItem.action?isicCodeItemId=" + thisForm.isicCodeItemId.value;
    }
</script>
<body>
<s:form action="isic_detail_view">
    <s:hidden id="versionId" name="versionId"/>
    <s:hidden id="isicCodeItemId" name="isicCodeItemId"/>

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
                                        <table  width="100%">
                                            <tr>
                                            <td  width="30%">
                                                <b>ISIC Detail : View</b>
                                            </td>
                                            <td width="70%" align="right">
                                                <c:if test="${sessionScope.menuAuthentication.isicCodeManage}"> &nbsp;&nbsp;
                                                    <s:submit action="isic_upload" value="Upload File " id="butAdd" cssClass="button" cssStyle="width:150px"/>
                                                     </br>
                                                        <c:if test="${requestScope.versionId != null and not empty requestScope.versionId and requestScope.versionId != 0}">
                                                            <s:radio name="level"  list="#{'0':'Level0','1':'Level1','2':'Level2','3':'Level3','4':'Level4','5':'Level5'}" /> &nbsp;
                                                            <s:submit value="Add Item" action="isic_detail_addItem" cssClass="button" cssStyle="width:150px" onclick="return AddItem()"/>
                                                        </c:if>

                                                </c:if>
                                            </td>
                                            </tr>
                                        </table>
                                        <table width="100%" align="center" class="displayTable">
                                            <tr class="bgGreen2">
                                                <td width="25%" class="label">Version :</td>
                                                <td width="75%">${versionName}</td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td width="25%" class="label">Code :</td>
                                                <td width="75%">
                                                    <s:textfield name="code" id="code" size="30" maxLength="512" cssStyle="width:380px"/>
                                                </td>
                                            </tr>
                                           <tr class="bgGreen2">
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
                                        <c:if test="${not empty requestScope.versionId}">
                                            <table width="100%">
                                                <tr>
                                                    <td width="35%">
                                                        <b>ISIC Code Item</b>
                                                    </td>
                                                    <td width="65%" align="right">
                                                        <%--<c:if test="${sessionScope.menuAuthentication.isicCodeManage}">--%>
                                                            <%--<c:if test="${requestScope.versionId != null and not empty requestScope.versionId and requestScope.versionId != 0}">--%>
                                                                <%--<s:radio name="level"  list="#{'0':'Level0','1':'Level1','2':'Level2','3':'Level3','4':'Level4','5':'Level5'}" /> &nbsp;--%>
                                                                <%--<s:submit value="Add Item" action="isic_detail_addItem" cssClass="button" cssStyle="width:150px" onclick="return AddItem()"/>--%>
                                                            <%--</c:if>--%>
                                                        <%--</c:if>--%>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <display:table name="isicItemList" id="row" export="false" class="displayTag" requestURI="isic_detail_view.action" style="width:100%;text-align:center" pagesize="50"  size="${requestScope.totalRecord}">
                                                            <display:column title="รหัส" style="width:5%;text-align:center;" headerClass="headerTable" sortable="true" >
                                                                <c:choose>
                                                                    <c:when test="${row.level == 0}">
                                                                        <b>${row.code}</b>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        ${row.code}
                                                                    </c:otherwise>
                                                                </c:choose>
                                                           </display:column>
                                                            <display:column title="รายละเอียดกิจกรรมทางเศรษฐกิจ"   style="width:40%;text-align:left;" headerClass="headerTable" sortable="true">
                                                                <c:choose>
                                                                    <c:when test="${row.level == 0}">
                                                                        <b>${row.description}</b>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        ${row.description}
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </display:column>
                                                            <display:column title="Parent & Child" property="parentAndChildCode" style="width:5%;text-align:center;" headerClass="headerTable" sortable="true"/>
                                                            <c:if test="${sessionScope.menuAuthentication.isicCodeManage}">
                                                                <display:column title="Edit" headerClass="headerTable" style="text-align:center;width:5%">
                                                                    <a href="isic_detail_addItem.action?id=${row.id}" title="Edit"><img src=../images/edit.gif border="no" align=""></a>
                                                                </display:column>
                                                                <display:column title="Delete" headerClass="headerTable" style="text-align:center;width:5%">
                                                                    <div onmouseover="setId('${row.id}');">
                                                                        <s:submit method="delete" type="image" src="../images/delete.gif" onclick="return confirm('Do you want to delete this record ?');" title="Delete"/>
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
        thisForm.description.value = '';
    }

</script>
</body>
</html>
