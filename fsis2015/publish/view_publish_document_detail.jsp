<%--
  Created by IntelliJ IDEA.
  User: iRambo
  Date: May 4, 2012
  Time: 2:24:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="th.go.mof.fpo.Constants" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
 <head><title>Simple jsp page</title>
    <script language="javascript" src="../includes/js/tp/validate.js"></script>
    <link rel="stylesheet" type="text/css" href="../includes/css/style.css">
     <script type="text/javascript">

         $(document).ready(function() {
             $('textarea[maxlength]').keyup(function() {
                 var max = parseInt($(this).attr('maxlength'));
                 if ($(this).val().length > max) {
                     $(this).val($(this).val().substr(0, $(this).attr('maxlength')));
                 }
             });
         });

         function preventSubmit() {
             if (validateForm()) {
                 document.getElementById("submit_publish_save").disabled = true;
                 document.getElementById("reset").disabled = true;
                 document.getElementById("submit_publish_back").disabled = true;

                 var hiddenf = document.createElement("input");
                 hiddenf.setAttribute("type", "hidden");
                 hiddenf.setAttribute("name", "method:upload");

                 thisForm.appendChild(hiddenf);
                 thisForm.submit();
             }
         }
         function back() {
             var back = document.createElement("input");
             back.setAttribute("type", "hidden");
             back.setAttribute("name", "method:back");
             thisForm.appendChild(back);
             thisForm.submit();
         }
     </script>
</head>
<body><s:form id="form_submit_publish_document" action="submit_publish_document_detail" enctype="multipart/form-data">
<s:hidden name="reportUploadId" id="reportUploadId"/>
    <s:hidden id="reportNameHidden" name="reportNameHidden"/>
    <s:hidden id="descriptionHidden" name="descriptionHidden"/>
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
                            <img src="../images/table004.gif" width="43" height="37" alt="">
                        </td>
                        <td>
                            <table width="100%" border="0" align="center" style="height:100%">
                                <tr>
                                    <td>
                                            <%--content here--%>
                                        <table width=100%>
                                            <tr>
                                                <td><b>Submit Publish Document</b></td>
                                            </tr>
                                        </table>
                                        <table width="100%" border="0" align="center" cellpadding="1"
                                               cellspacing="1" class="displayTable">
                                            <tr class="bgGreen2">
                                                <td height=30 class="label" width="20%">Publish Document <span class="require_field">*</span> :</td>
                                                <td width="80%">
                                                   <s:select list="reportTitleList" name="reportTitleId" id="reportTitleId" headerKey="" listKey="id" listValue="reportName" headerValue="-------------  Please Select  -------------" />
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label">Publish Name <span class="require_field">*</span> :</td>
                                                <td><s:textfield name="reportName" id="reportName" cssStyle="width:250px;"/></td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td class="label">Description :</td>
                                                <td><s:textarea rows="3" cols="48" maxlength="200" name="description" id="description"> </s:textarea></td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label">File name<span class="require_field">*</span> :</td>
                                                <td>
                                                    <input type="file" id="upload" name="upload" size="60" value=""/>
                                                     <c:if test="${requestScope.originalFileName ne null}">
                                                    <br/><br/><font style="color:darkblue;"><b>Publish Document : </b> &nbsp; ${requestScope.originalFileName} </font>
                                                    </c:if>
                                                </td>
                                             </tr>
                                            <tr class="bgGreen2">
                                                 <td align="right"><b>Enable :</b></td>
                                                 <td><s:checkbox name="status" id="status"/> </td>
                                            </tr>
                                        </table>
                                        <table width="100%">
                                            <tr>
                                                <td width="100%" align="center">
                                                    <input type="button" id="submit_publish_save" name="submit_publish_save" value="Upload" class="button" onclick="preventSubmit()"/>&nbsp;
                                                    <input type="reset" id="reset" name="reset" value="Reset" class="button"/>
                                                    <%--<input type="button" id="submit_publish_back" name="submit_publish_back" value="Back" class="button" onclick="location.href='view_publish_document.action';"/>&nbsp;--%>
                                                    <input type="button" id="submit_publish_back" name="submit_publish_back" value="Back" class="button" onclick="back()"/>&nbsp;

                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="20px">&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                        <td width="28" background="../images/table005.gif">
                            <img src="../images/table005.gif" width="28" height="37" alt=""></td>
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
    var thisForm = document.getElementById('form_submit_publish_document');
    function validateForm() {

        if (isEmptyById('reportTitleId')) {
            alert('Please Select Publish Document');
            thisForm.reportTitleId.focus();
            return false;
        }

        if (isEmptyById('reportName')) {
            alert('Please Input Publish Name');
            thisForm.reportName.focus();
            return false;
        }

    <c:if test="${requestScope.originalFileName eq null}">
        if (isEmptyById('upload')) {
            alert('Please Select File Name');
            thisForm.upload.focus();
            return false;
        } else {
            var file = thisForm.upload.value;
            if ((file.substring(file.length - 4, file.length) == '.pdf') ||
                (file.substring(file.length - 4, file.length) == '.PDF') ||
                (file.substring(file.length - 4, file.length) == '.xls') ||
                (file.substring(file.length - 4, file.length) == '.XLS')) {
            } else {
                alert('Invalid File Type' + '\n Support Excel or PDF Only');
                thisForm.upload.focus();
                return false;
            }
        }
    </c:if>
        return true
    }
</script>
</body>
</html>