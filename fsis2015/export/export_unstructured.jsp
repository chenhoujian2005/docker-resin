<%@ page import="th.go.mof.fpo.Constants" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<html>
<head>
  <title>Simple jsp page</title>
    <link rel="stylesheet" type="text/css" href="../includes/css/style.css">
  <script type="text/javascript" src="../includes/js/jquery.js"></script>
    <script type="text/javascript" src="../includes/js/ui.core.js"></script>
  <script type='text/javascript' src='../dwr/engine.js'></script>
  <script type='text/javascript' src='../dwr/util.js'></script>
  <script type='text/javascript' src='../dwr/interface/AjaxManager.js'></script>
  <script language="javascript" src="../includes/js/tp/utils.js"></script>
  <script language="javascript" src="../includes/js/tp/validate.js"></script>
  <script type="text/javascript" src="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.js"></script>
  <link href="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.css" rel="stylesheet" type="text/css">

  <script type="text/javascript">


    function findGroup(id, zone, keyName, keyValue, clearZones) {
      var right = document.getElementById('unstructuredRight').value;
      AjaxManager.findGroupListByVersion(right,id , function (data) {
        prepareOption(zone, data, keyName, keyValue, clearZones);
      });
    }


    function findTitle(id, zone, keyName, keyValue, clearZones) {
      var unstructuredRight = document.getElementById('unstructuredRight').value;
      AjaxManager.findUnstructuredTitleByRight(id,unstructuredRight, function (data) {
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

    }

  </script>

</head>
<body>
<s:form action="export_unstructured" id="export_unstructured">
  <s:hidden name="unstructuredRight" id="unstructuredRight" />
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
                        <td><b>Export Data Unstructured</b></td>
                      </tr>
                    </table>
                    <table width="100%" class="displayTable">
                      <tr class="bgGreen2">
                        <td class="label">SFIs Name :</td>
                        <td colspan="3">
                          <c:if test="${sessionScope.userLogin.sfi.id eq 000}">
                            <s:textfield name="organization" id="organization" size="70"/><br>
                            Search SFIs name. e.g. gsb,ghb.
                          </c:if>
                          <c:if test="${sessionScope.userLogin.sfi.id ne 000}">
                            <s:hidden name="sfi"/>${requestScope.sfiName}
                          </c:if>
                        </td>
                      </tr>

                      <tr class="bgGreen1">
                        <td class="label">Unstructured Version :</td>
                        <td colspan="4">
                          <s:select list="unstructureVersionList"
                                    name="unstructureVersionId"
                                    id="unstructureVersionId"
                                    listKey="id"
                                    listValue="description"
                                    headerKey=""
                                    headerValue="-------- Please Select --------"
                                    onchange="findGroup(this.value,'group','id','name');"/>
                        </td>
                      </tr>
                      <tr class="bgGreen2">
                        <td width="19%" height=30 align="right" class="label">Group : </td>
                        <td width="81%" colspan="4">
                          <s:select list="groupList"
                                    name="group"
                                    listKey="unstructuredId"
                                    listValue="name"
                                    headerKey=""
                                    headerValue="------------  Please Select  ------------"
                                    id="group"
                                    onchange="findTitle(this.value,'title','id','name');"/>
                        </td>
                      </tr>
                      <tr class="bgGreen1">
                        <td height=30 align="right" class="label">Title : </td>
                        <td colspan="4">
                          <s:select list="titleList"
                                    name="title"
                                    listKey="unstructuredId"
                                    listValue="name"
                                    headerKey=""
                                    headerValue="------------  Please Select  ------------"
                                    id="title"
                                    onchange="findTitle(this.value,'subTitle','id','name');"/>
                        </td>
                      </tr>
                      <tr class="bgGreen2">
                        <td height=30 align="right" class="label">Subtitle : </td>
                        <td colspan="4">
                          <s:select list="subTitleList"
                                    name="subTitle"
                                    listKey="unstructuredId"
                                    listValue="name"
                                    headerKey=""
                                    headerValue="------------  Please Select  ------------"
                                    id="subTitle"
                                    onchange="findTitle(this.value,'subTitle2','id','name');"/>
                        </td>
                      </tr>
                      <c:choose>
                        <c:when test="${level eq 3}">
                          <tr class="bgGreen1">
                            <td height=30 align="right" class="label">Subtitle2 : </td>
                            <td colspan="4">
                              <s:select list="subTitle2List"
                                        name="subTitle2"
                                        listKey="unstructuredId"
                                        listValue="name"
                                        headerKey=""
                                        headerValue="------------  Please Select  ------------"
                                        id="subTitle2"/>
                            </td>
                          </tr>
                        </c:when>
                        <c:when test="${level > 3}">
                          <tr class="bgGreen1">
                            <td height=30 align="right" class="label">Subtitle2 :</td>
                            <td colspan="4">
                              <s:select list="subTitle2List"
                                        name="subTitle2"
                                        listKey="unstructuredId"
                                        listValue="name"
                                        headerKey=""
                                        headerValue="------------  Please Select  ------------"
                                        id="subTitle2"
                                        onchange="findTitle(this.value,'subTitle3','id','name');"/>
                            </td>
                          </tr>
                        </c:when>
                      </c:choose>
                      <c:choose>
                        <c:when test="${level eq 4}">
                          <tr class="bgGreen2">
                            <td height=30 align="right" class="label">Subtitle3 :</td>
                            <td colspan="4">
                              <s:select list="subTitle3List"
                                        name="subTitle3"
                                        listKey="unstructuredId"
                                        listValue="name"
                                        headerKey=""
                                        headerValue="------------  Please Select  ------------"
                                        id="subTitle3"/>
                            </td>
                          </tr>
                        </c:when>
                        <c:when test="${level > 4}">
                          <tr class="bgGreen2">
                            <td height=30 align="right" class="label">Subtitle3 : </td>
                            <td colspan="4">
                              <s:select list="subTitle3List"
                                        name="subTitle3"
                                        listKey="unstructuredId"
                                        listValue="name"
                                        headerKey=""
                                        headerValue="------------  Please Select  ------------"
                                        id="subTitle3"
                                        onchange="findTitle(this.value,'subTitle4','id','name');"/>
                            </td>
                          </tr>
                        </c:when>
                      </c:choose>
                      <c:choose>
                        <c:when test="${level eq 5}">
                          <tr class="bgGreen1">
                            <td height=30 align="right" class="label">Subtitle4 : </td>
                            <td colspan="4">
                              <s:select list="subTitle4List"
                                        name="subTitle4"
                                        listKey="unstructuredId"
                                        listValue="name"
                                        headerKey=""
                                        headerValue="------------  Please Select  ------------"
                                        id="subTitle4"/>
                            </td>
                          </tr>
                        </c:when>
                        <c:when test="${level > 5}">
                          <tr class="bgGreen1">
                            <td height=30 align="right" class="label">Subtitle4 : </td>
                            <td colspan="4">
                              <s:select list="subTitle4List"
                                        name="subTitle4"
                                        listKey="unstructuredId"
                                        listValue="name"
                                        headerKey=""
                                        headerValue="------------  Please Select  ------------"
                                        id="subTitle4"
                                        onchange="findTitle(this.value,'subTitle5','id','name');"/>
                            </td>
                          </tr>
                        </c:when>
                      </c:choose>
                      <c:choose>
                        <c:when test="${level eq 6}">
                          <tr class="bgGreen2">
                            <td height=30 align="right" class="label">Subtitle5 : </td>
                            <td colspan="4">
                              <s:select list="subTitle5List"
                                        name="subTitle5"
                                        listKey="unstructuredId"
                                        listValue="name"
                                        headerKey=""
                                        headerValue="------------  Please Select  ------------"
                                        id="subTitle5"/>
                            </td>
                          </tr>
                        </c:when>
                        <c:when test="${level > 6}">
                          <tr class="bgGreen2">
                            <td height=30 align="right" class="label">Subtitle5 : </td>
                            <td colspan="4">
                              <s:select list="subTitle5List"
                                        name="subTitle5"
                                        listKey="unstructuredId"
                                        listValue="name"
                                        headerKey=""
                                        headerValue="------------  Please Select  ------------"
                                        id="subTitle5"
                                        onchange="findTitle(this.value,'subTitle6','id','name');"/>
                            </td>
                          </tr>
                        </c:when>
                      </c:choose>
                      <c:choose>
                        <c:when test="${level eq 7}">
                          <tr class="bgGreen1">
                            <td height=30 align="right" class="label">Subtitle6 : </td>
                            <td colspan="4">
                              <s:select list="subTitle6List"
                                        name="subTitle6"
                                        listKey="unstructuredId"
                                        listValue="name"
                                        headerKey=""
                                        headerValue="------------  Please Select  ------------"
                                        id="subTitle6"/>
                            </td>
                          </tr>
                        </c:when>
                        <c:when test="${level > 7}">
                          <tr class="bgGreen1">
                            <td height=30 align="right" class="label">Subtitle6 : </td>
                            <td colspan="4">
                              <s:select list="subTitle6List"
                                        name="subTitle6"
                                        listKey="unstructuredId"
                                        listValue="name"
                                        headerKey=""
                                        headerValue="------------  Please Select  ------------"
                                        id="subTitle6"
                                        onchange="findTitle(this.value,'subTitle7','id','name');"/>
                            </td>
                          </tr>
                        </c:when>
                      </c:choose>
                      <c:choose>
                        <c:when test="${level eq 8}">
                          <tr class="bgGreen2">
                            <td height=30 align="right" class="label">Subtitle7 : </td>
                            <td colspan="4">
                              <s:select list="subTitle7List"
                                        name="subTitle7"
                                        listKey="unstructuredId"
                                        listValue="name"
                                        headerKey=""
                                        headerValue="------------  Please Select  ------------"
                                        id="subTitle7"/>
                            </td>
                          </tr>
                        </c:when>
                      </c:choose>
                      <tr class="bgGreen2">
                        <td class="label">Reference No :</td>
                        <td colspan="3">
                          <s:textfield name="refNo" id="refNo" size="20"/><br>
                        </td>
                      </tr>
                      <tr class="bgGreen1">
                        <td class="label" align="right" width="20%">Dataset Date From :</td>
                        <td width="28%">
                          <s:textfield name="dateFrom" id="dateFrom" readonly="true" size="8"/>
                          <img alt="" border="0" src="../images/dd.gif" name="dateBtn"
                               width="15" height="15"
                               onclick="displayCalendar(document.forms[0].dateFrom,'dd/mm/yyyy',this,false);"
                               align="absmiddle">
                        </td>
                        <td class="label" align="right" width="5%">To :</td>
                        <td width="55%">
                          <s:textfield name="dateTo" id="dateTo" readonly="true" size="8"/>
                          <img alt="" border="0" src="../images/dd.gif" name="dateBtn"
                               width="15" height="15"
                               onclick="displayCalendar(document.forms[0].dateTo,'dd/mm/yyyy',this);"
                               align="absmiddle">
                        </td>
                      </tr>
                      <%--<tr class="bgGreen2">--%>
                        <%--<td class="label">Send To :</td>--%>
                        <%--<td colspan="3">--%>
                          <%--<s:radio list="#{'':'All','BOT':'BOT','SEPO':'SEPO'}" name="sendTo"/>--%>
                        <%--</td>--%>
                      <%--</tr>--%>
                      <tr class="bgGreen2">
                        <td class="label">Sending Time Start :</td>
                        <td>
                          <s:textfield name="dateStartTime" id="dateStartTime" size="8" readonly="true"/>
                          <img alt="" border="0" src="../images/dd.gif" name="dateBtn"
                               width="15" height="15"
                               onclick="displayCalendar(document.forms[0].dateStartTime,'dd/mm/yyyy',this);"
                               align="absmiddle">
                          <s:select list="hourList" name="sendingHour" id="sendingHour"/> :
                          <s:select list="minuteList" name="sendingMin" id="sendingMin"/> (Hour:Min)
                        </td>
                        <td class="label"> End :</td>
                        <td>
                          <s:textfield name="dateEndTime" id="dateEndTime" readonly="true" size="8"/>
                          <img alt="" border="0" src="../images/dd.gif" name="dateBtn"
                               width="15" height="15"
                               onclick="displayCalendar(document.forms[0].dateEndTime,'dd/mm/yyyy',this);"
                               align="absmiddle">
                          <s:select list="hourList" name="sendingHourTo"/> :
                          <s:select list="minuteList" name="sendingMinTo"/> (Hour:Min)
                        </td>
                      </tr>
                      <tr class="bgGreen1">
                        <td class="label">Export Date From :</td>
                        <td>
                          <s:textfield name="dateExport" id="dateExport" readonly="true" size="8"/>
                          <img alt="" border="0" src="../images/dd.gif" name="dateBtn"
                               width="15" height="15"
                               onclick="displayCalendar(document.forms[0].dateExport,'dd/mm/yyyy',this);"
                               align="absmiddle">
                          <s:select list="hourList" name="exportHour"/> :
                          <s:select list="minuteList" name="exportMin"/> (Hour:Min)
                        </td>
                        <td class="label">To:</td>
                        <td colspan="3">
                          <s:textfield name="dateExportTo" id="dateExportTo" readonly="true" size="8"/>
                          <img alt="" border="0" src="../images/dd.gif" name="dateBtn"
                               width="15" height="15"
                               onclick="displayCalendar(document.forms[0].dateExportTo,'dd/mm/yyyy',this);"
                               align="absmiddle">
                          <s:select list="hourList" name="exportHourTo"/> :
                          <s:select list="minuteList" name="exportMinTo"/> (Hour:Min)
                        </td>
                      </tr>
                      <tr class="bgGreen2">
                        <td class="label">Sending Status :</td>
                        <td colspan="3"><s:radio list="#{'':'All','Send Success':'Success','Fail':'Fail'}" name="sendStatus"/></td>
                      </tr>

                        <%--<tr class="bgGreen1">--%>
                        <%--<td class="label" align="right">Sending Status</td>--%>
                        <%--<td colspan="3">--%>
                        <%--<s:radio name="sendStatus" list="#{'NS':'Not Send','SN':'Send Already'}"/>--%>
                        <%--</td>--%>
                        <%--</tr>--%>
                    </table>
                    <table width="100%">
                      <tr>
                        <td width="100%" align="center">
                          <s:submit method="search" cssClass="button" value="Search" />&nbsp;
                          <button class="button" onclick="resetForm()">Reset</button>

                        </td>
                      </tr>
                    </table>
                    <c:if test="${requestScope.resendFlag eq 'false'}">
                      <b><font color="red">Please select Dataset.</font></b>
                    </c:if>
                    <c:if test="${requestScope.exportUnstructureLogDtoList ne null}">
                      <button type="button" class="button" style="width:100px;" id="check_all">Check All</button> &nbsp;&nbsp; <button type="button" class="button" style="width:100px;" id="uncheck_all">Uncheck All</button> &nbsp;&nbsp;
                      <s:submit method="resend" cssClass="button" value="Resend"/>
                      <br/><br/>
                      <display:table name="exportUnstructureLogDtoList" id="row" class="displayTag" requestURI="export_unstructured.action" style="width:100%" pagesize="15">
                        <display:column headerClass="headerTable" style="width:2%;text-align:center">
                          <input type="checkbox" name="exportLogId" value="${row.exportId}"/>
                        </display:column>
                        <display:column title="SFI" property="sfiName" headerClass="headerTable" style="width:8%;text-align:left"/>
                          <display:column title="Unstructured Title" style="text-align:left;width:30%" headerClass="headerTable" sortable="true">
                          <%--<a href="javascript:" onclick="detail('${row.fileuploadId}')">--%>
                          <c:choose>
                              <c:when test="${row.title eq null}">
                                  ${row.group}
                              </c:when>
                              <c:when test="${row.subTitle eq null}">
                                  ${row.title}<br>
                                  &nbsp;&nbsp;&nbsp;&nbsp;${row.group}
                              </c:when>
                              <c:when test="${row.subTitle1 eq null}">
                                  ${row.subTitle}<br>
                                  &nbsp;&nbsp;&nbsp;&nbsp;${row.title}<br>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.group}
                              </c:when>
                              <c:when test="${row.subTitle2 eq null}">
                                  ${row.subTitle1}<br>
                                  &nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle}<br>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.title}<br>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.group}
                              </c:when>
                              <c:when test="${row.subTitle3 eq null}">
                                  ${row.subTitle2}<br>
                                  &nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle1}<br>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle}<br>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.title}<br>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.group}
                              </c:when>
                              <c:when test="${row.subTitle4 eq null}">
                                  ${row.subTitle3}<br>
                                  &nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle2}<br>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle1}<br>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle}<br>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.title}<br>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.group}
                              </c:when>
                              <c:when test="${row.subTitle5 eq null}">
                                  ${row.subTitle4}<br>
                                  &nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle3}<br>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle2}<br>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle1}<br>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle}<br>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.title}<br>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.group}
                              </c:when>
                              <c:when test="${row.subTitle6 eq null}">
                                  ${row.subTitle5}<br>
                                  &nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle4}<br>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle3}<br>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle2}<br>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle1}<br>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle}<br>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.title}<br>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.group}
                              </c:when>
                              <c:otherwise>
                                  ${row.subTitle6}<br>
                                  &nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle5}<br>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle4}<br>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle3}<br>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle2}<br>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle1}<br>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.subTitle}<br>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.title}<br>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${row.group}
                              </c:otherwise>
                          </c:choose>
                              <%--</a>--%>
                          </display:column>
                        <display:column title="Unstructured Version" property="version" headerClass="headerTable" style="width:7%;text-align:center"/>
                        <display:column title="DS Date" property="dsDate" format="{0,date,dd MMM yyyy}" headerClass="headerTable" style="width:10%;text-align:center"/>
                        <%--<display:column title="Send To" property="sendTo" headerClass="headerTable" style="width:7%;text-align:center"/>--%>
                        <display:column title="Export Date" property="exportDate" format="{0,date,dd MMM yyyy HH:mm}" headerClass="headerTable" style="width:10%;text-align:center"/>
                        <display:column title="Sending Time" headerClass="headerTable" style="width:15%;text-align:center">
                          <fmt:formatDate value="${row.startTime}" pattern="dd MMM yyyy HH:mm:ss"/> - <fmt:formatDate value="${row.endTime}" pattern="HH:mm:ss"/>
                        </display:column>
                        <display:column title="File Size (KB)" headerClass="headerTable" style="width:8%;text-align:right">
                          <fmt:formatNumber value="${row.fileSize}" pattern="#,###"/>
                        </display:column>
                        <display:column title="Reference No." property="returnReferenceNo" headerClass="headerTable" style="width:10%;text-align:center"/>
                        <display:column title="Sending Status" property="sendingStatus" headerClass="headerTable" style="width:10%;text-align:left"/>
                        <display:column title="Sending Remark" property="sendingRemark" headerClass="headerTable" style="width:15%;text-align:left"/>
                        <display:column title="Resend Flag" property="resendRequestFlag" headerClass="headerTable" style="width:4%;text-align:center"/>
                          <display:column title="File Name" property="fileName" headerClass="headerTable" style="width:4%;text-align:left"/>
                      </display:table>
                    </c:if>
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
  function resetForm() {
      <c:if test="${sessionScope.userLogin.sfi.id eq 000}">
      thisForm.organization.value = '';
      </c:if>
      thisForm.unstructureVersionId.value = '';
      thisForm.dataset.value = '';
      thisForm.group.value = '';
      thisForm.title.value = '';
      thisForm.refNo.value = '';
      thisForm.subTitle.value = '';
      thisForm.subTitle2.value = '';
      thisForm.subTitle3.value = '';
      thisForm.subTitle4.value = '';
      thisForm.subTitle5.value = '';
      thisForm.subTitle6.value = '';
      thisForm.subTitle7.value = '';
      thisForm.dateFrom.value = '';
      thisForm.dateTo.value = '';
      thisForm.dateStartTime.value = '';
      thisForm.dateEndTime.value = '';
      thisForm.sendStatus[0].checked = true;
      thisForm.sendingHour.selectedIndex = '00';
      thisForm.sendingMin.selectedIndex = '00';
      thisForm.sendingHourTo.selectedIndex = '00';
      thisForm.sendingMinTo.selectedIndex = '59';
      thisForm.exportHour.selectedIndex = '00';
      thisForm.exportMin.selectedIndex = '00';
      thisForm.exportHourTo.selectedIndex = '00';
      thisForm.exportMinTo.selectedIndex = '59';

  }

  $(function() {
      $('#check_all').click(function() {
          $('input:checkbox').each(function(index) {
              $(this).attr('checked', true);
          });
      });

      $('#uncheck_all').click(function() {
          $('input:checkbox').each(function(index) {
              $(this).attr('checked', false);
          });
      });
  });

</script>
</body>
</html>
