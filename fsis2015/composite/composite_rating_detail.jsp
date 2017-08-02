<%--
  Created by IntelliJ IDEA.
  User: iRambo
  Date: 2 �.�. 2555
  Time: 19:50:27
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head><title>Simple jsp page</title>
    <script type="text/javascript" src="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.js"></script>
    <link href="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.css" rel="stylesheet"
          type="text/css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/includes/css/style.css">
</head>
<body>
<s:form action="composite_rating_detail">
<s:hidden id="id" name="id"/>
<s:hidden id="resultheader" name="resultheader" value="ผลการจัดลำดับโดยรวม"/>
<s:hidden id="choice1hearder" name="choice1hearder" value="ความเสี่ยงด้านกลยุทธ์"/>
<s:hidden id="choice2hearder" name="choice2hearder" value="ความเสี่ยงด้านเครดิต"/>
<s:hidden id="choice3hearder" name="choice3hearder" value="ความเสี่ยงด้านตลาด"/>
<s:hidden id="choice4hearder" name="choice4hearder" value="ความเสี่ยงด้านสภาพคล่อง"/>
<s:hidden id="choice5hearder" name="choice5hearder" value="ความเสี่ยงด้านปฎิบัติการ"/>
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
    <%--<table border="1">--%>
    <%--<tr>--%>
    <%--<td><b>แบบฟอร์มประเมินความเสี่ยง</b></td>--%>
    <%--</tr>--%>
    <%--</table>--%>
<table width="100%" align="center" class="displayTable">
<tr class="bgGreen1">
    <td colspan="2" align="center"><b>แบบฟอร์มประเมินความเสี่ยง</b></td>
</tr>
<tr class="bgGreen2">
    <td width="20%" height="28px" class="label">
        สถาบันการเงินเฉพาะกิจ <span class="require_field">*</span>:
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
        <%--<c:choose>--%>
            <%--<c:when test="${sessionScope.userLogin.sfi.id eq 000}">--%>
                <%--<s:select list="sfiList"--%>
                          <%--name="sfi"--%>
                          <%--headerKey=""--%>
                          <%--headerValue="------------------------------------  Please Select  ------------------------------------"--%>
                          <%--listKey="id"--%>
                          <%--listValue="displayNameCodeAndCode"/>--%>
            <%--</c:when>--%>
            <%--&lt;%&ndash;<c:otherwise>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<c:out value="${sfiName}"/>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</c:otherwise>&ndash;%&gt;--%>
        <%--</c:choose>--%>
    </td>
</tr>
<tr class="bgGreen1">
    <td class="label">
        วันที่ประเมิน <span class="require_field">*</span> :
    </td>
    <td>
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
        <s:radio list="#{'0':'อ่อน','1':'ค่อนข้างอ่อน','2':'พอใช้','3':'ค่อนข้างดี','4':'ดี'}" name="resultchoice" id="resultchoice"/>
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
<!-- [ choice1hearder ] -->

<tr class="bgGreen2">
    <td class="label" style="text-align:left;" colspan="2">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. ความเสี่ยงด้านกลยุทธ์
    </td>
</tr>
<tr class="bgGreen1">
    <td class="label">
        1.1 ระดับความเสี่ยง :
    </td>
    <td>
        <s:radio list="#{'0':'สูง','1':'ค่อนข้างสูง','2':'ปานกลาง','3':'ค่อนข้างต่ำ','4':'ต่ำ'}" name="choice11" id="choice11"/>
    </td>
</tr>
<tr class="bgGreen2">
    <td class="label">
        1.2 การจัดการ :
    </td>
    <td>
        <s:radio list="#{'0':'อ่อน','1':'ค่อนข้างอ่อน','2':'พอใช้','3':'ค่อนข้างดี','4':'ดี'}" id="choice12" name="choice12" />
    </td>
</tr>
<tr class="bgGreen1">
    <td class="label">
        1.3 แนวโน้ม :
    </td>
    <td>
        <s:radio list="#{'0':'เพิ่มขึ้น','1':'คงที่','2':'ลดลง'}" name="choice13" id="choice13"/>
    </td>
</tr>
<tr class="bgGreen2">
    <td class="label">
        หมายเหตุสำหรับความเสี่ยงด้านกลยุทธ์ :
    </td>
    <td>
        <s:textfield name="comment1" id="comment1" size="60" maxLength="256"/>
    </td>
</tr>

<!-- [ choice2hearder ] -->
<tr class="bgGreen1">
    <td class="label" style="text-align:left;" colspan="2">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. ความเสี่ยงด้านเครดิต
    </td>
</tr>
<tr class="bgGreen2">
    <td class="label">
        2.1 ระดับความเสี่ยง :
    </td>
    <td>
        <s:radio list="#{'0':'สูง','1':'ค่อนข้างสูง','2':'ปานกลาง','3':'ค่อนข้างต่ำ','4':'ต่ำ'}" name="choice21" id="choice21"/>
    </td>
</tr>
<tr class="bgGreen1">
    <td class="label">
        2.2 การจัดการ :
    </td>
    <td>
        <s:radio list="#{'0':'อ่อน','1':'ค่อนข้างอ่อน','2':'พอใช้','3':'ค่อนข้างดี','4':'ดี'}" name="choice22"
                 id="choice22"/>
    </td>
</tr>
<tr class="bgGreen2">
    <td class="label">
        2.3 แนวโน้ม :
    </td>
    <td>
        <s:radio list="#{'0':'เพิ่มขึ้น','1':'คงที่','2':'ลดลง'}" name="choice23" id="choice23"/>
    </td>
