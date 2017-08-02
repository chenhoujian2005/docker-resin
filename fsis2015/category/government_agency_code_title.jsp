<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<html>
<head>
<title>Simple jsp page</title>
<link rel="stylesheet" type="text/css" href="../includes/css/style.css">
<script type="text/javascript" src="../includes/js/tp/utils.js"></script>
<script type="text/javascript">
    function validateForm(){
        if(trim(thisForm.titleCode.value) == ''){
            alert('กรุณาระบุรหัสหน่วยงาน (หลัก)');
            thisForm.titleCode.focus();
            return false;
        }
        if(trim(thisForm.titleName.value) == ''){
            alert('กรุณาระบุส่วนราชการและรัฐวิสาหกิจ (หลัก)');
            thisForm.titleName.focus();
            return false;
        }
        return true;
    }
    function confirmDelete(id) {
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
<s:form action="government_agency_code_title">
<s:hidden name="id"/>
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
                        <td width="43" background="../images/table004.gif"><img src="../images/table004.gif" width="43"height="37" alt=""></td>
                        <td>
                            <table width="100%" border="0" align="center" style="height:100%">
                                <tr>
                                    <td style="height:100%">
                                        <%--content here--%>
                                        <table width="100%">
                                            <tr>
                                                <td>
                                                    <b>
                                                        <c:if test="${empty requestScope.id}">Add Goverment Agency Code Title</c:if>
                                                        <c:if test="${not empty requestScope.id}">Edit Goverment Agency Code Title</c:if>
                                                    </b>
                                                </td>
                                            </tr>
                                        </table>
                                        <table width="100%" class="displayTable">
                                            <tr class="bgGreen2">
                                                <td width="25%" class="label">รหัสหน่วยงาน (หลัก)<span class="require_field">*</span> :</td>
                                                <td width="65%">
                                                    <s:textfield name="titleCode" id="titleCode" cssStyle="width:150px" maxLength="10"/>
                                                </td>
                                                <%--<td width="10%">--%>
                                                    <%--<c:if test="${not empty requestScope.id}">--%>
                                                        <%--<div onClick="return confirmDelete('${requestScope.id}');">--%>
                                                            <%--<s:submit type="image" src="../images/delete.gif" method="delete" title="delete"/>--%>
                                                        <%--</div>--%>
                                                    <%--</c:if>--%>
                                                <%--</td>--%>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label">ส่วนราชการและรัฐวิสาหกิจ (หลัก)<span class="require_field">*</span> :</td>
                                                <td colspan="2">
                                                    <s:textfield name="titleName" id="titleName" cssStyle="width:100%" maxLength="200"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td class="label">รัฐบาลกลาง :</td>
                                                <td colspan="2">
                                                    <s:textfield name="federalGovernmentCode" id="federalGovernmentCode" cssStyle="width:150px" maxLength="10"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label">รัฐบาลท้องถิ่น :</td>
                                                <td colspan="2">
                                                    <s:textfield name="localGovernmentCode" id="localGovernmentCode" cssStyle="width:150px" maxLength="10"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td class="label">รัฐวิสาหกิจ :</td>
                                                <td colspan="2">
                                                    <s:textfield name="stateEnterpriseCode" id="stateEnterpriseCode" cssStyle="width:150px" maxLength="10"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label">อื่นๆ :</td>
                                                <td colspan="2">
                                                    <s:textfield name="otherCode" id="otherCode" cssStyle="width:150px" maxLength="10"/>
                                                </td>
                                            </tr>
                                        </table>
                                        <table width="100%">
                                            <tr>
                                                <td align="center">
                                                    <s:submit name="ok" value="Save" method="save" cssClass="button" onclick="return validateForm()"/>&nbsp;
                                                    <s:reset value="Reset" cssClass="button"/>&nbsp;
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
</script>
</body>
</html>
