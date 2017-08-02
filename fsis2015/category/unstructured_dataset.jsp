<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

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
    <script language="javascript" src="../includes/js/tp/validate.js"></script>

    <script type="text/javascript">

        function add() {
           for (var i = 0; i < thisForm.type.length; i++) {
                if (thisForm.type[i].selected) {
                   location.href = thisForm.type[i].value;
                }
            }
        }


        function resetForm() {
            thisForm.group.value = '';
            thisForm.groupBox.value = '';
            thisForm.title.value = '';
            thisForm.titleBox.value = '';
            thisForm.subTitle.value = '';
            thisForm.subTitleBox.value = '';
            thisForm.subTitle2.value = '';
            thisForm.subTitle2Box.value = '';
            thisForm.subTitle3.value = '';
            thisForm.subTitle3Box.value = '';
            thisForm.subTitle4.value = '';
            thisForm.subTitle4Box.value = '';
            thisForm.subTitle5.value = '';
            thisForm.subTitle5Box.value = '';
            thisForm.subTitle6.value = '';
            thisForm.subTitle6Box.value = '';
            thisForm.subTitle7.value = '';
            thisForm.subTitle7Box.value = '';


        }

        function findTitle(id, zone, keyName, keyValue, clearZones) {

            var vid = document.getElementById('unstructureVersionId').value;
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


    </script>
</head>
<body>
<s:form action="unstructured_dataset" id="unstructured_dataset">
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
<table width="100%">
    <tr>
        <td width="30%"><b>Unstructured Dataset</b></td>
        <td width="70%" align="right">
                <c:if test="${sessionScope.menuAuthentication.unstructuredDatasetManage}">
                    <select name="type" id="ddlAdd">
                        <option value="unstructured_dataset_group.action?unStrId=${versionId}">Group</option>
                        <option value="unstructured_dataset_title.action?unStrId=${versionId}">Title</option>
                        <option value="unstructured_dataset_sub_title.action?unStrId=${versionId}">Sub Title</option>
                        <option value="unstructured_dataset_sub_title2.action?unStrId=${versionId}">Sub Title2</option>
                        <option value="unstructured_dataset_sub_title3.action?unStrId=${versionId}">Sub Title3</option>
                        <option value="unstructured_dataset_sub_title4.action?unStrId=${versionId}">Sub Title4</option>
                        <option value="unstructured_dataset_sub_title5.action?unStrId=${versionId}">Sub Title5</option>
                        <option value="unstructured_dataset_sub_title6.action?unStrId=${versionId}">Sub Title6</option>
                        <option value="unstructured_dataset_sub_title7.action?unStrId=${versionId}">Sub Title7</option>

                    </select>
                    <input name="button" id="btnAdd" type=button class="button" value="Add" onClick="add();">
                </c:if>
       </td>

    </tr>
</table>
<table width="100%">

<tr valign="middle">
<td align="right">
<table width=100% class="displayTable">
<tr class="bgGreen1">

    <td colspan="2" class="headerTableCrit">
        <s:property value="description"/>
    </td>

</tr>
<tr class="bgGreen2">
    <td width="20%" class="label">Search By :</td>
    <td width="80%">
        <s:radio name="searchBy"
                 list="#{'G':'Group','D':'Dataset Info'}"
                 id="searchBy"
                 onclick="prepareZone(this.value);"/>
    </td>
</tr>

<tr class="bgGreen1 group">
    <td class="label" > Group :</td>
    <td>
        <s:select list="groupList"
                  name="group"
                  listKey="unstructuredId"
                  listValue="name"
                  headerKey=""
                  headerValue="------------  Please Select  ------------"
                  onchange="findTitle(this.value,'title','id','name');"/>
    </td>
</tr>

<tr class="bgGreen2 group">
    <td class="label">Title :</td>
    <td>
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
<tr class="bgGreen1 group">
    <td class="label">Sub Title :</td>
    <td>
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
        <tr class="bgGreen2 group">
            <td class="label">Sub Title2 :</td>
            <td>
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
        <tr class="bgGreen2 group">
            <td class="label">Sub Title2 :</td>
            <td>
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
        <tr class="bgGreen1 group" id="g3">
            <td class="label">Sub Title3 :</td>
            <td>
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
        <tr class="bgGreen1 group" id="g3">
            <td class="label">Sub Title3 :</td>
            <td>
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
        <tr class="bgGreen2 group" id="g4">
            <td class="label">Sub Title4 :</td>
            <td>
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
        <tr class="bgGreen2 group" id="g4">
            <td class="label">Sub Title4 :</td>
            <td>
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
        <tr class="bgGreen1 group" id="g5">
            <td class="label">Sub Title5 :</td>
            <td>
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
        <tr class="bgGreen1 group" id="g5">
            <td class="label">Sub Title5 :</td>
            <td>
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
        <tr class="bgGreen2 group" id="g6">
            <td class="label">Sub Title6 :</td>
            <td>
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
        <tr class="bgGreen2 group" id="g6">
            <td class="label">Sub Title6 :</td>
            <td>
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
        <tr class="bgGreen1 group" id="g7">
            <td class="label">SubTitle7 :</td>
            <td>
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

<tr class="bgGreen1 dsInfo">
    <td class="label">Group :</td>
    <td>
        <s:textfield name="groupBox" id="groupBox" size="40"/>
    </td>
</tr>
<tr class="bgGreen2 dsInfo">
    <td class="label">Title :</td>
    <td>
        <s:textfield name="titleBox" id="titleBox" size="40"/>
    </td>
</tr>
<tr class="bgGreen1 dsInfo">
    <td class="label">Sub Title :</td>
    <td>
        <s:textfield name="subTitleBox" id="subTitleBox" size="40"/>
    </td>
</tr>
<c:if test="${level >= 3}">
    <tr class="bgGreen2 dsInfo">
        <td class="label">Sub Title2 :</td>
        <td>
            <s:textfield name="subTitle2Box" id="subTitle2Box" size="40"/>
        </td>
    </tr>
</c:if>
<c:if test="${level >= 4}">
    <tr class="bgGreen1 dsInfo">
        <td class="label">Sub Title3 :</td>
        <td>
            <s:textfield name="subTitle3Box" id="subTitle3Box" size="40"/>
        </td>
    </tr>
</c:if>
<c:if test="${level >= 5}">
    <tr class="bgGreen2 dsInfo">
        <td class="label">Sub Title4 :</td>
        <td>
            <s:textfield name="subTitle4Box" id="subTitle4Box" size="40"/>
        </td>
    </tr>
</c:if>
<c:if test="${level >= 6}">
    <tr class="bgGreen1 dsInfo">
        <td class="label">Sub Title5 :</td>
        <td>
            <s:textfield name="subTitle5Box" id="subTitle5Box" size="40"/>
        </td>
    </tr>
</c:if>
<c:if test="${level >= 7}">
    <tr class="bgGreen2 dsInfo">
        <td class="label">Sub Title6 :</td>
        <td>
            <s:textfield name="subTitle6Box" id="subTitle6Box" size="40"/>
        </td>
    </tr>
</c:if>
<c:if test="${level >= 8}">
    <tr class="bgGreen1 dsInfo">
        <td class="label">Sub Title7 :</td>
        <td>
            <s:textfield name="subTitle7Box" id="subTitle7Box" size="40"/>
        </td>
    </tr>
</c:if>
</table>
<table width="100%">
    <tr>
        <td align="center">
            <s:submit value="Search" id="btnSearch" cssClass="button" method="search"/>&nbsp;
            <button class="button" onclick="resetForm()">Reset</button>
            <s:submit name="back" value="Back" method="back" cssClass="button"/>
        </td>
    </tr>
    <tr>
        <td>
            <display:table name="objectList" id="row" export="false" cellpadding="0" cellspacing="1" class="displayTag"
                           style="width:100%" pagesize="20" requestURI="unstructured_dataset.action" >
                <c:if test="${sessionScope.menuAuthentication.unstructuredDatasetManage}">

                    <display:column title="Group" group="1" headerClass="headerTable"
                                    style="text-align:left;width=20%;" >
                        <a href="unstructured_dataset_group.action?id=${row[19]}&unStrId=${row[18]}" title="${row[1]}">${row[1]}</a>
                    </display:column>
                    <display:column title="Title" group="1" headerClass="headerTable"
                                    style="text-align:left;width=20%;">
                        <a href="unstructured_dataset_title.action?id=${row[20]}&unStrId=${row[18]}" title="${row[3]}">${row[3]}</a>
                    </display:column>

                    <display:column title="Sub Title" group="1" headerClass="headerTable"
                                    style="text-align:left;width=20%;">
                        <a href="unstructured_dataset_sub_title.action?id=${row[21]}&unStrId=${row[18]}" title="${row[5]}">${row[5]}</a>
                    </display:column>
                    <c:if test="${level >= 3}">
                        <display:column title="Sub Title2"  group="1" headerClass="headerTable" style="text-align:left;width=20%;">
                            <a href="unstructured_dataset_sub_title2.action?id=${row[22]}&unStrId=${row[18]}" title="${row[7]}">${row[7]}</a>
                        </display:column>
                    </c:if>
                    <c:if test="${level >= 4}">
                        <display:column title="Sub Title3" group="1" headerClass="headerTable" style="text-align:left;width=20%;">
                            <a href="unstructured_dataset_sub_title3.action?id=${row[23]}&unStrId=${row[18]}" title="${row[9]}">${row[9]}</a>
                        </display:column>
                    </c:if>
                    <c:if test="${level >= 5}">
                        <display:column title="Sub Title4" group="1"  headerClass="headerTable" style="text-align:left;">
                            <a href="unstructured_dataset_sub_title4.action?id=${row[24]}&unStrId=${row[18]}" title="${row[11]}">${row[11]}</a>
                        </display:column>
                    </c:if>
                    <c:if test="${level >= 6}">
                        <display:column title="Sub Title5" group="1" headerClass="headerTable" style="text-align:left;">
                            <a href="unstructured_dataset_sub_title5.action?id=${row[25]}&unStrId=${row[18]}" title="${row[13]}">${row[13]}</a>
                        </display:column>
                    </c:if>
                    <s:property value="${row[15]}"/>
                    <c:if test="${level >= 7}">
                        <display:column title="Sub Title6" group="1" headerClass="headerTable" style="text-align:left;">
                            <a href="unstructured_dataset_sub_title6.action?id=${row[26]}&unStrId=${row[18]}" title="${row[15]}">${row[15]}</a>
                        </display:column>
                    </c:if>
                    <c:if test="${level >= 8}">
                        <display:column title="Sub Title7" group="1" headerClass="headerTable" style="text-align:left;">
                            <a href="unstructured_dataset_sub_title7.action?id=${row[27]}&unStrId=${row[18]}" title="${row[17]}">${row[17]}</a>
                        </display:column>
                    </c:if>
                </c:if>
                <c:if test="${not sessionScope.menuAuthentication.unstructuredDatasetManage}">

                    <display:column title="Group" group="1"  headerClass="headerTable"   style="text-align:left;width=20%;">
                        ${row[1]}
                    </display:column>
                    <display:column title="Title" group="1" headerClass="headerTable" style="text-align:left;width=20%;">
                        ${row[3]}
                    </display:column>
                    <display:column title="Sub Title" group="1" headerClass="headerTable" style="text-align:left;width=20%;">
                        ${row[5]}
                    </display:column>
                    <c:if test="${level >= 3}">
                        <display:column title="Sub Title2" group="1" headerClass="headerTable" style="text-align:left;width=20%;">
                            ${row[7]}
                        </display:column>
                    </c:if>
                    <c:if test="${level >= 4}">
                        <display:column title="Sub Title3"  group="1" headerClass="headerTable" style="text-align:left;width=20%;">
                            ${row[9]}
                        </display:column>
                    </c:if>
                    <c:if test="${level >= 5}">
                        <display:column title="Sub Title4" group="1" headerClass="headerTable" style="text-align:left;">
                            ${row[11]}
                        </display:column>
                    </c:if>
                    <c:if test="${level >= 6}">
                        <display:column title="Sub Title5"  group="1" headerClass="headerTable" style="text-align:left;">
                            ${row[13]}
                        </display:column>
                    </c:if>
                    <c:if test="${level >= 7}">
                        <display:column title="Sub Title6" group="1" headerClass="headerTable" style="text-align:left;">
                            ${row[15]}
                        </display:column>
                    </c:if>
                    <c:if test="${level >= 8}">
                        <display:column title="Sub Title7" group="1" headerClass="headerTable" style="text-align:left;">
                            ${row[17]}
                        </display:column>
                    </c:if>
                </c:if>
            </display:table>
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

</script>
</body>
</html>