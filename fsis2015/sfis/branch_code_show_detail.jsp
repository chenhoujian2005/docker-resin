<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: iRambo
  Date: Feb 14, 2012
  Time: 5:36:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><title>Simple jsp page</title>
    <link rel="stylesheet" type="text/css" href="../includes/css/style.css">
    <script type="text/javascript" src="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.js"></script>
    <script type='text/javascript' src='<%=request.getContextPath()%>/dwr/engine.js'></script>
    <script type='text/javascript' src='<%=request.getContextPath()%>/dwr/util.js'></script>
    <script type='text/javascript' src='<%=request.getContextPath()%>/dwr/interface/AjaxManager.js'></script>
    <script type='text/javascript' src='<%=request.getContextPath()%>/includes/js/manager.js'></script>
    <script type='text/javascript' src='<%=request.getContextPath()%>/includes/js/util.js'></script>
    <script type='text/javascript' src="<%=request.getContextPath()%>/includes/js/tp/utils.js"></script>
    <script type='text/javascript' src="<%=request.getContextPath()%>/includes/js/tp/validate.js"></script>
    <link href="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.css" rel="stylesheet" type="text/css"/>
    <script language="javascript" src="../includes/js/tp/validate.js"></script>
    <script type="text/javascript">
        function validateForm() {
            var thisForm = document.getElementsByTagName('form')[0];
        <c:if test="${id eq null}">
            if (isEmptyById('sfiId')) {
                alert('Please Select SFIs Name');
                thisForm.sfiId.focus();
                return false;
            }
            if (isEmptyById('branchCode')) {
                alert('Please Input Branch Code');
                thisForm.branchCode.focus();
                return false;
            } 
        </c:if>
            if (isEmptyById('nameTh')) {
                alert('Please Input nameTh');
                thisForm.nameTh.focus();
                return false;
            }
            if (isEmptyById('nameEn')) {
                alert('Please Input nameEn');
                thisForm.nameEn.focus();
                return false;
            }
            if (isEmptyById('areaId')) {
                alert('Please Select Area');
                thisForm.areaId.focus();
                return false;
            }
            if (isEmptyById('provinceId')) {
                alert('Please Select Province');
                thisForm.provinceId.focus();
                return false;
            }
            return true;
        }

        function validateBranchCode() {
            if (isEmptyById('sfiId')) {
                alert('Please Select Sfi !!');
                document.getElementById('sfiId').focus();
                return false;
            }
            if (isEmptyById('branchCode')) {
                alert('Please Input branchCode !!');
                documenst.getElementById('branchCode').focus();
                return false;
            }
            else {
                return checkBranchCode();
            }
        }

        function checkBranchCode() {
            var branchCode = document.getElementById('branchCode').value;
            var sfiCode = document.getElementById('sfiId').value;
            if (!isEmptyValue(branchCode) && !isEmptyValue(sfiCode)) {
                AjaxManager.checkBranchCode(branchCode,sfiCode, function(isExits) {
                    displayResult(isExits);
                    return isExits;
                });
            }
            return false;
        }

        function displayResult(result) {
            if (result) {
                document.getElementById('resultDisplay').innerHTML = '<font color="red">Branch Code is Exists !!</font>';
            } else {
                document.getElementById('resultDisplay').innerHTML = 'OK !!';
            }
        }
    </script>
