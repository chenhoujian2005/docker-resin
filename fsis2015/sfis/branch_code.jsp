<%@ page import="th.go.mof.fpo.Constants" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><title>Simple jsp page</title>
    <link rel="stylesheet" type="text/css" href="../includes/css/style.css">
    <script type="text/javascript">
        function setId(id) {
            var thisForm = document.getElementsByTagName('form')[0];
            thisForm.deleteId.value = id;
        }

        function resetForm() {
            document.getElementById('sfiId').selectedIndex = 0;
            document.getElementById('branchCode').value = "";
        }
    </script>
</head>
<body>
<s:form action="branch_code" enctype="multipart/form-data">
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
                        <td width="43" background="../images/table004.gif">
                            <img src="../images/table004.gif" width="43" height="37" alt="">
                        </td>
                        <td>
                            <table width="100%" border="0" align="center" style="height:100%">
                                <tr>
                                    <td align="left" width="50%"><b>Branch Code</b></td>
                                    <td align="right" width="50%">
                                        <c:if test="${sessionScope.menuAuthentication.branchCodeManage}">
                                            <%--<s:submit action="branch_code_detail" value="Upload File " cssClass="button" cssStyle="width:150px"/>--%>
                                            <%--<s:submit action="branch_code_show_detail" value="Add" cssClass="button" cssStyle="width:150px"/>--%>
                                            <input type="button" name="butUpload" id="butUpload" class="button" value="Upload File" style="width:150px" onclick="letsGo('branch_code_detail.action','')"/>
                                            <input type="button" name="butNewAdd" id="butNewAdd" class="button" value="Add Branch Code" style="width:150px" onclick="letsGo('branch_code_show_detail.action','')"/>
                                        </c:if>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="2">
                                        <%--<c:if test="${requestScope.fileFileName ne null}">--%>
                                            <%--<b>Download Branch Code File</b> &nbsp;<a href="../downloadFile.sl?fileName=${requestScope.fileFileName}&originalFileName=${requestScope.originalFileName}&systemName=<%=Constants.Fsis2010UploadDirectory.EXCEL_FILE%>" title="Download attachment file">${requestScope.originalFileName}</a>--%>
                                            <s:url action="branch_code_download" var="aURL" />
                                            <b>Download Branch Code File</b> &nbsp; : &nbsp;<s:a href="%{aURL}">ดาวน์โหลด SFIs_Branch.xls</s:a>
                                        <%--</c:if>--%>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <table width="100%" class="displayTable">
                                         <tr valign="middle" class="bgGreen2">
                                            <td width="20%" class="label">SFIs :</td>
                                            <td width="80%" colspan="2">
                                                <s:select list="sfiList" name="sfiId" id="sfiId" headerKey="" listKey="id" listValue="displayNameCodeAndCode" headerValue="-------------  Please Select  -------------"/>
                                            </td>
                                        </tr>
                                        <tr valign="middle" class="bgGreen1">
                                            <td class="label">Branch Code :</td>
                                            <td colspan="2"><s:textfield id="branchCode" name="branchCode" maxlength="4" size="30"/></td>
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
                              <br>
                            <display:table name="${requestScope.branchList}" id="row" export="false" class="displayTag" requestURI="branch_code.action" style="width:100%;text-align:center" pagesize="25" partialList="true" size="${totalRecord}">
                                <display:column title="SFIs ID" property="sfiDisplay" style="text-align:center;" headerClass="headerTable" sortable="false" sortName="sfiCode"/>
                                <display:column title="BRANCH CODE" property="branchCode" style="text-align:center;" headerClass="headerTable" sortable="false" sortName="branchCode"/>
                                <display:column title="NAME (EN)" property="nameEn" style="text-align:left;" headerClass="headerTable" sortable="false" sortName="nameEn"/>
                                <display:column title="NAME (TH)" property="nameTh" style="text-align:left;" headerClass="headerTable" sortable="false" sortName="nameTh"/>
                                <display:column title="Area Name" property="areaName" style="text-align:left;" headerClass="headerTable" sortable="false" sortName="areaName"/>
                                <display:column title="Province Name" property="provinceName" style="text-align:left;" headerClass="headerTable" sortable="false" sortName="provinceName"/>
                             <c:if test="${sessionScope.menuAuthentication.branchCodeManage}">
                                <display:column title="Edit" style="width:5%;text-align:center" headerClass="headerTable">
                                    <img src="../images/edit.gif " border="no" title="Edit" onclick="letsGo('branch_code_show_detail.action','${row.id}')" style="cursor:pointer"/>  
                                </display:column>
                                <display:column title="Delete" style="width:5%;text-align:center" headerClass="headerTable">
                                   <div onMouseOver="setId('${row.id}');">
                                      <s:submit method="delete" title="Delete" type="image" src="../images/delete.gif" onclick="return confirm('Do you want to delete this record ?')"/>
                                 </div>
                                </display:column>
                             </c:if>

                            </display:table>
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
    function letsGo(action, id) {
        var sfi = document.getElementById("sfiId").value;
        var branchCode = document.getElementById("branchCode").value;

        pageLink1 = action + '?id=' + id;
        pageLink2 = '&<%=Constants.BranchCodeField.SFI_HIDDEN%>=' + sfi;
        pageLink3 = '&<%=Constants.BranchCodeField.BRANCH_CODE_HIDDEN%>=' + branchCode;

        location.href = pageLink1.concat(pageLink2, pageLink3);
    }
</script>
</body>
</html>