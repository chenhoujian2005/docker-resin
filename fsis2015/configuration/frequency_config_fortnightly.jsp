<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<html>
<head>
<title>Specialized Financial Institutions Information System</title>
<link rel="stylesheet" type="text/css" href="../includes/css/style.css">
<script language="javascript" src="../includes/js/popcalendar.js"></script>
<LINK href="../includes/css/popcalendar.css" rel="stylesheet" type="text/css">
<script type='text/javascript' src='<%=request.getContextPath()%>/includes/js/util.js'></script>
<script type="text/javascript">
    <c:if test="${requestScope.close}">
        window.close();
    </c:if>
</script>
</head>
<body>
<s:form action="frequency_config_fortnightly">
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
                        <td width="43" height="205" background="../images/table004.gif"><img src="../images/table004.gif" width="43"  height="37" alt=""></td>
                        <td>
                            <table width="100%" border="0" align="center" style="height:100%">
                                <tr>
                                    <td style="height:100%">
                                         <%--content here--%>
                                        <table width="100%" class="displayTable">
                                            <tr class="bgGreen2">
                                                <td align="right" class="label" width="25%">
                                                    Dataset Name :
                                                </td>
                                                <td align="left" width="25%">
                                                    <s:property value="dsName"/>
                                                </td>
                                                <td align="right" class="label" width="25%">
                                                    Start Day :
                                                </td>
                                                <td align="left" width="25%">
                                                    <s:property value="startDay"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td align="right" class="label">
                                                    Dataset Date From :
                                                </td>
                                                <td align="left">
                                                    <s:property value="beginDate"/>
                                                </td>
                                                <td align="right" class="label">
                                                    Gap :
                                                </td>
                                                <td align="left">
                                                    <s:property value="gap"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td align="right" class="label">
                                                    Dataset Date To :
                                                </td>
                                                <td align="left">
                                                    <s:property value="endDate"/>
                                                </td>
                                                <td align="right" class="label">
                                                    Due Days :
                                                </td>
                                                <td align="left">
                                                    <s:property value="dueDay"/>
                                                </td>
                                            </tr>
                                        </table>
                                        <br>
                                        <div align="center">
                                            <input type="button" value="Close" onClick="window.close()" class="button"/>
                                        </div>
                                    </td>
                                    <td width="20px">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td height="50" style="height:100%">
                                            <display:table name="dateList" id="row" export="false" class="displayTag" requestURI="frequency_config_fortnightly.action" style="width:100%;text-align:center" pagesize="20">
                                            <display:column title="Dataset Date" style="text-align:center;width:50%" headerClass="headerTable">${row.key}</display:column>
                                            <display:column title="Due Date" style="text-align:center;width:50%" headerClass="headerTable">${row.value}</display:column>
                                            </display:table>
                                    </td>
                                    <td>&nbsp;</td>
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
</script>
</body>
</html>