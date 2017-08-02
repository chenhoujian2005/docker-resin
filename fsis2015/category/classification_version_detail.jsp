<%--
  Created by IntelliJ IDEA.
  User: iRambo
  Date: 20-Jan-2012
  Time: 17:08:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="th.go.mof.fpo.Constants" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<html>
<head>
    <title>Simple jsp page</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/includes/css/style.css">
    <link href="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.js"></script>
    <script type="text/javascript" src="../includes/js/tp/utils.js"></script>
    <script type="text/javascript">
        function validateForm() {
            if (thisForm.version.value == '' || thisForm.version.value == ' ') {
                alert('Please Input Classification Version !!');
                thisForm.version.focus();
                return false;
            }

//            if (thisForm.effectiveDate.value == '' || thisForm.effectiveDate.value == ' ') {
//                alert('Please Input Classification Effective Date !!');
//                thisForm.effectiveDate.focus();
//                return false;
//            }
            return true;
        }
        function isNumberKey() {
            var charCode = event.keyCode;
            return !(charCode > 31 && (charCode < 48 || charCode > 57)) || charCode == 46;
        }
    </script>
</head>
 <body>
<s:form action="classification_version_detail">
<s:hidden id="classificationVersionId" name="classificationVersionId"/>
<s:hidden id="versionHidden" name="versionHidden"/>
<s:hidden id="descriptionHidden" name="descriptionHidden"/>
<s:hidden id="effectiveDateFromHidden" name="effectiveDateFromHidden"/>
<s:hidden id="effectiveDateToHidden" name="effectiveDateToHidden"/>
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
                    <td width="43" background="../images/table004.gif"><img src="../images/table004.gif" width="43" height="37" alt=""></td>
                    <td>
                        <table width="100%" border="0" align="center" style="height:100%">
                            <tr>
                                <td width="35%">
                                    <b>Classification Version Detail</b>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <table width="100%" class="displayTable">
                                        <tr class="bgGreen2">
                                            <td class="label">Version <span class="require_field">*</span>:</td>
                                            <td>
                                                <s:textfield name="version" id="version" cssStyle="width:150px" onkeypress="return isNumberKey()"/>
                                            </td>
                                        </tr>
                                        <tr class="bgGreen1">
                                            <td class="label">Description :</td>
                                            <td>
                                                <s:textarea name="description" id="description" cssStyle="width:350px"/>
                                            </td>
                                        </tr>
                                          <tr class="bgGreen2">
                                             <td class="label">Effective Date For Sfi :</td>
                                             <td>
                                                 <s:textfield name="effectiveDate" id="effectiveDate" readonly="true" size="8"/>
                                                 <img alt="" border="0" src="../images/dd.gif" name="dateBtn" width="15" height="15"
                                                      onclick="displayCalendar(document.forms[0].effectiveDate,'dd/mm/yyyy',this);"
                                                      align="absmiddle">
                                             </td>
                                        </tr>
                                        <tr class="bgGreen1">
                                            <td class="label">Effective Date For Fi :</td>
                                            <td>
                                                <s:textfield name="effectiveDateFi" id="effectiveDateFi" readonly="true" size="8"/>
                                                <img alt="" border="0" src="../images/dd.gif" name="dateBtn" width="15" height="15"
                                                     onclick="displayCalendar(document.forms[0].effectiveDateFi,'dd/mm/yyyy',this);"
                                                     align="absmiddle">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <s:submit name="ok" value="Save" method="save" cssClass="button" onclick="return validateForm();"/>&nbsp;
                                    <s:reset value="Reset" cssClass="button"/>&nbsp;
                                    <s:submit name="Back" value="Back" method="back" cssClass="button"/>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td width="28" background="../images/table005.gif"><img src="../images/table005.gif" width="28"/>
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