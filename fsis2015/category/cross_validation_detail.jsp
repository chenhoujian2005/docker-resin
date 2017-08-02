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
    function displayBySelect(status) {
        var obj = document.getElementById('reasonArea');
        obj.style.display = (status == 'RJ') ? 'inline' : 'none';
    }

    function confirmApprove() {
        return confirm('Are you sure you want to Approve this document ? ');

    }

    function gen(file){
        window.open('../Export.download?file='+ file );
    }

    function ConvertToExcel(ConvertToExcel) {
       window.open('../ConvertToExcel.excel?file='+ ConvertToExcel );
    }
</script>
</head>

<body>
<s:form action="document_detail" validate="false">
<s:hidden name="uploadVersionId" id="uploadVersionId"/>
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
            <td colspan="2">
                <strong>Cross Validation</strong>
            </td>
        </tr>
        <tr>
            <td width="20%"><strong>Dataset Name</strong></td>
            <td width="80%">

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
<script type="text/javascript">

</script>
</body>
</html>
</body>
</html>