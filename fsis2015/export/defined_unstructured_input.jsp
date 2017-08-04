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
      <c:if test="${sessionScope.userLogin.sfi.id eq 000}">
      thisForm.organization.value = '';
      </c:if>
      thisForm.datasetDateFrom.value = '';
      thisForm.datasetDateTo.value = '';
    }

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
<s:form id ="defined_unstructured_input" action="defined_unstructured_input"  >
  <s:hidden name="id"/>
  <s:hidden name="deleteId" id="deleteId"/>
  <s:hidden name="datasetDateToHidden"/>
  <s:hidden name="datasetDateFromHidden"/>
  <s:hidden name="enableHidden"/>
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
                        <td><b>Defined Unstructured</b></td>
                      </tr>
                    </table>
                    <table width="100%" class="displayTable">
                      <tr class="bgGreen2">
                        <td width="25%" height=30 class="label">
                          Dataset Date From<span class="require_field">*</span> :
                        </td>
                        <td width="25%">
                          <s:textfield name="datasetDateFrom" id="datasetDateFrom" readonly="true" size="8"/>
                          <img alt="" border="0" src="../images/dd.gif" name="dateBtn"
                               width="15" height="15"
                               onclick="displayCalendar(document.forms[0].datasetDateFrom,'dd/mm/yyyy',this);"
                               align="absmiddle">
                        </td width="25%">
                        <td height=30 class="label">
                          Dataset Date To<span class="require_field">*</span> :
                        </td>
                        <td width="25%">
                          <s:textfield name="datasetDateTo" id="datasetDateTo" readonly="true" size="8"/>
                          <img alt="" border="0" src="../images/dd.gif" name="dateBtn"
                               width="15" height="15" onclick="displayCalendar(document.forms[0].datasetDateTo,'dd/mm/yyyy',this);"
                               align="absmiddle">
                        </td>
                      </tr>
                      <tr class="bgGreen1">
                        <td class="label">Status  :</td>
                        <td colspan="4">
                          <s:checkbox name="enableStatus" id="enableStatus" />  Enable  </td>
                      </tr>
                    </table>
                    <table width="100%">
                      <tr>
                        <td width="100%" align="center">
                          <s:submit name="save" value="Save" cssClass="button" method="save" onclick="return validateForm()"/>&nbsp;
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

</script>
</body>
</html>