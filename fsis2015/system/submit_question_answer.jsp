<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<html>
<head><title>Simple jsp page</title>
    <script language="javascript" src="../includes/js/tp/validate.js"></script>
    <link rel="stylesheet" type="text/css" href="../includes/css/style.css">
    <script type="text/javascript">

        $(document).ready(function () {
            $('textarea[maxlength]').keyup(function () {
                var max = parseInt($(this).attr('maxlength'));
                if ($(this).val().length > max) {
                    $(this).val($(this).val().substr(0, $(this).attr('maxlength')));
                }
            });
        });

        function preventSubmit() {
            if (validateForm()) {
                document.getElementById("question_answer_upload").disabled = true;
                document.getElementById("reset").disabled = true;

                var hiddenf = document.createElement("input");
                hiddenf.setAttribute("type", "hidden");
                hiddenf.setAttribute("name", "method:upload");

                thisForm.appendChild(hiddenf);
                thisForm.submit();
            }
        }

        function resetForm() {
            thisForm.questionGroupId.value = '';
            thisForm.questionTitle.value = '';
            thisForm.questionDescription.value = '';
            thisForm.answerDescription.value = '';
        }

    </script>
</head>
<body>
<s:form id="submit_question_answer" action="submit_question_answer" enctype="multipart/form-data">
    <s:hidden name="questionAnswerId" id="questionAnswerId"/>
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
                                                <td><b>Submit Question & Answer</b></td>
                                            </tr>
                                        </table>
                                        <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1"
                                               class="displayTable">
                                            <tr class="bgGreen2">
                                                <td height=30 class="label" width="20%">Question Group <span
                                                        class="require_field">*</span> :
                                                </td>
                                                <td width="80%">
                                                    <s:select list="questionAnswerGroupList" name="questionGroupId"
                                                              id="questionGroupId" headerKey="" listKey="id"
                                                              listValue="questionGroupName"
                                                              headerValue="-------------  Please Select  -------------"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label">Question Title <span class="require_field">*</span> :
                                                </td>
                                                <td>
                                                    <s:textfield name="questionTitle" id="questionTitle"
                                                                 cssStyle="width:250px;"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td class="label">Question Description :</td>
                                                <td>
                                                    <s:textarea rows="3" cols="48" maxlength="200"
                                                                name="questionDescription"
                                                                id="questionDescription"> </s:textarea>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label">Question File name<span class="require_field">*</span>
                                                    :
                                                </td>
                                                <td>
                                                    <input type="file" id="uploadQuestion" name="uploadQuestion"
                                                           size="60" value=""/>
                                                    <c:if test="${requestScope.questionOriginalFileName ne null}">
                                                        <br/><br/><font style="color:darkblue;"><b>Question
                                                        : </b> &nbsp; ${requestScope.questionOriginalFileName} </font>
                                                    </c:if>
                                                </td>
                                            </tr>
                                            <%--<c:if test="${requestScope.questionAnswerId ne null}">--%>
                                                <tr class="bgGreen2">
                                                    <td class="label">Answer Description :</td>
                                                    <td>
                                                        <s:textarea rows="3" cols="48" maxlength="200"
                                                                    name="answerDescription"
                                                                    id="answerDescription">
                                                        </s:textarea>
                                                    </td>
                                                </tr>
                                                <tr class="bgGreen1">
                                                    <td class="label">Answer File name :
                                                    </td>
                                                    <td>
                                                        <input type="file" id="uploadAnswer" name="uploadAnswer"
                                                               size="60" value=""/>
                                                        <c:if test="${requestScope.answerOriginalFileName ne null}">
                                                            <br/><br/><font style="color:darkblue;"><b>Answer
                                                            : </b> &nbsp; ${requestScope.answerOriginalFileName} </font>
                                                        </c:if>
                                                    </td>
                                                </tr>
                                            <%--</c:if>--%>
                                            <tr class="bgGreen2">
                                                <td align="right">Enable :</td>
                                                <td><s:checkbox name="status" id="status"/></td>
                                            </tr>
                                        </table>
                                        <table width="100%">
                                            <tr>
                                                <td width="100%" align="center">
                                                    <input type="button" id="question_answer_upload"  name="question_answer_upload" value="Save" class="button"  onclick="preventSubmit()"/>&nbsp;
                                                    <input type="button" id="reset" name="reset" class="button" onclick="resetForm()" value="Reset"/>
                                                    <c:if test="${requestScope.questionAnswerId ne null}">
                                                        <s:submit id="backBtn" value="Back" method="back" cssClass="button" />
                                                    </c:if>
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
                        <td background="../images/table007.gif"></td>
                        <td><img src="../images/table008.gif" width="28" height="23" alt=""></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</s:form>
<script type="text/javascript">
    var thisForm = document.getElementById('submit_question_answer');
    function validateForm() {

        if (isEmptyById('questionGroupId')) {
            alert('Please Select Question Group.');
            thisForm.reportTitleId.focus();
            return false;
        }

        if (isEmptyById('questionTitle')) {
            alert('Please Input Question Title.');
            thisForm.reportName.focus();
            return false;
        }
        if (isEmptyById('questionAnswerId')) {
            if (isEmptyById('uploadQuestion')) {
                alert('Please Select Question File Name');
                thisForm.uploadQuestion.focus();
                return false;
            } else {
                var file = thisForm.uploadQuestion.value;
                if ((file.substring(file.length - 4, file.length) == '.pdf') ||
                        (file.substring(file.length - 4, file.length) == '.PDF') ||
                        (file.substring(file.length - 4, file.length) == '.xls') ||
                        (file.substring(file.length - 4, file.length) == '.XLS') ||
                        (file.substring(file.length - 5, file.length) == '.xlsx') ||
                        (file.substring(file.length - 5, file.length) == '.XLSX')) {
                } else {
                    alert('Invalid File Type' + '\n Support Excel or PDF Only');
                    thisForm.upload.focus();
                    return false;
                }
            }
        } else {
            if (!isEmptyById('uploadQuestion')) {
                var file = thisForm.uploadQuestion.value;
                if ((file.substring(file.length - 4, file.length) == '.pdf') ||
                        (file.substring(file.length - 4, file.length) == '.PDF') ||
                        (file.substring(file.length - 4, file.length) == '.xls') ||
                        (file.substring(file.length - 4, file.length) == '.XLS') ||
                        (file.substring(file.length - 5, file.length) == '.xlsx') ||
                        (file.substring(file.length - 5, file.length) == '.XLSX')) {
                } else {
                    alert('Invalid File Type' + '\n Support Excel or PDF Only');
                    thisForm.upload.focus();
                    return false;
                }
            }
        }
        if (!isEmptyById('uploadAnswer')) {

            var file = thisForm.uploadAnswer.value;
            if ((file.substring(file.length - 4, file.length) == '.pdf') ||
                    (file.substring(file.length - 4, file.length) == '.PDF') ||
                    (file.substring(file.length - 4, file.length) == '.xls') ||
                    (file.substring(file.length - 4, file.length) == '.XLS') ||
                    (file.substring(file.length - 5, file.length) == '.xlsx') ||
                    (file.substring(file.length - 5, file.length) == '.XLSX')) {
            } else {
                alert('Invalid File Type' + '\n Support Excel or PDF Only');
                thisForm.upload.focus();
                return false;
            }
        }
        return true
    }
</script>
</body>
</html>