</head>
<body>
<s:form action="branch_code_show_detail">
    <s:hidden id="id" name="id"/>
     <s:hidden id="sfiHidden" name="sfiHidden" />
    <s:hidden id="branchCodeHidden" name="branchCodeHidden" />
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
                    <tr><td width="43" background="../images/table004.gif"><img src="../images/table004.gif" width="43" height="37" alt=""></td>
                        <td><table width="100%" border="0" align="center" style="height:100%">
                                <tr><td style="height:100%">
                                            <%--content here--%>
                                        <table width="100%">
                                            <tr><td align="left" colspan="2"><b>Branch Code : Add/Edit</b></td></tr>
                                        </table>
                                        <table width="100%" class="displayTable" align="center">
                                            <tr class="bgGreen2">
                                                <td class="label" width="20%">SFIs :<c:if test="${empty sfiDisplay}"><span class="require_field">*</span></c:if></td>
                                                <td align="left" width="80%" colspan="3">
                                                    <c:choose>
                                                        <c:when test="${sfiDisplay ne null}">
                                                            <c:out value="${sfiDisplay}"/>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <s:select list="sfiList" name="sfiId" id="sfiId" headerKey="" listKey="id" listValue="nameTh" headerValue="-------------  Please Select  -------------"/>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </td>
                                            </tr>
                                            <c:choose>
                                                <c:when test="${sfiDisplay ne null}">
                                                    <tr class="bgGreen1">
                                                        <td class="label" width="20%">Branch Code :</td>
                                                        <td align="left" width="80%" colspan="3">
                                                              <c:out value="${branchCode}"/>
                                                          </td>
                                                    </tr>
                                                </c:when>
                                                <c:otherwise>
                                                    <tr class="bgGreen1">
                                                        <td class="label" width="20%">Branch Code<span class="require_field">*</span> : </td>
                                                        <td align="left" width="80%" colspan="3">
                                                            <s:textfield id="branchCode" name="branchCode" maxlength="4"/>&nbsp;
                                                            <button type="button" class="button" onClick="validateBranchCode()"> Check  </button>
                                                            <span id="resultDisplay"/>
                                                            <c:if test="${requestScope.errorMSG ne null}"> <font color="red">Branch Code is Exists !!</font> </c:if>
                                                        </td>
                                                    </tr>
                                                </c:otherwise>
                                            </c:choose>
                                             <tr class="bgGreen2">
                                                <td class="label" width="20%">Name (TH)<span class="require_field">*</span> :
                                                </td>
                                                <td align="left" width="80%" colspan="3">
                                                    <s:textfield id="nameTh" name="nameTh" maxlength="512"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label" width="20%">Name (EN)<span
                                                        class="require_field">*</span> :
                                                </td>
                                                <td align="left" width="80%" colspan="3">
                                                    <s:textfield id="nameEn" name="nameEn" maxlength="512"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td class="label" width="20%">Open Date :</td>
                                                <td align="left" width="20%">
                                                    <s:textfield name="openDate" id="openDate" readonly="true"
                                                                 size="8"/>
                                                    <img alt="" border="0" src="../images/dd.gif" name="dateBtn"
                                                         width="15" height="15"
                                                         onclick="displayCalendar(document.forms[0].openDate,'dd/mm/yyyy',this);"
                                                         align="absmiddle">
                                                </td>
                                                <td class="label" width="15%">Close Date :</td>
                                                <td align="left" width="45%">
                                                    <s:textfield name="closeDate" id="closeDate" readonly="true"
                                                                 size="8"/>
                                                    <img alt="" border="0" src="../images/dd.gif" name="dateBtn"
                                                         width="15" height="15"
                                                         onclick="displayCalendar(document.forms[0].closeDate,'dd/mm/yyyy',this);"
                                                         align="absmiddle">
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label" width="20%">Area Name<span
                                                        class="require_field">*</span> :
                                                </td>
                                                <td align="left" width="80%" colspan="3">
                                                    <s:select list="areaList" name="areaId" id="areaId" headerKey=""
                                                              listKey="id" listValue="name"
                                                              headerValue="-------------  Please Select  -------------"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td class="label" width="20%">Province Name<span
                                                        class="require_field">*</span> :
                                                </td>
                                                <td align="left" width="80%" colspan="3">
                                                    <s:select list="provinceList" name="provinceId" id="provinceId"
                                                              headerKey="" listKey="code" listValue="name"
                                                              headerValue="-------------  Please Select  -------------"/>
                                                </td>
                                            </tr>
                                        </table>
                                        <table width="100%">
                                            <tr>
                                                <td align="center" colspan="3">
                                                    <s:submit name="save" value="Save" method="save" cssClass="button"
                                                              onclick="return validateForm();"/>&nbsp;
                                                    <s:submit method="back" value="Back" cssClass="button"/>
                                                </td>
                                            </tr>
                                        </table>
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