</tr>
<tr class="bgGreen1">
    <td class="label">
        หมายเหตุสำหรับความเสี่ยงด้านเครดิต :
    </td>
    <td>
        <s:textfield name="comment2" id="comment2" size="60" maxLength="256"/>
    </td>
</tr>

<!-- [ choice3hearder ] -->
<tr class="bgGreen2">
    <td class="label" style="text-align:left;" colspan="2">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3. ความเสี่ยงด้านตลาด
    </td>
</tr>
<tr class="bgGreen1">
    <td class="label">
        3.1 ระดับความเสี่ยง:
    </td>
    <td>
        <s:radio list="#{'0':'สูง','1':'ค่อนข้างสูง','2':'ปานกลาง','3':'ค่อนข้างต่ำ','4':'ต่ำ'}" name="choice31"
                 id="choice31"/>
    </td>
</tr>
<tr class="bgGreen2">
    <td class="label">
        3.2 การจัดการ :
    </td>
    <td>
        <s:radio list="#{'0':'อ่อน','1':'ค่อนข้างอ่อน','2':'พอใช้','3':'ค่อนข้างดี','4':'ดี'}" name="choice32"
                 id="choice32"/>
    </td>
</tr>
<tr class="bgGreen1">
    <td class="label">
        3.3 แนวโน้ม :
    </td>
    <td>
        <s:radio list="#{'0':'เพิ่มขึ้น','1':'คงที่','2':'ลดลง'}" name="choice33" id="choice33"/>
    </td>
</tr>
<tr class="bgGreen2">
    <td class="label">
        หมายเหตุสำหรับความเสี่ยงด้านตลาด :
    </td>
    <td>
        <s:textfield name="comment3" id="comment3" size="60" maxLength="256"/>
    </td>
</tr>


<!-- [ choice4hearder ] -->
<tr class="bgGreen1">
    <td class="label" style="text-align:left;" colspan="2">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4. ความเสี่ยงด้านสภาพคล่อง
    </td>
</tr>
<tr class="bgGreen2">
    <td class="label">
        4.1 ระดับความเสี่ยง :
    </td>
    <td>
        <s:radio list="#{'0':'สูง','1':'ค่อนข้างสูง','2':'ปานกลาง','3':'ค่อนข้างต่ำ','4':'ต่ำ'}" name="choice41"
                 id="choice41"/>
    </td>
</tr>
<tr class="bgGreen1">
    <td class="label">
        4.2 การจัดการ:
    </td>
    <td>
        <s:radio list="#{'0':'อ่อน','1':'ค่อนข้างอ่อน','2':'พอใช้','3':'ค่อนข้างดี','4':'ดี'}" name="choice42"
                 id="choice42"/>
    </td>
</tr>
<tr class="bgGreen2">
    <td class="label">
        4.3 แนวโน้ม:
    </td>
    <td>
        <s:radio list="#{'0':'เพิ่มขึ้น','1':'คงที่','2':'ลดลง'}" name="choice43" id="choice43"/>
    </td>
</tr>
<tr class="bgGreen1">
    <td class="label">
        หมายเหตุสำหรับความเสี่ยงด้านสภาพคล่อง :
    </td>
    <td>
        <s:textfield name="comment4" id="comment4" size="60" maxLength="256"/>
    </td>
</tr>
<!-- [ choice5hearder ] -->
<tr class="bgGreen2">
    <td class="label" style="text-align:left;" colspan="2">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5. ความเสี่ยงด้านปฏิบัติการ
    </td>
</tr>
<tr class="bgGreen1">
    <td class="label">
        5.1 ระดับความเสี่ยง:
    </td>
    <td>
        <s:radio list="#{'0':'สูง','1':'ค่อนข้างสูง','2':'ปานกลาง','3':'ค่อนข้างต่ำ','4':'ต่ำ'}" name="choice51"
                 id="choice51"/>
    </td>
</tr>
<tr class="bgGreen2">
    <td class="label">
        5.2 การจัดการ:
    </td>
    <td>
        <s:radio list="#{'0':'อ่อน','1':'ค่อนข้างอ่อน','2':'พอใช้','3':'ค่อนข้างดี','4':'ดี'}" name="choice52" id="choice52"/>
    </td>
</tr>
<tr class="bgGreen1">
    <td class="label">
        5.3 แนวโน้ม :
    </td>
    <td>
        <s:radio list="#{'0':'เพิ่มขึ้น','1':'คงที่','2':'ลดลง'}" name="choice53" id="choice53"/>
    </td>
</tr>
<tr class="bgGreen2">
    <td class="label">
        หมายเหตุสำหรับความเสี่ยงด้านปฏิบัติการ :
    </td>
    <td>
        <s:textfield name="comment5" id="comment5" size="60" maxLength="256"/>
    </td>
</tr>
</table>
<table width="100%">
    <tr align="center">
        <td>
            <s:submit name="ok" value="Save" method="save" cssClass="button" onclick="return validateForm()"/>&nbsp;
            <s:reset value="Reset" cssClass="button"/>&nbsp;
                <%--<button class="button" onclick="goBack(${classificationId.toString()})" name="Back">Back</button>--%>
            <s:submit name="back" value="Back" method="back" cssClass="button"/>&nbsp;
        </td>
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
<script type="text/javascript">
    var thisForm = document.getElementsByTagName('form')[0];

    function validateForm() {
        if (thisForm.sfi.selectedIndex == 0) {
            alert('Please Select SFIs Name');
            return false;
        }
        if (thisForm.conpositeRatingDate.value == '') {
            alert('Please Input วันที่ประเมิน ');
            return false;
        }
        return true;
    }
</script>
</body>
</html>