<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head><title>Simple jsp page</title>
<link href="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="../includes/css/style.css">
<script type="text/javascript" src="../includes/js/tp/utils.js"></script>
<script type="text/javascript" src="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.js"></script>
<script type="text/javascript">
    function validateForm(){
        if(document.getElementById('sfi').value == ''){
            alert('Please Select SFIs Name');
            return false;
        }
        if(document.getElementById('dsTitle').value == ''){
            alert('Please Select DsTitle');
            return false;
        }
        if(document.getElementById('dateFrom').value == ''){
            alert('Please Select Dataset Date From');
            return false;
        }
        if(document.getElementById('dateTo').value == ''){
            alert('Please Select Dataset Date To');
            return false;
        }
        return true;
    }
</script>
</head>
<body>
<s:form action="sending_waive_detail">
    <s:hidden name="id" id="id"/>
    <s:hidden name="sfiHidden" id="sfiHidden"/>
    <s:hidden name="datasetHidden" id="datasetHidden"/>
    <s:hidden name="datasetDateFromHidden" id="datasetDateFromHidden"/>
    <s:hidden name="datasetDateToHidden" id="datasetDateToHidden"/>
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
                                    <td style="height:100%">
                                        <%--content here--%>
                                        <table>
                                            <tr>
                                                <td><b>Sending Waive : Add/Edit</b></td>
                                            </tr>
                                        </table>

                                        <table width="100%" align="center" class="displayTable">
                                            <tr class="bgGreen2">
                                                <td width="25%" align="right"><b>SFIs Name<span class="require_field">*</span> :</b></td>
                                                <td width="75%" colspan="3">
                                                    <c:choose>
                                                        <c:when test="${sessionScope.userLogin.sfi.id eq 000}">
                                                            <s:select list="sfiList"
                                                                      id="sfi"
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
                                                    <%--<s:select name="sfi"--%>
                                                              <%--list="sfiList"--%>
                                                              <%--listKey="id"--%>
                                                              <%--listValue="displayNameCodeAndCode"--%>
                                                              <%--headerKey=""--%>
                                                              <%--headerValue="----------  Please Select  ----------"/>--%>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td align="right"><b>Dataset Name<span class="require_field">*</span> :</b></td>
                                                <td colspan="3">
                                                    <s:select
                                                              id="dsTitle"
                                                              name="dsTitle"
                                                              list="dsTitleList"
                                                              listKey="id"
                                                              listValue="name"
                                                              headerKey=""
                                                              headerValue="----------  Please Select  ----------"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td align="right"><b>Dataset Date From<span class="require_field">*</span> :</b></td>
                                                <td><s:textfield name="dateFrom" id="dateFrom" readonly="true" size="15"
                                                                 cssStyle="font-size:14px"/>

                                                    <img border="0" src="../images/dd.gif" name="dateBtn"
                                                         width="15"
                                                         height="15"
                                                         onclick="displayCalendar(document.forms[0].dateFrom,'dd/mm/yyyy',this);"
                                                         align="absmiddle">
                                                </td>
                                                <td align="right"><b> To<span class="require_field">*</span> :</b></td>
                                                <td><s:textfield name="dateTo" id="dateTo" readonly="true" size="15" cssStyle="font-size:14px"/>
                                                    <img border="0" src="../images/dd.gif" name="dateBtn"
                                                         width="15"
                                                         height="15"
                                                         onclick="displayCalendar(document.forms[0].dateTo,'dd/mm/yyyy',this);"
                                                         align="absmiddle">
                                                </td>
                                            </tr>

                                            <tr class="bgGreen1">
                                                <td height=30 align="right"><b>Enable :</b></td>
                                                <td colspan="3">
                                                    <s:checkbox name="enable"/>
                                                </td>
                                            </tr>
                                        </table>
                                        <table width="100%">
                                            <tr align="center">
                                                <td>
                                                    <s:submit name="ok" value="Save" method="save" cssClass="button" onclick="return validateForm()"/>&nbsp;
                                                    <s:submit name="back" value="Back"  method="back" cssClass="button"/>
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
</body>
</html>