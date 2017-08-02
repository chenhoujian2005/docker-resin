<%--
  Created by IntelliJ IDEA.
  User: jrambo
  Date: Aug 24, 2011
  Time: 2:07:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/includes/css/style.css">
    <script type="text/javascript" src="../includes/js/tp/utils.js"></script>
    <script type='text/javascript' src='<%=request.getContextPath()%>/includes/js/util.js'></script>
    <title>Simple jsp page</title>
    <script type="text/javascript">
        function validateForm() {
        <c:if test="${empty requestScope.rulesValidationId}">
            if (isEmptyById('code')) {
                alert('Please Input Error Code !!');
              document.getElementById('code').focus();
                return false;
            }
        </c:if>
            if (isEmptyById('description')) {
                alert('Please Input Description !!');
                document.getElementById('description').focus();
                return false;
            }
            return true;
        }

//        function resetForm() {
//            document.getElementById('description').value = '';
//        }
    </script>
</head>
<body>
<s:form action="rules_validation_detail" validate="false">
<s:hidden name="rulesValidationId" id="rulesValidationId"/>
<s:hidden id="codeHidden" name="codeHidden" />
<s:hidden id="descriptionHidden" name="descriptionHidden" />
<s:hidden id="masterDsTitleIdHidden" name="masterDsTitleIdHidden" />
<s:hidden id="slaveDsTitleIdHidden" name="slaveDsTitleIdHidden" />
<s:hidden id="enableHidden" name="enableHidden"/>

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
                                    <td width="15%" colspan="2"><b>Rules Validation : Add/Edit</b></td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <table width="100%" class="displayTable">
                                            <tr class="bgGreen2">
                                                <td class="label" width="25%">Error Code<c:if test="${empty requestScope.rulesValidationId}"><span class="require_field">*</span></c:if> :</td>
                                                <td width="75%">
                                                    <c:choose>
                                                        <c:when test="${not empty requestScope.code and empty requestScope.msgError}">
                                                            <s:property value="code"/>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <s:textfield id="code" name="code" cssStyle="width:220px" maxLength="32"/>
                                                            <br/>
                                                            <c:if test="${not empty requestScope.msgError}">
                                                               <font color="red">${requestScope.msgError}</font>
                                                            </c:if>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label">Master Dataset Name :</td>
                                                 <td>
                                                     <s:select list="dsTitleList" name="masterDsTitleId" headerKey="" headerValue="-------------  Please Select  -------------" listKey="id" listValue="name"/>
                                                 </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td class="label">Slave Dataset Name :</td>
                                                 <td>
                                                     <s:select list="dsTitleList" name="slaveDsTitleId" headerKey="" headerValue="-------------  Please Select  -------------" listKey="id" listValue="name"/>
                                                 </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td align="right">Error Message<span class="require_field">*</span> :</td>
                                                <td>
                                                    <s:textarea name="description" id="description" rows="5" cssStyle="width:100%"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td class="label">Validation Type :</td>
                                                 <td>
                                                   <s:select
                                                        id="validationType" name="validationType"
                                                        list="#{'':'-------------  Please Select  -------------',
                                                        'PKB':'Passed Key Basic Validation',
                                                        'PCX':'Passed Complex Validation',
                                                        'PCS':'Passed Cross Validation'
                                                        }"
                                                       />
                                                 </td>
                                            </tr>
                                              <tr class="bgGreen1">
                                                 <td align="right">Enable :</td>
                                                 <td>
                                                     <s:checkbox name="enable" id="enable"/>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">
                                        <s:submit name="save" value="Save" method="save" onclick="return validateForm();" cssClass="button"/>&nbsp;
                                        <s:reset value="Reset" cssClass="button"/>&nbsp;
                                        <s:submit name="back" value="Back" method="back" cssClass="button"/>
                                    </td>
                                </tr>
                            </table>
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