<%--
  Created by IntelliJ IDEA.
  User: Witsanu
  Date: 26 มิ.ย. 2557
  Time: 09:52
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ page import="th.go.mof.fpo.Constants" %>
<html>
<head>
<title>Simple jsp page</title>
<script type='text/javascript' src='../dwr/engine.js'></script>
<script type='text/javascript' src='../dwr/util.js'></script>
<script type='text/javascript' src='../dwr/interface/AjaxManager.js'></script>
<link rel="stylesheet" type="text/css" href="../includes/css/style.css">
<script type="text/javascript" src="../includes/js/tp/utils.js"></script>
<script type="text/javascript" src="../includes/js/jquery.js"></script>
<script type="text/javascript" src="../includes/js/jquery.min.js"></script>
<script type="text/javascript">
//    function add(group,title,st,st2,st3,st4,st5,st6,st7) {


function resetForm() {
    thisForm.move_from.length = 0;
    var level = ${requestScope.level};

    thisForm.group.value = '';
    thisForm.title.value = '';
    if (level > 2 || level == 2) {
        thisForm.subTitle.value = '';
    }
    if (level > 3 || level == 3) {
        thisForm.subTitle2.value = '';
    }
    if (level > 4 || level == 4) {
        thisForm.subTitle3.value = '';
    }
    if (level > 5 || level == 5) {
        thisForm.subTitle4.value = '';
    }
    if (level > 6 || level == 6) {
        thisForm.subTitle5.value = '';
    }
    if (level > 7 || level == 7) {
        thisForm.subTitle6.value = '';
    }
    if (level > 8 || level == 8) {
        thisForm.subTitle7.value = '';
    }
}

function resetForm_to() {
    thisForm.move_to.length = 0;
    var level =${requestScope.level};

    thisForm.group_to.value = '';
    thisForm.title_to.value = '';
    if (level > 2) {
        thisForm.subTitle_to.value = '';
    }
    if (level > 3) {
        thisForm.subTitle2_to.value = '';
    }
    if (level > 4) {
        thisForm.subTitle3_to.value = '';
    }
    if (level > 5) {
        thisForm.subTitle4_to.value = '';
    }
    if (level > 6) {
        thisForm.subTitle5_to.value = '';
    }
    if (level > 7) {
        thisForm.subTitle6_to.value = '';
    }
    if (level > 8) {
        thisForm.subTitle7_to.value = '';
    }
}

function resetAll() {
    thisForm.move_from.value = '';
    thisForm.move_to.value = '';
    var level =${requestScope.level};

    thisForm.group.value = '';
    thisForm.title.value = '';

    if (level > 2) {
        thisForm.subTitle.value = '';
    }
    if (level > 3) {
        thisForm.subTitle2.value = '';
    }
    if (level > 4) {
        thisForm.subTitle3.value = '';
    }
    if (level > 5) {
        thisForm.subTitle4.value = '';
    }
    if (level > 6) {
        thisForm.subTitle5.value = '';
    }
    if (level > 7) {
        thisForm.subTitle6.value = '';
    }
    if (level > 8) {
        thisForm.subTitle7.value = '';
    }

    thisForm.group_to.value = '';
    thisForm.title_to.value = '';

    if (level > 2) {
        thisForm.subTitle_to.value = '';
    }
    if (level > 3) {
        thisForm.subTitle2_to.value = '';
    }
    if (level > 4) {
        thisForm.subTitle3_to.value = '';
    }
    if (level > 5) {
        thisForm.subTitle4_to.value = '';
    }
    if (level > 6) {
        thisForm.subTitle5_to.value = '';
    }
    if (level > 7) {
        thisForm.subTitle6_to.value = '';
    }
    if (level > 8) {
        thisForm.subTitle7_to.value = '';

    }
}

