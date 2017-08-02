<%--
  Created by IntelliJ IDEA.
  User: iRambo
  Date: 2 �.�. 2555
  Time: 19:50:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ page import="th.go.mof.fpo.Constants" %>
<html>
<head><title>Simple jsp page</title>
    <script type="text/javascript" src="../includes/js/tp/utils.js"></script>
    <script type="text/javascript" src="../includes/js/tp/validate.js"></script>
    <link rel="stylesheet" type="text/css" href="../includes/css/style.css">
    <script type="text/javascript" src="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.js"></script>
    <link href="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.css" rel="stylesheet"
          type="text/css">
    <script type="text/javascript">
        function setId(id) {
            thisForm.deleteId.value = id;
        }

    </script>
</head>
<body>
<s:form action="composite_rating" id="composite_rating" name="composite_rating" validate="false">
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
                            <img src="../images/table004.gif" width="43" height="37" alt=""></td>
                        <td>
                            <table width="100%" border="0" align="center" style="height:100%">
                                <tr>
                                    <td>
                                            <%--content here--%>
                                        <table width="100%">
                                            <tr>
                                                <td colspan="2">
                                                    <b>Composite Rating and Input</b>
                                                </td>
                                                <td width="43%" align="right">
                                                        <%--<c:if test="${sessionScope.menuAuthentication.newsInformationManage}">--%>
                                                    <c:if test="${sessionScope.menuAuthentication.compositeRatingAndInputManage}">
                                                        <input type="button" id="btnNew" class="button"
                                                               value="Add Composite Rating" style="width:150px"
                                                               onclick="letsGo('composite_rating_detail.action', '',null)"/>
                                                    </c:if>
                                                </td>
                                            </tr>
                                        </table>
                                        <table width="100%" class="displayTable">
                                            <tr class="bgGreen2">
                                                <td width="20%" height="28px" class="label">
                                                    สถาบันการเงินเฉพาะกิจ :
                                                </td>
                                                <td width="80%">
                                                    <c:choose>
                                                        <c:when test="${sessionScope.userLogin.sfi.id eq 000}">
                                                            <s:select list="sfiFpoList"
                                                                      name="sfi"
                                                                      headerKey=""
                                                                      headerValue="------------------------------------  Please Select  ------------------------------------"
                                                                      listKey="id"
                                                                      listValue="displayNameCodeAndCode"/>
                                                        </c:when>
                                                        <c:otherwise>
                                                            &nbsp; ${sessionScope.userLogin.sfi.nameTh}
                                                        </c:otherwise>
                                                    </c:choose>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label">
                                                    วันที่ประเมิน :
                                                </td>
                                                <td width="20%">
                                                    <s:textfield name="conpositeRatingDate" id="conpositeRatingDate" readonly="true" size="8"/>
                                                    <img alt="" border="0" src="../images/dd.gif" name="dateBtn"
                                                         width="15" height="15"
                                                         onclick="displayCalendar(document.forms[0].conpositeRatingDate,'dd/mm/yyyy',this);"
                                                         align="absmiddle">
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td class="label">
                                                    ผลการจัดระดับโดยรวม :
                                                </td>
                                                <td>
                                                     <s:checkboxlist list="#{0:'อ่อน',1:'ค่อนข้างอ่อน',2:'พอใช้',3:'ค่อนข้างดี',4:'ดี'}" name="resultchoice" id="resultchoice"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label">
                                                    หมายเหตุสำหรับระดับโดยรวม :
                                                </td>
                                                <td>
                                                    <s:textfield id="resultcomment" name="resultcomment" size="60" maxLength="256"/>
                                                </td>
                                            </tr>
                                        </table>
                                        <table width="100%">
                                            <tr>
                                                <td width="100%" align="center">
                                                    <s:submit method="search" cssClass="button" id="btnSearch" value="Search"/>&nbsp;
                                                    <button class="button" onClick="resetFrom()">Reset</button>
                                                </td>
                                            </tr>
                                        </table>
                                        <display:table name="riskQuestionList" id="row" export="false" class="displayTag" requestURI="composite_rating.action" style="width:100%;text-align:center" pagesize="15">
                                            <display:column title="Sfi" style="text-align:center;width:10%;" headerClass="headerTable" sortable="false" sortName="version">
                                                <c:out value="${row.sfi.abbreviationTh}"/>
                                            </display:column>
                                            <display:column title="วันที่ประเมิน" property="createDate" format="{0,date,dd MMM yyyy}" style="text-align:center;width:10%;" headerClass="headerTable" sortable="false" sortName="description"/>
                                            <display:column title="ผลการจัดระดับโดยรวม" style="text-align:center;width:15%;" headerClass="headerTable" sortable="false" sortName="effectiveDate">
                                                <c:choose>
                                                    <c:when test="${row.resultchoice eq 0}"> อ่อน </c:when>
                                                    <c:when test="${row.resultchoice eq 1}"> ค่อนข้างอ่อน </c:when>
                                                    <c:when test="${row.resultchoice eq 2}"> พอใช้ </c:when>
                                                    <c:when test="${row.resultchoice eq 3}"> ค่อนข้างดี </c:when>
                                                    <c:when test="${row.resultchoice eq 4}"> ดึ </c:when>
                                                    <c:otherwise> - </c:otherwise>
                                                </c:choose>
                                            </display:column>
                                            <display:column title="หมายเหตุสำหรับระดับโดยรวม" property="resultcomment" style="text-align:left;width:35%;" headerClass="headerTable" sortable="false" sortName="resultcomment"/>
                                            <%--<c:if test="${true}">--%>
                                            <c:if test="${sessionScope.menuAuthentication.compositeRatingAndInputManage}">
                                                <display:column title="Edit" headerClass="headerTable" style="text-align:center;width:10%">
                                                    <img src=../images/edit.gif border="no" align="" onclick="letsGo('composite_rating_detail.action','${row.id}')" style="cursor:pointer">
                                                </display:column>
                                                <display:column title="Delete" headerClass="headerTable" style="text-align:center;width:10%">
                                                    <div onMouseOver="setId('${row.id}');">
                                                        <s:submit method="delete" type="image" src="../images/delete.gif" onclick="return confirm('Do you want to delete this record ?')" title="Delete"/>
                                                    </div>
                                                </display:column>
                                            </c:if>
                                        </display:table>
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
<script type="text/javascript">
    var thisForm = document.getElementsByTagName('form')[0];

    function letsGo(action, id) {
        //  var sfi = document.getElementById("sfi").value;
        pageLink1 = action + '?id=' + id;
        location.href = pageLink1;
    }

    function resetFrom() {
        thisForm.sfi.selectedIndex = 0;
        thisForm.conpositeRatingDate.value = '';
        thisForm.resultcomment.value = '';
        var objChk = thisForm.resultchoice;
        for (var i = 0; i < objChk.length; i ++) {
            objChk[i].checked = false;
        }
    }

</script>
</body>
</html>