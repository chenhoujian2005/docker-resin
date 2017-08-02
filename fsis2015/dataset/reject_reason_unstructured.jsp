<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<html>
<head>
<title>Specialized Financial Institutions Information System</title>
<script type="text/javascript" src="../dwr/interface/GenerateExcel.js">;</script>
<script type="text/javascript" src="../dwr/engine.js">;</script>
<script type="text/javascript" src="../dwr/util.js">;</script>
<link rel="stylesheet" type="text/css" href="../includes/css/style.css">
<script type="text/javascript" src="../includes/js/tp/utils.js"></script>
<script type="text/javascript">
    function confirmSave() {
        if(document.getElementById('reason').value == ''){
            alert('Please Input Reject Reason !!');
            return false;
        }
        return true;
    }

    function checkMaxLength(obj, maxLength){
        return (obj.value.length <= maxLength);
    }
</script>
</head>

<body>
<s:form action="reject_reason_unstructured" validate="false">
<s:hidden name="uploadVersionId" id="uploadVersionId"/>
<s:hidden name="fileUploadId" id="fileUploadId"/>    
<s:hidden name="rejectType" id="rejectType"/>
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
<table width="100%" border="0" cellpadding="0" cellspacing="0" >
<tr>
<td width="43" background="../images/table004.gif">
    <img src="../images/table004.gif" width="43" height="37" alt="">
</td>
<td>
<table width="100%" border="0" align="center" style="height:100%" >
    <tr>
        <td>
            <strong>
            <c:if test="${requestScope.rejectType eq 'RJADJ'}">
                Adjust Reject Reason
            </c:if>
            <c:if test="${requestScope.rejectType eq 'RJRPT'}">
                Report Reject Reason
            </c:if>
            <c:if test="${requestScope.rejectType eq 'RJUNS'}">
                Reject Unstructured
            </c:if>
            </strong>    
        </td>
    </tr>
    <tr>
        <td>
            <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" bgcolor=#ffffff class="displayTable">
                <tr class="bgGreen2">
                    <td width="16%" height=39 align="right" valign="middle" bgcolor="#D2FF92"><strong>Reject Reason : </strong></td>
                    <td width="84%" bgcolor="#D2FF92"><s:textarea name="reason" id="reason" cols="77" rows="15" onkeypress="return checkMaxLength(this, 512)"/></td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td height="30" align="center">
            <s:submit value="Save" method="save" cssClass="button" onclick="return confirmSave();"/>
            <s:submit value="Back" method="back" cssClass="button" />
        </td>
    </tr>
</table>
</td>
<td width="28" background="../images/table005.gif">
    <img src="../images/table005.gif" width="28" height="37" alt=""></td>
</tr>
<tr>
    <td><img src="../images/table006.gif" width="43" height="23" alt=""></td>
    <td background="../images/table007.gif"></td>
    <td><img src="../images/table008.gif" width="28" height="23" alt=""></td>
</tr>
</table>
</td>
</tr>
</table>
</s:form>

</body>
</html>
</body>
</html>