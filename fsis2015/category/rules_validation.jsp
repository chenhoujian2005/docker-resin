<%--
  Created by IntelliJ IDEA.
  User: jrambo
  Date: Aug 24, 2011
  Time: 11:17:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
            document.getElementById('description').value = "";
            document.getElementById('masterDsTitleId').selectedIndex = 0;
            document.getElementById('slaveDsTitleId').selectedIndex = 0;
            document.getElementById('validationType').selectedIndex = 0;
        }
    </script>
  </head>
  <body>
<s:form action="rules_validation" id="rulesValidation" >
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
                                    <td width="15%"><b>Rules validation</b></td>
                                   <td align="right">
                                       <c:if test="${sessionScope.menuAuthentication.rulesValidationManage}">
                                        <input type="button" class="button" id="butNewAdd" name="butNewAdd" value="Add Rules Validation" style="width:150px;" onclick="letsGo('rules_validation_detail.action','')"> 
                                      </c:if>
                                  </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <table width="100%" class="displayTable">
                                            <tr class="bgGreen2">
                                                <td width="20%" class="label">Error Code :</td>
                                                <td width="80%">
                                                    <s:textfield name="code" id="code" cssStyle="width:400px"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label">Error Message :</td>
                                                <td>
                                                    <s:textfield name="description" id="description" cssStyle="width:400px"/>
                                                </td>
                                            </tr>
                                             <tr class="bgGreen2">
                                                <td class="label">Master Dataset Name :</td>
                                                 <td>
                                                     <s:select list="dsTitleList" name="masterDsTitleId" id="masterDsTitleId" headerKey=""
                                                               headerValue="-------------  Please Select  -------------" listKey="id" listValue="name"/>
                                                 </td>
                                            </tr>
                                             <tr class="bgGreen1">
                                                <td class="label">Slave Dataset Name :</td>
                                                 <td>
                                                     <s:select list="dsTitleList" name="slaveDsTitleId" id="slaveDsTitleId" headerKey=""
                                                               headerValue="-------------  Please Select  -------------" listKey="id" listValue="name"/>
                                                 </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td class="label">Validation Type :</td>
                                                 <td>
                                                   <s:select id="validationType" name="validationType" list="#{'':'-------------  Please Select  -------------', 'PKB':'Passed Key Basic Validation', 'PCX':'Passed Complex Validation', 'PCS':'Passed Cross Validation'}"/>
                                                 </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label">Status  :</td>
                                                <td colspan="3">
                                                    <s:checkbox name="enableStatus" id="enableStatus" />  Enable  </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2">
                                        <s:submit name="search" id="search" value="Search" method="search" cssClass="button"/>&nbsp;
                                        <button class="button" value="Reset"  onclick="resetForm();">Reset</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <display:table name="validationRuleList" id="obj" cellpadding="0" cellspacing="1" export="false" class="displayTag" style="width:100%" requestURI="rules_validation.action" pagesize="15">
                                           <display:column title="Error Code" property="code" style="text-align:left;width:10%" headerClass="headerTable" sortable="true"/>
                                           <display:column title="Master Dataset Name" property="masterDsTitle.name" style="text-align:left;width:6%" headerClass="headerTable" sortable="false"/>
                                           <display:column title="Slave Dataset Name" property="slaveDsTitle.name" style="text-align:left;width:6%" headerClass="headerTable" sortable="false"/>
                                           <display:column title="Error Message" property="description" style="text-align:left;width:58%" headerClass="headerTable" sortable="true"/>
                                           <display:column title="Type" property="validationType" style="text-align:center;width:5%" headerClass="headerTable" sortable="true"/>
                                           <display:column title="Status" style="text-align:center;width:7%" headerClass="headerTable" sortable="true">
                                               <c:if test="${obj.enable}"> Enable </c:if>
                                               <c:if test="${not obj.enable}"> Disable </c:if>
                                           </display:column>
                                           <c:if test="${sessionScope.menuAuthentication.rulesValidationManage}">
                                                <display:column title="Edit" style="width:8%;text-align:center" headerClass="headerTable" >
                                                     <img src="../images/edit.gif " border="no" title="Edit" onclick="letsGo('rules_validation_detail.action','${obj.id}')" style="cursor:pointer"/>
                                                </display:column>
                                                <%--
                                                <display:column title="Delete" style="text-align:center;width:5%" headerClass="headerTable" >
                                                    <div onClick="return confirmDelete('${obj.id}');">
                                                        <s:submit type="image" src="../images/delete.gif"  method="delete" title="Delete"/>
                                                    </div>
                                                </display:column>
                                                --%>
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
    function letsGo(action, id) {
        var code = document.getElementById("code").value;
        var description = document.getElementById("description").value;
        var master = document.getElementById("masterDsTitleId").value;
        var slave = document.getElementById("slaveDsTitleId").value;

        pageLink1 = action + '?rulesValidationId=' + id;
        pageLink2 = '&<%=Constants.RulesValidationField.CODE_HIDDEN%>=' + code;
        pageLink3 = '&<%=Constants.RulesValidationField.DESCRIPTION_HIDDEN%>=' + description;
        pageLink4 = '&<%=Constants.RulesValidationField.MASTER_DS_TITLE_ID_HIDDEN%>=' + master;
        pageLink5 = '&<%=Constants.RulesValidationField.SLAVE_DS_TITLE_ID_HIDDEN%>=' + slave;

        location.href = pageLink1.concat(pageLink2, pageLink3, pageLink4, pageLink5);
    }
</script>
  </body>
</html>