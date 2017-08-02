<%--
  Created by IntelliJ IDEA.
  User: Witsanu
  Date: 12 มิ.ย. 2557
  Time: 13:48
  To change this template use File | Settings | File Templates.
--%>
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
    <meta http-equiv="X-UA-Compatible" content="IE=7,IE=8,IE=9" />
    <link href="../includes/css/style.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="../includes/css/style_for_login.css" media="screen" type="text/css" />
    <script type="text/javascript" src="../includes/js/jquery.js"></script>
    <script type="text/javascript" src="../includes/js/jquery_codepen.js"></script>
    <script type="text/javascript" src="../includes/js/index.js"></script>
    <style type="text/css">
        body {

            background: rgba(255, 255, 255, 1);
            /* Old Browsers */
            background: -moz-linear-gradient(left, rgba(255, 255, 255, 1) 0%, rgba(246, 246, 246, 1) 47%, rgba(237, 237, 237, 1) 100%);
            /* FF3.6+ */
            background: -webkit-gradient(left top, right top, color-stop(0%, rgba(255, 255, 255, 1)), color-stop(47%, rgba(246, 246, 246, 1)), color-stop(100%, rgba(237, 237, 237, 1)));
            /* Chrome,Safari4+  */
            background: -webkit-linear-gradient(left, rgba(255, 255, 255, 1) 0%, rgba(246, 246, 246, 1) 47%, rgba(237, 237, 237, 1) 100%);
            /* Chrome10+,Safari5.1+ */
            background: -o-linear-gradient(left, rgba(255, 255, 255, 1) 0%, rgba(246, 246, 246, 1) 47%, rgba(237, 237, 237, 1) 100%);
            /* Opera 11.10+ */
            background: -ms-linear-gradient(left, rgba(255, 255, 255, 1) 0%, rgba(246, 246, 246, 1) 47%, rgba(237, 237, 237, 1) 100%);
            /* IE 10+ */
            background: linear-gradient(to right, rgba(255, 255, 255, 1) 0%, rgba(246, 246, 246, 1) 47%, rgba(237, 237, 237, 1) 100%);
            /* W3C */
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffff', endColorstr='#ededed', GradientType=1);
            /* IE6-9 */
            margin-left: 0px;
            margin-top: 0px;
            text-align: center;
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
                    <tr><td align="center"><img src="../images/Login_01.png" width="850" height="151"/></td></tr>
                    <tr>
                        <td align="left" valign="top" style="padding:25px 68px;background-image:url('../images/Login_02.png');background-repeat:no-repeat;background-position:center;width:850;height:210">
                            <table border="0" cellspacing="0" cellpadding="0" >
                                <tr><td colspan="3">&nbsp;</td></tr>
                                <tr valign="bottom">
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td colspan="3">
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
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td colspan="3">
                                        &nbsp;
                                    </td>
                                </tr>
                                <%--<tr>--%>
                                    <%--<td>&nbsp;</td>--%>
                                    <%--<td>&nbsp;</td>--%>
                                    <%--<td>&nbsp;</td>--%>
                                    <%--<td>&nbsp;</td>--%>
                                    <%--<td>&nbsp;</td>--%>
                                    <%--<td>&nbsp;</td>--%>
                                    <%--<td colspan="3">--%>
                                        <%--&nbsp;--%>
                                    <%--</td>--%>
                                <%--</tr>--%>
                                <tr valign="middle">
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td align="right" class="txtWhite">Username :</td>
                                    <td colspan="3">
                                        <s:textfield name="username" cssStyle="width:140px" placeholder="Username"/>
                                    </td>
                                </tr>
                                <tr >
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td colspan="3">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td align="right" class="txtWhite">Password :</td>
                                    <td colspan="3"><s:password name="password" cssStyle="width:140px" placeholder="Password"/></td>
                                </tr>
                                <%--<tr  height="10">--%>
                                    <%--<td>&nbsp;</td>--%>
                                    <%--<td>&nbsp;</td>--%>
                                    <%--<td>&nbsp;</td>--%>
                                    <%--<td>&nbsp;</td>--%>
                                    <%--<td>&nbsp;</td>--%>
                                    <%--<td>&nbsp;</td>--%>
                                    <%--<td colspan="3">&nbsp;</td>--%>
                                <%--</tr>--%>
                                <tr>
                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td valign="middle" colspan="3" height="30">
                                        <br>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <s:submit type="submit" value="Login" cssClass="btn" style=" width:55px; height:25px;" method="login" align="center" onclick="auto()"/>
                                        &nbsp;&nbsp;&nbsp;<a href="mailto:sfiadmin@fpo.go.th" style="color:ghostwhite;" class="txtBlueSmall">Forgot password</a>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td align="center"><img src="../images/Login_03.png" width="850" height="170"/></td>
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

