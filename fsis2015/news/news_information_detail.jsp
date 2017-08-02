<%@ page import="th.go.mof.fpo.Constants" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>Simple jsp page</title>
    <script type="text/javascript" src="../includes/js/tp/utils.js"></script>
    <script type="text/javascript" src="../includes/js/tp/validate.js"></script>
    <link rel="stylesheet" type="text/css" href="../includes/css/style.css">
    <script type="text/javascript" src="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.js"></script>
    <link href="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.css" rel="stylesheet" type="text/css">
    <script type="text/javascript">
        function resetForm() {
            thisForm.newsDate.value = '';
            thisForm.endDate.value = '';
            thisForm.subject.value = '';
            thisForm.newsDescription.value = '';
        }

        function isCheckObj(objChk){
            var isSelect = false;
            for (var i = 0; i < objChk.length; i ++) {
                if(objChk[i].checked){
                    isSelect = true;
                    break;
                }
            }
            return isSelect;
        }

        function selectAllSfiRight() {
            var objBtn = document.news_information_detail.btnSelectAllSfiRight;
            var objChk = document.news_information_detail.sfiAll;
            var isCheck = objBtn.value == 'Select All';

            if (objChk != undefined) {
                if (objChk.length == undefined) {
                    objChk.checked = isCheck;
                } else {
                    for (var i = 0; i < objChk.length; i ++) {
                        objChk[i].checked = isCheck;
                    }
                }
            }

            if (objBtn.value == 'Select All') {
                objBtn.value = 'Select None'
            } else {
                objBtn.value = 'Select All'
            }
        }
        var isSubmit = false;

        function validateForm(){
            if(isSubmit){
                thisForm.saveBtn.disabled = true;
                thisForm.resetBtn.disabled = true;
                thisForm.backBtn.disabled = true;
                return false;
            }
            var objChk = document.news_information_detail.sfiAll;
            if (isEmptyById('newsDate')) {
                alert('Please Input News Date !!');
                return false;
            } else {
                if (!isEmptyById('endDate')) {
                    if (!validateDate('newsDate', 'endDate')) {
                        alert('News Date must be lessthan or equal End Date')
                        return false;
                    }
                }
            }
            if (isEmptyById('subject')) {
                alert('Please Input Subject !!');
                thisForm.subject.focus();
                return false;
            }
            if (isEmptyById('newsDescription')) {
                alert('Please Input News Description !!');
                thisForm.newsDescription.focus();
                return false;
            }
            if (!isCheckObj(objChk)) {
                alert('Please Select SFIs name at least one item !!');
                return false;
            }
            isSubmit = true;
            return true;
        }

        function validateDate(strFromDateId, strToDateId) {
            var strFromDate = getValue(strFromDateId);
            var strToDate = getValue(strToDateId);

            if (strFromDate != '' && strToDate != '') {
                var dayPartFromDate = parseInt(strFromDate.substring(0, 2), 10);
                var monPartFromDate = parseInt(strFromDate.substring(3, 5), 10);
                var yearPartFromDate = parseInt(strFromDate.substring(6, 10), 10);
                var dtFrom = new Date(yearPartFromDate, monPartFromDate - 1, dayPartFromDate);

                var dayPartToDate = parseInt(strToDate.substring(0, 2), 10);
                var monPartToDate = parseInt(strToDate.substring(3, 5), 10);
                var yearPartToDate = parseInt(strToDate.substring(6, 10), 10);
                var dtTo = new Date(yearPartToDate, monPartToDate - 1, dayPartToDate);
                if (dtFrom <= dtTo)
                {
                    return true;
                }
            }
            return false;
        }
    </script>
