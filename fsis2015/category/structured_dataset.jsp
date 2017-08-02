<%@ page import="th.go.mof.fpo.Constants" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>Simple jsp page</title>

    <META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
    <META HTTP-EQUIV="Pragma" CONTENT="no-cache">
    <META HTTP-EQUIV="Expires" CONTENT="0">

    <link rel="stylesheet" type="text/css" href="../includes/css/style.css">
    <script type="text/javascript" src="../includes/js/tp/utils.js"></script>
    <script type="text/javascript" src="../includes/js/jquery.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/includes/js/tp/utils.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/includes/js/tp/validate.js"></script>
    <script type="text/javascript">
        function add() {
            for(var i = 0 ;  i < thisForm.type.length ; i++){
                if(thisForm.type[i].checked){
                    //document.location = thisForm.type[i].value;
                    letsGo(thisForm.type[i].value, '');
                }
            }
        }

        function resetForm(){
            thisForm.group.value = "";
            thisForm.title.value = "";
            thisForm.subTitle.value = "";
            thisForm.version.value = "";
        }

        function letsGo(action, id) {
            var group = document.getElementById("group").value;
            var title = document.getElementById("title").value;
            var subTitle = document.getElementById("subTitle").value;
            var version = document.getElementById("version").value;

            pageLink1 = action + '?id=' + id;
            pageLink2 = '&<%=Constants.StructuredDatasetField.GROUP_HIDDEN%>=' + group;
            pageLink3 = '&<%=Constants.StructuredDatasetField.TITLE_HIDDEN%>=' + title;
            pageLink4 = '&<%=Constants.StructuredDatasetField.SUB_TITLE_HIDDEN%>=' + subTitle;
            pageLink5 = '&<%=Constants.StructuredDatasetField.VERSION_HIDDEN%>=' + version;

          location.href = pageLink1.concat(pageLink2, pageLink3, pageLink4, pageLink5);
        }
    </script>