function findTitle(id, zone, keyName, keyValue, clearZones) {

    var vid = document.getElementById('unstructuredVersionId').value;
    AjaxManager.findUnstructureTitleByIdAndVersion(id,vid , function (data) {
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

/* Move value Dropdrow Response Person */
function moveOption(fromID, toID) {
//    var i = document.getElementById(fromID).selectedIndex;
//    var o = document.getElementById(fromID).options[ i ];
//    var theOpt = new Option(o.text, o.value, false, false);
//    document.getElementById(toID).options[document.getElementById(toID).options.length] = theOpt;
//    document.getElementById(fromID).options[ i ] = null;
    var len = document.getElementById(fromID).options.length;
    var o, theOpt, i;
    for (var i=0; i < len; i++) {
        i = document.getElementById(fromID).selectedIndex;
        o = document.getElementById(fromID).options[i];
        // check if selected
        if ( o.selected ) {
            // add to array of option elements to return from this function
            //var i = document.getElementById(fromID).selectedIndex;
            //var o = document.getElementById(fromID).options[ i ];
            theOpt = new Option(o.text, o.value, false, false);
            document.getElementById(toID).options[document.getElementById(toID).options.length] = theOpt;
            document.getElementById(fromID).options[ i ] = null;
        }
    }
}
function listbox_selectall(fromID, toID) {
    var listbox = document.getElementById(fromID);
    var countL = listbox.options.length;
    for (var count = 0; count < countL;) {
        listbox.options[0].selected = true;
        //moveOption(fromID, toID);
        var i = document.getElementById(fromID).selectedIndex;
        var o = document.getElementById(fromID).options[ i ];
        var theOpt = new Option(o.text, o.value, false, false);
        document.getElementById(toID).options[document.getElementById(toID).options.length] = theOpt;
        document.getElementById(fromID).options[ i ] = null;
    }
}


function selectAll(selectBox, selectAll) {
    // have we been passed an ID
    if (typeof selectBox == "string") {
        selectBox = document.getElementById(selectBox);
    }
    // is the select box a multiple select box?
    if (selectBox.type == "select-multiple") {
        for (var i = 0; i < selectBox.options.length; i++) {
            selectBox.options[i].selected = selectAll;
        }
    }


}

var thisForm = document.getElementsByTagName('form')[0];
var isSubmit = false;
function validateForm(){
    if(isSubmit){
        thisForm.btnSearch.disabled = true;
//        thisForm.resetBtn.disabled = true;
//        thisForm.backBtn.disabled = true;
        return false;
    }
    if(thisForm.group.selectedIndex == 0){
        alert('Please Select Group !!');
        thisForm.group.focus();
        return false;
    }

    isSubmit = true;
    return true;
};
function validateForm_to(){
    if(isSubmit){
        thisForm.btnSearch.disabled = true;
        return false;
    }
    if (document.getElementById('LEFT_MENU').length < 1) {
        alert('Please Select Left Colume');
        thisForm.LEFT_MENU.focus();
        return false;
    }else if(thisForm.group_to.selectedIndex == 0){
        alert('Please Select Group !!');
        thisForm.group_to.focus();
        return false;
    }

    isSubmit = true;
    return true;
};



</script>
</head>
<body>
<s:form action="move_unstructured_dataset" id="unstructured_dataset">
<s:hidden name="hiddenUnTitleId" id="hiddenUnTitleId"/>
<s:hidden name="hiddenUnTitleId_to" id="hiddenUnTitleId_to"/>
<s:hidden name="unstructuredVersionId" id="unstructuredVersionId"/>
<s:hidden name="id" id="id"/>
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

<b>Move Unstructured Dataset</b>

<table width="100%">
<tr valign="middle">
<td align="right">
<table width=100% class="displayTable">

<tr class="bgGreen2 group">
    <td class="labelleft" colspan="2">Move From :</td>

    <td class="labelleft" colspan="2">Move To :</td>

</tr>
<tr class="bgGreen1 group">
    <td  colspan="2">
        <s:select list="groupList"
                  id="group"
                  name="group"
                  listKey="unstructuredId"
                  listValue="name"
                  headerKey=""
                  headerValue="------------  Please Select  ------------"
                  onchange="findTitle(this.value,'title','id','name');"/>
    </td>
    <td colspan="2">
        <s:select list="groupList_to"
                  id="group_to"
                  name="group_to"
                  listKey="unstructuredId"
                  listValue="name"
                  headerKey=""
                  headerValue="------------  Please Select  ------------"
                  onchange="findTitle(this.value,'title_to','id','name');"/>
    </td>
</tr>

<tr class="bgGreen2 group" >
    <td  colspan="2">
        <s:select list="titleList"
                  name="title"
                  id="title"
                  listKey="unstructuredId"
                  listValue="name"
                  headerKey=""
                  headerValue="------------  Please Select  ------------"
                  onchange="findTitle(this.value,'subTitle','id','name');"/>
    </td>
    <td colspan="2">
        <s:select list="titleList_to"
                  name="title_to"
                  id="title_to"
                  listKey="unstructuredId"
                  listValue="name"
                  headerKey=""
                  headerValue="------------  Please Select  ------------"
                  onchange="findTitle(this.value,'subTitle_to','id','name');"/>
    </td>
</tr>
<tr class="bgGreen1 group">
    <td  colspan="2">
        <s:select list="subTitleList"
                  name="subTitle"
                  id="subTitle"
                  listKey="unstructuredId"
                  listValue="name"
                  headerKey=""
                  headerValue="------------  Please Select  ------------"
                  onchange="findTitle(this.value,'subTitle2','id','name');"/>
    </td>
    <td colspan="2">
        <s:select list="subTitleList_to"
                  name="subTitle_to"
                  id="subTitle_to"
                  listKey="unstructuredId"
                  listValue="name"
                  headerKey=""
                  headerValue="------------  Please Select  ------------"
                  onchange="findTitle(this.value,'subTitle2_to','id','name');"/>
    </td>
</tr>

<c:choose>
    <c:when test="${level eq 3}">
        <tr class="bgGreen2 group">
            <td  colspan="2">
                <s:select list="subTitle2List"
                          name="subTitle2"
                          id="subTitle2"
                          listKey="unstructuredId"
                          listValue="name"
                          headerKey=""
                          headerValue="------------  Please Select  ------------"/>
            </td>
            <td colspan="2">
                <s:select list="subTitle2List_to"
                          name="subTitle2_to"
                          id="subTitle2_to"
                          listKey="unstructuredId"
                          listValue="name"
                          headerKey=""
                          headerValue="------------  Please Select  ------------"/>
            </td>
        </tr>
    </c:when>
    <c:when test="${level > 3}">
        <tr class="bgGreen2 group">
            <td  colspan="2">
                <s:select name="subTitle2"
                          id="subTitle2"
                          list="subTitle2List"
                          listKey="unstructuredId"
                          listValue="name"
                          headerKey=""
                          headerValue="------------  Please Select  ------------"
                          onchange="findTitle(this.value,'subTitle3','id','name');"/>
            </td>
            <td colspan="2">
                <s:select name="subTitle2_to"
                          id="subTitle2_to"
                          list="subTitle2List_to"
                          listKey="unstructuredId"
                          listValue="name"
                          headerKey=""
                          headerValue="------------  Please Select  ------------"
                          onchange="findTitle(this.value,'subTitle3_to','id','name');"/>
            </td>
        </tr>
    </c:when>
</c:choose>
<c:choose>
    <c:when test="${level eq 4}">
        <tr class="bgGreen1 group" id="g3">
            <td  colspan="2">
                <s:select name="subTitle3"
                          id="subTitle3"
                          list="subTitle3List"
                          listKey="unstructuredId"
                          listValue="name"
                          headerKey=""
                          headerValue="------------  Please Select  ------------"/>
            </td>
            <td colspan="2">
                <s:select name="subTitle3_to"
                          id="subTitle3_to"
                          list="subTitle3List_to"
                          listKey="unstructuredId"
                          listValue="name"
                          headerKey=""
                          headerValue="------------  Please Select  ------------"/>
            </td>
        </tr>
    </c:when>
    <c:when test="${level > 4}">
        <tr class="bgGreen1 group" id="g3">
            <td  colspan="2">
                <s:select name="subTitle3"
                          id="subTitle3"
                          list="subTitle3List"
                          listKey="unstructuredId"
                          listValue="name"
                          headerKey=""
                          headerValue="------------  Please Select  ------------"
                          onchange="findTitle(this.value,'subTitle4','id','name');"/>
            </td>
            <td colspan="2">
                <s:select name="subTitle3_to"
                          id="subTitle3_to"
                          list="subTitle3List_to"
                          listKey="unstructuredId"
                          listValue="name"
                          headerKey=""
                          headerValue="------------  Please Select  ------------"
                          onchange="findTitle(this.value,'subTitle4_to','id','name');"/>
            </td>
        </tr>
    </c:when>
</c:choose>
<c:choose>
    <c:when test="${level eq 5}">
        <tr class="bgGreen2 group" id="g4">
            <td  colspan="2">
                <s:select name="subTitle4"
                          id="subTitle4"
                          list="subTitle4List"
                          listKey="unstructuredId"
                          listValue="name"
                          headerKey=""
                          headerValue="------------  Please Select  ------------"/>
            </td>
            <td colspan="2">
                <s:select name="subTitle4_to"
                          id="subTitle4_to"
                          list="subTitle4List_to"
                          listKey="unstructuredId"
                          listValue="name"
                          headerKey=""
                          headerValue="------------  Please Select  ------------"/>
            </td>
        </tr>
    </c:when>
    <c:when test="${level > 5}">
        <tr class="bgGreen2 group" id="g4">
            <td  colspan="2">
                <s:select name="subTitle4"
                          id="subTitle4"
                          list="subTitle4List"
                          listKey="unstructuredId"
                          listValue="name"
                          headerKey=""
                          headerValue="------------  Please Select  ------------"
                          onchange="findTitle(this.value,'subTitle5','id','name');"/>
            </td>
            <td colspan="2">
                <s:select name="subTitle4_to"
                          id="subTitle4_to"
                          list="subTitle4List_to"
                          listKey="unstructuredId"
                          listValue="name"
                          headerKey=""
                          headerValue="------------  Please Select  ------------"
                          onchange="findTitle(this.value,'subTitle5_to','id','name');"/>
            </td>
        </tr>
    </c:when>
</c:choose>
<c:choose>
    <c:when test="${level eq 6}">
        <tr class="bgGreen1 group" id="g5">
            <td  colspan="2">
                <s:select name="subTitle5"
                          id="subTitle5"
                          list="subTitle5List"
                          listKey="unstructuredId"
                          listValue="name"
                          headerKey=""
                          headerValue="------------  Please Select  ------------"/>
            </td>
            <td colspan="2">
                <s:select name="subTitle5_to"
                          id="subTitle5_to"
                          list="subTitle5List_to"
                          listKey="unstructuredId"
                          listValue="name"
                          headerKey=""
                          headerValue="------------  Please Select  ------------"/>
            </td>
        </tr>
    </c:when>
    <c:when test="${level > 6}">
        <tr class="bgGreen1 group" id="g5">
            <td  colspan="2">
                <s:select name="subTitle5"
                          id="subTitle5"
                          list="subTitle5List"
                          listKey="unstructuredId"
                          listValue="name"
                          headerKey=""
                          headerValue="------------  Please Select  ------------"
                          onchange="findTitle(this.value,'subTitle6','id','name');"/>
            </td>
            <td colspan="2">
                <s:select name="subTitle5_to"
                          id="subTitle5_to"
                          list="subTitle5List_to"
                          listKey="unstructuredId"
                          listValue="name"
                          headerKey=""
                          headerValue="------------  Please Select  ------------"
                          onchange="findTitle(this.value,'subTitle6_to','id','name');"/>
            </td>
        </tr>
    </c:when>
</c:choose>
<c:choose>
    <c:when test="${level eq 7}">
        <tr class="bgGreen2 group" id="g6">
            <td  colspan="2">
                <s:select name="subTitle6"
                          id="subTitle6"
                          list="subTitle6List"
                          listKey="unstructuredId"
                          listValue="name"
                          headerKey=""
                          headerValue="------------  Please Select  ------------"/>
            </td>
            <td colspan="2">
                <s:select name="subTitle6_to"
                          id="subTitle6_to"
                          list="subTitle6List_to"
                          listKey="unstructuredId"
                          listValue="name"
                          headerKey=""
                          headerValue="------------  Please Select  ------------"/>
            </td>
        </tr>
    </c:when>
    <c:when test="${level > 7}">
        <tr class="bgGreen2 group" id="g6">
            <td  colspan="2">
                <s:select name="subTitle6"
                          id="subTitle6"
                          list="subTitle6List"
                          listKey="unstructuredId"
                          listValue="name"
                          headerKey=""
                          headerValue="------------  Please Select  ------------"
                          onchange="findTitle(this.value,'subTitle7','id','name');"/>
            </td>
            <td colspan="2">
                <s:select name="subTitle6_to"
                          id="subTitle6_to"
                          list="subTitle6List_to"
                          listKey="unstructuredId"
                          listValue="name"
                          headerKey=""
                          headerValue="------------  Please Select  ------------"
                          onchange="findTitle(this.value,'subTitle7_to','id','name');"/>
            </td>
        </tr>
    </c:when>
</c:choose>
<c:choose>
    <c:when test="${level eq 8}">
        <tr class="bgGreen1 group" id="g7">
            <td  colspan="2">
                <s:select name="subTitle7"
                          id="subTitle7"
                          list="subTitle7List"
                          listKey="unstructuredId"
                          listValue="name"
                          headerKey=""
                          headerValue="------------  Please Select  ------------"/>
            </td>
            <td colspan="2">
                <s:select name="subTitle7_to"
                          id="subTitle7_to"
                          list="subTitle7List_to"
                          listKey="unstructuredId"
                          listValue="name"
                          headerKey=""
                          headerValue="------------  Please Select  ------------"/>
            </td>
        </tr>
    </c:when>
</c:choose>

</table>
<table width="100%">
    <tr>
        <td align="center" colspan="2">
            <s:submit value="Search" id="btnSearch" cssClass="button" action="move_unstructured_dataset_from" onclick="return validateForm();" />&nbsp;
            <button class="button" onclick="resetForm()">Reset</button>
        </td>
        <td align="center" colspan="2">
            <s:submit value="Search" id="btnSearch_to" cssClass="button" action="move_unstructured_dataset_to" onclick="return validateForm_to();"/>&nbsp;
            <button class="button" onclick="resetForm_to()">Reset</button>
        </td>
    </tr>
    <tr>
        <td align="center" width="45%">
            <s:select
                    list="objectList"
                    listKey="unstructuredId"
                    listValue="name" multiple="true" id="LEFT_MENU" name="move_from"
                    cssStyle="width: 100%;height: 150px;display: inline-block;float: left;"/>
        </td>
        <td align="center" width="10%">
            <div style="width: 20%;display: inline-block;float: left;">
                <div style="text-align: center;"><input type="button" style="width: 110px;" id="add" value="Add >>"
                                                        name="add" onclick="moveOption('LEFT_MENU','RIGHT_MENU')"></div>
                <div style="text-align: center;"><input type="button" style="width: 110px;" id="addall"
                                                        value="Add All >>"
                                                        name="addall"
                                                        onclick="listbox_selectall('LEFT_MENU', 'RIGHT_MENU')"></div>
                <div style="text-align: center;"><input type="button" style="width: 110px;" id="remove"
                                                        value="<< Remove "
                                                        name="remove" onclick="moveOption('RIGHT_MENU','LEFT_MENU')">
                </div>
                <div style="text-align: center;"><input type="button" style="width: 110px;" id="removeall"
                                                        value="<< Remove All" name="removeall"
                                                        onclick="listbox_selectall('RIGHT_MENU', 'LEFT_MENU')"></div>
            </div>
        </td>
        <td align="center" width="45%">
            <s:select
                    list="objectList_to"
                    listKey="unstructuredId"
                    listValue="name" multiple="true" id="RIGHT_MENU" name="move_to"
                    cssStyle="width: 100%;height: 150px;display: inline-block;float: left;"/>
        </td>
    </tr>
    <tr>

        <td align="center" colspan="3">
            <s:submit id="save" name="ok" value="Save" method="save" cssClass="button" onclick=" selectAll('RIGHT_MENU',true);  "/>&nbsp;
            <button class="button" onclick="resetAll()">Reset</button>
            <s:submit name="back" value="Back" method="back" cssClass="button"/>
        </td>
    </tr>
</table>
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
    var jq = jQuery.noConflict();
    jq("#unstructured_dataset").keypress(function (event) {
        if (event.keyCode == 13) {
            jq("#btnAdd").attr('disabled', 'disabled');
            jq("#btnSearch").click();
        }
    })

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
        <%--var reportName = document.getElementById("reportName").value;--%>

        <%--pageLink1 = action + '?reportTitleId=' + id;--%>
        <%--pageLink2 = '&<%=Constants.PublishDocumentField.REPORT_NAME_HIDDEN%>=' + reportName;--%>
        <%--location.href = pageLink1.concat(pageLink2);--%>
    }

</script>
</body>
</html>