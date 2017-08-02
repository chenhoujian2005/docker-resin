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
        jQuery(document).ready(function ($) {

            $(window).load(function () {
                var id = $('#id').val();
                var permission = $('#permissions').val();
                var createby = $('#username').val();
                var getUserLogin = $('#getLogin').val();


                if (id != null && createby != getUserLogin && $.trim(permission) == 'ADM') {
                    $('#issueSystem').attr('disabled', true);
                    $('#issueSubSystem').attr('disabled', true);
                    $('#issuePriority').attr('disabled', true);
                    $('#issueDesc').attr('disabled', true);
                    $('#issueUpload').attr('disabled', true);
                    $('#solution').attr('disabled', false);
                    $('#solutionUpload').attr('disabled', false);
                    $('#editor').attr('disabled', false);

                } else if (id != null && createby != getUserLogin && $.trim(permission) != 'ADM') {
                    $('#issueSystem').attr('disabled', true);
                    $('#issueSubSystem').attr('disabled', true);
                    $('#issuePriority').attr('disabled', true);
                    $('#issueDesc').attr('disabled', true);
                    $('#issueUpload').attr('disabled', true);
//                    $('#mailTo').attr('disabled', true);
                    $('#status').attr('disabled', true);
                    $('#solution').attr('disabled', true);
                    $('#solutionUpload').attr('disabled', true);
                    $('#editor').attr('disabled', true);

                }
                else if (id != null && createby == getUserLogin && $.trim(permission) != 'ADM') {
                    $('#issueSystem').attr('disabled', false);
                    $('#issueSubSystem').attr('disabled', false);
                    $('#issuePriority').attr('disabled', false);
                    $('#issueDesc').attr('disabled', false);
                    $('#issueUpload').attr('disabled', false);
                    $('#solution').attr('disabled', true);
                    $('#solutionUpload').attr('disabled', true);
                    $('#editor').attr('disabled', true);
                }
                else if (id != null && createby == getUserLogin && $.trim(permission) == 'ADM') {
                    $('#issueSystem').attr('disabled', false);
                    $('#issueSubSystem').attr('disabled', false);
                    $('#issuePriority').attr('disabled', false);
                    $('#issueDesc').attr('disabled', false);
                    $('#issueUpload').attr('disabled', false);
                    $('#solution').attr('disabled', false);
                    $('#solutionUpload').attr('disabled', false);
                    $('#editor').attr('disabled', false);

                }
                else if (id == null && createby != null && $.trim(permission) != 'ADM') {
                    $('#issueSystem').attr('disabled', false);
                    $('#issueSubSystem').attr('disabled', false);
                    $('#issuePriority').attr('disabled', false);
                    $('#issueDesc').attr('disabled', false);
                    $('#issueUpload').attr('disabled', false);
                    $('#solution').attr('disabled', true);
                    $('#solutionUpload').attr('disabled', true);
                    $('#editor').attr('disabled', true);
                }
                else if (id == null && createby != null && $.trim(permission) == 'ADM') {
                    $('#issueSystem').attr('disabled', false);
                    $('#issueSubSystem').attr('disabled', false);
                    $('#issuePriority').attr('disabled', false);
                    $('#issueDesc').attr('disabled', false);
                    $('#issueUpload').attr('disabled', false);
                    $('#solution').attr('disabled', false);
                    $('#solutionUpload').attr('disabled', false);
                    $('#editor').attr('disabled', false);
                }
            });


        });


        function resetForm() {
            thisForm.issueSystem.value = "";
            thisForm.issueSubSystem.value = "";
            thisForm.issuePriority.value = "";
            thisForm.issueDesc.value = "";
            thisForm.upload.value = "";
            thisForm.status.value = "";
            thisForm.mailTo.value = "";
        }

        function findSubsystem(id, zone, keyName, keyValue, clearZones) {
            AjaxManager.findSubSystemBySystemId(id, function (data) {
                prepareOption(zone, data, keyName, keyValue, clearZones);
            });

        }

        function prepareOption(zone, data, keyName, keyValue, clearZones) {
            dwr.util.removeAllOptions(zone);
            document.getElementById(zone).options[0] = new Option('------------  Please Select  ------------', '');
            dwr.util.addOptions(zone, data, keyName, keyValue);
            if (clearZones != null) {
                for (var i = 0; i < clearZones.length; i++) {
                    dwr.util.removeAllOptions(clearZones[i]);
                    document.getElementById(clearZones[i]).options[0] = new Option('------------  Please Select  ------------', '');
                }
            }
            validateRequireField('issueSubSystem', 'subSystemRequire');

        }

    </script>

