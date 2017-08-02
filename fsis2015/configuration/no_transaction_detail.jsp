<%@ page import="th.go.mof.fpo.Constants" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<html>
<head>
<title>Simple jsp page</title>
<script type="text/javascript" src="../includes/js/tp/utils.js"></script>
<script type="text/javascript" src="../includes/js/tp/validate.js"></script>
<link rel="stylesheet" type="text/css" href="../includes/css/style.css">
<script type="text/javascript" src="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.js"></script>
<link href="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
    function reset() { }

    var isSubmit = false;
    function validateForm(){
        if(isSubmit){
            thisForm.saveBtn.disabled = true;
            thisForm.resetBtn.disabled = true;
            thisForm.backBtn.disabled = true;
            return false;
        }
        if(isEmptyById('sfi')){
            alert('Please Select SFIs Name');
            return false;
        } else if(isEmptyById('dsTitle')){
            alert('Please Select Dataset Name');
            return false;
        } else if(isEmptyById('dateFrom')){
            alert('Please Input Dataset Date From');
            return false;
        } else if(isEmptyById('dateTo')){
            alert('Please Input Dataset Date To');
            return false;
        }
        isSubmit = true;
        return true;
    }
</script>
</head>
<body>
<s:form action="no_transaction_detail">
    <s:hidden id="id" name="id"/>
    <s:hidden id="sfiHidden" name="sfiHidden"/>
    <s:hidden id="datasetNameHidden" name="datasetNameHidden"/>
    <s:hidden id="dateFromHidden" name="dateFromHidden"/>
    <s:hidden id="dateToHidden" name="dateToHidden"/>
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
                        <td width="43" background="../images/table004.gif"><img src="../images/table004.gif" width="43"  height="37" alt=""></td>
                        <td>
                            <table width="100%" border="0" align="center" style="height:100%">
                                <tr>
                                    <td style="height:100%">
                                        <%--content here--%>
                                        <b>No Transaction : Add/Edit</b><br/>
                                        <table width="100%" class="displayTable">
                                            <tr class="bgGreen2">
                                                <td class="label" width="20%">
                                                    SFIs Name<span class="require_field">*</span> :
                                                </td>
                                                <td width="80%">
                                                    <c:choose>
                                                        <c:when test="${sessionScope.userLogin.sfi.id eq 000}">
                                                            <s:select list="sfiList"
                                                                      name="sfi"
                                                                      headerKey=""
                                                                      headerValue="------------------------------------  Please Select  ------------------------------------"
                                                                      listKey="id"
                                                                      listValue="displayNameCodeAndCode"/>
                                                        </c:when>
                                                        <c:otherwise>
                                                            &nbsp; ${sessionScope.userLogin.sfi.nameTh}
                                                        </c:otherwise>
                                                    </c:choose>
                                                    <%--<s:select list="sfiList"--%>
                                                        <%--name="sfi"--%>
                                                        <%--id="sfi"--%>
                                                        <%--listKey="id"--%>
                                                        <%--listValue="displayNameCodeAndCode"--%>
                                                        <%--headerKey=""--%>
                                                        <%--headerValue="-------------------------------------  Please Select  -------------------------------------"/>--%>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label">
                                                    Dataset Name<span class="require_field">*</span> :
                                                </td>
                                                <td>
                                                    <s:select list="dsTitleList"
                                                        name="dsTitle"
                                                        id="dsTitle"
                                                        listKey="id"
                                                        listValue="name"
                                                        headerKey=""
                                                        headerValue="--  Please Select  --"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td class="label">
                                                    Dataset Date From<span class="require_field">*</span> :
                                                </td>
                                                <td align="left">
                                                    <s:textfield name="dateFrom" id="dateFrom" readonly="true" size="8"/>
                                                    <img alt="" border="0" src="../images/dd.gif" name="dateBtn"
                                                         width="15" height="15"
                                                         onclick="displayCalendar(document.forms[0].dateFrom,'dd/mm/yyyy',this);"
                                                         align="absmiddle">
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label">
                                                    Dataset Date To<span class="require_field">*</span> :
                                                </td>
                                                <td align="left">
                                                    <s:textfield name="dateTo" id="dateTo" readonly="true" size="8"/>
                                                    <img alt="" border="0" src="../images/dd.gif" name="dateBtn"
                                                         width="15" height="15"
                                                         onclick="displayCalendar(document.forms[0].dateTo,'dd/mm/yyyy',this);"
                                                         align="absmiddle">
                                                </td>
                                            </tr>
                                        </table>
                                        <table width="100%">
                                            <tr>
                                                <td width="100%" align="center">
                                                    <s:submit id="saveBtn" method="save" value="Save" cssClass="button" onclick="return validateForm();"/>&nbsp;
                                                    <s:reset name="resetBtn" value="Reset" cssClass="button"/>&nbsp;
                                                    <s:submit id="backBtn" method="back" value="Back" cssClass="button"/>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="20px">&nbsp;</td>
                                </tr>
                            </table>
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