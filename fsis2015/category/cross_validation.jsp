<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<html>
<head>
<title>Specialized Financial Institutions Information System</title>
<script type='text/javascript' src='../dwr/engine.js'></script>
<script type='text/javascript' src='../dwr/util.js'></script>
<script type='text/javascript' src='../dwr/interface/AjaxManager.js'></script>
<link rel="stylesheet" type="text/css" href="../includes/css/style.css">
<script type="text/javascript" src="../includes/js/tp/utils.js"></script>
<script type="text/javascript">

    function edit(id,dsTitleId ,dsname , dsVersion){

        thisForm.id.value = id;
        thisForm.hDsTitle.value = dsTitleId; // get id for edit old version
        var dsName =  dsname+'  ('+dsVersion+')'
        var ddlReport = document.getElementById('dsTitle');
        ddlReport.options[ddlReport.selectedIndex].text  = dsName;
        document.getElementById('dsTitle').disabled = true;


        AjaxManager.findCrossScript(id, function(data) {
            thisForm.script.value = data;
        });
    }

    function resetForm(){
        thisForm.id.value = EMPTY;
        thisForm.deleteId.value = EMPTY;
        thisForm.hDsTitle.value = EMPTY;
        thisForm.script.value = EMPTY;
        document.getElementById('dsTitle').disabled = false;
        document.getElementById('dsTitle').selectedIndex = 0;
        thisForm.dsTitle.selectedIndex = 0;
    }

    function setDeleteId(id){
        thisForm.deleteId.value = id;
    }


    function delAction(){
//        alert(id);
//        thisForm.deleteId.value = id;
        if(confirm('Do you want to delete this record ?')){
            thisForm.submit();
        }else{
            return false;
        }
    }


    function validateForm(){
        if(trim(thisForm.hDsTitle.value) == ''){
            alert('Please select Dataset Name');
            thisForm.dsTitle.focus();
            return false;
        }
        return true;
    }
    function onChangeValdsTitle(){
        thisForm.hDsTitle.value = thisForm.dsTitle.value;
    }
</script>
</head>

<body>
<s:form action="cross_validation" validate="false">
<s:hidden name="id"/>
<s:hidden name="dsVersionId"/>
<s:hidden name="deleteId"/>
<s:hidden name="hDsTitle"/>
<table width="98D" border="0" cellspacing="0" cellpadding="0" align="center">
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
<table width="100%" border="0" cellpadding="0" cellspacing="0" >
<tr>
<td width="43" background="../images/table004.gif">
    <img src="../images/table004.gif" width="43" height="37" alt="">
</td>
<td>
    <table width="100%" border="0" align="center" style="height:100%" >
        <tr>
            <td colspan="2">
                <strong>Cross Validation Script</strong> ${requestScope.datasetName} (${requestScope.version})
            </td>
        </tr>
    </table>
    <table width="100%" class="displayTable">
        <tr class="bgGreen2">
            <td width="15%" class="label">Dataset Name <span class="require_field">*</span> :</td>
            <td width="85%">

                <select name="dsTitle" id="dsTitle" onchange="onChangeValdsTitle()">
                    <option value="">--------  Please Select  --------</option>
                    <c:forEach items="${requestScope.dsTitleList}" var="obj">
                    <option value="${obj[1]}">${obj[2]}</option>
                </c:forEach>

            </td>
        </tr>
        <tr class="bgGreen1">
            <td class="label">Script :</td>
            <td>
                <s:textarea rows="18" cssStyle="width:650px" name="script"/>
            </td>
        </tr>
    </table>
    <table width="100%">
        <tr>
            <td width="100%" align="center">
                <s:submit method="save" value="Save" cssClass="button" onclick="return validateForm()"/>&nbsp;
                <button onclick="resetForm()" class="button">Reset</button>
            </td>
        </tr>
    </table>
    <display:table name="crossValidationList" id="row" export="false" class="displayTag" requestURI="cross_validation.action" style="width:100%;text-align:center" pagesize="15">
        <display:column title="Dataset Name" style="width:20%;text-align:center" headerClass="headerTable" sortable="true">
            <%--${row.dsTitle}--%>
            ${row[6]}
        </display:column>
        <display:column title="Version" style="width:20%;text-align:center" headerClass="headerTable" sortable="true">
            <%--${row.dsVersion}--%>
            ${row[7]}
        </display:column>
        <%--<display:column title="Update Date" property="updateDate" format="{0,date,dd MMM yyyy HH:mm}" style="width:20%;text-align:center" headerClass="headerTable" sortable="true"/>--%>
        <display:column title="Update Date" style="width:20%;text-align:center" headerClass="headerTable" sortable="true">
            ${row[11]}
        </display:column>
        <display:column title="Update By" style="width:20%;text-align:center" headerClass="headerTable" sortable="true">
            ${row[12]}
        </display:column>
        <display:column title="Edit" style="width:10%;text-align:center" headerClass="headerTable" >
            <a href="javascript:edit('${row[0]}','${row[4]}','${row[6]}','${row[7]}')"><img src="../images/edit.gif " border="no" title="Edit"></a>
        </display:column>
        <display:column title="Delete" style="width:10%;text-align:center" headerClass="headerTable">
            <div onMouseOver="setDeleteId('${row[0]}');">
                <s:submit method="delete" type="image" src="../images/delete.gif" onclick="return delAction()" title="Delete"/>
            </div>
        </display:column>
    </display:table>
</td>
<td width="28" background="../images/table005.gif">
    <img src="../images/table005.gif" width="28" height="37" alt=""></td>
</tr>
<tr>
    <td><img src="../images/table006.gif" width="43" height="23" alt=""></td>
    <td background="../images/table007.gif"></td>
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