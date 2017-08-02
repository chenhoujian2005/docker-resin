<%--
  Created by IntelliJ IDEA.
  User: iRambo
  Date: Mar 23, 2012
  Time: 3:58:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head><title>Simple jsp page</title>
<link rel="stylesheet" type="text/css" href="../includes/css/style.css">
<script type="text/javascript" src="../includes/js/tp/utils.js"></script>

</head>
<script type="text/javascript">
    function validateForm(){
        if(trim(thisForm.itemCode.value) == ''){
            alert('Please Input Classification Item Code !!');
            thisForm.itemCode.focus();
            return false;
        }
        return true;
    }

    function goBack(id) {
        //thisForm.classificationId.value = id;
        thisForm.action = "classification_detail.action?id=" + id;
        thisForm.submit();
    }

    function isNumberKey() {
        var charCode = event.keyCode;
        return !(charCode > 31 && (charCode < 48 || charCode > 57)) || charCode == 46;
    }

</script>
<body>
<s:form action="classification_item_view">
    <s:hidden id="classificationId" name="classificationId"/>
    <s:hidden id="classificationItemId" name="classificationItemId"/>
    <s:hidden id="rowId" name="rowId"/>
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
                                                <td><b>Classification Item : ${classificationStatus}</b></td>
                                            </tr>
                                        </table>
                                        <table width="100%" align="center" class="displayTable">
                                            <tr class="bgGreen1">
                                                <td align="right"><b>Classification :</b></td>
                                                <td>&nbsp;${classificationName}</td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td width="20%" align="right"><b>Code<span class="require_field">*</span> :</b></td>
                                                <td>
                                                    <s:textfield name="itemCode" size="30" maxLength="512" />
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td align="right"><b>Value :</b></td>
                                                <td><s:textfield name="itemName" size="60" maxLength="1024"/></td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td align="right"><b>Level :</b></td>
                                                <td><s:textfield name="itemLevel" size="60" maxLength="10" onkeypress="return isNumberKey()"/></td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td align="right"><b>Parent Code :</b></td>
                                                <td><s:textfield name="itemParentCode" size="60" maxLength="1024"/></td>
                                            </tr>

                                            <tr class="bgGreen2">
                                                <td align="right"><b>Order No :</b></td>
                                                <td><s:textfield id="itemOrderNo" name="itemOrderNo" maxLength="4" onkeypress="return isNumberKey()"/></td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td align="right"><b>Multiple :</b></td>
                                                <td>
                                                    <s:select list="itemMultipleList" name="itemMultiple" id="itemMultiple" headerValue="----- Please Select -----" cssStyle="width:40px;"/>
                                                </td>
                                            </tr>

                                            <tr class="bgGreen2">
                                                <td align="right"><b>Description :</b></td>
                                                <td><s:textarea name="itemDescription" rows="6" cols="47" /></td>
                                            </tr>
                                        </table>
                                        <table width="100%">
                                            <tr align="center">
                                                <td>
                                                    <s:submit name="ok" value="Save" method="save" cssClass="button" onclick="return validateForm()"/>&nbsp;
                                                    <s:reset value="Reset" cssClass="button"/>&nbsp;
                                                    <%--<button class="button" onclick="goBack(${classificationId.toString()})" name="Back">Back</button>--%>
                                                    <s:submit name="back" value="Back" method="back" cssClass="button"/>&nbsp;
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
</script>
</body>
</html>
