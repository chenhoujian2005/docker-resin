<%@ page import="th.go.mof.fpo.Constants" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<html>
<head>
<title>Simple jsp page</title>
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="0">
<link rel="stylesheet" type="text/css" href="../includes/css/style.css">
<script type="text/javascript" src="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.js"></script>
<link href="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
    function reset(){ }

    function validateForm(){
        if(document.getElementById('title').value == ''){
            alert('Please Input Title');
            document.getElementById('title').focus();
            return false;
        }
        if(document.getElementById('upload').value == '' && '${requestScope.originalFileName}' == ''){
            alert('Please Select File');
            return false;
        }
        return true;
    }
</script>

</head>
<body>
<s:form action="executive_report_detail" enctype="multipart/form-data">
<s:hidden name="id" id="id"/>
<s:hidden name="dateFromHidden" id="dateFromHidden"/>
<s:hidden name="dateToHidden" id="dateToHidden"/>
<s:hidden name="titleHidden" id="titleHidden"/>
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
                                    <b>Executive Report : Add/Edit</b><br/>
                                    <table width="100%" class="displayTable">
                                        <tr class="bgGreen2">
                                            <td width="20%" class="label">
                                                Title<span class="require_field">*</span> :
                                            </td>
                                            <td width="80%">
                                                <s:textfield name="title" id="title" size="50" maxLength="512"/>
                                            </td>
                                        </tr>
                                        <tr class="bgGreen1">
                                            <td  class="label">
                                                Description :
                                            </td>
                                            <td>
                                                <s:textfield name="description" id="description" size="50" maxLength="1024"/>
                                            </td>
                                        </tr>
                                        <tr class="bgGreen2">
                                            <td class="label">
                                                File<span class="require_field">*</span> :
                                            </td>
                                            <td>
                                                <s:file size="60" name="upload" id="upload"/>
                                                <a href="../downloadFile.sl?fileName=${requestScope.uploadFileName}&originalFileName=${requestScope.originalFileName}&systemName=<%=Constants.Fsis2010UploadDirectory.EXECUTIVE_REPORT%>" title="Download attachment file">${requestScope.originalFileName}</a>
                                                <c:if test="${not empty requestScope.originalFileName}">
                                                <s:submit method="deleteFile" value="Delete" type="image" src="../images/delete.gif"/>
                                                </c:if>    
                                            </td>
                                        </tr>
                                        <tr class="bgGreen1">
                                            <td class="label">
                                                Action Date :
                                            </td>
                                            <td>
                                                <s:textfield name="actionDate" id="actionDate" readonly="true" size="8"/>
                                                <img alt="" border="0" src="../images/dd.gif" name="dateBtn"
                                                         width="15" height="15"
                                                         onclick="displayCalendar(document.forms[0].actionDate,'dd/mm/yyyy',this);"
                                                         align="absmiddle">
                                            </td>
                                        </tr>
                                        <tr class="bgGreen2">
                                            <td class="label">
                                                Enable :
                                            </td>
                                            <td>
                                                <s:checkbox name="enable"/>
                                            </td>
                                        </tr>
                                    </table>
                                    <table width="100%">
                                        <tr>
                                            <td width="100%" align="center">
                                                <s:submit method="save" value="Save" cssClass="button" onclick="return validateForm()"/>&nbsp;
                                                <s:reset value="Reset" cssClass="button"/>&nbsp;
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