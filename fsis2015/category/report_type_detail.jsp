<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../includes/css/style.css">
<LINK href="../includes/css/popcalendar.css" rel="stylesheet" type="text/css">
<script type='text/javascript' src='<%=request.getContextPath()%>/dwr/engine.js'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/dwr/util.js'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/dwr/interface/AjaxManager.js'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/includes/js/manager.js'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/includes/js/util.js'></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/includes/js/tp/utils.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/includes/js/tp/validate.js"></script>
<script type="text/javascript">

    function findTitle(id, zone, keyName, keyValue,subTitle,version) {
        AjaxManager.findDsTitleById(id, function(data) {
            prepareOption(zone, data, keyName, keyValue,subTitle,version);
        });

    }

    function findDsVersion(id, zone, keyName, keyValue) {
        AjaxManager.findDsVersionById(id, function(data) {
            prepareOptionOne(zone, data, keyName, keyValue);
        });
    }
    function prepareOptionOne(zone, data, keyName, keyValue) {
        dwr.util.removeAllOptions(zone);
        document.getElementById(zone).options[0] = new Option('----- Please Select -----', '');
        dwr.util.addOptions(zone, data, keyName, keyValue);
    }

    function prepareOption(zone, data, keyName, keyValue,subTitle,version) {
        dwr.util.removeAllOptions(subTitle);
        dwr.util.removeAllOptions(zone);
        dwr.util.removeAllOptions(version);
        document.getElementById(zone).options[0] = new Option('----- Please Select -----', '');
        document.getElementById(version).options[0] = new Option('----- Please Select -----', '');
        document.getElementById(subTitle).options[0] = new Option('----- Please Select -----', '');
        dwr.util.addOptions(zone, data, keyName, keyValue, subTitle,version);
    }

    function resetForm() {
            thisForm.group.selectedIndex = 0;
            thisForm.title.selectedIndex = 0;
            thisForm.subTitle.selectedIndex = 0;
            thisForm.version.selectedIndex = 0;
        }
</script>

</head>
<body>
<s:form action="report_type_detail" enctype="multipart/form-data">
    <s:hidden name="reportId" id="reportId"/>
<s:hidden name="datasetNameHidden" id="datasetNameHidden"/>
<s:hidden name="datasetVersionHidden" id="datasetVersionHidden"/>
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
                                    <td width="15%" colspan="2"><b>Report Type : Add/Edit </b></td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <table width="100%" class="displayTable">
                                            <tr class="bgGreen2">
                                                <td width="20%" class="label">Group<span class="require_field">*</span> :</td>
                                                <td width="80%">
                                                    <s:select name="group"
                                                              id="group"
                                                              list="groupList"
                                                              listKey="id"
                                                              listValue="name"
                                                              headerKey=""
                                                              headerValue="----------  Please Select  ----------"
                                                              cssStyle="width:270px"
                                                              onchange="findTitle(this.value,'title','id','name','subTitle','version')"/>
                                               </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label">Title<span class="require_field">*</span> :</td>
                                                <td>
                                                    <s:select name="title"
                                                              id="title"
                                                              list="titleList"
                                                              listKey="id"
                                                              listValue="name"
                                                              headerKey=""
                                                              headerValue="----------  Please Select  ----------"
                                                              cssStyle="width:270px"
                                                              onchange="findTitle(this.value,'subTitle','id','name','subTitle','version');"/>
                                                </td>
                                             </tr>
                                             <tr class="bgGreen2">
                                                <td class="label">Sub Title<span class="require_field">*</span> :</td>
                                                <td>
                                                     <s:select name="subTitle"
                                                               id="subTitle"
                                                               list="subTitleList"
                                                               listKey="id"
                                                               listValue="name"
                                                               headerKey=""
                                                               headerValue="----------  Please Select  ----------"
                                                               cssStyle="width:270px"
                                                               onchange="findDsVersion(this.value,'version','id','name');"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label">Version<span class="require_field">*</span> :</td>
                                                <td>
                                                    <s:select name="version"
                                                              id="version"
                                                              list="versionList"
                                                              listKey="id"
                                                              listValue="version"
                                                              headerValue="----------  Please Select  ----------"
                                                              headerKey=""
                                                              cssStyle="width:270px"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td class="label">XSL File<span class="require_field">*</span>  :</td>
                                                <td>
                                                    <s:file name="view" id="view" cssStyle="width:500px"/>&nbsp;(for view)
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label">XSL File<span class="require_field">*</span> :</td>
                                                <td>
                                                    <s:file name="excel" id="excel" cssStyle="width:500px"/>&nbsp;(for convert to excel)
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td class="label">Enable :</td>
                                                <td><s:checkbox name="enable" id="enable"/> </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">
                                        <s:submit name="save" method="save" id="" value="Save" cssClass="button" onclick="return validateForm();"/>&nbsp;
                                        <s:reset value="Reset" cssClass="button"/>&nbsp;
                                        <s:submit name="back" value="Back" method="back" cssClass="button"/>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td width="28" background="../images/table005.gif"><img src="../images/table005.gif" width="28" ></td>
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

    function validateForm() {
        if(isEmptyById('group')){
            alert('Please Input Group !!');
            return false;
        }
        if(isEmptyById('title')){
            alert('Please Input Title !!');
            return false;
        }
        if(isEmptyById('subTitle')){
            alert('Please Input SubTitle !!');
            return false;
        }
        if(isEmptyById('version')){
            alert('Please Input Version !!');
            return false;
        }
        if(isEmptyById('reportId')){
            if (isEmptyById('view')) {
                alert('Please Input Excel File (for view) !!');
                return false;
            }
            if (! isEmptyById('view')){
                var fileView = getValue('view');
                if (fileView.substring(fileView.length - 4, fileView.length) != '.xsl'){
                    alert('Invalid File Type (for view) Support XSL Only');
                    return false;
                }
            }
            if (isEmptyById('excel')) {
                alert('Please Input Excel File (for convert to excel) !!');
                return false;
            }
            if (! isEmptyById('excel')){
                var fileExcel = getValue('excel');
                if (fileExcel.substring(fileExcel.length - 4, fileExcel.length) != '.xsl'){
                    alert('Invalid File Type (for convert to excel) Support XSL Only');
                    return false;
                }
            }
        }
        return true;
    }
    <c:if test="${requestScope.duplicate}">
        alert('This version has already upload xsl file');
    </c:if>
</script>
</body>
</html>
