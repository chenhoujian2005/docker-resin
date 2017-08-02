<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head>
    <title>Simple jsp page</title>
    <link rel="stylesheet" type="text/css" href="../includes/css/style.css">
    <script type="text/javascript" src="../includes/js/tp/validate.js"></script>
    <script type="text/javascript">
        function validateForm() {
            var thisForm = document.getElementById('form_branch_code_detail');
            if (isEmptyById('upload')) {
                alert('Please Select File Name');
                thisForm.upload.focus();
                return false;
            } else {
                var file = thisForm.upload.value;
                if ((file.substring(file.length - 4, file.length) == '.xls') ||
                    (file.substring(file.length - 4, file.length) == '.XLS') ||
                    (file.substring(file.length - 5, file.length) == '.xlsx') ||
                    (file.substring(file.length - 5, file.length) == '.XLSX')) {
                } else {
                    alert('Invalid File Type' + '\n Support .xls or .xlsx Only');
                    thisForm.upload.focus();
                    return false;
                }
            }
            return true;
        }

        function preventSubmit() {
            if (validateForm()) {
                var thisForm = document.getElementById('form_branch_code_detail');
                document.getElementById("submit_upload").disabled = true;
                document.getElementById("back").disabled = true;

                var hiddenf = document.createElement("input");
                hiddenf.setAttribute("type", "hidden");
                hiddenf.setAttribute("name", "method:upload");

                thisForm.appendChild(hiddenf);
                thisForm.submit();
            }
        }

        function backs(action) {
             var thisForm = document.getElementById('form_branch_code_detail');
             var hiddenf = document.createElement("input");
                hiddenf.setAttribute("type", "hidden");
                hiddenf.setAttribute("name", "method:back");
                thisForm.appendChild(hiddenf);
                thisForm.submit();
        }
    </script>
</head>
<body>
<s:form  id="form_branch_code_detail"  action="branch_code_detail" enctype="multipart/form-data">
    <s:hidden id="sfiHidden" name="sfiHidden" />
    <s:hidden id="branchCodeHidden" name="branchCodeHidden" />
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
                                         <table width="100%">
                                            <tr>
                                                <td align="left" colspan="2"><b>Branch Code : Upload File</b></td>
                                            </tr>
                                          </table>

                                          <table width="100%" class="displayTable" align="center">
                                            <tr class="bgGreen2">
                                                <td class="label" width="20%">File :</td>
                                                <td align="left" width="80%">
                                                    <s:file name="upload" id="upload" size="80"/>
                                                </td>
                                            </tr>
                                          </table>
                                         <table width="100%">
                                            <tr>
                                                <td align="center" colspan="2">
                                                <input type="button" id="submit_upload" value="OK" class="button" onclick="preventSubmit()"/>&nbsp;
                                                <input type="button" id="back" name="back" value="Back" class="button" onclick="backs('branch_code.action');"/>
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
</body>
</html>