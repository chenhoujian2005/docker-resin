<%--
  Created by IntelliJ IDEA.
  User: Witsanu
  Date: 06 ส.ค. 2557
  Time: 10:21
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

<html>
<head><title>Simple jsp page</title>
    <link rel="stylesheet" type="text/css" href="../includes/css/style.css">
    <link rel="stylesheet" href="../includes/chosen/docsupport/prism.css">
    <link rel="stylesheet" href="../includes/chosen/chosen.css">
    <style type="text/css" media="all">
        /* fix rtl for demo */
        .chosen-rtl .chosen-drop {
            left: -9000px;
        }
    </style>
    <script type='text/javascript' src='../dwr/engine.js'></script>
    <script type='text/javascript' src='../dwr/util.js'></script>
    <script type='text/javascript' src='../dwr/interface/AjaxManager.js'></script>
    <script language="javascript" src="../includes/js/tp/utils.js"></script>
    <script language="javascript" src="../includes/js/tp/validate.js"></script>
    <script language="javascript" src="../includes/js/jquery.js"></script>
    <script type="text/javascript" src="../includes/js/jquery.min.js"></script>
    <script type="text/javascript" src="../includes/js/tp/utils.js"></script>
    <script type="text/javascript" src="../includes/js/jquery.js"></script>
    <script type="text/javascript" src="../includes/js/jquery-2.1.1.js"></script>
    <script type="text/javascript">


    </script>

</head>
<body>
<s:form action="defect_log_view" enctype="multipart/form-data">
    <s:hidden name="id" id="id"/>
    <s:hidden name="permissions" id="permissions"/>
    <s:hidden name="username" id="username"/>
    <s:hidden name="getLogin" id="getLogin"/>
    <s:hidden id="issueDateFromHidden" name="issueDateFromHidden"/>
    <s:hidden id="issueDateToHidden" name="issueDateToHidden"/>
    <s:hidden id="issueSystemHidden" name="issueSystemHidden"/>
    <s:hidden id="issueSubSystemHidden" name="issueSubSystemHidden"/>
    <s:hidden id="issuePriorityHidden" name="issuePriorityHidden"/>
    <s:hidden id="issueStatusHidden" name="issueStatusHidden"/>
    <s:hidden id="user" name="userHidden"/>
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
                        <td width="43" background="../images/table004.gif"><img src="../images/table004.gif" width="43"
                                                                                height="37" alt=""></td>
                        <td>
                            <table width="100%" border="0" align="center" style="height:100%">
                                <tr>
                                    <td style="height:100%">
                                            <%--content here--%>
                                        <table>
                                            <tr>
                                                <td><b>Defect Log View </b>
                                                </td>
                                            </tr>
                                        </table>
                                        <table width="100%" align="center" class="displayTable">
                                            <tr class="bgGreen2">
                                                <td width="25%" align="right">User : </td>
                                                <td width="75%">${requestScope.username} </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td align="right">Issue Date : </td>
                                                <td>&nbsp;&nbsp;<fmt:formatDate pattern="dd/MM/yyyy HH:mm:ss" value="${requestScope.issueDate}"/></td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td align="right">Issue System <span class="require_field">*</span> :
                                                </td>
                                                <td>
                                                    <s:select list="issueSystemList" name="issueSystem" id="issueSystem"
                                                              headerKey=""
                                                              headerValue="-------------  Please Select  -------------"
                                                              listKey="id" listValue="systemName"
                                                              onchange="findSubsystem(this.value,'issueSubSystem','id','name');"
                                                              disabled="true"/></td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td align="right">Issue Sub System
                                                    <span class="require_field" id="subSystemRequire" style="display:none">*</span>:</td>
                                                <td><s:select list="issueSubSystemList" name="issueSubSystem"
                                                              id="issueSubSystem" headerKey=""
                                                              headerValue="-------------  Please Select  -------------"
                                                              listKey="id" listValue="SubSystemName" disabled="true"/></td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td align="right">Issue Priority :</td>
                                                <td><s:select list="issuePriorityList" name="issuePriority"
                                                              id="issuePriority" headerKey=""
                                                              headerValue="-------------  Please Select  -------------"
                                                              listKey="id" listValue="issuePriorityName" disabled="true"/></td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td align="right">Issue Description :</td>
                                                <td>
                                                    <s:textarea rows="5" cssStyle="width:300px" id="issueDesc"  name="issueDesc" readonly="true"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td align="right">Issue File :</td>
                                                <td>
                                                    <a href="../downloadFile.sl?logId=${requestScope.id}&key=1" title="Click here to download.">
                                                            ${requestScope.issueUploadFileName}
                                                    </a>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td width="25%" align="right">Status
                                                    <span class="require_field">*</span>:
                                                </td>
                                                <td width="75%"><s:select list="issueStatusList" name="status"
                                                                          id="status" headerKey=""
                                                                          headerValue="-------------  Please Select  -------------"
                                                                          listKey="id"
                                                                          listValue="issueStatusName" disabled="true"/></td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td width="25%" align="right">Mail To :</td>
                                                <td>${requestScope.strEmail}</td>

                                            <tr class="bgGreen1">
                                                <td width="25%" align="right">Solution :</td>
                                                <td> <s:textarea rows="5" cssStyle="width:300px" id="solution"  name="solution" readonly="true"/> </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td width="25%" align="right">Solution File :</td>
                                                <td>
                                                    <a href="../downloadFile.sl?logId=${requestScope.id}&key=2" title="Click here to download.">
                                                            ${requestScope.solutionUploadFileName}
                                                    </a>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td width="25%" align="right">Editor :</td>
                                                <td>${requestScope.editor}</td>
                                            </tr>

                                        </table>
                                        <table width="100%">
                                            <tr align="center">
                                                <td>
                                                    <s:submit id="backBtn" value="Back" method="back"  cssClass="button"/>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="20px">&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                        <td width="28" background="../images/table005.gif">
                            <img src="../images/table005.gif" width="28" height="37" alt=""></td>
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
<script src="../includes/chosen/prototype.js" type="text/javascript"></script>
<script src="../includes/chosen/chosen.proto.js" type="text/javascript"></script>
<script src="../includes/chosen/docsupport/prism.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
    var thisForm = document.getElementsByTagName('form')[0];

</script>


</body>
</html>