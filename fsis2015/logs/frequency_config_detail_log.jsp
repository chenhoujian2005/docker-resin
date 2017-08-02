<%--
  Created by IntelliJ IDEA.
  User: jrambo
  Date: 9 �.�. 2554
  Time: 17:10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
  <head><title>Activity Log Detail</title>
    <link rel="stylesheet" type="text/css" href="../includes/css/style.css">
  </head>
 <body>
<s:form action="frequency_config_detail_log">
<s:hidden name="frequencyConfigMainId"/>
<s:hidden name="copy"/>
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
                                <td>
                                    <%--content here--%>
                                    <table width="100%">
                                        <tr>
                                            <td><b>Frequency Config</b></td>
                                        </tr>
                                    </table>
                                    <table width="100%" class="displayTable">
                                        <tr class="bgGreen2">
                                            <td width="25%" height=30 class="label">
                                                SFIs Name :
                                            </td>
                                            <td width="75%">
                                                <c:if test="${empty requestScope.frequencyConfigMainId}">
                                                    ${requestScope.sfiName}
                                                    <%--<s:select list="sfiList" disabled="true"--%>
                                                          <%--name="sfiDetail"--%>
                                                          <%--id="sfiDetail"--%>
                                                          <%--listKey="id"--%>
                                                          <%--listValue="nameTh"--%>
                                                          <%--headerKey=""--%>
                                                          <%--headerValue="-------------------------------------  Please Select  -------------------------------------"/>--%>
                                                </c:if>
                                                <c:if test="${not empty requestScope.frequencyConfigMainId}">
                                                    <s:hidden name="sfiDetail"/>
                                                    ${requestScope.sfiName}
                                                </c:if>
                                            </td>
                                        </tr>
                                        <tr class="bgGreen1">
                                            <td class="label">
                                                Dataset Date From :
                                            </td>
                                            <td colspan="2">
                                                <s:textfield name="dateFrom" id="dateFrom" readonly="true" size="8" disabled="true"/>
                                            </td>
                                        </tr>
                                        <tr class="bgGreen2">
                                            <td class="label">
                                                Dataset Date To :
                                            </td>
                                            <td colspan="2">
                                                <s:textfield name="dateTo" id="dateTo" readonly="true" size="8" disabled="true"/>
                                            </td>
                                        </tr>
                                    </table>
                                    <br>
                                    <display:table name="dtoList" id="row" export="false" cellpadding="0" cellspacing="1" class="displayTag" style="width:100%" pagesize="50">
                                        <display:column title="No." headerClass="headerTable" style="text-align:center;width:5%">
                                            ${row_rowNum}
                                        </display:column>
                                        <display:column title="Dataset Name" headerClass="headerTable" style="text-align:left;width:12%">
                                            <c:out value="${row.dsTitle.name}"/>
                                        </display:column>
                                        <display:column title="Frequency (Days)" headerClass="headerTable" style="text-align:center;width:20%">
                                         <select disabled="disabled" name="${row.dsTitle.id}_frequency">
                                                <c:if test="${empty row.frequency}">
                                                    <option value="0">ไม่ใช้ Dataset นี้</option>
                                                    <option value="1">รายปักษ์</option>
                                                    <option value="2">รายเดือน</option>
                                                    <option value="3">รายไตรมาส</option>
                                                    <option value="4">รายครึ่งปี</option>
                                                    <option value="7">รายปี</option>
                                                    <option value="5">เมื่อมีการเปลี่ยนแปลง</option>
                                                    <option value="6">ยังไม่มีกำหนดการส่ง</option>
                                                </c:if>
                                                <c:if test="${row.frequency eq 0}">
                                                    <option value="0">ไม่ใช้ Dataset นี้</option>
                                                    <option value="1">รายปักษ์</option>
                                                    <option value="2">รายเดือน</option>
                                                    <option value="3">รายไตรมาส</option>
                                                    <option value="4">รายครึ่งปี</option>
                                                    <option value="7">รายปี</option>
                                                    <option value="5">เมื่อมีการเปลี่ยนแปลง</option>
                                                    <option value="6">ยังไม่มีกำหนดการส่ง</option>
                                                </c:if>
                                                <c:if test="${row.frequency eq 1}">
                                                    <option value="0">ไม่ใช้ Dataset นี้</option>
                                                    <option value="1" selected="true">รายปักษ์</option>
                                                    <option value="2">รายเดือน</option>
                                                    <option value="3">รายไตรมาส</option>
                                                    <option value="4">รายครึ่งปี</option>
                                                    <option value="7">รายปี</option>
                                                    <option value="5">เมื่อมีการเปลี่ยนแปลง</option>
                                                    <option value="6">ยังไม่มีกำหนดการส่ง</option>
                                                </c:if>
                                                <c:if test="${row.frequency eq 2}">
                                                    <option value="0">ไม่ใช้ Dataset นี้</option>
                                                    <option value="1">รายปักษ์</option>
                                                    <option value="2" selected="true">รายเดือน</option>
                                                    <option value="3">รายไตรมาส</option>
                                                    <option value="4">รายครึ่งปี</option>
                                                    <option value="7">รายปี</option>
                                                    <option value="5">เมื่อมีการเปลี่ยนแปลง</option>
                                                    <option value="6">ยังไม่มีกำหนดการส่ง</option>
                                                </c:if>
                                                <c:if test="${row.frequency eq 3}">
                                                    <option value="0">ไม่ใช้ Dataset นี้</option>
                                                    <option value="1">รายปักษ์</option>
                                                    <option value="2">รายเดือน</option>
                                                    <option value="3" selected="true">รายไตรมาส</option>
                                                    <option value="4">รายครึ่งปี</option>
                                                    <option value="7">รายปี</option>
                                                    <option value="5">เมื่อมีการเปลี่ยนแปลง</option>
                                                    <option value="6">ยังไม่มีกำหนดการส่ง</option>
                                                </c:if>
                                                <c:if test="${row.frequency eq 4}">
                                                    <option value="0">ไม่ใช้ Dataset นี้</option>
                                                    <option value="1">รายปักษ์</option>
                                                    <option value="2">รายเดือน</option>
                                                    <option value="3">รายไตรมาส</option>
                                                    <option value="4" selected="true">รายครึ่งปี</option>
                                                    <option value="7">รายปี</option>
                                                    <option value="5">เมื่อมีการเปลี่ยนแปลง</option>
                                                    <option value="6">ยังไม่มีกำหนดการส่ง</option>
                                                </c:if>
                                                <c:if test="${row.frequency eq 7}">
                                                    <option value="0">ไม่ใช้ Dataset นี้</option>
                                                    <option value="1">รายปักษ์</option>
                                                    <option value="2">รายเดือน</option>
                                                    <option value="3">รายไตรมาส</option>
                                                    <option value="4">รายครึ่งปี</option>
                                                    <option value="7" selected="true">รายปี</option>
                                                    <option value="5">เมื่อมีการเปลี่ยนแปลง</option>
                                                    <option value="6">ยังไม่มีกำหนดการส่ง</option>
                                                </c:if>
                                                <c:if test="${row.frequency eq 5}">
                                                    <option value="0">ไม่ใช้ Dataset นี้</option>
                                                    <option value="1">รายปักษ์</option>
                                                    <option value="2">รายเดือน</option>
                                                    <option value="3">รายไตรมาส</option>
                                                    <option value="4">รายครึ่งปี</option>
                                                    <option value="7">รายปี</option>
                                                    <option value="5" selected="true">เมื่อมีการเปลี่ยนแปลง</option>
                                                    <option value="6">ยังไม่มีกำหนดการส่ง</option>
                                                </c:if>
                                                <c:if test="${row.frequency eq 6}">
                                                    <option value="0">ไม่ใช้ Dataset นี้</option>
                                                    <option value="1">รายปักษ์</option>
                                                    <option value="2">รายเดือน</option>
                                                    <option value="3">รายไตรมาส</option>
                                                    <option value="4">รายครึ่งปี</option>
                                                    <option value="7">รายปี</option>
                                                    <option value="5">เมื่อมีการเปลี่ยนแปลง</option>
                                                    <option value="6" selected="true">ยังไม่มีกำหนดการส่ง</option>
                                                </c:if>
                                            </select>
                                         </display:column>

                                        <c:choose>
                                            <c:when test="${row.frequency == 1}">
                                                <display:column title="Due Days" headerClass="headerTable" style="text-align:center;width:12%">
                                                    <span id="${row.dsTitle.id}_dueDayZone">
                                                        Start Day / <a href="#" onclick="viewFortnightly(${row.dsTitle.id})"><strong>view</strong></a><br/>
                                                    </span>
                                                   <c:if test="${sessionScope.menuAuthentication.frequencyManage}">
                                                        <input type="text" name="${row.dsTitle.id}_dueDay" value="${row.dueDay}" style="text-align:right;width:50px" onkeypress="return isNumberKey();" disabled="disabled"/>
                                                    </c:if>
                                                    <c:if test="${not sessionScope.menuAuthentication.frequencyManage}">
                                                        <input type="text" name="${row.dsTitle.id}_dueDay" value="${row.dueDay}" style="text-align:right;width:50px" disabled="true"/>
                                                    </c:if>
                                                </display:column>
                                                <display:column title="Alert before due date (Days)" headerClass="headerTable" style="text-align:center;width:12%">
                                                    <span id="${row.dsTitle.id}_alertBeforeZone">
                                                        Gap<br/>
                                                    </span>
                                                    <c:if test="${sessionScope.menuAuthentication.frequencyManage}">
                                                        <input type="text" name="${row.dsTitle.id}_alertBefore" value="${row.alertBefore}" style="text-align:right;width:50px" onkeypress="return isNumberKey();" disabled="disabled"/>
                                                    </c:if>
                                                    <c:if test="${not sessionScope.menuAuthentication.frequencyManage}">
                                                        <input type="text" name="${row.dsTitle.id}_alertBefore" value="${row.alertBefore}" style="text-align:right;width:50px" disabled="true"/>
                                                    </c:if>
                                                </display:column>
                                                <display:column title="Alert after due date (Days)" headerClass="headerTable" style="text-align:center;width:12%">
                                                    <span id="${row.dsTitle.id}_alertAfterZone">
                                                        Due Days<br/>
                                                    </span>
                                                    <c:if test="${sessionScope.menuAuthentication.frequencyManage}">
                                                        <input type="text" name="${row.dsTitle.id}_alertAfter" value="${row.alertAfter}" style="text-align:right;width:50px" onkeypress="return isNumberKey();" disabled="disabled"/>
                                                    </c:if>
                                                    <c:if test="${not sessionScope.menuAuthentication.frequencyManage}">
                                                        <input type="text" name="${row.dsTitle.id}_alertAfter" value="${row.alertAfter}" style="text-align:right;width:50px" disabled="true"/>
                                                    </c:if>
                                                </display:column>
                                            </c:when>
                                            <c:otherwise>
                                                <display:column title="Due Days" headerClass="headerTable" style="text-align:center;width:12%">
                                                    <span id="${row.dsTitle.id}_dueDayZone"></span>
                                                    <c:if test="${sessionScope.menuAuthentication.frequencyManage}">
                                                        <input type="text" name="${row.dsTitle.id}_dueDay" value="${row.dueDay}" style="text-align:right;width:50px" onkeypress="return isNumberKey();" disabled="disabled"/>
                                                    </c:if>
                                                    <c:if test="${not sessionScope.menuAuthentication.frequencyManage}">
                                                        <input type="text" name="${row.dsTitle.id}_dueDay" value="${row.dueDay}" style="text-align:right;width:50px" disabled="true"/>
                                                    </c:if>
                                                </display:column>
                                                <display:column title="Alert before due date (Days)" headerClass="headerTable" style="text-align:center;width:12%">
                                                    <span id="${row.dsTitle.id}_alertBeforeZone"></span>
                                                    <c:if test="${sessionScope.menuAuthentication.frequencyManage}">
                                                        <input type="text" name="${row.dsTitle.id}_alertBefore" value="${row.alertBefore}" style="text-align:right;width:50px" onkeypress="return isNumberKey();" disabled="disabled"/>
                                                    </c:if>
                                                    <c:if test="${not sessionScope.menuAuthentication.frequencyManage}">
                                                        <input type="text" name="${row.dsTitle.id}_alertBefore" value="${row.alertBefore}" style="text-align:right;width:50px" disabled="true"/>
                                                    </c:if>
                                                </display:column>
                                                <display:column title="Alert after due date (Days)" headerClass="headerTable" style="text-align:center;width:12%">
                                                    <span id="${row.dsTitle.id}_alertAfterZone"></span>
                                                    <c:if test="${sessionScope.menuAuthentication.frequencyManage}">
                                                        <input type="text" name="${row.dsTitle.id}_alertAfter" value="${row.alertAfter}" style="text-align:right;width:50px" onkeypress="return isNumberKey();" disabled="disabled"/>
                                                    </c:if>
                                                    <c:if test="${not sessionScope.menuAuthentication.frequencyManage}">
                                                        <input type="text" name="${row.dsTitle.id}_alertAfter" value="${row.alertAfter}" style="text-align:right;width:50px" disabled="true"/>
                                                    </c:if>
                                                </display:column>
                                            </c:otherwise>
                                        </c:choose>
                                        <display:column title="Alert after reject (Days)" headerClass="headerTable" style="text-align:center;width:12%">
                                            <c:if test="${sessionScope.menuAuthentication.frequencyManage}">
                                                <input type="text" name="${row.dsTitle.id}_alertAfterReject" value="${row.alertAfterReject}" style="text-align:right;width:50px" onkeypress="return isNumberKey();" disabled="disabled"/>
                                            </c:if>
                                            <c:if test="${not sessionScope.menuAuthentication.frequencyManage}">
                                                <input type="text" name="${row.dsTitle.id}_alertAfterReject" value="${row.alertAfterReject}" style="text-align:right;width:50px" disabled="true"/>
                                            </c:if>
                                        </display:column>
                                    </display:table>
                                    <table width="100%">
                                        <tr>
                                            <td width="100%" align="center">
                                                <c:if test="${sessionScope.menuAuthentication.frequencyManage}">
                                                     <input type="button" id="closeBtn" name="closeBtn" value="Close" class="button" onclick="window.close();"/>
                                                </c:if>
                                            </td>
                                        </tr>
                                    </table>
                                    <font style="color:red;">* เป็นข้อมูลก่อนการแก้ไข</font>
                                    <%--content here--%>
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
</body>
</html>