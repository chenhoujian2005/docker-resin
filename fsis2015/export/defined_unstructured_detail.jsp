<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ page import="th.go.mof.fpo.Constants" %>
<html>
<head>
  <title>Simple jsp page</title>
  <script type="text/javascript" src="../includes/js/jquery.js"></script>
  <link rel="stylesheet" type="text/css" href="../includes/css/style.css">
  <script type='text/javascript' src='../dwr/engine.js'></script>
  <script type='text/javascript' src='../dwr/util.js'></script>
  <script type='text/javascript' src='../dwr/interface/AjaxManager.js'></script>
  <script language="javascript" src="../includes/js/tp/utils.js"></script>
  <script language="javascript" src="../includes/js/tp/validate.js"></script>
  <script type="text/javascript" src="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.js"></script>
  <link href="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.css" rel="stylesheet" type="text/css">
  <script type="text/javascript">
    function resetForm() {
      <c:if test="${sessionScope.userLogin.sfi.id eq 000}">
      thisForm.organization.value = '';
      </c:if>

      //thisForm.status.value = '';
      thisForm.unstructureVersionId.value = '';
      thisForm.dataset.value = '';
      thisForm.group.value = '';
      thisForm.title.value = '';
      thisForm.subTitle.value = '';
      thisForm.subTitle2.value = '';
      thisForm.subTitle3.value = '';
      thisForm.subTitle4.value = '';
      thisForm.subTitle5.value = '';
      thisForm.subTitle6.value = '';
      thisForm.subTitle7.value = '';
        thisForm.datasetDateFrom.value = '';
        thisForm.datasetDateTo.value = '';

    }

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
    var jq = jQuery.noConflict();


    function confirmDelete(deleteId) {
      if (confirm("Do you want to delete this record ?")) {
        document.getElementById('deleteId').value = deleteId;
        return true;
      }
      return false;
    }
    function validateForm(){
        if(thisForm.datasetDateFrom.value == ''){
            alert('Please Select Dataset Date From');
            thisForm.datasetDateFrom.focus();
            return false;
        }
        if(thisForm.datasetDateTo.value == '') {
            alert('Please Select Dataset Date To');
            thisForm.datasetDateTo.focus();
            return false;
        }

        return true;
    }
  </script>
