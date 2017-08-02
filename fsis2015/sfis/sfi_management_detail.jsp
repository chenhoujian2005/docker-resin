<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head><title>Simple jsp page</title>
<link rel="stylesheet" type="text/css" href="../includes/css/style.css">
<script type="text/javascript" src="../includes/js/tp/utils.js"></script>

</head>
<body>
<s:form action="sfi_management_detail">
    <s:hidden id="tmpId" name="tmpId"/>
    <s:hidden id="tempNameEn" name="tempNameEn"/>
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
                                    <td style="height:100%">
                                        <%--content here--%>
                                        <table>
                                            <tr>
                                                <td><b>SFIs Management : Add/Edit</b></td>
                                            </tr>
                                        </table>
                                        <table width="100%" align="center" class="displayTable">
                                            <tr class="bgGreen2">
                                                <td width="25%" align="right"><b>SFIs ID<span class="require_field">*</span> :</b></td>
                                                <td width="75%">
                                                    <c:if test="${not empty id}">
                                                        <s:textfield name="id" cssStyle="width:27px" readonly="true"/>
                                                    </c:if>
                                                    <c:if test="${empty id}">
                                                        <s:textfield name="id" cssStyle="width:27px" maxLength="3"/>
                                                    </c:if>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td align="right"><b>SFIs Name (Thai)<span class="require_field">*</span> :</b></td>
                                                <td><s:textfield name="nameTh" size="60" maxLength="256"/></td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td align="right"><b>Abbr.(Thai)<span class="require_field">*</span> :</b></td>
                                                <td><s:textfield name="abbreviationTh" onkeypress="return checkLimit(this,16)"/></td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td align="right"><b>SFIs Name (English)<span class="require_field">*</span> :</b></td>
                                                <td><s:textfield name="nameEn" size="60" maxLength="256"/></td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td align="right"><b>Abbr.(English)<span class="require_field">*</span> :</b></td>
                                                <td><s:textfield name="abbreviationEn" onkeypress="return checkLimit(this,16)"/></td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td align="right"><b>Responsible E-mail :</b></td>
                                                <td>
                                                    <s:textarea rows="5" cssStyle="width:600px" name="responsibleEmail"/><br/>
                                                    Example aaaaa@fpo.go.th,bbbbb@fpo.go.th,ccccc@fpo.go.th
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td align="right"><b>Enable :</b></td>
                                                <td>
                                                    <s:checkbox name="enable"/>
                                                </td>
                                            </tr>
                                        </table>
                                        <table width="100%">
                                            <tr align="center">
                                                <td>
                                                    <s:submit id="saveBtn" value="Save" method="save" cssClass="button" onclick="return validateForm()"/>&nbsp;
                                                    <s:reset name="resetBtn" value="Reset" cssClass="button"/>&nbsp;
                                                    <s:submit id="backBtn" value="Back" method="back" cssClass="button"/>
                                                </td>
                                            </tr>
                                        </table>
                                        <%--content here--%>
                                    </td>
                                    <td width="20px">&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                        <td width="28" background="../images/table005.gif"><img src="../images/table005.gif" width="28" height="37" alt=""></td>
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

    var isSubmit = false;
    function validateForm(){
        if(isSubmit){
            thisForm.saveBtn.disabled = true;
            thisForm.resetBtn.disabled = true;
            thisForm.backBtn.disabled = true;
            return false;
        }
        if(trim(thisForm.id.value) == ''){
            alert('Please Input SFIs ID !!');
            thisForm.id.focus();
            return false;
        }
        if(trim(thisForm.nameTh.value) == ''){
            alert('Please Input SFIs Name (Thai) !!');
            thisForm.nameTh.focus();
            return false;
        }
        if(trim(thisForm.abbreviationTh.value) == ''){
            alert('Please Input Abbr.(Thai) !!');
            thisForm.abbreviationTh.focus();
            return false;
        }
        if(trim(thisForm.nameEn.value) == ''){
            alert('Please Input SFIs Name (English) !!');
            thisForm.nameEn.focus();
            return false;
        }
        if(trim(thisForm.abbreviationEn.value) == ''){
            alert('Please Input Abbr.(English) !!');
            thisForm.abbreviationEn.focus();
            return false;
        }
        isSubmit = true;
        return true;
    }
</script>
</body>
</html>