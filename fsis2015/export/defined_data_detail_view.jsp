<%--
  Created by IntelliJ IDEA.
  User: Witsanu
  Date: 06 มิ.ย. 2557
  Time: 09:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<html>
<head>
    <title>Simple jsp page</title>
    <link rel="stylesheet" type="text/css" href="../includes/css/style.css">
    <script type="text/javascript" src="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.js"></script>
    <link href="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.css" rel="stylesheet" type="text/css">

</head>
<body>
<s:form action="defined_data_detail_view" id="defined_data_detail_view">
    <s:hidden name="id"/>
    <s:hidden name="datasetDateToHidden"/>
    <s:hidden name="datasetDateFromHidden"/>
    <s:hidden name="effectiveDateFromHidden"/>
    <s:hidden name="effectiveDateToHidden"/>
    <s:hidden name="sendToHidden"/>
    <s:hidden name="enableHidden"/>
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
                                    <td>
                                            <%--content here--%>
                                        <table width="100%">
                                            <tr>
                                                <td><b>Definded Data </b></td>
                                            </tr>
                                        </table>

                                        <table width="100%" class="displayTable">
                                            <tr class="bgGreen2">
                                                <td width="25%" height=30 class="label">
                                                    Dataset Date From<span class="require_field">*</span> :
                                                </td>
                                                <td width="25%">
                                                    ${datasetDateFrom}
                                                </td width="25%">
                                                <td height=30 class="label">
                                                    Dataset Date To<span class="require_field">*</span> :
                                                </td>
                                                <td width="25%">
                                                    ${datasetDateTo}
                                                </td>
                                            </tr>

                                            <tr class="bgGreen1">
                                                <td class="label">Send To<span class="require_field">*</span> :</td>
                                                <td colspan="3">
                                                    <s:radio list="#{'B':'BOT','S':'SEPO'}" name="sendTo" disabled="true"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td class="label">Status For Export<span class="require_field">*</span> :</td>
                                                <td colspan="3">
                                                    <s:radio list="#{'PKB':'Passed Key Basic','PCX':'Passed Complex','PCS':'Passed Cross'}" name="statusForExport" disabled="true"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label">Status  :</td>
                                                <td colspan="3">
                                                    <s:checkbox name="enable" id="enable" disabled="true"/>  Enable </td>
                                            </tr>
                                        </table>
                                        <br/>
                                        <display:table name="dtoList" id="row" export="false" class="displayTag" requestURI="defined_data_detail.action" style="width:40%;text-align:center">
                                            <display:column title="" style="width:20%;text-align:center" headerClass="headerTable">
                                                <c:if test="${row.selected}">
                                                    <input type="checkbox" name="seletedIds" checked="true" value="${row.dsTitle.id}" disabled/>
                                                </c:if>
                                                <c:if test="${not row.selected}">
                                                    <input type="checkbox" name="seletedIds" value="${row.dsTitle.id}" disabled/>
                                                </c:if>
                                            </display:column>
                                            <display:column title="Dataset Name" property="dsTitle.name" style="width:80%;text-align:center" headerClass="headerTable"/>
                                        </display:table>
                                        <table width="100%">
                                            <tr>
                                                <td width="100%" align="center">
                                                    <s:submit name="back" value="Back" cssClass="button" method="back"/>
                                                </td>
                                            </tr>
                                        </table>
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
</script>
</body>
</html>
