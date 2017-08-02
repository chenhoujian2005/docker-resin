<%@ page import="th.go.mof.fpo.Constants" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<html>
<head>
<title>Simple jsp page</title>
<script type="text/javascript" src="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.js"></script>
<link href="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../includes/js/tp/utils.js"></script>
<script type="text/javascript" src="../includes/js/tp/validate.js"></script>
<link rel="stylesheet" type="text/css" href="../includes/css/style.css">
<script type="text/javascript">
    function reset() {

    }
    var isSubmit = false;
    function validateForm(){
        if(isSubmit){
            thisForm.saveBtn.disabled = true;
            thisForm.resetBtn.disabled = true;
            thisForm.backBtn.disabled = true;
            return false;
        }
        if(trim(thisForm.holidayDate.value) == ''){
            alert('Please Input Official Holiday Date');
            return false;
        }
        if(trim(thisForm.description.value) == ''){
            alert('Please Input Description');
            thisForm.description.focus();
            return false;
        }
        isSubmit = true;
        return true;
    }
</script>
</head>
<body>
<s:form action="official_holiday_detail">
    <s:hidden id="id" name="id"/>
    <s:hidden id="dateFromHidden" name="dateFromHidden"/>
    <s:hidden id="dateToHidden" name="dateToHidden"/>
    <s:hidden id="descriptionHidden" name="descriptionHidden"/>
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
                                        <b>Official Holiday : Add/Edit</b><br/>
                                        <table width="100%" class="displayTable">
                                            <tr class="bgGreen2">
                                                <td align="right" width="20%">
                                                    <b>Official Holiday Date<span class="require_field">*</span> :</b>
                                                </td>
                                                <td align="left" width="80%">
                                                    <s:textfield name="holidayDate" id="holidayDate" readonly="true" size="8"/>
                                                    <img alt="" border="0" src="../images/dd.gif" name="dateBtn"
                                                         width="15" height="15"
                                                         onclick="displayCalendar(document.forms[0].holidayDate,'dd/mm/yyyy',this);"
                                                         align="absmiddle">
                                                    <c:if test="${requestScope.duplicate}">
                                                        &nbsp;&nbsp;<font color="red">This Official Holiday Date Have Already</font>
                                                    </c:if>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td align="right">
                                                    <b>Description<span class="require_field">*</span> :</b>
                                                </td>
                                                <td colspan="3">
                                                    <s:textfield id="description" name="description" cssStyle="width:450px" maxLength="128"/>
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