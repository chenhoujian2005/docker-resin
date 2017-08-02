<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head><title>Simple jsp page</title>
    <link rel="stylesheet" type="text/css" href="../includes/css/style.css">
    <script type='text/javascript' src='../dwr/engine.js'></script>
    <script type='text/javascript' src='../dwr/util.js'></script>
    <script type='text/javascript' src='../dwr/interface/AjaxManager.js'></script>
    <script language="javascript" src="../includes/js/tp/utils.js"></script>
    <script language="javascript" src="../includes/js/tp/validate.js"></script>
    <script language="javascript" src="../includes/js/jquery.js"></script>
    <script type="text/javascript" src="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.js"></script>
    <link href="../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.css" rel="stylesheet"
          type="text/css">
    <script type="text/javascript">

        function findTitle(id, zone, keyName, keyValue, clearZones) {

            var vid = document.getElementById('unstructureVersionId').value;
            AjaxManager.findUnstructureTitleByIdAndVersion(id, vid, function (data) {
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
            if (level > 2) {
                validateRequireField('subTitle', 'subTitleRequire');
            }
            if (level > 3) {
                validateRequireField('subTitle2', 'subTitleRequire2');
            }
            if (level > 4) {
                validateRequireField('subTitle3', 'subTitleRequire3');
            }
            if (level > 5) {
                validateRequireField('subTitle4', 'subTitleRequire4');
            }
            if (level > 6) {
                validateRequireField('subTitle5', 'subTitleRequire5');
            }
            if (level > 7) {
                validateRequireField('subTitle6', 'subTitleRequire6');
            }
            if (level > 8) {
                validateRequireField('subTitle7', 'subTitleRequire7');
            }


        }


    </script>
</head>
<body>
<s:form action="sending_waive_unstructure_detail">
<s:hidden name="id" id="id"/>
<s:hidden name="sfiHidden" id="sfiHidden"/>
<s:hidden name="groupHidden" id="groupHidden"/>
<s:hidden name="titleHidden" id="titleHidden"/>
<s:hidden name="subTitleHidden" id="subTitleHidden"/>
<s:hidden name="subTitle2Hidden" id="subTitle2Hidden"/>
<s:hidden name="subTitle3Hidden" id="subTitle3Hidden"/>
<s:hidden name="subTitle4Hidden" id="subTitle4Hidden"/>
<s:hidden name="subTitle5Hidden" id="subTitle5Hidden"/>
<s:hidden name="subTitle6Hidden" id="subTitle6Hidden"/>
<s:hidden name="subTitle7Hidden" id="subTitle7Hidden"/>
<s:hidden name="datasetDateFromHidden" id="datasetDateFromHidden"/>
<s:hidden name="datasetDateToHidden" id="datasetDateToHidden"/>
<s:hidden name="unstructureVersionId" id="unstructureVersionId"/>
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
<td style="height:100%">
    <%--content here--%>
<table>
    <tr>

        <td><c:choose>
            <c:when test="${empty requestScope.id}"><b>Add Sending Waive Unstructured</b></c:when>
            <c:when test="${not empty requestScope.id}"><b>Edit Sending Waive Unstructured</b></c:when>
        </c:choose>
        </td>
    </tr>
</table>

<table width="100%" align="center" class="displayTable">
    <%--<c:choose>--%>
    <%--<c:when test="${empty requestScope.id}">--%>
<tr class="bgGreen2">
    <td width="25%" align="right">SFIs Name<span class="require_field">*</span> :</td>
    <td width="75%" colspan="3">

        <c:choose>
            <c:when test="${sessionScope.userLogin.sfi.id eq 000}">
                <s:select list="sfiList"
                          id="sfi"
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
    </td>
</tr>
<tr class="${bgGreen}">
    <td class="label">Group <b><span class="require_field">*</span> </b>:</td>
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
    <td class="label">Title <b><span class="require_field">*</span></b> :</td>
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
    <td class="label">Sub Title <b><span class="require_field" id="subTitleRequire" style="display:none">*</span></b> :
    </td>
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
            <td class="label">Sub Title2 <b><span class="require_field" id="subTitleRequire2"
                                                  style="display:none">*</span></b> :
            </td>
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
            <td class="label">Sub Title2<b><span class="require_field" id="subTitleRequire2"
                                                 style="display:none">*</span></b> :
            </td>
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
            <td class="label">Sub Title3 <b><span class="require_field" id="subTitleRequire3"
                                                  style="display:none">*</span></b> :
            </td>
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
            <td class="label">Sub Title3<b><span class="require_field" id="subTitleRequire3"
                                                 style="display:none">*</span></b> :
            </td>
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
            <td class="label">Sub Title4<b><span class="require_field" id="subTitleRequire4"
                                                 style="display:none">*</span></b> :
            </td>
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
            <td class="label">Sub Title4<b><span class="require_field" id="subTitleRequire4"
                                                 style="display:none">*</span></b> :
            </td>
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
            <td class="label">Sub Title5<b><span class="require_field" id="subTitleRequire5"
                                                 style="display:none">*</span></b> :
            </td>
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
            <td class="label">Sub Title5<b><span class="require_field" id="subTitleRequire5"
                                                 style="display:none">*</span></b> :
            </td>
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
            <td class="label">Sub Title6<b><span class="require_field" id="subTitleRequire6"
                                                 style="display:none">*</span></b> :
            </td>
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
            <td class="label">Sub Title6<b><span class="require_field" id="subTitleRequire6"
                                                 style="display:none">*</span></b> :
            </td>
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
            <td class="label">SubTitle7<b><span class="require_field" id="subTitleRequire7"
                                                style="display:none">*</span></b> :
            </td>
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

<tr class="bgGreen2">
    <td align="right">Dataset Date From<span class="require_field">*</span> :</td>
    <td>
        <s:textfield name="dateFrom" id="dateFrom" readonly="true" size="15"
                     cssStyle="font-size:14px"/>

        <img border="0" src="../images/dd.gif" name="dateBtn"
             width="15"
             height="15"
             onclick="displayCalendar(document.forms[0].dateFrom,'dd/mm/yyyy',this);"
             align="absmiddle">
    </td>
    <td align="right"> To<span class="require_field">*</span> :</td>
    <td><s:textfield name="dateTo" id="dateTo" readonly="true" size="15" cssStyle="font-size:14px"/>
        <img border="0" src="../images/dd.gif" name="dateBtn"
             width="15"
             height="15"
             onclick="displayCalendar(document.forms[0].dateTo,'dd/mm/yyyy',this);"
             align="absmiddle">
    </td>
</tr>

<tr class="bgGreen1">
    <td height=30 align="right">Enable :</td>
    <td colspan="3">
        <s:checkbox name="enable"/>
    </td>
</tr>
</table>
<table width="100%">
    <tr align="center">
        <td>
            <s:submit name="ok" value="Save" method="save" cssClass="button" onclick="return validateForm(); "/>&nbsp;
            <s:submit name="back" value="Back" method="back" cssClass="button"/>
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
    function validateForm() {
        if (document.getElementById('sfi').value == '') {
            alert('Please Select SFIs Name');
            return false;
        } else if (document.getElementById('group').value == '') {
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

        } else if (document.getElementById('subTitle3').value == '' && document.getElementById('subTitle3').length > 1) {
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
        } else if (document.getElementById('dateFrom').value == '') {
            alert('Please Input Dataset Date From');
            return false;
        } else if (document.getElementById('dateTo').value == '') {
            alert('Please Input Dataset Date To');
            return false;
        }


        return true;
    }

    function validateRequireField(fieldName, requireName) {
        if (document.getElementById(fieldName).length > 1) {
            document.getElementById(requireName).style.display = 'inline';
        } else {
            document.getElementById(requireName).style.display = 'none';
        }
    }
</script>
</body>
</html>