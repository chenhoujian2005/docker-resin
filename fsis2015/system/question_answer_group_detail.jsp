<%--
  Created by IntelliJ IDEA.
  User: iRambo
  Date: Feb 16, 2012
  Time: 2:54:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><title>Simple jsp page</title>
    <link rel="stylesheet" type="text/css" href="../includes/css/style.css">
    <script type="text/javascript" src="<%=request.getContextPath()%>/includes/js/tp/validate.js"></script>
</head>
<body>
<s:form action="question_answer_group_detail" enctype="multipart/form-data">
    <s:hidden name="questionAnswerGroupId" id="questionAnswerGroupId"/>
    <s:hidden name="questionAnswerGroupNameHidden" id="questionAnswerGroupNameHidden"/>
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
                                    <td width="15%" colspan="2"><b>Question Group : Add/Edit </b></td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <table width="100%" class="displayTable">
                                            <tr class="bgGreen2">
                                                <td width="20%" class="label">Question Group Name<span
                                                        class="require_field">*</span> :
                                                </td>
                                                <td width="80%">
                                                    <s:textfield name="questionAnswerGroupName"   id="questionAnswerGroupName"
                                                                 cssStyle="width:250px;"/>
                                                </td>
                                            </tr>

                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">
                                        <s:submit name="save" method="save" id="" value="Save" cssClass="button"
                                                  onclick="return validateForm();"/>&nbsp;
                                        <s:submit name="back" value="Back" method="back" cssClass="button"/>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td width="28" background="../images/table005.gif"><img src="../images/table005.gif" width="28">
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
    var thisForm = document.getElementsByTagName('form')[0];

    function validateForm() {
        if (isEmptyById('questionAnswerGroupName')) {
            alert('Please Input Question Group Name !!');
            return false;
        }
        return true;
    }
</script>
</body>
</html>