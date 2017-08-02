<%--
  Created by IntelliJ IDEA.
  User: Witsanu
  Date: 07 ส.ค. 2557
  Time: 11:33
  To change this template use File | Settings | File Templates.
--%>
<%--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>


<html>
<head>
    <title>Specialized Financial Institutions Information System</title>
    <script type='text/javascript' src='../dwr/engine.js'></script>
    <script type='text/javascript' src='../dwr/util.js'></script>
    <script type='text/javascript' src='../dwr/interface/AjaxManager.js'></script>
    <link rel="stylesheet" type="text/css" href="../includes/css/style.css">
    <script type="text/javascript" src="../includes/js/tp/utils.js"></script>
    <script type="text/javascript" src="../includes/js/jquery-2.1.1.js"></script>

<script>
        function resetForm() {
            thisForm.userName.value = EMPTY;

        }


    </script>
</head>

<body>
<s:form action="popup_mail" validate="false">
    <s:textfield id="status" name="status"/>
    <s:textfield id="strEmail" name="strEmail"/>

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
                <table width="100%" border="0" cellpadding="0" cellspacing="0" >
                    <tr>
                        <td width="43" background="../images/table004.gif">
                            <img src="../images/table004.gif" width="43" height="37" alt="">
                        </td>
                        <td>
                            <table width="100%" border="0" align="center" style="height:100%" >
                                <tr>
                                    <td colspan="2">
                                        <strong>Select Email</strong>
                                    </td>
                                </tr>
                            </table>
                            <table width="100%" class="displayTable">
                                <tr class="bgGreen2">
                                    <td width="15%" class="label"> Username :</td>
                                    <td width="85%">
                                    <s:textfield name="userName" id="userName" cssStyle="width: 300"/>
                                    </td>
                                </tr>

                            </table>
                            <table width="100%">
                                <tr>
                                    <td width="100%" align="center">
                                        <s:submit method="search" cssClass="button" id="btnSearch" value="Search"/>&nbsp;
                                        <button onclick="resetForm()" class="button">Reset</button>
                                    </td>
                                </tr>
                            </table>
                            <display:table name="resultList" id="row" export="false" class="displayTag" requestURI="popup_mail.action" style="width:100%;text-align:center" pagesize="15">
                                <display:column title="Select" style="width:20%;text-align:center" headerClass="headerTable" sortable="true">
                                    ${row.id} &nbsp;<input type="checkbox" id="checkDel" value="${row.id}" name="checkDel"/>
                                </display:column>

                                <display:column title="Username" property="userName"  style="width:40%;text-align:left" headerClass="headerTable" sortable="true"/>

                                <display:column title="E-mail" property="email"  style="width:40%;text-align:left" headerClass="headerTable" sortable="true"/>
                            </display:table>
                        </td>
                        <td width="28" background="../images/table005.gif">
                            <img src="../images/table005.gif" width="28" height="37" alt=""></td>
                    </tr>
                    <tr>
                        <td width="43" background="../images/table004.gif">
                            <img src="../images/table004.gif" width="43" height="37" alt="">
                        </td>
                        <td  align="center">
                        <s:submit id="saveBtn" value="Save" method="select" cssClass="button" onclick="GetPassedValue();" />&nbsp;
                        <%--onclick="return GetPassedValue();"--%>
                        <%--<s:submit id="returnBtn" value="Return" method="returnVal" cssClass="button" onclick="GetPassedValue();" />--%>
                        <%--<button class="button" onclick="GetPassedValue();">return</button>--%>
                        <%--<button class="button" onClick="GetPassedValue();">Select</button>--%>

                        <button class="button" onClick="javascript:window.close();">Exit</button>

                    </td>
                        <td width="28" background="../images/table005.gif">
                            <img src="../images/table005.gif" width="28" height="37" alt=""></td>
                    </tr>
                    <tr>
                        <td><img src="../images/table006.gif" width="43" height="23" alt=""></td>
                        <td background="../images/table007.gif"></td>
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

            return false;
        }
        if(thisForm.checkDel.checked = false){
            alert('Please Selected Email !!');
            thisForm.checkDel.focus();
            return false;
        }


        isSubmit = true;
        return true;
    }

    function GetPassedValue()
    {
        alert(document.getElementById('strEmail').value);

        window.returnValue = "xxxxx";
        window.close();
    }
    $(document).ready(function () {
        $(window).load(function () {
            var closeStatus = document.getElementById("status").value;
            if (closeStatus == 1) {
                if (window.opener != null && !window.opener.closed) {
                    var txtName = window.opener.document.getElementById("mailTo");
                    alert(txtName.value);
                    if(txtName.value.length == 0){
                        txtName.value = document.getElementById("strEmail").value;
                    }else{
                        txtName.value = txtName.value +";"+ document.getElementById("strEmail").value;
                    }
                }
                window.close();
            }
        })
    })

</script>
</body>
</html>