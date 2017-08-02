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
     <c:if test="${menuRadioFlag eq false}">
        if (isEmptyById('value')) {
            alert('Please Input Value !!');
            document.getElementById('value').focus();
            return false;
        }
     </c:if>
        return true;
    }

    function resetForm(){
        document.getElementById('value').value = EMPTY;
        document.getElementById('description').value = EMPTY;
    }
</script>
</head>
<body>
<s:form action="system_detail" validate="false">
    <s:hidden name="configId" id="configId"/>
    <s:hidden name="codeHidden" id="codeHidden"/>
    <s:hidden name="valueHidden" id="valueHidden"/>
    <s:hidden name="descriptionHidden" id="descriptionHidden"/>
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
                                    <td width="15%" colspan="2"><b>System : Edit</b></td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <table width="100%" class="displayTable">
                                            <tr class="bgGreen2">
                                                <td class="label" width="25%">System Name :</td>
                                                <td width="75%">
                                                    <s:property value="code"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label">Value<span class="require_field">*</span> :</td>
                                                <td>
                                                   <c:if test="${menuRadioFlag eq false}">
                                                    <s:textarea name="value" id="value" rows="5" cssStyle="width:100%"/>
                                                      </c:if>
                                                      <c:if test="${menuRadioFlag eq true}">
                                                          <s:radio list="#{'true':'true','false':'false'}" id="value" name="value"/>
                                                      </c:if>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td align="right"><b>Description :</b></td>
                                                <td>
                                                    <s:textarea name="description" id="description" rows="5" cssStyle="width:100%"/>
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