</head>
<body>
<s:form id ="defined_unstructured_detail" action="defined_unstructured_detail"  >
    <s:hidden name="id" id="id"/>
  <s:hidden name="deleteId" id="deleteId"/>
    <s:hidden name="enableStatus" id="enableStatus"/>
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
            <td width="43" background="../images/table004.gif"><img src="../images/table004.gif" width="43"
                                                                    height="37" alt=""></td>
            <td>
              <table width="100%" border="0" align="center" style="height:100%">
                <tr>
                  <td>
                      <%--content here--%>
                    <table width="100%">
                      <tr>
                        <td><b>Defined Unstructured Detail</b></td>
                          <td width="50%" align="right">
                              <c:if test="${sessionScope.menuAuthentication.definedDataManage}">
                                  <input type="button" class="button" id="btnNew" value="Add Defined Unstructured Detail" style="width:200px" onclick="letsGo('defined_unstructured_detail_input.action', '${requestScope.id}')"/>
                              </c:if>
                          </td>
                      </tr>
                    </table>
                    <table width="100%" class="displayTable">
                        <tr class="bgGreen2">
                            <td width="25%" height=30 class="label">
                                Dataset Date From :
                            </td>
                            <td width="25%">
                                <s:textfield name="datasetDateFrom" id="datasetDateFrom" readonly="true" size="8"/>
                                <%--<img alt="" border="0" src="../images/dd.gif" name="dateBtn"--%>
                                     <%--width="15" height="15"--%>
                                     <%--onclick="displayCalendar(document.forms[0].datasetDateFrom,'dd/mm/yyyy',this);"--%>
                                     <%--align="absmiddle">--%>
                            </td width="25%">
                            <td height=30 class="label">
                                Dataset Date To :
                            </td>
                            <td width="25%">
                                <s:textfield name="datasetDateTo" id="datasetDateTo" readonly="true" size="8"/>
                                <%--<img alt="" border="0" src="../images/dd.gif" name="dateBtn"--%>
                                     <%--width="15" height="15" onclick="displayCalendar(document.forms[0].datasetDateTo,'dd/mm/yyyy',this);"--%>
                                     <%--align="absmiddle">--%>
                            </td>
                        </tr>
                        <tr class="bgGreen2">
                            <td align="right" width="20%" class="label">Search By :</td>
                            <td colspan="3">
                                <s:radio name="searchBy"
                                         list="#{'G':'Group','D':'Dataset Info'}"
                                         id="searchBy"
                                         onclick="prepareZone(this.value);"/>
                            </td>
                        </tr>

                      <tr class="bgGreen1 group">
                        <td class="label">Unstructured Version :</td>
                        <td colspan="3">
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
                      <tr class="bgGreen2 group">
                        <td width="19%" height=30 align="right" class="label">Group : </td>
                        <td width="81%" colspan="3">
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
                      <tr class="bgGreen1 group">
                        <td height=30 align="right" class="label">Title : </td>
                        <td colspan="3">
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
                      <tr class="bgGreen2 group">
                        <td height=30 align="right" class="label">Subtitle : </td>
                        <td colspan="3">
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
                          <tr class="bgGreen1 group">
                            <td height=30 align="right" class="label">Subtitle2 : </td>
                            <td colspan="3">
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
                          <tr class="bgGreen1 group">
                            <td height=30 align="right" class="label">Subtitle2 :</td>
                            <td colspan="3">
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
                          <tr class="bgGreen2 group">
                            <td height=30 align="right" class="label">Subtitle3 :</td>
                            <td colspan="3">
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
                          <tr class="bgGreen2 group">
                            <td height=30 align="right" class="label">Subtitle3 : </td>
                            <td colspan="3">
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
                          <tr class="bgGreen1 group">
                            <td height=30 align="right" class="label">Subtitle4 : </td>
                            <td colspan="3">
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
                          <tr class="bgGreen1 group">
                            <td height=30 align="right" class="label">Subtitle4 : </td>
                            <td colspan="3">
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
                          <tr class="bgGreen2 group">
                            <td height=30 align="right" class="label">Subtitle5 : </td>
                            <td colspan="3">
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
                          <tr class="bgGreen2 group">
                            <td height=30 align="right" class="label">Subtitle5 : </td>
                            <td colspan="3">
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
                          <tr class="bgGreen1 group">
                            <td height=30 align="right" class="label">Subtitle6 : </td>
                            <td colspan="3">
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
                          <tr class="bgGreen1 group">
                            <td height=30 align="right" class="label">Subtitle6 : </td>
                            <td colspan="3">
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
                          <tr class="bgGreen2 group">
                            <td height=30 align="right" class="label">Subtitle7 : </td>
                            <td colspan="3">
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
                        <tr class="bgGreen1 dsInfo">
                            <td align="right" width="20%">Dataset Info :</td>
                            <td colspan="3"><s:textfield name="dataset" size="70"/><br>
                                Search group, title, subtitle. e.g. bls, bls ars.
                            </td>
                        </tr>
                        <%--<tr class="bgGreen1">--%>
                            <%--<td class="label">Status  :</td>--%>
                            <%--<td colspan="4">--%>
                                <%--<s:checkbox name="enableStatus" id="enableStatus" />  Enable  </td>--%>
                        <%--</tr>--%>
                    </table>
                    <table width="100%">
                      <tr>
                        <td width="100%" align="center">
                          <s:submit name="search" value="Search" cssClass="button" method="search"/>&nbsp;
                          <button class="button" onclick="resetForm()">Reset</button>&nbsp;
                            <s:submit name="back" value="Back" cssClass="button" method="back"/>
                        </td>
                      </tr>
                    </table>
                    <c:if test="${requestScope.objectList ne null}">
                      <display:table name="objectList" id="row"  export="false" class="displayTag" requestURI="defined_unstructured_detail.action" style="width:100%;text-align:center" pagesize="20">
                        <%--<display:column title="Dataset Date From" format="{0,date,dd MMM yyyy}"  property="datasetDateFrom" style="text-align:center;width:8%" headerClass="headerTable" sortable="true"/>--%>
                          <%--<display:column title="Dataset Date To" format="{0,date,dd MMM yyyy}"  property="datasetDateTo" style="text-align:center;width:8%" headerClass="headerTable" sortable="true"/>--%>
                        <display:column title="Version" property="version" style="text-align:center;width:5%" headerClass="headerTable" sortable="true"/>
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
                          <display:column title="Dataset ID" property="datasetId" style="text-align:center;width:5%" headerClass="headerTable"/>
                        <c:if test="${sessionScope.menuAuthentication.viewSubmittedUnstructuredManage}">
                          <display:column title="Delete" style="width:5%;text-align:center;" headerClass="headerTable">
                            <div onClick="return confirmDelete('${row.fileuploadId}');">
                              <s:submit type="image" src="../images/delete.gif" method="delete" title="Delete"/>
                            </div>
                          </display:column>
                        </c:if>
                      </display:table>
                    </c:if>
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
  function detail(fileUploadId) {
    window.open("../dataset/document_unstructured_detail.action?fileUploadId=" + fileUploadId,null,"height=700,width=900 ,resizable=1,scrollbars=1'");
  }

  function prepareZone(zone) {
    if (zone == 'G') {
      jq('.dsInfo').hide();
      jq('.group').show();
    } else {
      jq('.group').hide();
      jq('.dsInfo').show();
    }
  }
  <c:if test="${not empty(requestScope.searchBy)}">
  prepareZone('${requestScope.searchBy}');
  </c:if>

  function letsGo(action, id) {
      var ddf = document.getElementById("datasetDateFrom").value;
      var ddt = document.getElementById("datasetDateTo").value;
      var ena = document.getElementById("enableStatus").checked;

      pageLink1 = action + '?id=' + id + '&<%=Constants.DefinedDataField.DATASET_DATE_FROM_HIDDEN%>=' + ddf;
      pageLink2 = '&<%=Constants.DefinedDataField.DATASET_DATE_TO_HIDDEN%>=' + ddt;
      <%--pageLink5 = '&<%=Constants.DefinedDataField.SEND_TO_HIDDEN%>=' + st;--%>
      pageLink6 = '&<%=Constants.DefinedDataField.ENABLE_HIDDEN%>=' + ena;
      location.href = pageLink1.concat(pageLink2,pageLink6);
  }
</script>
</body>
</html>