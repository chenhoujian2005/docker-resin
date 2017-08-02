<%@ page import="th.go.mof.fpo.Constants" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%--
  Created by IntelliJ IDEA.
  User: Sompoch
  Date: 04-Jun-2010
  Time: 14:00:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><title>Simple jsp page</title>
<link rel="stylesheet" type="text/css" href="../includes/css/style.css">
    <script type='text/javascript' src='../dwr/engine.js'></script>
    <script type='text/javascript' src='../dwr/util.js'></script>
    <script type='text/javascript' src='../dwr/interface/AjaxManager.js'></script>
    <script type="text/javascript" src="../includes/js/tp/utils.js"></script>
    <script type="text/javascript" src="../includes/js/jquery.js"></script>
    <script type="text/javascript">
        var thisForm = document.getElementsByTagName('form')[0];
        function add() {
            for(var i = 0 ;  i < thisForm.type.length ; i++){
                if(thisForm.type[i].checked){
                    document.location = thisForm.type[i].value;
                }
            }
        }

        function setId(id) {
            thisForm.deleteId.value = id;
        }

        function resetForm() {
            document.getElementById('propCode').value= "";
            document.getElementById('propName').value = "";
        }
    </script>
</head>
<body>
<s:form action="government_agency_code" enctype="multipart/form-data" id="government_agency_code">
    <s:hidden id="deleteId" name="deleteId"/>
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
                            <td align="left" ><b>Government Agency Code</b></td>
                            <td align="right">
                                <c:if test="${sessionScope.menuAuthentication.governmentAgencyCodeManage}">
                                    <s:radio name="type" id="type" list="#{'government_agency_code_title.action':'รหัสหน่วยงานหลัก','government_agency_code_sub_title.action':'รหัสหน่วยงานย่อย'}"/>
                                    <input name="button" id="btnAdd" type=button class="button" onClick="add();" value="Add">
                                    <s:submit name="Upload File" value="Upload File" cssClass="button"  method="add" cssStyle="width:150px"/>

                                </c:if>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                        </tr>
                        <tr>
                            <td align="right" colspan="2">
                                <c:if test="${requestScope.fileFileName ne null}">
                                  <b>Download Government Agency Code File</b> &nbsp;<a href="../downloadFile.sl?fileName=${requestScope.fileFileName}&originalFileName=${requestScope.originalFileName}&systemName=<%=Constants.Fsis2010UploadDirectory.EXCEL_FILE%>" title="Download attachment file">${requestScope.originalFileName}</a>
                                </c:if>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <table width="100%" class="displayTable">
                                    <tr valign="middle" class="bgGreen2">
                                        <td width="20%" class="label">รหัสหน่วยงาน :</td>
                                        <td width="80%" colspan="2">
                                            <s:textfield name="propCode" id="propCode" cssStyle="width:150px"/>
                                        </td>
                                    </tr>
                                    <tr valign="middle" class="bgGreen1">
                                        <td class="label">ส่วนราชการและรัฐวิสาหกิจ :</td>
                                        <td colspan="2">
                                            <s:textfield name="propName" id="propName" cssStyle="width:350px"/>
                                        </td>
                                    </tr>
                                </table>
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
                    <br />
                    <table width="100%">
                        <tr>
                            <td>
                                <display:table name="${requestScope.governmentList}" id="government"  cellpadding="0" cellspacing="1" export="false" class="displayTag" style="width:100%" requestURI="government_agency_code.action" pagesize="700">
                                    <display:column title="รหัสหน่วยงาน" style="text-align:center;width:8%" headerClass="headerTable" >
                                        <c:if test="${empty government.refId}">
                                            <b>${government.code}</b>
                                        </c:if>
                                        <c:if test="${not empty government.refId}">
                                           ${government.code}
                                        </c:if>
                                    </display:column>
                                    <display:column title="ส่วนราชการและรัฐวิสาหกิจ" style="text-align:left;width:42%" headerClass="headerTable" >
                                        <c:if test="${empty government.refId}">
                                            <b>${government.name}</b>
                                        </c:if>
                                        <c:if test="${not empty government.refId}">
                                            &nbsp;&nbsp;&nbsp;&nbsp;${government.name}
                                        </c:if>
                                    </display:column>
                                    <display:column title="รัฐบาลกลาง" style="text-align:center;width:10%" headerClass="headerTable" >
                                        ${government.federalGovernmentCode}
                                    </display:column>
                                    <display:column title="รัฐบาลท้องถิ่น" style="text-align:center;width:10%" headerClass="headerTable" >
                                        ${government.localGovernmentCode}
                                    </display:column>
                                    <display:column title="รัฐวิสาหกิจ" style="text-align:center;width:10%" headerClass="headerTable" >
                                        ${government.stateEnterpriseCode}
                                    </display:column>
                                    <display:column title="อื่น ๆ " style="text-align:center;width:10%" headerClass="headerTable">
                                        ${government.otherCode}
                                    </display:column>
                                    <c:if test="${sessionScope.menuAuthentication.branchCodeManage}">
                                        <display:column title="Edit" style="width:5%;text-align:center" headerClass="headerTable">
                                            <img src="../images/edit.gif " border="no" title="Edit" onclick="letsGo('${government.refId}','${government.id}')" style="cursor:pointer"/>
                                        </display:column>
                                        <display:column title="Delete" style="width:5%;text-align:center" headerClass="headerTable">
                                            <div onMouseOver="setId('${government.id}');">
                                                <s:submit method="delete" title="Delete" type="image" src="../images/delete.gif" onclick="return confirm('Do you want to delete this record ?')"/>
                                            </div>
                                        </display:column>
                                    </c:if>
                                </display:table>
                                    <%--<c:if test="${not empty requestScope.governmentList}">--%>
                                        <%--<c:forEach items="${requestScope.governmentList}" var="government">--%>
                                          <%--<tr>--%>
                                              <%--<td>${government.code}</td>--%>
                                              <%--<td>${government.name}</td>--%>
                                              <%--<td>${government.federalGovernmentCode}</td>--%>
                                              <%--<td>${government.localGovernmentCode}</td>--%>
                                              <%--<td>${government.stateEnterpriseCode}</td>--%>
                                              <%--<td>${government.otherCode}</td>--%>
                                              <%--&lt;%&ndash;<td>${government.name}</td>&ndash;%&gt;--%>
                                              <%--&lt;%&ndash;<td>${government.name}</td>&ndash;%&gt;--%>
                                          <%--</tr>--%>
                                        <%--</c:forEach>--%>
                                    <%--</c:if>--%>
                            </td>
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

    function letsGo(ref_code, id) {
        var title_action = 'government_agency_code_title.action';
        var sub_title_action = 'government_agency_code_sub_title.action';

        if(ref_code == null || ref_code=='')
        {
            pageLink = title_action + '?id=' + id;

        } else
        {
            pageLink = sub_title_action + '?id=' + id;
        }
        document.location = pageLink;
     //   location.href = pageLink;
    }

</script>
</body>
</html>