</head>
<body>
<s:form action="news_information_detail" enctype="multipart/form-data">
<s:hidden id="newsId" name="newsId"/>
<s:hidden name="sfiNameHidden"/>
<s:hidden name="dateFromHidden"/>
<s:hidden name="dateToHidden"/>
<s:hidden name="subjectHidden"/>
<s:hidden name="descriptionHidden"/>
<s:hidden name="sendTypeHidden"/>
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
                        <td width="43" background="../images/table004.gif"><img src="../images/table004.gif" width="43"  height="37" alt=""></td>
                        <td>
                            <table width="100%" border="0" align="center" style="height:100%">
                                <tr>
                                    <td style="height:100%">
                                        <%--content here--%>
                                        <table width="100%">
                                            <tr>
                                                <td width="100%">
                                                    <b>News &amp; Information : Add/Edit</b>
                                                </td>
                                            </tr>
                                        </table>
                                        <table width="100%" class="displayTable">
                                            <c:if test="${empty requestScope.newsId or (not empty requestScope.newsId and requestScope.sendType eq 'W')}">
                                            <tr class="bgGreen1">
                                                <td align="right" width="20%">
                                                    <b>News Date<span class="require_field">*</span> :</b>
                                                </td>
                                                <td align="left" width="20%">
                                                    <s:textfield name="newsDate" id="newsDate" readonly="true" size="8"/>
                                                    <img alt="" border="0" src="../images/dd.gif" name="dateBtn"
                                                         width="15" height="15"
                                                         onclick="displayCalendar(document.forms[0].newsDate,'dd/mm/yyyy',this);"
                                                         align="absmiddle">
                                                </td>
                                                <td align="right" width="15%">
                                                    <b>End Date :</b>
                                                </td>
                                                <td align="left" width="45%">
                                                    <s:textfield name="endDate" id="endDate" readonly="true" size="8"/>
                                                    <img alt="" border="0" src="../images/dd.gif" name="dateBtn"
                                                         width="15" height="15"
                                                         onclick="displayCalendar(document.forms[0].endDate,'dd/mm/yyyy',this);"
                                                         align="absmiddle">
                                                </td>
                                            </tr>
                                           </c:if>
                                           <c:if test="${not empty requestScope.newsId and ((requestScope.sendType eq 'M') or (requestScope.sendType eq 'A')) and requestScope.sendFlag eq 'true'}">
                                            <tr class="bgGreen1">
                                                <td align="right" width="20%">
                                                    <b>News Date<span class="require_field">*</span> :</b>
                                                </td>
                                                <td align="left" width="20%">
                                                    <s:textfield name="newsDate" id="newsDate" readonly="true" size="8"/>
                                                </td>
                                                <td align="right" width="15%">
                                                    <b>End Date :</b>
                                                </td>
                                                <td align="left" width="45%">
                                                    <s:textfield name="endDate" id="endDate" readonly="true" size="8"/>
                                                </td>
                                            </tr>
                                            </c:if>
                                             <c:if test="${not empty requestScope.newsId and ((requestScope.sendType eq 'M') or (requestScope.sendType eq 'A')) and requestScope.sendFlag eq 'false'}">
                                                     <tr class="bgGreen1">
                                                <td align="right" width="20%">
                                                    <b>News Date<span class="require_field">*</span> :</b>
                                                </td>
                                                <td align="left" width="20%">
                                                    <s:textfield name="newsDate" id="newsDate" readonly="true" size="8"/>
                                                    <img alt="" border="0" src="../images/dd.gif" name="dateBtn"
                                                         width="15" height="15"
                                                         onclick="displayCalendar(document.forms[0].newsDate,'dd/mm/yyyy',this);"
                                                         align="absmiddle">
                                                </td>
                                                <td align="right" width="15%">
                                                    <b>End Date :</b>
                                                </td>
                                                <td align="left" width="45%">
                                                    <s:textfield name="endDate" id="endDate" readonly="true" size="8"/>
                                                    <img alt="" border="0" src="../images/dd.gif" name="dateBtn"
                                                         width="15" height="15"
                                                         onclick="displayCalendar(document.forms[0].endDate,'dd/mm/yyyy',this);"
                                                         align="absmiddle">
                                                </td>
                                            </tr>
                                            </c:if>
                                            <tr class="bgGreen2">
                                                <td align="right">
                                                    <b>Subject<span class="require_field">*</span> :</b>
                                                </td>
                                                <td colspan="3">
                                                    <c:if test="${empty requestScope.newsId or (not empty requestScope.newsId and requestScope.sendType eq 'W')}">
                                                        <s:textfield id="subject" name="subject" cssStyle="width:340px" maxLength="256"/>
                                                    </c:if>
                                                    <c:if test="${not empty requestScope.newsId and ((requestScope.sendType eq 'M') or (requestScope.sendType eq 'A')) and requestScope.sendFlag eq 'true'}">
                                                        <s:textfield id="subject" name="subject" cssStyle="width:340px" maxLength="256" disabled="true"/>
                                                    </c:if>
                                                    <c:if test="${not empty requestScope.newsId and ((requestScope.sendType eq 'M') or (requestScope.sendType eq 'A')) and requestScope.sendFlag eq 'false'}">
                                                     <s:textfield id="subject" name="subject" cssStyle="width:340px" maxLength="256"/>
                                                    </c:if>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td align="right">
                                                    <b>News Description<span class="require_field">*</span> :</b>
                                                </td>
                                                <td colspan="3">
                                                    <c:if test="${empty requestScope.newsId or (not empty requestScope.newsId and requestScope.sendType eq 'W')}">
                                                        <s:textarea id="newsDescription" name="newsDescription" cssStyle="width:100%" rows="20"/>
                                                    </c:if>
                                                    <c:if test="${not empty requestScope.newsId and ((requestScope.sendType eq 'M') or (requestScope.sendType eq 'A')) and requestScope.sendFlag eq 'true'}">
                                                        <s:textarea id="newsDescription" name="newsDescription" cssStyle="width:100%" rows="20" disabled="true"/>
                                                    </c:if>
                                                     <c:if test="${not empty requestScope.newsId and ((requestScope.sendType eq 'M') or (requestScope.sendType eq 'A')) and requestScope.sendFlag eq 'false'}">
                                                     <s:textarea id="newsDescription" name="newsDescription" cssStyle="width:100%" rows="20"/>
                                                    </c:if>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td align="right" class="labelText"><b>File :</b></td>
                                                <td colspan="3">
                                                    <c:if test="${empty requestScope.newsId or (not empty requestScope.newsId and requestScope.sendType eq 'W')}">
                                                        <s:file name="file" size="60" />
                                                    </c:if>
                                                    <c:if test="${not empty requestScope.newsId and ((requestScope.sendType eq 'M') or (requestScope.sendType eq 'A')) and requestScope.sendFlag eq 'false'}">
                                                      <s:file name="file" size="60" />
                                                    </c:if>
                                                    <c:if test="${not empty requestScope.originalFileName}">
                                                        <a href="../downloadFile.sl?fileName=${requestScope.fileFileName}&originalFileName=${requestScope.originalFileName}&systemName=<%=Constants.Fsis2010UploadDirectory.NEW_INFORMATION%>" title="Download attachment file">${requestScope.originalFileName}</a>
                                                    </c:if>
                                                    <c:if test="${not empty requestScope.originalFileName and (not empty requestScope.newsId and requestScope.sendType eq 'W')}">
                                                        <s:submit method="deleteFile" value="Delete" type="image" src="../images/delete.gif"/>
                                                    </c:if>
                                                    <c:if test="${empty requestScope.newsId or (not empty requestScope.newsId and requestScope.sendType eq 'W')}">
                                                        <c:choose>
                                                            <c:when test="${requestScope.uploadFileError eq 'LS'}">
                                                                <br/><font color="red">(Limit file size 5 Mb.)</font>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <br/>(Limit file size 5 Mb.)
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </c:if>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td align="right">
                                                    <b>SFIs Name<span class="require_field">*</span> :</b>
                                                </td>
                                                <td colspan="3">
                                                    <table width="100%">
                                                        <%--<c:if test="${empty requestScope.newsId or (not empty requestScope.newsId and requestScope.sendType eq 'W') or (not empty requestScope.newsId and requestScope.sendType eq 'A')}">--%>
                                                        <c:if test="${empty requestScope.newsId or (not empty requestScope.newsId and requestScope.sendType eq 'W') }">
                                                            <tr>
                                                                <td>
                                                                    <input type="button" id="btnSelectAllSfiRight" class="button" name="btnSelectAllSfiRight" value="Select All" style="width:100px" onClick="selectAllSfiRight()"/>
                                                                </td>
                                                            </tr>
                                                            <c:forEach items="${requestScope.organizationList}" var="thisOrganization" varStatus="rowCounter">
                                                                <c:if test="${rowCounter.count mod 2 ne 0}">
                                                                    <tr>
                                                                        <td>
                                                                            <input type="checkbox"  name="sfiAll" id="${thisOrganization.abbreviationEn}" value="${thisOrganization.abbreviationEn}"/>${thisOrganization.nameTh}
                                                                        </td>
                                                                </c:if>
                                                                <c:if test="${rowCounter.count mod 2 eq 0}">
                                                                        <td>
                                                                            <input type="checkbox"  name="sfiAll" id="${thisOrganization.abbreviationEn}" value="${thisOrganization.abbreviationEn}"/>${thisOrganization.nameTh}
                                                                        </td>
                                                                    </tr>
                                                                </c:if>
                                                            </c:forEach>
                                                        </c:if>
                                                          <c:if test="${(not empty requestScope.newsId) and (requestScope.sendType eq 'M' or requestScope.sendType eq 'A') and (requestScope.sendFlag eq false)}">
                                                            <c:forEach items="${requestScope.organizationList}" var="thisOrganization" varStatus="rowCounter">
                                                                <c:if test="${rowCounter.count mod 2 ne 0}">
                                                                    <tr>
                                                                        <td>
                                                                            <input type="checkbox"  name="sfiAll" id="${thisOrganization.abbreviationEn}" value="${thisOrganization.abbreviationEn}" />${thisOrganization.nameTh}
                                                                        </td>
                                                                </c:if>
                                                                <c:if test="${rowCounter.count mod 2 eq 0}">
                                                                        <td>
                                                                            <input type="checkbox"  name="sfiAll" id="${thisOrganization.abbreviationEn}" value="${thisOrganization.abbreviationEn}" />${thisOrganization.nameTh}
                                                                        </td>
                                                                    </tr>
                                                                </c:if>
                                                            </c:forEach>
                                                        </c:if>
                                                        <c:if test="${(not empty requestScope.newsId) and (requestScope.sendType eq 'M' or requestScope.sendType eq 'A') and (requestScope.sendFlag eq true)}">
                                                            <c:forEach items="${requestScope.organizationList}" var="thisOrganization" varStatus="rowCounter">
                                                                <c:if test="${rowCounter.count mod 2 ne 0}">
                                                                    <tr>
                                                                        <td>
                                                                            <input type="checkbox"  name="sfiAll" id="${thisOrganization.abbreviationEn}" value="${thisOrganization.abbreviationEn}" disabled="true"/>${thisOrganization.nameTh}
                                                                        </td>
                                                                </c:if>
                                                                <c:if test="${rowCounter.count mod 2 eq 0}">
                                                                        <td>
                                                                            <input type="checkbox"  name="sfiAll" id="${thisOrganization.abbreviationEn}" value="${thisOrganization.abbreviationEn}" disabled="true"/>${thisOrganization.nameTh}
                                                                        </td>
                                                                    </tr>
                                                                </c:if>
                                                            </c:forEach>
                                                        </c:if>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td align="right">
                                                    <b>Send Type :</b>
                                                </td>    
                                                <td colspan="3">
                                                    <c:if test="${(not empty requestScope.newsId) and (requestScope.sendType eq 'W') and (requestScope.sendFlag eq true) and (requestScope.news.enable eq false and requestScope.editSendTypeFlag eq true)}">
                                                        <s:radio list="#{'A':'All','W':'Web','M':'E-Mail'}" name="sendType"/>
                                                    </c:if>
                                                      <c:if test="${(not empty requestScope.newsId) and (requestScope.sendType eq 'W') and (requestScope.sendFlag eq true) and (requestScope.news.enable eq true and requestScope.editSendTypeFlag eq true)}">
                                                        <s:radio list="#{'A':'All','W':'Web','M':'E-Mail'}" name="sendType"/>
                                                    </c:if>
                                                     <c:if test="${(not empty requestScope.newsId) and (requestScope.sendType eq 'W') and (requestScope.sendFlag eq true) and (requestScope.news.enable eq true) and (requestScope.editSendTypeFlag eq false)}">
                                                        <s:radio list="#{'A':'All','W':'Web','M':'E-Mail'}" name="sendType" disabled="true"/>
                                                    </c:if>
                                                       <c:if test="${(not empty requestScope.newsId) and (requestScope.sendType eq 'W') and (requestScope.sendFlag eq true) and (requestScope.news.enable eq false) and (requestScope.editSendTypeFlag eq false)}">
                                                        <s:radio list="#{'A':'All','W':'Web','M':'E-Mail'}" name="sendType" disabled="true"/>
                                                    </c:if>
                                                    <c:if test="${(not empty requestScope.newsId) and ((requestScope.sendType eq 'M') or (requestScope.sendType eq 'A')) and (requestScope.sendFlag eq false)}">
                                                        <s:radio list="#{'A':'All','W':'Web','M':'E-Mail'}" name="sendType"/>
                                                    </c:if>
                                                     <c:if test="${(not empty requestScope.newsId) and ((requestScope.sendType eq 'M') or (requestScope.sendType eq 'A')) and (requestScope.sendFlag eq true)}">
                                                        <s:radio list="#{'A':'All','W':'Web','M':'E-Mail'}" name="sendType" disabled="true"/>
                                                    </c:if>
                                                    <c:if test="${empty requestScope.newsId}">
                                                        <s:radio list="#{'A':'All','W':'Web','M':'E-Mail'}" name="sendType"/>
                                                    </c:if>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td align="right"><b>Enabled :</b>
                                                </td>
                                                <td colspan="3">
                                                    <c:if test="${not empty requestScope.newsId and ( requestScope.sendType eq 'M' or  requestScope.sendType eq 'A') and (requestScope.sendFlag eq true)}">
                                                        <s:checkbox name="enabled" disabled="true"/>
                                                    </c:if>
                                                     <c:if test="${not empty requestScope.newsId and ( requestScope.sendType eq 'M' or  requestScope.sendType eq 'A') and (requestScope.sendFlag eq false)}">
                                                        <s:checkbox name="enabled"/>
                                                    </c:if>
                                                    <c:if test="${empty requestScope.newsId or (not empty requestScope.newsId and requestScope.sendType eq 'W')}">
                                                        <s:checkbox name="enabled"/>
                                                    </c:if>
                                                </td>
                                            </tr>
                                            <c:if test="${not empty requestScope.newsId}">
                                            <tr class="bgGreen2">
                                                <td align="right" class="labelText"><b>Create & Update Information :</b></td>
                                                <td colspan="3">
                                                    <table>
                                                        <tr class="tdTableLight">
                                                            <td>
                                                                <div align="right"><strong>Create Date : </strong></div>
                                                            </td>
                                                            <td><fmt:formatDate pattern="dd MMM yyyy HH:mm:ss" value="${requestScope.news.createDate}"/></td>
                                                        </tr>
                                                        <tr class="tdTableLight">
                                                            <td>
                                                                <div align="right"><strong>Create By : </strong></div>
                                                            </td>
                                                            <td>${requestScope.news.createBy}</td>
                                                        </tr>
                                                        <tr class="tdTableLight">
                                                            <td>
                                                                <div align="right"><strong>Update Date : </strong></div>
                                                            </td>
                                                            <td><fmt:formatDate pattern="dd MMM yyyy HH:mm:ss" value="${requestScope.news.updateDate}"/></td>
                                                        </tr>
                                                        <tr class="tdTableLight">
                                                            <td>
                                                                <div align="right"><strong>Update By : </strong></div>
                                                            </td>
                                                            <td>${requestScope.news.updateBy}</td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            </c:if>
                                        </table>
                                        <table width="100%">
                                            <tr>
                                                <td width="100%" align="center">
                                                    <c:if test="${empty requestScope.newsId or (not empty requestScope.newsId and requestScope.sendType eq 'W')}">
                                                        <s:submit id="saveBtn" method="save" value="Save" cssClass="button" onclick="return validateForm();"/>&nbsp;
                                                        <s:submit name="resetBtn" value="Reset" cssClass="button" onClick="resetForm()"/>&nbsp;
                                                    </c:if>
                                                    <c:if test="${(not empty requestScope.newsId and ( requestScope.sendType eq 'M' or requestScope.sendType eq 'A' ) and requestScope.sendFlag eq false ) }">
                                                        <s:submit id="saveBtn" method="save" value="Save" cssClass="button" onclick="return validateForm();"/>&nbsp;
                                                        <s:submit name="resetBtn" value="Reset" cssClass="button" onClick="resetForm()"/>&nbsp;
                                                    </c:if>
                                                        <s:submit id="backBtn" method="back" value="Back" cssClass="button"/>
                                                </td>
                                            </tr>
                                        </table>
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
    <c:forEach items="${requestScope.sfiList}" var="thisSfi">
        <c:if test="${not empty thisSfi}">
            document.getElementById('${thisSfi}').checked = true;
        </c:if>
    </c:forEach>
</script>
</body>
</html>