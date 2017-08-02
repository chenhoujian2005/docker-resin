<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%--
  Created by IntelliJ IDEA.
  User: Sompoch
  Date: 04-Jun-2010
  Time: 14:00:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript" src="../includes/js/tp/utils.js"></script>
<script type="text/javascript" src="../includes/js/tp/validate.js"></script>
<html>
<head><title>Simple jsp page</title>
<link rel="stylesheet" type="text/css" href="../includes/css/style.css">
</head>
<body>
<s:form action="government_agency_code_detail" enctype="multipart/form-data" >
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
                    <table width="100%" border="0" align="center">
                       <tr>
                            <td align="left" colspan="2"><b>Government Agency Code</b></td>
                       </tr>
                    </table>
                    <table width="100%" class="displayTable">
                        <tr class="bgGreen2">
                            <td width="25%" class="label">Upload File <span class="require_field">*</span>:</td>
                            <td width="75%">
                                <s:file name="upload" id="upload" size="55"/>
                            </td>
                        </tr>
                    </table>
                    <table width="100%">
                        <tr align="center">
                            <td>
                                <s:submit name="ok" value="Upload" method="upload" cssClass="button" onclick="return validateForm()"/>&nbsp;
                                <s:submit name="back" value="Back" cssClass="button" action="government_agency_code" />
                            </td>
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
    function validateForm() {
        if (!isEmptyById('upload')) {
            var file = getValue('upload');
            if ((file.substring(file.length - 5, file.length) == '.xlsx') ||(file.substring(file.length - 4, file.length) == '.xls')) {
                return true;
            } else {
                alert('Invalid File Type Of File Support XLSX or XLS Only');
                return false;
            }
        } else {
            alert('Please select excel file');
            return false;
        }

    }
</script>
</body>
</html>