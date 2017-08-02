<%@ page import="th.go.mof.fpo.Constants" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/includes/css/style.css">
    <script type="text/javascript" src="../includes/js/jquery.js"></script>
    <script type="text/javascript">
        function confirmDelete(configId) {
            if (confirm("Do you want to delete this record ?")) {
                document.getElementById('configId').value = configId;
                return true;
            }
            return false;
        }
        function resetForm(){
            document.getElementById('code').value = "";
            document.getElementById('value').value = "";
            document.getElementById('description').value = "";
        }
    </script>
</head>
<body>
<s:form action="system" id="system" validate="false">
<s:hidden name="configId" id="configId"/>
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
            <td colspan="2">
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td width="43" background="../images/table004.gif"><img src="../images/table004.gif" width="43" height="37" alt=""></td>
                        <td>
                            <table width="100%" border="0" align="center" style="height:100%">
                                <tr>
                                    <td width="15%"><b>System</b></td>
                                    <td align="right">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <table width="100%" class="displayTable">
                                            <tr class="bgGreen2">
                                                <td width="20%" class="label">System Name :</td>
                                                <td width="80%">
                                                    <s:textfield name="code" id="code"cssStyle="width:400px"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label">Value :</td>
                                                <td>
                                                    <s:textfield name="value" id="value" cssStyle="width:400px"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td class="label">Description :</td>
                                                <td>
                                                    <s:textfield name="description" id="description" cssStyle="width:400px"/>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2">
                                        <s:submit name="search" id="btnSearch" value="Search" method="search" cssClass="button"/>&nbsp;
                                        <button class="button" value="Reset"  onclick="resetForm();">Reset</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <display:table name="${requestScope.configurationList}" id="obj" cellpadding="0" cellspacing="1" export="false" class="displayTag" style="width:100%" requestURI="system.action" pagesize="15">
                                            <display:column title="System Name" property="code" style="text-align:left;width:15%" headerClass="headerTable" sortable="true"/>
                                            <display:column title="Value" property="value" style="text-align:left;width:25%" headerClass="headerTable" sortable="true"/>
                                            <display:column title="Description" property="description" style="text-align:left;width:50%" headerClass="headerTable" sortable="true"/>
                                            <c:if test="${sessionScope.menuAuthentication.systemManage}">
                                                <display:column title="Edit" style="width:5%;text-align:center" headerClass="headerTable" >
                                                    <%--<a href="../configuration/system_detail.action?configId=${obj.id}"> <img src="../images/edit.gif " border="no" title="Edit"></a>--%>
                                                 <img src="../images/edit.gif " border="no" title="Edit" onclick="letsGo('system_detail.action','${obj.id}')" style="cursor:pointer">
                                                </display:column>
                                                <display:column title="Delete" style="text-align:center;width:5%" headerClass="headerTable" >
                                                    <div onClick="return confirmDelete('${obj.id}');">
                                                        <s:submit type="image" src="../images/delete.gif"  method="delete" title="Delete"/>
                                                    </div>
                                                </display:column>
                                            </c:if>
                                        </display:table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td width="28" background="../images/table005.gif"><img src="../images/table005.gif" width="28" /> </td>

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
    var jq = jQuery.noConflict();

    jq("#system").keypress(function(event) {
        if (event.keyCode == 13) {
            jq("#btnAdd").attr('disabled', 'disabled');
            jq("#btnSearch").click();
        }
    });

    function letsGo(action, id) {
        var code = document.getElementById("code").value;
        var value = document.getElementById("value").value;
        var description = document.getElementById("description").value;

        pageLink1 = action + '?configId=' + id;
        pageLink2 = '&<%=Constants.SystemField.CODE_HIDDEN%>=' + code;
        pageLink3 = '&<%=Constants.SystemField.VALUE_HIDDEN%>=' + value;
        pageLink4 = '&<%=Constants.SystemField.DESCRIPTION_HIDDEN%>=' + description;

        location.href = pageLink1.concat(pageLink2, pageLink3, pageLink4);
    }

</script>
</body>
</html>