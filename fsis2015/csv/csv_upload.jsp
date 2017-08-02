<%--
  Created by IntelliJ IDEA.
  User: iRambo
  Date: 22 ��.�. 2555
  Time: 15:56:50
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head>
    <title>Simple jsp page</title>
    <link rel="stylesheet" type="text/css" href="../includes/css/style.css">
    <script type="text/javascript" src="../includes/js/tp/validate.js"></script>
    <script type="text/javascript">
        function backPage(){
             location.href = 'classification.action';
        }

        function preventSubmit() {
          if (validateForm()) {
              document.getElementById("submit_csv_upload").disabled = true;
              document.getElementById("back_csv_upload").disabled = true;

              var hiddenf = document.createElement("input");
              hiddenf.setAttribute("type", "hidden");
              hiddenf.setAttribute("name", "method:upload");

              thisForm.appendChild(hiddenf);
              thisForm.submit();
          }
      }
      </script>
</head>
<body>
<s:form id="form_csv_upload" action="csv_upload" enctype="multipart/form-data">
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
                                        <table>
                                            <tr>
                                                <td><b>Upload CSV File for BI</b></td>
                                            </tr>
                                        </table>
                                        <div class="style_notsend">
                                            <c:choose>
                                                <c:when test="${requestScope.error eq 'fail'}">
                                                    <c:out value="${requestScope.alertMsg}"/>
                                                </c:when>
                                            </c:choose>
                                        </div>
                                        <table width="100%" align="center" class="displayTable">
                                            <tr class="bgGreen2">
                                                <td width="25%" class="label">CSV Path<span class="require_field">*</span>: </td>
                                                <td width="75%">
                                                    <s:select name="biTitle" id="biTitle"
                                                            list="#{'':'-------------  Please Select  -------------',
                                                                    'FI':'FI',
                                                                    'SFI':'SFI',
                                                                    'SFI_FI':'SFI_FI'
                                                                    }" />
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td width="25%" class="label">Upload File <span class="require_field">*</span>: </td>
                                                <td width="75%"><s:file name="upload" id="upload" size="55"/></td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td width="25%" class="label">Description : </td>
                                                <td width="75%"><s:textarea rows="4" cols="60"  maxlength="1024" name="description" id="description" /></td>
                                            </tr>
                                        </table>
                                        <table width="100%">
                                            <tr align="center">
                                                <td>
                                                    <input type="button" id="submit_csv_upload" name="submit_csv_upload" value="Upload" class="button" onclick="preventSubmit()"/>&nbsp;
                                                    <input type="reset" id="back_csv_upload" name="back_csv_upload" value="Reset" class="button" onclick="resetForm()"/>&nbsp;
                                                    <s:submit name="back" value="Back" method="back" cssClass="button"/>
                                                 </td>
                                            </tr>
                                        </table>
                                            <%--content here--%>
                                    </td>
                                    <td width="20px">&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                        <td width="28" background="../images/table005.gif"><img src="../images/table005.gif" width="28"
                                                                                height="37" alt=""></td>
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
    var thisForm = document.getElementById('form_csv_upload');
    function validateForm() {
        if (thisForm.biTitle.selectedIndex == 0) {
            alert('Please Select CSV Path');
            thisForm.biTitle.focus();
            return false;
        }

        if (isEmptyById('upload')) {
            alert('Please Select File Name');
            thisForm.upload.focus();
            return false;
        } else {
            var file = thisForm.upload.value;
            if ((file.substring(file.length - 4, file.length) == '.csv') ||
                (file.substring(file.length - 4, file.length) == '.CSV')) {
            } else {
                alert('Invalid File Type' + '\n Support .xls Only');
                thisForm.upload.focus();
                return false;
            }
        }
        return true;
    }
</script>
</body>
</html></html>