</head>
<body>
<s:form action="defect_log_add" enctype="multipart/form-data">
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
                                                <td><b>
                                                    <c:if test="${empty requestScope.id}">Add Defect Log</c:if>
                                                    <c:if test="${not empty requestScope.id}">Edit Defect Log</c:if>
                                                </b>
                                                </td>
                                            </tr>
                                        </table>
                                        <table width="100%" align="center" class="displayTable">
                                            <tr class="bgGreen2">
                                                <td width="25%" align="right">User : </td>
                                                <td width="75%"><c:if
                                                        test="${empty requestScope.id}">&nbsp;&nbsp;${requestScope.userLogin.userName}</c:if>
                                                    <c:if test="${not empty requestScope.id}">&nbsp;&nbsp;${requestScope.username}</c:if>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td align="right">Issue Date : </td>
                                                <c:set var="getDate" value="${requestScope.issueDate}"/>

                                                <td>&nbsp;&nbsp;<fmt:formatDate pattern="dd/MM/yyyy HH:mm:ss"
                                                                                value="${requestScope.issueDate}"/></td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td align="right">Issue System <span class="require_field">*</span> :
                                                </td>
                                                <td><s:select list="issueSystemList" name="issueSystem" id="issueSystem"
                                                              headerKey=""
                                                              headerValue="-------------  Please Select  -------------"
                                                              listKey="id" listValue="systemName"
                                                              onchange="findSubsystem(this.value,'issueSubSystem','id','name');"/></td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td align="right">Issue Sub System <span class="require_field"
                                                                                            id="subSystemRequire"
                                                                                            style="display:none">*</span>
                                                    : </td>
                                                <td><s:select list="issueSubSystemList" name="issueSubSystem"
                                                              id="issueSubSystem" headerKey=""
                                                              headerValue="-------------  Please Select  -------------"
                                                              listKey="id" listValue="SubSystemName"/></td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td align="right">Issue Priority :</td>
                                                <td><s:select list="issuePriorityList" name="issuePriority"
                                                              id="issuePriority" headerKey=""
                                                              headerValue="-------------  Please Select  -------------"
                                                              listKey="id" listValue="issuePriorityName"/></td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td align="right">Issue Description :</td>
                                                <td>
                                                    <s:textarea rows="5" cssStyle="width:300px" id="issueDesc"
                                                                name="issueDesc"/><br/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td align="right">Issue File :</td>
                                                <td>
                                                    <c:if test="${not empty requestScope.id &&(requestScope.issueUploadFileName != null)}">
                                                        &nbsp;
                                                        <a href="../downloadFile.sl?logId=${requestScope.id}&key=1" title="Click here to download.">
                                                            ${requestScope.issueUploadFileName}
                                                        </a>
                                                        <%--&nbsp;${requestScope.issueUploadFileName}--%>
                                                        <br>
                                                    </c:if>
                                                    <s:file name="issueUpload" id="issueUpload" size="55"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td width="25%" align="right">Status <span
                                                        class="require_field">*</span>:
                                                </td>
                                                <td width="75%"><s:select list="issueStatusList" name="status"
                                                                          id="status" headerKey=""
                                                                          headerValue="-------------  Please Select  -------------"
                                                                          listKey="id"
                                                                          listValue="issueStatusName"/></td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td width="25%" align="right">Mail To :</td>
                                                    <%--<td width="75%"><s:textfield name="mailTo" id="mailTo" cssStyle="width: 300" />--%>
                                                    <%--<button class="button" id="btnMail" onclick="openPopup()" style="width:220px">Select</button>--%>
                                                <td>
                                                    <c:if test="${not empty requestScope.id &&(requestScope.strEmail!=null)}">&nbsp;${requestScope.strEmail}
                                                        <br></c:if>


                                                    <select multiple class="chosen-select" style="width:350px;"
                                                            tabindex="8" name="mailTo" id="mailTo"
                                                    <c:if test="${not empty requestScope.id &&(requestScope.permissions!='ADM' &&(requestScope.username!=requestScope.getLogin))}">
                                                            disabled
                                                    </c:if>

                                                    <c:forEach items="${requestScope.mailList}" var="obj">
                                                        <option value="${obj.id}">${obj.userName}&nbsp;&nbsp;${obj.email}</option>
                                                    </c:forEach>
                                                    </select>


                                                </td>
                                            <tr class="bgGreen1">
                                                <td width="25%" align="right">Solution :</td>

                                                <td>
                                                    <s:textarea rows="5" cssStyle="width:300px" id="solution"
                                                                name="solution"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td width="25%" align="right">Solution File :</td>

                                                <td>
                                                    <c:if test="${not empty requestScope.id &&(requestScope.solutionUploadFileName != null)}">
                                                        &nbsp;
                                                        <a href="../downloadFile.sl?logId=${requestScope.id}&key=2" title="Click here to download.">
                                                                ${requestScope.solutionUploadFileName}
                                                        </a>
                                                        <br>
                                                    </c:if>
                                                    <s:file name="solutionUpload" id="solutionUpload" size="55"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td width="25%" align="right">Editor :</td>

                                                <td>
                                                    <s:textfield cssStyle="width:300px" id="editor" name="editor"/>
                                                </td>
                                            </tr>

                                        </table>
                                        <table width="100%">
                                            <tr align="center">
                                                <td>
                                                    <s:submit name="saveBtn" value="Save" method="save"
                                                              cssClass="button" onclick="return validateForm();"/>&nbsp;
                                                    <button class="button" onclick="resetForm()">Reset</button>
                                                    &nbsp;
                                                    <s:submit id="backBtn" value="Back" method="back"
                                                              cssClass="button"/>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="20px">&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                        <td width="28" background="../images/table005.gif"><img src="../images/table005.gif" width="28"
                                                                                height="37" alt=""></td>
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
    document.observe('dom:loaded', function (evt) {
        var config = {
            '.chosen-select': {},
            '.chosen-select-deselect': {allow_single_deselect: true},
            '.chosen-select-no-single': {disable_search_threshold: 10},
            '.chosen-select-no-results': {no_results_text: "Oops, nothing found!"},
            '.chosen-select-width': {width: "95%"}

        }
        var results = [];
        for (var selector in config) {
            var elements = $$(selector);
            for (var i = 0; i < elements.length; i++) {
                results.push(new Chosen(elements[i], config[selector]));
            }
        }
        return results;
    });
