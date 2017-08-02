<%@ page import="th.go.mof.fpo.Constants" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<html>
<head>
    <title>Simple jsp page</title>
    <link rel="stylesheet" type="text/css" href="../includes/css/style.css">
    <script type="text/javascript" src="../includes/js/tp/utils.js"></script>

</head>
<body>
<s:form action="isic_detail" validate="false">
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
                                            <table width="100%">
                                                <tr>
                                                    <td width="35%"><b>ISIC-BOT Detail </b></td>
                                                    <td width="65%" align="right">
                                                        <c:if test="${sessionScope.menuAuthentication.isicCodeManage}">
                                                            <s:submit action="isic_upload" value="Upload File " id="butAdd" cssClass="button" cssStyle="width:150px"/>
                                                        </c:if>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td colspan="2">
                                                        <table width="100%" class="displayTable">
                                                             <tr class="bgGreen2">
                                                                <td class="label">Description :</td>
                                                                <td>
                                                                    <s:textfield name="description" id="description" cssStyle="width:350px"/>
                                                                </td>
                                                            </tr>

                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" colspan="2">
                                                        <s:submit name="search" id="btnSearch" method="search" value="Search" cssClass="button"/>  &nbsp;
                                                        <input type="button" name="reset" id="reset" value="Reset" class="button" onclick="resetFrom()"/>   &nbsp;
                                                        <s:submit name="back" id="btnBack" method="back" value="Back" cssClass="button"/>
                                                            <%--<s:reset id="reset" name="reset" value="Reset" cssClass="button"/> &nbsp;--%>
                                                    </td>
                                                </tr>
                                            </table>
                                            <table width="100%" cellpadding="0" cellspacing="0" >
                                                <tr>
                                                    <td>&nbsp;</td>
                                                </tr>
                                                 <tr>
                                                    <td align="right">
                                                        <c:if test="${requestScope.fileFileName ne null}">
                                                          <b>Download File Excel ISIC_BOT </b> &nbsp;<a href="../downloadFile.sl?fileName=${requestScope.fileFileName}&originalFileName=${requestScope.originalFileName}&systemName=<%=Constants.Fsis2010UploadDirectory.EXCEL_FILE%>" title="Download attachment file">${requestScope.originalFileName}</a>
                                                        </c:if>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <display:table name="isicCodeList" id="row" export="false" class="displayTag" requestURI="isic_detail.action" style="width:100%;text-align:center" pagesize="50"  size="${requestScope.totalRecord}">
                                                            <display:column title="Version" property="version" style="text-align:center;width:5%;" headerClass="headerTable" sortable="true" sortName="version"/>
                                                            <display:column title="รหัส" property="code"  style="width:5%;text-align:center;" headerClass="headerTable" sortable="true" />
                                                            <display:column title="รหัส Area FI1" property="fiCode1" style="width:5%;text-align:center;" headerClass="headerTable" sortable="true"/>
                                                            <display:column title="รหัส Area FI2" property="fiCode2" style="width:5%;text-align:center;" headerClass="headerTable" sortable="true"/>
                                                            <display:column title="รหัส Area FM"  property="fmCode"  style="width:5%;text-align:center ;" headerClass="headerTable" sortable="true"/>
                                                            <display:column title="รหัส Area IPI" property="ipiCode" style="width:5%;text-align:center;" headerClass="headerTable" sortable="true"/>
                                                            <display:column title="รายละเอียดกิจกรรมทางเศรษฐกิจ"  property="description" style="width:40%;text-align:left;" headerClass="headerTable" sortable="true"/>
                                                            <display:column title="Parent & Child" property="parentAndChildCode" style="width:5%;text-align:center;" headerClass="headerTable" sortable="true"/>
                                                            <c:if test="${sessionScope.menuAuthentication.isicCodeManage}">
                                                                <display:column title="Edit" headerClass="headerTable" style="text-align:center;width:5%">
                                                                    <img src=../images/edit.gif border="no" align="" onclick="letsGo('isic_detail.action','${row.id}')" style="cursor:pointer">
                                                                </display:column>
                                                                <display:column title="Delete" headerClass="headerTable" style="text-align:center;width:5%">
                                                                    <div onmouseover="setId('${row.id}');">
                                                                        <s:submit method="delete" type="image" src="../images/delete.gif" onclick="return confirm('Do you want to delete this record ?')" title="Delete"/>
                                                                    </div>
                                                                </display:column>
                                                            </c:if>
                                                        </display:table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <c:if test="${requestScope.uploadLast != null}">
                                                            <b> As of &nbsp;<c:out value="${requestScope.uploadLast}"/></b></td>
                                                        </c:if>
                                                </tr>
                                                <tr>
                                                    <td>&nbsp;</td>
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