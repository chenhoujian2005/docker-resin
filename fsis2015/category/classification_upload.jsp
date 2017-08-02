<%--
  Created by IntelliJ IDEA.
  User: iRambo
  Date: 18-Jan-2012
  Time: 18:30:58
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
              document.getElementById("submit_classification_upload").disabled = true;
              document.getElementById("back_classification_upload").disabled = true;

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
<s:form id="form_classification_upload" action="classification_upload" enctype="multipart/form-data">
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
                                                <td><b>Classification Upload</b></td>
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
                                            <tr class="bgGreen1">
                                                <td class="label">Version <span class="require_field">*</span>: </td>
                                                <td>${requestScope.classificationVersion.version}</td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td width="25%" class="label">Upload File <span class="require_field">*</span>: </td>
                                                <td width="75%"><s:file name="upload" id="upload" size="55"/></td>
                                            </tr>
                                        </table>
                                        <table width="100%">
                                            <tr align="center">
                                                <td>
                                                    <input type="button" id="submit_classification_upload" name="submit_classification_upload" value="Upload" class="button" onclick="preventSubmit()"/>&nbsp;
                                                    <input type="button" id="back_classification_upload" name="back_classification_upload" value="Back" class="button"  onclick="backPage();"/>
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
 var thisForm = document.getElementById('form_classification_upload');
    function validateForm() {
        if (isEmptyById('upload')) {
            alert('Please Select File Name');
            thisForm.upload.focus();
            return false;
        } else {
            var file = thisForm.upload.value;
            if ((file.substring(file.length - 4, file.length) == '.xls') ||
                (file.substring(file.length - 4, file.length) == '.XLS')) {
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
</html>