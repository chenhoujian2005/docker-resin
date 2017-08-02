<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
<head>
    <title>Simple jsp page</title>
    <link rel="stylesheet" type="text/css" href="../includes/css/style.css">

    <script language="javascript" src="../includes/js/tp/utils.js"></script>
    <script language="javascript" src="../includes/js/tp/validate.js"></script>
    <script type="text/javascript">
        function checkPassword() {
            var password1 = document.getElementById('newPassword').value;
            var password2 = document.getElementById('reTypeNewPassword').value;
            if (password1 != password2) {
                return false;
            }
            else {
                return true;
            }
        }

        function validateForm() {
            if (isEmptyById('oldPassword')) {
                alert('Please Input Old Password !!');
                thisForm.oldPassword.focus();
                return false;
            }

            if (isEmptyById('newPassword')) {
                alert('Please Input New Password !!');
                thisForm.newPassword.focus();
                return false;
            }

            if (isEmptyById('reTypeNewPassword')) {
                alert('Please Input New Password Again !!');
                thisForm.reTypeNewPassword.focus();
                return false;
            }
            if (!checkPassword()) {
                alert("Password Mismatch");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
<s:form action="change_password">
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
                                        <table width="100%">
                                            <tr>
                                                <td>
                                                    <font color="red">
                                                        <b><s:property value="errorMassage"/></b>
                                                    </font>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><b>Change Password</b></td>
                                            </tr>
                                        </table>
                                        <table width="100%" class="displayTable">
                                            <tr class="bgGreen2">
                                                <td width="25%" align="right">
                                                    Old Password<span class="require_field">*</span> :
                                                </td>
                                                <td width="75%">
                                                    <s:password name="oldPassword" id="oldPassword"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td align="right">
                                                    New Password<span class="require_field">*</span> :
                                                </td>
                                                <td>
                                                    <s:password name="newPassword" id="newPassword"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td align="right">
                                                    Re-type new password<span class="require_field">*</span> :
                                                </td>
                                                <td>
                                                    <s:password name="reTypeNewPassword" id="reTypeNewPassword"/>
                                                </td>
                                            </tr>
                                        </table>
                                        <table width="100%">
                                            <tr>
                                                <td width="100%" align="center">
                                                    <s:submit method="save" value="OK" cssClass="button" onclick="return validateForm();"/>
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
    var thisForm = document.getElementsByTagName('form')[0];
</script>
</body>
</html>
</body>
</html>