</head>
<body>
<s:form action="structured_dataset" id="structured_file">
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
                                            <td width="35%"><b>Structured Dataset</b></td>
                                            <td width="65%" align="right">
                                                <c:if test="${sessionScope.menuAuthentication.structuredDatasetManage}">
                                                    <s:radio name="type" list="#{'structured_dataset_group.action':'Group','structured_dataset_title.action':'Title','structured_dataset_sub_title.action':'Sub Title','structured_dataset_version.action':'Version'}"/>
                                                    <input name="button" type=button id="butAdd" class="button" onClick="add();" value="Add">
                                                </c:if>
                                            </td>
                                        </tr>
                                    </table>
                                    <table width="100%">
                                        <tr>
                                            <td align="right">
                                                <table width="100%" class="displayTable">
                                                    <tr valign="middle" class="bgGreen2">
                                                        <td width="20%" class="label">
                                                            Group :
                                                        </td>
                                                        <td width="80%">
                                                            <s:textfield name="group" id="group" size="40"/>
                                                        </td>
                                                    </tr>
                                                    <tr valign="middle" class="bgGreen1">
                                                        <td class="label">
                                                            Title :
                                                        </td>
                                                        <td>
                                                            <s:textfield name="title" id="title" size="40"/>
                                                        </td>
                                                    </tr>
                                                    <tr valign="middle" class="bgGreen2">
                                                        <td class="label">
                                                            Sub Title :
                                                        </td>
                                                        <td>
                                                            <s:textfield name="subTitle" id="subTitle" size="40"/>
                                                        </td>
                                                    </tr>
                                                    <tr valign="middle" class="bgGreen1">
                                                        <td class="label">
                                                            Version :
                                                        </td>
                                                        <td>
                                                            <s:textfield name="version" id="version" size="40"/>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <table width="100%">
                                                    <tr>
                                                        <td align="center">
                                                            <s:submit value="Search" cssClass="button" method="search"/>&nbsp;
                                                            <button class="button" onclick="resetForm()">Reset</button>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <div align="left">
                                                <display:table name="objectList" id="row" export="false" cellpadding="0" cellspacing="1" class="displayTag" style="width:100%"  pagesize="100" requestURI="structured_dataset.action">
                                                    <c:if test="${sessionScope.menuAuthentication.structuredDatasetManage}">
                                                        <display:column title="Group" group="1" headerClass="headerTable" style="text-align:left;width:15%">
                                                            <%--<a href="structured_dataset_group.action?id=${row[0]}">${row[1]}</a>--%>
                                                            <a href="#" onclick="letsGo('structured_dataset_group.action',${row[0]} )">${row[1]}</a>
                                                        </display:column>
                                                        <display:column title="Title" group="2" headerClass="headerTable" style="text-align:left;width:20%">
                                                            <%--<a href="structured_dataset_title.action?id=${row[2]}">${row[3]}</a>--%>
                                                             <a href="#" onclick="letsGo('structured_dataset_title.action',${row[2]})">${row[3]}</a>
                                                        </display:column>
                                                        <display:column title="Sub Title" group="3" headerClass="headerTable" style="text-align:left;width:8%">
                                                            <%--<a href="structured_dataset_sub_title.action?id=${row[4]}">${row[5]}</a>--%>
                                                             <a href="#" onclick="letsGo('structured_dataset_sub_title.action',${row[4]})">${row[5]}</a>
                                                        </display:column>
                                                        <display:column title="Version" headerClass="headerTable" style="text-align:left;width:8%">
                                                            <%--<a href="structured_dataset_version.action?id=${row[6]}">${row[7]}</a>--%>
                                                            <a href="#" onclick="letsGo('structured_dataset_version.action',${row[6]})">${row[7]}</a>
                                                        </display:column>
                                                    </c:if>
                                                    <c:if test="${not sessionScope.menuAuthentication.structuredDatasetManage}">
                                                        <display:column title="Group" group="1" headerClass="headerTable" style="text-align:left;width:15%">
                                                            ${row[1]}
                                                        </display:column>
                                                        <display:column title="Title" group="2" headerClass="headerTable" style="text-align:left;width:20%">
                                                            ${row[3]}
                                                        </display:column>
                                                        <display:column title="Sub Title" group="3" headerClass="headerTable" style="text-align:left;width:10%">
                                                            ${row[5]}
                                                        </display:column>
                                                        <display:column title="Version" headerClass="headerTable" style="text-align:left;width:10%">
                                                            ${row[7]}
                                                        </display:column>
                                                    </c:if>
                                                    <display:column title="Priority" headerClass="headerTable" style="text-align:center;width:5%">
                                                        ${row[11]}
                                                    </display:column>
                                                    <display:column title="Effective Date From" headerClass="headerTable" style="text-align:center;width:10%">
                                                        <fmt:formatDate value="${row[16]}" pattern="dd MMM yyyy"/>
                                                    </display:column>
                                                    <display:column title="Effective Date To" headerClass="headerTable" style="text-align:center;width:10%">
                                                        <fmt:formatDate value="${row[17]}" pattern="dd MMM yyyy"/>
                                                    </display:column>

                                                    <%--<display:column title="Manual" headerClass="headerTable" style="text-align:left;width:15%">--%>
                                                         <%--<a href="../downloadFile.sl?fileName=${row[8]}&originalFileName=${row[13]}&systemName=<%=Constants.Fsis2010UploadDirectory.MANUAL%>" title="Click here to download.">${row[13]}</a>--%>
                                                    <%--</display:column>--%>
                                                    <%--<display:column title="Data Entry Path" headerClass="headerTable" style="text-align:left;width:15%">--%>
                                                         <%--<a href="../downloadFile.sl?fileName=${row[9]}&originalFileName=${row[14]}&systemName=<%=Constants.Fsis2010UploadDirectory.ENTRY%>"  title="Click here to download.">${row[14]}</a>--%>
                                                    <%--</display:column>--%>
                                                    <%--<display:column title="XSD Path" headerClass="headerTable" style="text-align:left;width:15%">--%>
                                                         <%--<a href="../downloadFile.sl?fileName=${row[10]}&originalFileName=${row[15]}&systemName=<%=Constants.XSD%>" title="Click here to download.">${row[15]}</a>--%>
                                                    <%--</display:column>--%>
                                                    <%--<display:column title="Manual" headerClass="headerTable" style="text-align:center;width:10%">--%>
                                                        <%--<c:if test="${not empty row[8]}">--%>
                                                            <%--<a href="../downloadFile.sl?fileName=${row[8]}&originalFileName=${row[13]}&systemName=<%=Constants.Fsis2010UploadDirectory.MANUAL%>" title="Click here to download.">Download</a>--%>
                                                        <%--</c:if>--%>
                                                        <%--<c:if test="${empty row[8]}">Download</c:if>--%>
                                                    <%--</display:column>--%>
                                                    
                                                    <display:column title="Data Entry" headerClass="headerTable" style="text-align:center;width:10%">
                                                        <c:if test="${not empty row[9]}">
                                                            <a href="../downloadFile.sl?fileName=${row[9]}&originalFileName=${row[14]}&systemName=<%=Constants.Fsis2010UploadDirectory.ENTRY%>"  title="Click here to download.">Download</a>
                                                        </c:if>
                                                        <c:if test="${empty row[9]}">Download</c:if>
                                                    </display:column>
                                                    <display:column title="XSD" headerClass="headerTable" style="text-align:center;width:10%">
                                                        <c:if test="${not empty row[10]}">
                                                            <a href="../downloadFile.sl?fileName=${row[10]}&originalFileName=${row[15]}&systemName=<%=Constants.XSD%>" title="Click here to download.">Download</a>
                                                        </c:if>
                                                        <c:if test="${empty row[10]}">Download</c:if>
                                                    </display:column>
                                                </display:table>
                                                </div>
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

    jq("#structured_file").keypress(function(event){
      if(event.keyCode == 13){
          jq("#butAdd").attr('disabled','disabled');
          jq("#btnSearch").click();
      }
    }) ;

</script>
</body>
</html>