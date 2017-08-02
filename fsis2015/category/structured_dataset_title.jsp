<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<title>Simple jsp page</title>
<link rel="stylesheet" type="text/css" href="../includes/css/style.css">
<script type="text/javascript" src="../includes/js/tp/utils.js"></script>
<script type="text/javascript">
    function validateForm(){
        if(trim(thisForm.title.value) == ''){
            alert('Please Input Title');
            thisForm.title.focus();
            return false;
        }
        return true;
    }
    function confirmDelete() {
        if(! ${requestScope.endNode}){
            alert("Can't delete this node have child node");
            return false;
        }
        if (confirm("Do you want to delete this record ?")) {
            return true;
        }
        return false;
    }
</script>
</head>
<body>
<s:form action="structured_dataset_title">
<s:hidden name="id"/>
<s:hidden name="groupHidden"/>
<s:hidden name="titleHidden"/>
<s:hidden name="subTitleHidden"/>
<s:hidden name="versionHidden"/>
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
                                        <table width=100%>
                                            <tr>
                                                <td>
                                                    <b>
                                                        <c:if test="${empty requestScope.id}">Add Title</c:if>
                                                        <c:if test="${not empty requestScope.id}">Edit Title</c:if>
                                                    </b>
                                                </td>
                                            </tr>
                                        </table>
                                        <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" class="displayTable">
                                            <tr class="bgGreen2">
                                                <td class="label">Group :</td>
                                                <td colspan="2">
                                                    <s:select list="dsTitleList" name="group" listKey="id" listValue="name"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td width="25%" class="label">Title<span class="require_field">*</span> :</td>
                                                <td width="65%">
                                                    <s:textfield name="title" id="title" cssStyle="width:100%" maxLength="256"/>
                                                </td>
                                                <td width="10%">
                                                    <c:if test="${not empty requestScope.id}">
                                                        <div onClick="return confirmDelete();">
                                                            <s:submit type="image" src="../images/delete.gif" method="delete" title="delete"/>
                                                        </div>
                                                    </c:if>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td class="label">Enable :</td>
                                                <td colspan="2"><s:checkbox name="status"/></td>
                                            </tr>
                                        </table>
                                        <table width="100%">
                                            <tr>
                                                <td width="100%" align="center">
                                                    <s:submit name="ok" value="Save" cssClass="button" method="save" onclick="return validateForm()"/>
                                                    <s:submit name="back" value="Back" cssClass="button" method="back"/>
                                                </td>
                                            </tr>
                                        </table>
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
    if(thisForm.id.value != ''){
        thisForm.group.disabled = true;
    }
</script>
</body>
</html>
