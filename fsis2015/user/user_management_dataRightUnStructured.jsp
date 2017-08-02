<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head><title>Simple jsp page</title>
    <link rel="stylesheet" type="text/css" href="../includes/css/style.css">
    <script type='text/javascript' src='<%=request.getContextPath()%>/dwr/engine.js'></script>
    <script type='text/javascript' src='<%=request.getContextPath()%>/dwr/util.js'></script>
    <script type='text/javascript' src='<%=request.getContextPath()%>/dwr/interface/AjaxManager.js'></script>
    <script type='text/javascript' src='<%=request.getContextPath()%>/includes/js/util.js'></script>
    <script type='text/javascript' src="<%=request.getContextPath()%>/includes/js/tp/utils.js"></script>
    <script type='text/javascript' src="<%=request.getContextPath()%>/includes/js/tp/validate.js"></script>
    <script type="text/javascript">


        function selectAllDsRight() {
            var objBtn = document.user_management_dataRightUnStructured.btnSelectAllDsRight;
            var objChk = document.user_management_dataRightUnStructured.dsRight;
            var isCheck = objBtn.value == 'Select All';

            if (objChk != undefined) {
                if (objChk.length == undefined) {
                    objChk.checked = isCheck;
                } else {
                    for (var i = 0; i < objChk.length; i++) {
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

    </script>
</head>
<body>
<s:form action="user_management_dataRightUnStructured" validate="false">
    <s:hidden name="userId" id="userId"/>
    <s:hidden name="userNameHidden"/>
    <s:hidden name="thaiNameHidden"/>
    <s:hidden name="englishNameHidden"/>
    <s:hidden name="organizationHidden"/>
    <s:hidden name="roleHidden"/>
    <s:hidden name="enableHidden"/>
    <s:hidden name="disableHidden"/>

    <table width="97%" border="0" cellspacing="0" cellpadding="0"
           style="margin-left:27px;margin-top:27px;margin-right:20px">
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
                            <img src="../images/table004.gif" width="43" height="37" alt=""></td>
                        <td>
                            <table width="100%" border="0" align="center" style="height:100%">
                                <tr>
                                    <td style="height:100%">
                                            <%--content here--%>
                                        <table width=100%>
                                            <tr>
                                                <td><b>User Management Right UnStructured : Add/Edit</b></td>
                                            </tr>
                                        </table>
                                        <table width="100%" class="displayTable" border="0">
                                            <tr class="bgGreen2">
                                                <td width="19%" height=30 align="right"><b>Username :</b></td>
                                                <td width="81%"> <s:property value="username"/> </td>
                                            </tr>

                                            <tr class="bgGreen1">
                                                <td height=30 align="right"><b>Thai Name :</b></td>
                                                <td><s:property value="thaiName"/> </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td height=30 align="right"><b>English Name :</b></td>
                                                <td><s:property value="englishName"/></td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td height=30 align="right"></td>
                                                <td>
                                                    <s:submit id="saveBtn" value="Save" cssClass="button" method="save"
                                                              onclick="return validateForm();"/>&nbsp;
                                                    <s:reset name="resetBtn" value="Reset" cssClass="button"/>&nbsp;
                                                    <s:submit id="backBtn" method="back" value="Back"
                                                              cssClass="button"/>
                                                </td>
                                            </tr>
                                             <tr class="bgGreen2">
                                                <td align="right"><b>Dataset Right :</b></td>
                                                <td>
                                                    <table width="100%">
                                                        <tr>
                                                            <td width="100%" valign="top">
                                                                <table class="displayTable">
                                                                    <tr class="bgGreen1">
                                                                        <td>
                                                                            <input type="button"  id="btnSelectAllDsRight"  name="btnSelectAllDsRight"  value="Select All" onclick="selectAllDsRight()"/>
                                                                        </td>
                                                                    </tr>

                                                                    <c:forEach items="${requestScope.dsTitlesList}" var="thisDsRight" varStatus="rowCounter">
                                                                         <tr class="bgGreen1">
                                                                           <td width="30%">
                                                                               <input type="checkbox" name="dsRight"  id="${thisDsRight.unstructuredId}" value="${thisDsRight.unstructuredId}"/>${thisDsRight.name}
                                                                            </td>
                                                                         </tr>
                                                                     </c:forEach>
                                                                </table>
                                                            </td>
                                                        </tr>

                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                        <table width="100%">
                                            <tr>
                                                <td width="100%" align="center">
                                                    <s:submit id="saveBtn" value="Save" cssClass="button" method="save"
                                                              onclick="return validateForm();"/>&nbsp;
                                                    <s:reset name="resetBtn" value="Reset" cssClass="button"/>&nbsp;
                                                    <s:submit id="backBtn" method="back" value="Back"
                                                              cssClass="button"/>
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

    var isSubmit = false;
    function validateForm() {
        if (isSubmit) {
            thisForm.saveBtn.disabled = true;
            thisForm.resetBtn.disabled = true;
            thisForm.backBtn.disabled = true;
            return false;
        }
    }

    <c:if test="${not empty requestScope.dsRightList}">
    <c:forEach items="${requestScope.dsRightList}" var="thisDsRight">
    <c:if test="${not empty thisDsRight}">
    document.getElementById('${thisDsRight}').checked = true;
    </c:if>
    </c:forEach>
    </c:if>
</script>
</body>
</html>