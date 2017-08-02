<%--
  Created by IntelliJ IDEA.
  User: jrambo
  Date: 31 �.�. 2554
  Time: 20:36:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
  <head><title>Activity Log Detail</title>
  <link rel="stylesheet" type="text/css" href="../includes/css/style.css">
  </head>
  <body>
  <s:form action="validation_rule_log" validate="false">
    <s:hidden name="rulesValidationId" id="rulesValidationId"/>
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
                                    <td width="15%" colspan="2"><b>Rules Validation</b></td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <table width="100%" class="displayTable">
                                            <tr class="bgGreen2">
                                                <td class="label" width="25%">Error Code :</td>
                                                <td width="75%">
                                                 <s:property value="code"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label">Master Dataset Name :</td>
                                                 <td>
                                                     <s:select list="dsTitleList" disabled="true"
                                                               name="masterDsTitleId"
                                                               headerKey=""
                                                               headerValue="-------------  Please Select  -------------"
                                                               listKey="id"
                                                               listValue="name"/>
                                                 </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td class="label">Slave Dataset Name :</td>
                                                 <td>
                                                     <s:select list="dsTitleList" disabled="true"
                                                               name="slaveDsTitleId"
                                                               headerKey=""
                                                               headerValue="-------------  Please Select  -------------"
                                                               listKey="id"
                                                               listValue="name"/>
                                                 </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td align="right"><b>Error Message :</b></td>
                                                <td>
                                                    <s:textarea name="description" id="description" rows="5"  disabled="true"
                                                                cssStyle="width:100%"/>
                                                </td>
                                            </tr>
                                              <tr class="bgGreen2">
                                                 <td align="right"><b>Enable :</b></td>
                                                 <td>
                                                     <s:checkbox name="enable" id="enable"  disabled="true"/>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">
                                        <input type="button" class="button" id="closeBtn" name="closeBtn" value="Close" onclick="window.close();"/>
                                    </td>
                                </tr>
                            </table>
                             <font style="color:red;">* เป็นข้อมูลก่อนการแก้ไข</font>
                        </td>
                        <td width="28" background="../images/table005.gif"><img src="../images/table005.gif" width="28"/>
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