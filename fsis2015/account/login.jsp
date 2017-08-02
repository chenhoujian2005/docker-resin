<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<head>
<script type="text/javascript">
    if (parent.frames != null && parent.frames.length > 0) {
        top.location = '../account/login.action';
    }
</script>
<title>Specialized Financial Institutions Information System</title>
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="expires" content="0L">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="../includes/css/style.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="../includes/js/jquery.js"></script>
<style type="text/css">
    body {
        margin-left: 0px;
        margin-top: 0px;
            text-align: center;
            background-image: url(../images/bg_02.png);
        }

        .cdd {
            text-align: center;
    }
</style>
</head>
<body>
<s:form name="login" action="login" validate="false">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td align="center">
                <table width="820" border="0" cellspacing="0" cellpadding="0">
                    <tr><td align="center"><img src="../images/login_01_modify.png" width="820" height="151"/></td></tr>
                    <tr>
                        <td align="left" valign="top" style="padding:25px 68px;background-image:url('../images/login_01-copy_04.png');background-repeat:no-repeat;background-position:center;width:100%;height:184">
                            <table border="0" cellspacing="0" cellpadding="0" >
                                <tr><td colspan="2">&nbsp;</td></tr>
                                <tr valign="bottom">
                        <td>&nbsp;</td>
                                    <td colspan="2">
                            <div class="style_notsend">
                                <c:choose>
                                    <c:when test="${requestScope.messageError eq 'USE'}">
                                        <c:out value="Username not found."/>
                                    </c:when>
                                    <c:when test="${requestScope.messageError eq 'PAS'}">
                                        <c:out value="Password is incorrect."/>
                                    </c:when>
                                    <c:when test="${requestScope.messageError eq 'DIS'}">
                                        <c:out value="Username is disabled."/>
                                    </c:when>
                                </c:choose>
                            </div>
                        </td>
                    </tr>
                                <tr valign="middle">
                                    <td align="right" class="txtWhite">Username :</td>
                                    <td colspan="2">
                            <s:textfield name="username" cssStyle="width:140px"/>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="txtWhite">Password :</td>
                                    <td colspan="2"><s:password name="password" cssStyle="width:140px"/></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                                    <td valign="middle" colspan="2" height="30">
                                           <s:submit type="image" src="../images/login.gif" method="login" onclick="auto()"/>
                                        <a href="mailto:sfiadmin@fpo.go.th" style="color:ghostwhite;" class="txtBlueSmall">Forgot password</a>
                        </td>
                    </tr>
                </table>
                        </td>
                    </tr>
                    <tr>
                        <td align="center"><img src="../images/login_01-copy_05.png" width="820" height="170"/></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</s:form>
<script type="text/javascript">
    var thisForm = document.getElementsByTagName('form')[0];
    thisForm.username.focus();

//     function auto(){
//      thisForm.username.value = "prasobchoke.t";
////    thisForm.password.value = "prasobchoke.t";
//      thisForm.password.value = "fpo";
//    }
</script>
</body>