</script>
<script type="text/javascript">
    var thisForm = document.getElementsByTagName('form')[0];
    var isSubmit = false;
    function validateForm() {
        if (isSubmit) {
            thisForm.saveBtn.disabled = true;
            thisForm.resetBtn.disabled = true;
            thisForm.backBtn.disabled = true;
            return false;
        }
        if (thisForm.issueSystem.selectedIndex == 0) {
            alert('Please Selected Issue System !!');
            thisForm.issueSystem.focus();
            return false;
        }
        if (thisForm.issueSubSystem.selectedIndex == 0 && thisForm.issueSubSystem.length > 1) {
            alert('Please Selected Issue SubSystem !!');
            thisForm.issueSubSystem.focus();
            return false;
        }
        if (thisForm.status.selectedIndex == 0) {
            alert('Please Selected Status !!');
            thisForm.status.focus();
            return false;
        }
        isSubmit = true;
        return true;
    }
    ;

    function validateRequireField(fieldName, requireName) {
        if (document.getElementById(fieldName).length > 1) {
            document.getElementById(requireName).style.display = 'inline';
        } else {
            document.getElementById(requireName).style.display = 'none';
        }
    }

    //    function openPopup() {
    //
    ////        window.showModalDialog("../defectLog/popup_mail.action","" ,"height=700,width=600 ,resizable=1,scrollbars=1'");
    //        var ReturnedValue = showModalDialog("../defectLog/popup_mail.action","","dialogWidth:800px; dialogHeight:700px; status:no; center:yes");
    ////        var mailT = document.getElementById("mailTo");
    //        //unicode_to_utf8(doc_code);
    //
    //        document.forms[0].mailTo.value = ReturnedValue;
    //        alert(ReturnedValue);
    ////        window.open("../defectLog/popup_mail.action","" ,"height=700,width=600 ,resizable=1,scrollbars=1'");
    ////        thisForm.mailTo.value = '';
    ////        window.open("../defectLog/popup_mail.action","","fullscreen=no,toolbar=no,status=no,menubar=no,scrollbars=no,resizable=no,width=500,height=500");
    //    }

</script>


</body>
</html>