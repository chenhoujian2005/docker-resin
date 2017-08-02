<%@ page import="th.go.mof.fpo.Constants" %>
<%@ page import="java.util.Arrays" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<html>
<head>
    <title>Simple jsp page</title>
    <script type="text/javascript" src="../includes/js/jquery.js"></script>
    <link rel="stylesheet" type="text/css" href="../includes/css/style.css">

    <script type="text/javascript">
        function confirmDelete(userId) {
            if (confirm("Do you want to delete this record ?")) {
                document.getElementById('userId').value = userId;
                return true;
            }
            return false;
        }
    </script>
</head>
<body>
<s:form action="user_management" id="user_management" name="user_management" validate="false">
<c:set var="patternDate" value="dd/MM/yyyy HH:mm"/>
<s:hidden name="userId" id="userId"/>
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
                        <table width="100%" align="center" >
                            <tr>
                                <td>
                                    <b>User Management</b>
                                </td>
                                <td align="right">
                                    <c:if test="${sessionScope.menuAuthentication.userManagementManage}">
                                        <input type="button" value="Add User" class="button" id="butNewAdd"  style="width:150px" onclick="letsGo('user_management_detail.action','')"/>
                                    </c:if>
                                </td>
                            </tr>
                        </table>
                        <table width="100%" align="center" cellpadding="1" cellspacing="1">
                            <tr>
                                <td>
                                    <table width="100%" class="displayTable">
                                        <tr valign="middle" class="bgGreen2">
                                            <td width="20%" class="label">User Name :</td>
                                            <td width="80%" colspan="2">
                                                <s:textfield name="userName" id="userName" size="12"/>
                                            </td>
                                        </tr>
                                        <tr valign="middle" class="bgGreen1">
                                            <td class="label">Thai Name :</td>
                                            <td colspan="2"><s:textfield name="nameTh" id="nameTh" size="30"/></td>
                                        </tr>

                                        <tr valign="middle" class="bgGreen2">
                                            <td class="label">English Name :</td>
                                            <td colspan="2"><s:textfield name="nameEn" id="nameEn" size="30"/></td>
                                        </tr>
                                        <tr valign="middle" class="bgGreen1">
                                            <td class="label">Organization Name :</td>
                                            <td colspan="2" style="height:30px">
                                                <s:textfield name="organizationName" id="organizationName" size="30"/>&nbsp;Search SFIs name. e.g. (GSB) or (GSB,EXIM)
                                            </td>
                                        </tr>
                                        <tr valign="middle" class="bgGreen2">
                                            <td class="label">Role :</td>
                                            <td colspan="2">
                                                <s:checkboxlist name="roles" list="#{'ADM':''}"/>Administrator
                                                <s:checkboxlist name="roles" list="#{'MIS':''}"/>MIS
                                                <s:checkboxlist name="roles" list="#{'EIS':''}"/>EIS
                                                <s:checkboxlist name="roles" list="#{'SFI':''}"/>SFIs Operator
                                            </td>
                                        </tr>
                                        <tr valign="middle" class="bgGreen1">
                                            <td class="label">Enable :</td>
                                            <td colspan="2">
                                                <s:checkbox name="enable" id="enable"/>Enable
                                                <s:checkbox name="disable" id="disable" />Disable
                                            </td>
                                        </tr>
                                    </table>
                                    <table width="100%">
                                        <tr>
                                            <td align="center">
                                                <s:submit value="Search" id="btnSearch" name="search" method="search" cssClass="button"/>&nbsp;
                                                <button class="button" onclick="resetForm()">Reset</button>
                                            </td>
                                        </tr>
                                    </table>
                                    <br>
                                    <c:if test="${requestScope.errorFlag eq 'false'}"><font color="red">Cannot delete access is denied the data may be in use.</font></c:if>
                                    <br>
                                    <display:table name="${requestScope.userList}" id="row" cellpadding="0" cellspacing="1"  export="false" class="displayTag" style="width:100%" requestURI="user_management.action" pagesize="15" >
                                        <display:column title="User Name" property="userName" style="width:10%;text-align:left;" headerClass="headerTable" sortable="true"/>
                                        <display:column title="Thai Name" property="thaiName" style="width:15%;text-align:left;" headerClass="headerTable" sortable="true"/>
                                        <display:column title="English Name" property="englishName" style="width:15%;text-align:left;" headerClass="headerTable" sortable="true"/>
                                        <display:column title="Organization Name" property="sfi.nameTh" style="width:20%;text-align:left;" headerClass="headerTable" sortable="true"/>
                                        <display:column title="Last Login" property="lastLogin" format="{0,date,dd MMM yyyy HH:mm}" style="width:10%;text-align:center" headerClass="headerTable" sortable="true"/>
                                        <display:column title="Status" style="width:5%;text-align:center;" headerClass="headerTable" sortable="true">
                                             <c:if test="${row.enable}">Enable</c:if>
                                             <c:if test="${not row.enable}">Disable</c:if>
                                        </display:column>
                                        <display:column title="Role" property="fullNameRole" style="width:5%;text-align:center;" headerClass="headerTable" sortable="true"/>
                                        <c:if test="${sessionScope.menuAuthentication.userManagementManage}">
                                            <%--<display:column title="Edit" href="user_management_detail.action" paramId="userId" paramProperty="id" style="width:5%;text-align:center;" headerClass="headerTable" >--%>
                                                <%--<img src=../images/edit.gif border="no">--%>
                                            <%--</display:column>--%>
                                            <display:column title="Structued Right" style="width:5%;text-align:center;" headerClass="headerTable" >
                                                <img src=../images/edit.gif border="no" align="" onclick="letsGo('user_management_dataRight.action','${row.id}')" style="cursor:pointer">
                                            </display:column>
                                            <display:column title="UnStructued Right" style="width:5%;text-align:center;" headerClass="headerTable" >
                                                <img src=../images/edit.gif border="no" align="" onclick="letsGo('user_management_dataRightUnStructured.action','${row.id}')" style="cursor:pointer">
                                            </display:column>
                                            <display:column title="Edit" style="width:5%;text-align:center;" headerClass="headerTable" >
                                              <img src=../images/edit.gif border="no" align="" onclick="letsGo('user_management_detail.action','${row.id}')" style="cursor:pointer">
                                            </display:column>
                                            <display:column title="Delete" style="width:5%;text-align:center;" headerClass="headerTable">
                                                <div onClick="return confirmDelete('${row.id}');">
                                                    <s:submit type="image" src="../images/delete.gif" method="delete" title="Delete"/>
                                                </div>
                                            </display:column>
                                        </c:if>
                                    </display:table>
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
    var jq = jQuery.noConflict();

    jq("#user_management").keypress(function(event){
      if(event.keyCode == 13){
          jq("#butNewAdd").attr('disabled','disabled');
          jq("#btnSearch").click();
      }
    });


     $(document).ready(function() {
       alert("Test");
      });


    function resetForm(){
        var objChk = document.user_management.roles;
        document.getElementById('userName').value = "";
        document.getElementById('nameTh').value = "";
        document.getElementById('nameEn').value = "";
        document.getElementById('organizationName').value = "";

        for (var i = 0; i < objChk.length; i ++) {
              objChk[i].checked = true;
        }
        document.getElementById('enable').checked = true;
        document.getElementById('disable').checked = false;
     }

    function checkHH(value) {
        var charCode = event.keyCode;
        if (!(charCode > 31 && (charCode < 48 || charCode > 57))) {
            if (parseInt(value) >= 0 && parseInt(value) <= 23) {
                return true;
            }
        }
        return false;
    }

    function isNumber() {
        var charCode = event.keyCode;
        return !(charCode > 31 && (charCode < 48 || charCode > 57));
    }

    function letsGo(action, id) {
        var uName = document.getElementById('userName').value;
        var tName = document.getElementById('nameTh').value;
        var eName = document.getElementById('nameEn').value;
        var oName = document.getElementById('organizationName').value;
        var objRoleChk = document.user_management.roles;
        var ena = document.getElementById('enable').checked;
        var dis = document.getElementById('disable').checked;

        var selectRole = ''; 
        for(var i = 0 ; i < objRoleChk.length ; i++){
            if(objRoleChk[i].checked){
              selectRole +=  objRoleChk[i].value+',';
            } 
        }
 
        pageLink1 = action + '?userId=' + id;
        pageLink2 = '&<%=Constants.UserManagementField.USER_NAME_HIDDEN%>=' + uName;
        pageLink3 = '&<%=Constants.UserManagementField.THAI_NAME_HIDDEN %>=' + tName;
        pageLink4 = '&<%=Constants.UserManagementField.ENGLISH_NAME_HIDDEN %>=' + eName;
        pageLink5 = '&<%=Constants.UserManagementField.ORGANIZATION_NAME_HIDDEN%>=' + oName;
        pageLink6 = '&<%=Constants.UserManagementField.ROLE_HIDDEN%>=' + selectRole;
        pageLink7 = '&<%=Constants.UserManagementField.ENABLE_HIDDEN%>=' + ena;
        pageLink8 = '&<%=Constants.UserManagementField.DISABLE_HIDDEN%>=' + dis;

        location.href = pageLink1.concat(pageLink2, pageLink3, pageLink4, pageLink5, pageLink6, pageLink7,pageLink8);
    }
</script>
</body>
</html>