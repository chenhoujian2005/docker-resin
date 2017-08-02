<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<html>
<head>
<title>Simple jsp page</title>
<link rel="stylesheet" type="text/css" href="../includes/css/style.css">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="0">

<script type="text/javascript">
    function setId(id){
        thisForm.id.value = id;
    }
</script>

</head>
<body>
<s:form action="sfi_management">
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
                        <td width="43" background="../images/table004.gif">
                            <img src="../images/table004.gif" width="43" height="37" alt=""></td>
                        <td>
                            <table width="100%" border="0" align="center" style="height:100%">
                                <tr>
                                    <td style="height:100%">
                                        <%--content here--%>
                                        <table width="100%">
                                            <tr>
                                                <td align="left"><b>SFIs Management</b></td>
                                                <td align="right">
                                                    <c:if test="${sessionScope.menuAuthentication.sfiManagementManage}">
                                                        <s:submit value="Add SFIs" action="sfi_management_detail" cssClass="button" cssStyle="width:150px" onclick="setId('')"/>
                                                    </c:if>
                                                </td>
                                            </tr>
                                        </table>
                                            <c:if test="${not empty requestScope.msgError}">
                                               <font color="red"> ${requestScope.msgError} </font> </br>
                                            </c:if>
                                        <display:table name="sfiList" id="row" export="false" cellpadding="0" cellspacing="1" class="displayTag" style="width:100%" pagesize="15" requestURI="sfi_management.action" >
                                            <display:column title="SFIs ID" property="id" headerClass="headerTable" style="text-align:center;width:7%" sortable="true"/>
                                            <display:column title="SFIs Name (Thai)" property="nameTh" headerClass="headerTable" style="text-align:left;width:30%" sortable="true"/>
                                            <display:column title="Abbr. (Thai)" property="abbreviationTh" headerClass="headerTable" style="text-align:center;width:7%" sortable="true"/>
                                            <display:column title="SFIs Name (English)" property="nameEn" headerClass="headerTable" style="text-align:left;width:25%" sortable="true"/>
                                            <display:column title="Abbr. (English)" property="abbreviationEn" headerClass="headerTable" style="text-align:center;width:7%" sortable="true"/>
                                            <display:column title="Enable" property="enableText" headerClass="headerTable" style="width:5%;text-align:center" sortable="true"/>
                                            <c:if test="${sessionScope.menuAuthentication.sfiManagementManage}">
                                                <display:column title="Edit" href="sfi_management_detail.action" paramId="id" paramProperty="id" headerClass="headerTable" style="text-align:center;width:5%">
                                                    <img src=../images/edit.gif border="no">
                                                </display:column>
                                                <display:column title="Delete" headerClass="headerTable" style="text-align:center;width:5%">
                                                    <div onmouseover="setId('${row.id}');">
                                                        <s:submit method="delete" type="image" src="../images/delete.gif" onclick="return confirm('Do you want to delete this record ?')" title="Delete"/>
                                                    </div>
                                                </display:column>
                                            </c:if>
                                        </display:table>
                                        <%--content here--%>
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
</script>
</body>
</html>