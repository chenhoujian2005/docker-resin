<%--
  Created by IntelliJ IDEA.
  User: jrambo
  Date: 31 �.�. 2554
  Time: 10:49:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="th.go.mof.fpo.Constants" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<html>
<head><title>Activity Log Detail</title>
<link rel="stylesheet" type="text/css" href="../includes/css/style.css">
</head>
<body>
<s:form action="no_transaction_log">
    <!--s:hidden id="id" name="id"/-->
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
                        <td width="43" background="../images/table004.gif"><img src="../images/table004.gif" width="43"
                                                                                height="37" alt=""></td>
                        <td>
                            <table width="100%" border="0" align="center" style="height:100%">
                                <tr>
                                    <td style="height:100%">
                                            <%--content here--%>
                                        <b>No Transaction Log: Detail</b><br/>
                                        <table width="100%" class="displayTable">
                                            <tr class="bgGreen2">
                                                <td class="label" width="20%">
                                                    SFIs Name :
                                                </td>
                                                <td width="80%">
                                                    <s:select list="sfiList" disabled="true" name="sfi" id="sfi"
                                                              listKey="id" listValue="nameTh" headerKey=""
                                                              headerValue="-------------------------------------  Please Select  -------------------------------------"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label">
                                                    Dataset Name :
                                                </td>
                                                <td>
                                                    <s:select list="dsTitleList" disabled="true" name="dsTitle"
                                                              id="dsTitle"
                                                              listKey="id" listValue="name" headerKey=""
                                                              headerValue="--  Please Select  --"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td class="label">
                                                    Dataset Date From :
                                                </td>
                                                <td align="left">
                                                    <s:textfield name="dateFrom" id="dateFrom" disabled="true"
                                                                 size="8"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label">
                                                    Dataset Date To :
                                                </td>
                                                <td align="left">
                                                    <s:textfield name="dateTo" id="dateTo" disabled="true" size="8"/>
                                                </td>
                                            </tr>
                                        </table>
                                        <table width="100%">
                                            <tr>
                                                <td width="100%" align="center">
                                                    <input type="button" id="closeBtn" name="closeBtn" value="Close" class="button"
                                                           onclick="window.close();"/>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="20px">&nbsp;</td>
                                </tr>
                            </table>
                            <font style="color:red;">* เป็นข้อมูลก่อนการแก้ไข</font>
                        </td>
                        <td width="28" background="../images/table005.gif">
                            <img src="../images/table005.gif" width="28" height="37" alt="">
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
</script>

</body>
</html>