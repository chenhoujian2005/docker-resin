<%--
  Created by IntelliJ IDEA.
  User: jrambo
  Date: 8 �.�. 2554
  Time: 11:34:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<html>
  <head><title>Activity Log Detail</title>
  <link rel="stylesheet" type="text/css" href="../includes/css/style.css">
  </head>
 <body>
<s:form action="cross_validation_log" validate="false">
<s:hidden name="id"/>
<s:hidden name="dsVersionId"/>
<s:hidden name="deleteId"/>
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
<table width="100%" border="0" cellpadding="0" cellspacing="0" >
<tr>
<td width="43" background="../images/table004.gif">
    <img src="../images/table004.gif" width="43" height="37" alt="">
</td>
<td>
    <table width="100%" border="0" align="center" style="height:100%" >
        <tr>
            <td colspan="2">
                <strong>Cross Validation Script</strong> ${requestScope.datasetName} (${requestScope.version})
            </td>
        </tr>
    </table>
    <table width="100%" class="displayTable">
        <tr class="bgGreen2">
            <td width="15%" class="label">Dataset Name :</td>
            <td width="85%">
                <s:select list="dsTitleList" disabled="true"  
                          name="dsTitle"
                          listKey="id"
                          listValue="name"
                          headerKey=""
                          headerValue="-  Please Select  -"
                          onchange="findVersion(this.value)"/>
            </td>
        </tr>
        <tr class="bgGreen1">
            <td class="label">Script :</td>
            <td>
                <s:textarea rows="18" cssStyle="width:650px" name="script" disabled="true"/>
            </td>
        </tr>
    </table>
    <table width="100%">
        <tr>
            <td width="100%" align="center">
                <input type="button" id="closeBtn" name="closeBtn" class="button" value="Close" onclick="window.close();"/>
            </td>
        </tr>
    </table>
    <font style="color:red;">* เป็นข้อมูลก่อนการแก้ไข</font>
    <%--<display:table name="crossValidationList" id="row" export="false" class="displayTag" requestURI="cross_validation.action" style="width:100%;text-align:center" pagesize="15">
        <display:column title="Dataset Name" style="width:20%;text-align:center" headerClass="headerTable" sortable="true">
            ${row.dsTitle.name}
        </display:column>
        <display:column title="Update Date" property="updateDate" format="{0,date,dd MMM yyyy HH:mm}" style="width:20%;text-align:center" headerClass="headerTable" sortable="true"/>
        <display:column title="Update By" style="width:20%;text-align:center" headerClass="headerTable" sortable="true">
            ${row.updateBy}
        </display:column>
    </display:table> --%>
</td>
<td width="28" background="../images/table005.gif">
    <img src="../images/table005.gif" width="28" height="37" alt=""></td>
</tr>
<tr>
    <td><img src="../images/table006.gif" width="43" height="23" alt=""></td>
    <td background="../images/table007.gif"></td>
    <td><img src="../images/table008.gif" width="28" height="23" alt=""></td>
</tr>
</table>
</td>
</tr>
</table>
</s:form>
</html>