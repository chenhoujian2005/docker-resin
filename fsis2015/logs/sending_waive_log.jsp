<%--
  Created by IntelliJ IDEA.
  User: jrambo
  Date: 3 �.�. 2554
  Time: 16:47:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head><title>Activity Log Detail</title>
<link href="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="../includes/css/style.css">
<script type="text/javascript" src="../includes/js/tp/utils.js"></script>
</head>
<body><s:form action="sending_waive_log">
    <s:hidden name="id" id="id"/>
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
                                    <td style="height:100%">
                                        <%--content here--%>
                                        <table>
                                            <tr>
                                                <td><b>Sending Waive : Log </b></td>
                                            </tr>
                                        </table>

                                        <table width="100%" align="center" class="displayTable">
                                            <tr class="bgGreen2">
                                                <td width="25%" align="right"><b>SFIs Name :</b></td>
                                                <td width="75%">
                                                    <s:select name="sfi" disabled="true"
                                                              list="sfiList"
                                                              listKey="id"
                                                              listValue="nameTh"
                                                              headerKey=""
                                                              headerValue="----------  Please Select  ----------"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td align="right"><b>Dataset Name :</b></td>
                                                <td>
                                                    <s:select name="dsTitle" disabled="true"
                                                              list="dsTitleList"
                                                              listKey="id"
                                                              listValue="name"
                                                              headerKey=""
                                                              headerValue="----------  Please Select  ----------"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td align="right"><b>Dataset Date From :</b></td>
                                                <td><s:textfield name="dateFrom" id="dateFrom" readonly="true" size="15" cssStyle="font-size:14px" disabled="true"/>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td align="right"><b>Dataset Date To :</b></td>
                                                <td><s:textfield name="dateTo" id="dateTo"readonly="true" size="15" cssStyle="font-size:14px" disabled="true"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td height=30 align="right"><b>Enable :</b></td>
                                                <td>
                                                    <s:checkbox name="enable" disabled="true"/>
                                                </td>
                                            </tr>
                                        </table>
                                        <table width="100%">
                                            <tr align="center">
                                                <td>
                                                    <input class="button" type="button" id="closeBtn" name="closeBtn" value="Close" onclick="window.close();"/>
                                                </td>
                                            </tr>
                                        </table>
                                            <font style="color:red;">* เป็นข้อมูลก่อนการแก้ไข</font>
                                            <%--content here--%>
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
  </body>
</html>