<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
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
      thisForm.unstructureVersionId.value = '';
      thisForm.group.value = '';
      thisForm.title.value = '';
      thisForm.subTitle.value = '';
      thisForm.subTitle2.value = '';
      thisForm.subTitle3.value = '';
      thisForm.subTitle4.value = '';
      thisForm.subTitle5.value = '';
      thisForm.subTitle6.value = '';
      thisForm.subTitle7.value = '';

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
        document.getElementById(zone).options[0] = new Option('----------  Please Select  ----------', '');
        dwr.util.addOptions(zone, data, keyName, keyValue);
        if (clearZones != null) {
            for (var i = 0; i < clearZones.length; i++) {
                dwr.util.removeAllOptions(clearZones[i]);
                document.getElementById(clearZones[i]).options[0] = new Option('----------  Please Select  ----------', '');
            }
        }
        var level =${requestScope.level};
        if( level > 2 ){
            validateRequireField('subTitle', 'subTitleRequire');
        }
        if( level > 3 ){
            validateRequireField('subTitle2', 'subTitleRequire2');
        }
        if( level > 4 ) {
            validateRequireField('subTitle3', 'subTitleRequire3');
        }
        if( level > 5 ) {
            validateRequireField('subTitle4', 'subTitleRequire4');
        }
        if( level > 6 ) {
            validateRequireField('subTitle5', 'subTitleRequire5');
        }
        if( level > 7 ) {
            validateRequireField('subTitle6', 'subTitleRequire6');
        }
        if( level > 8 ) {
            validateRequireField('subTitle7', 'subTitleRequire7');
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

  </script>
</head>
<body>
<s:form id ="defined_unstructured_detail_input" action="defined_unstructured_detail_input"  >
  <s:hidden name="id" id="id"/>
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
                        <%--<td width="50%" align="right">--%>
                          <%--<c:if test="${sessionScope.menuAuthentication.definedDataManage}">--%>
                            <%--<input type="button" class="button" id="btnNew" value="Add Defined Unstructured Detail" style="width:150px" onclick="letsGo('defined_unstructured_detail_input.action', '')"/>--%>
                          <%--</c:if>--%>
                        <%--</td>--%>
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
                          <%--<img alt="" border="0" src="../images/dd.gif" name="dateBtn" --%>
                               <%--width="15" height="15" onclick="displayCalendar(document.forms[0].datasetDateTo,'dd/mm/yyyy',this);"--%>
                               <%--align="absmiddle">--%>
                        </td>
                      </tr>

                        <tr class="bgGreen2">
                            <td class="label">Unstructured Version <span class="require_field" >*</span>:</td>
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

                        <tr class="${bgGreen}">
                            <td class="label">Group <span class="require_field" >*</span>:</td>
                            <td colspan="3">
                                <s:select list="groupList"
                                          id="group"
                                          name="group"
                                          listKey="unstructuredId"
                                          listValue="name"
                                          headerKey=""
                                          headerValue="------------  Please Select  ------------"
                                          onchange="findTitle(this.value,'title','id','name');"/>
                            </td>
                        </tr>

                        <tr class="${bgGreen}">
                            <td class="label">Title <span class="require_field" >*</span> :</td>
                            <td colspan="3">
                                <s:select list="titleList"
                                          name="title"
                                          id="title"
                                          listKey="unstructuredId"
                                          listValue="name"
                                          headerKey=""
                                          headerValue="------------  Please Select  ------------"
                                          onchange="findTitle(this.value,'subTitle','id','name');"/>
                            </td>
                        </tr>
                        <tr class="${bgGreen}">
                            <td class="label">Sub Title <span class="require_field" id="subTitleRequire" style="display:none">*</span> :</td>
                            <td colspan="3">
                                <s:select list="subTitleList"
                                          name="subTitle"
                                          id="subTitle"
                                          listKey="unstructuredId"
                                          listValue="name"
                                          headerKey=""
                                          headerValue="------------  Please Select  ------------"
                                          onchange="findTitle(this.value,'subTitle2','id','name');"/>
                            </td>
                        </tr>

                        <c:choose>
                            <c:when test="${level eq 3}">
                                <tr class="${bgGreen}">
                                    <td class="label">Sub Title2 <span class="require_field" id="subTitleRequire2" style="display:none">*</span> :</td>
                                    <td colspan="3">
                                        <s:select list="subTitle2List"
                                                  name="subTitle2"
                                                  id="subTitle2"
                                                  listKey="unstructuredId"
                                                  listValue="name"
                                                  headerKey=""
                                                  headerValue="------------  Please Select  ------------"/>
                                    </td>
                                </tr>
                            </c:when>
                            <c:when test="${level > 3}">
                                <tr class="${bgGreen}">
                                    <td class="label">Sub Title2<span class="require_field" id="subTitleRequire2" style="display:none">*</span> :</td>
                                    <td colspan="3">
                                        <s:select name="subTitle2"
                                                  id="subTitle2"
                                                  list="subTitle2List"
                                                  listKey="unstructuredId"
                                                  listValue="name"
                                                  headerKey=""
                                                  headerValue="------------  Please Select  ------------"
                                                  onchange="findTitle(this.value,'subTitle3','id','name');"/>
                                    </td>
                                </tr>
                            </c:when>
                        </c:choose>
                        <c:choose>
                            <c:when test="${level eq 4}">
                                <tr class="${bgGreen}" id="g3">
                                    <td class="label">Sub Title3 <span class="require_field" id="subTitleRequire3" style="display:none">*</span> :</td>
                                    <td colspan="3">
                                        <s:select name="subTitle3"
                                                  id="subTitle3"
                                                  list="subTitle3List"
                                                  listKey="unstructuredId"
                                                  listValue="name"
                                                  headerKey=""
                                                  headerValue="------------  Please Select  ------------"/>
                                    </td>
                                </tr>
                            </c:when>
                            <c:when test="${level > 4}">
                                <tr class="${bgGreen}" id="g3">
                                    <td class="label">Sub Title3<span class="require_field" id="subTitleRequire3" style="display:none">*</span> :</td>
                                    <td colspan="3">
                                        <s:select name="subTitle3"
                                                  id="subTitle3"
                                                  list="subTitle3List"
                                                  listKey="unstructuredId"
                                                  listValue="name"
                                                  headerKey=""
                                                  headerValue="------------  Please Select  ------------"
                                                  onchange="findTitle(this.value,'subTitle4','id','name');"/>
                                    </td>
                                </tr>
                            </c:when>
                        </c:choose>
                        <c:choose>
                            <c:when test="${level eq 5}">
                                <tr class="${bgGreen}" id="g4">
                                    <td class="label">Sub Title4<span class="require_field" id="subTitleRequire4" style="display:none">*</span> :</td>
                                    <td colspan="3">
                                        <s:select name="subTitle4"
                                                  id="subTitle4"
                                                  list="subTitle4List"
                                                  listKey="unstructuredId"
                                                  listValue="name"
                                                  headerKey=""
                                                  headerValue="------------  Please Select  ------------"/>
                                    </td>
                                </tr>
                            </c:when>
                            <c:when test="${level > 5}">
                                <tr class="${bgGreen}" id="g4">
                                    <td class="label">Sub Title4<span class="require_field" id="subTitleRequire4" style="display:none">*</span> :</td>
                                    <td colspan="3">
                                        <s:select name="subTitle4"
                                                  id="subTitle4"
                                                  list="subTitle4List"
                                                  listKey="unstructuredId"
                                                  listValue="name"
                                                  headerKey=""
                                                  headerValue="------------  Please Select  ------------"
                                                  onchange="findTitle(this.value,'subTitle5','id','name');"/>
                                    </td>
                                </tr>
                            </c:when>
                        </c:choose>
                        <c:choose>
                            <c:when test="${level eq 6}">
                                <tr class="${bgGreen}" id="g5">
                                    <td class="label">Sub Title5<span class="require_field" id="subTitleRequire5" style="display:none">*</span> :</td>
                                    <td colspan="3">
                                        <s:select name="subTitle5"
                                                  id="subTitle5"
                                                  list="subTitle5List"
                                                  listKey="unstructuredId"
                                                  listValue="name"
                                                  headerKey=""
                                                  headerValue="------------  Please Select  ------------"/>
                                    </td>
                                </tr>
                            </c:when>
                            <c:when test="${level > 6}">
                                <tr class="${bgGreen}" id="g5">
                                    <td class="label">Sub Title5<span class="require_field" id="subTitleRequire5" style="display:none">*</span> :</td>
                                    <td colspan="3">
                                        <s:select name="subTitle5"
                                                  id="subTitle5"
                                                  list="subTitle5List"
                                                  listKey="unstructuredId"
                                                  listValue="name"
                                                  headerKey=""
                                                  headerValue="------------  Please Select  ------------"
                                                  onchange="findTitle(this.value,'subTitle6','id','name');"/>
                                    </td>
                                </tr>
                            </c:when>
                        </c:choose>
                        <c:choose>
                            <c:when test="${level eq 7}">
                                <tr class="${bgGreen}" id="g6">
                                    <td class="label">Sub Title6<span class="require_field" id="subTitleRequire6" style="display:none">*</span> :</td>
                                    <td colspan="3">
                                        <s:select name="subTitle6"
                                                  id="subTitle6"
                                                  list="subTitle6List"
                                                  listKey="unstructuredId"
                                                  listValue="name"
                                                  headerKey=""
                                                  headerValue="------------  Please Select  ------------"/>
                                    </td>
                                </tr>
                            </c:when>
                            <c:when test="${level > 7}">
                                <tr class="${bgGreen}" id="g6">
                                    <td class="label">Sub Title6<span class="require_field" id="subTitleRequire6" style="display:none">*</span> :</td>
                                    <td colspan="3">
                                        <s:select name="subTitle6"
                                                  id="subTitle6"
                                                  list="subTitle6List"
                                                  listKey="unstructuredId"
                                                  listValue="name"
                                                  headerKey=""
                                                  headerValue="------------  Please Select  ------------"
                                                  onchange="findTitle(this.value,'subTitle7','id','name');"/>
                                    </td>
                                </tr>
                            </c:when>
                        </c:choose>
                        <c:choose>
                            <c:when test="${level eq 8}">
                                <tr class="${bgGreen}" id="g7">
                                    <td class="label">SubTitle7<span class="require_field" id="subTitleRequire7" style="display:none">*</span> :</td>
                                    <td colspan="3">
                                        <s:select name="subTitle7"
                                                  id="subTitle7"
                                                  list="subTitle7List"
                                                  listKey="unstructuredId"
                                                  listValue="name"
                                                  headerKey=""
                                                  headerValue="------------  Please Select  ------------"/>
                                    </td>
                                </tr>
                            </c:when>
                        </c:choose>

                    <%--<tr class="bgGreen1">--%>
                            <%--<td class="label">Status  :</td>--%>
                            <%--<td colspan="4">--%>
                            <%--<s:checkbox name="enableStatus" id="enableStatus" />  Enable  </td>--%>
                            <%--</tr>--%>
                            <tr class="bgGreen1">
                            <td class="label">Dataset ID  :</td>
                            <td colspan="4">
                            <s:textfield name="datasetId" id="datasetId" size="10" /></td>
                            </tr>
                    </table>
                    <table width="100%">
                      <tr>
                        <td width="100%" align="center">
                          <s:submit name="save" value="Save" cssClass="button" method="save" onclick="return validateForm(); "/>&nbsp;
                          <button class="button" onclick="resetForm()">Reset</button>&nbsp;
                          <s:submit name="back" value="Back" cssClass="button" method="back"/>
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
  function validateForm() {
      if (document.getElementById('unstructureVersionId').value == '') {
          alert('Please Select Unstructure Version');
          return false;
      }else if (document.getElementById('group').value == '') {
          alert('Please Select Group');
          return false;
      } else if (document.getElementById('title').value == '') {
          alert('Please Select Title');
          return false;
      } else if (document.getElementById('subTitle').value == '' && document.getElementById('subTitle').length > 1) {
          alert('Please Select Subtitle');
          return false;
      } else if (document.getElementById('subTitle2').value == '' && document.getElementById('subTitle2').length > 1) {
          alert('Please Select Subtitle2');
          return false;
      }
      else if (document.getElementById('subTitle3').value == '' && document.getElementById('subTitle3').length > 1) {
          alert('Please Select Subtitle3');
          return false;
      }
      else if (document.getElementById('subTitle4').value == '' && document.getElementById('subTitle4').length > 1) {
          alert('Please Select Subtitle4');
          return false;
      } else if (document.getElementById('subTitle5').value == '' && document.getElementById('subTitle5').length > 1) {
          alert('Please Select Subtitle5');
          return false;
      } else if (document.getElementById('subTitle6').value == '' && document.getElementById('subTitle6').length > 1) {
          alert('Please Select Subtitle6');
          return false;
      } else if (document.getElementById('subTitle7').value == '' && document.getElementById('subTitle7').length > 1) {
          alert('Please Select Subtitle7');
          return false;
      }

      return true;
  }

  function validateRequireField(fieldName,requireName){
      if(document.getElementById(fieldName).length > 1){
          document.getElementById(requireName).style.display = 'inline';
      } else {
          document.getElementById(requireName).style.display = 'none';
      }
  }

</script>
</body>
</html>