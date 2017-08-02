<%--
  Created by IntelliJ IDEA.
  User: jrambo
  Date: 3 �.�. 2554
  Time: 15:03:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="th.go.mof.fpo.Constants" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><title>Activity Log Detail</title>
    <script type="text/javascript" src="../includes/js/jquery.js"></script>
    <script type='text/javascript' src="<%=request.getContextPath()%>/includes/js/popcalendar.js"></script>
    <LINK href="<%=request.getContextPath()%>/includes/css/popcalendar.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/includes/css/style.css">
</head>
<body>
<s:form action="report_type_detail" enctype="multipart/form-data">
    <s:hidden name="reportId" id="reportId"/>
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
                                    <td width="15%" colspan="2"><b>Report Type : Log </b></td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <table width="100%" class="displayTable">
                                            <tr class="bgGreen2">
                                                <td width="20%" class="label">Group :</td>
                                                <td width="80%">
                                                    <s:select name="group" disabled="true"
                                                              id="group"
                                                              list="groupList"
                                                              listKey="id"
                                                              listValue="name"
                                                              headerKey=""
                                                              headerValue="----------  Please Select  ----------"
                                                              cssStyle="width:270px"
                                                              onchange="findTitle(this.value,'title','id','name','subTitle','version')"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label">Title :</td>
                                                <td>
                                                    <s:select name="title" disabled="true"
                                                              id="title"
                                                              list="titleList"
                                                              listKey="id"
                                                              listValue="name"
                                                              headerKey=""
                                                              headerValue="----------  Please Select  ----------"
                                                              cssStyle="width:270px"
                                                              onchange="findTitle(this.value,'subTitle','id','name','subTitle','version');"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td class="label">Sub Title :</td>
                                                <td>
                                                    <s:select name="subTitle" disabled="true"
                                                              id="subTitle"
                                                              list="subTitleList"
                                                              listKey="id"
                                                              listValue="name"
                                                              headerKey=""
                                                              headerValue="----------  Please Select  ----------"
                                                              cssStyle="width:270px"
                                                              onchange="findDsVersion(this.value,'version','id','name');"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label">Version :</td>
                                                <td>
                                                    <s:select name="version" disabled="true"
                                                              id="version"
                                                              list="versionList"
                                                              listKey="id"
                                                              listValue="version"
                                                              headerValue="----------  Please Select  ----------"
                                                              headerKey=""
                                                              cssStyle="width:270px"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td class="label">XSL File :</td>
                                                <td>
                                                    <s:textfield name="view" id="view" cssStyle="width:500px"
                                                                 disabled="true"/>&nbsp;(for view)
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label">XSL File :</td>
                                                <td>
                                                    <s:textfield name="excel" id="excel" cssStyle="width:500px"
                                                                 disabled="true"/>&nbsp;(for convert to excel)
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td class="label">Enable :</td>
                                                <td><s:checkbox name="enable" id="enable" disabled="true"/></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">
                                        <input type="button" id="closeBtn" name="closeBtn" value="Close" class="button"
                                               onclick="window.close();"/>
                                    </td>
                                </tr>
                            </table>
                         <font style="color:red;">* เป็นข้อมูลก่อนการแก้ไข</font>
                        </td>
                        <td width="28" background="../images/table005.gif"><img src="../images/table005.gif" width="28">
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