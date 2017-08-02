<%--
  Created by IntelliJ IDEA.
  User: iRambo
  Date: Feb 14, 2012
  Time: 2:18:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript">
        function logout() {
            if (confirm("Are you sure you want to log out?")) {
                parent.bodyFrame.location = '../account/logout.action';
            }
        }
    </script>
<style type="text/css">
    html, body {
        font-size: 11px;
        font-family: "Ms Sans Serif";
        margin: 0;
        padding: 0;
        border: none;
    }

   table,tr, td {
        margin: 0px;
        padding: 0px
    }
</style>
<table style="width:100%;height:100%;" border="0" cellpadding="0" cellspacing="0" style="background:#ccffff">
    <tr>
        <td>
            <table style="width:100%;height:100%;" border="0" cellpadding="0" cellspacing="0" style="margin-top:0;padding:0;">
                <%--<tr style="background-image:url(../images/head/bg-h.jpg);background-repeat:repeat-x;">--%>
                <tr style="background-image:url(../images/head/bg_head_m.gif);">
                    <td align="left" width="267px"><img src="../images/head/logo-header.png" style="padding:0;margin:0;"/></td>
                    <td style="background-image:url(../images/head/bg_head_m.gif);"></td>
                    <td align="right" width="737px" style="padding-right:20px;">
                        <img src="../images/head/text_header.png" style="border:0px;padding:0;margin:0;"/>
                    </td>
                </tr>
                <tr>
                    <%--<td style="height:20px;" background="../images/bg_negative.png"/>--%>
                    <td style="height:20px;" width="250px" bgcolor="#add8e6"/>
                    <%--<td colspan="2" style="height:20px;" align="right" background="../images/bg_negative.png">--%>
                    <td colspan="2" style="height:20px;" align="right" bgcolor="#add8e6">

                    <b>
                        <%--<span style="color:#FFFFFF; font-family:Verdana; color:orangered; font-size:12px;">V 1.0,</span>--%>
                        <span style="color:#FFFFFF; font-family:Verdana; color:orangered; font-size:12px;">Welcome </span>
                        <span style="color:#FFFFFF; font-family:Verdana; color:darkblue; font-size:12px;">${sessionScope.userLogin.userName} (${sessionScope.userLogin.fullNameRole}), ${sessionScope.userLogin.sfi.abbreviationEn} </span>
                        <font face="Arial Narrow" color="orange" onclick="logout();"
                              onmouseover="this.style.cursor='hand'; style.color='#A5FFA7';"
                              onmouseout="style.color='orange'"
                              style="padding-right:5px; padding-left:15px; font-size:12px; cursor:pointer;">Log
                            out</font>
                    </b>
                </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
 
<%--<table style="width:100%;height:100%;background:red;border: outset 0pt;" border="0" cellspacing="0px" cellpadding="0px">--%>
 <%--<tr style="padding:0;margin:0;">--%>
        <%--<td style="padding:0;margin:0;">--%>
            <%--<table border="0" cellspacing="0px" cellpadding="0px" style="width:100%;height:80px;padding:0;margin:0;">--%>
                <%--&lt;%&ndash;<tr style="width:100%;background-image:url(../images/head/bg-h.jpg);background-repeat:repeat-x;">&ndash;%&gt;--%>
                <%--<tr style="width:100%;background-repeat:repeat-x;padding:0;margin:0;">--%>
                    <%--<td align="left" style="padding:0">--%>
                        <%--<img src="../images/head/left-h.jpg" style="padding:0;margin:0;"/>--%>
                    <%--</td>--%>
                    <%--<td align="right">--%>
                        <%--<img src="../images/head/right-h.jpg" style="border:0px;padding:10"/>--%>
                    <%--</td>--%>
                <%--</tr>--%>
            <%--</table>--%>
        <%--</td>--%>
    <%--</tr>--%>
    <%--<tr>--%>
        <%--<td style="height:20px;">--%>
            <%--<table width="100%" border="0px" cellspacing="0px" cellpadding="0px">--%>
                <%--<tr id="upperbar">--%>
                    <%--<td width="50%" align="left" background="../images/bg_negative.gif" class="navicator">--%>
                        <%--&nbsp;</td>--%>
                    <%--<td height="25px" background="../images/bg_negative.gif" class="txtWhite" align="right">--%>
                        <%--<b>--%>
                            <%--<span style="color:#FFFFFF; font-family:Verdana; color:#A5FFA7; font-size:12px;">Welcome </span>--%>
                            <%--<span style="color:#FFFFFF; font-family:Verdana; color:white; font-size:12px;">${sessionScope.userLogin.userName} (${sessionScope.userLogin.fullNameRole}), ${sessionScope.userLogin.sfi.abbreviationEn} </span>--%>
                            <%--<font face="Arial Narrow" color="orange" onclick="logout();"--%>
                                  <%--onmouseover="this.style.cursor='hand'; style.color='#A5FFA7';"--%>
                                  <%--onmouseout="style.color='orange'"--%>
                                  <%--style="padding-right:5px; padding-left:15px; font-size:12px; cursor:pointer;">Log out</font>--%>
                        <%--</b>--%>
                    <%--</td>--%>
                <%--</tr>--%>
            <%--</table>--%>
        <%--</td>--%>
    <%--</tr>--%>
<%--</table>--%>



