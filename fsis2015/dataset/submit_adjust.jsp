<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<html>
<head>
<title>Simple jsp page</title>
<link rel="stylesheet" type="text/css" href="../includes/css/style.css">

<script type='text/javascript' src='../dwr/engine.js'></script>
<script type='text/javascript' src='../dwr/util.js'></script>
<script type='text/javascript' src='../dwr/interface/AjaxManager.js'></script>

<script language="javascript" src="../includes/js/tp/utils.js"></script>
<script language="javascript" src="../includes/js/tp/validate.js"></script>
<script language="javascript" src="../includes/js/jquery.js"></script>
<script type="text/javascript">

      $(document).ready(function(){
         $('textarea[maxlength]').keyup(function(){
          var max = parseInt($(this).attr('maxlength'));
          if($(this).val().length > max){
           $(this).val($(this).val().substr(0, $(this).attr('maxlength')));
          }
          });
        });

    function findTitle(id, zone, keyName, keyValue, clearZones) {
        AjaxManager.findDsTitleById(id, function(data) {
            prepareOption(zone, data, keyName, keyValue, clearZones);
        });
    }
    function findSubtitle(id, zone, keyName, keyValue, clearZones) {
        AjaxManager.findDsTitleByIdAndOrg(id, null, function(data) {
            prepareOption(zone, data, keyName, keyValue, clearZones);
        });
    }
    function findVersion(id, zone, keyName, keyValue) {
        AjaxManager.findDsVersionById(id, function(data) {
            prepareOptionOne(zone, data, keyName, keyValue);
        });
    }

    function prepareOptionOne(zone, data, keyName, keyValue) {
        dwr.util.removeAllOptions(zone);
        document.getElementById(zone).options[0] = new Option('--------  Please Select  --------', '');
        dwr.util.addOptions(zone, data, keyName, keyValue);
    }
    function prepareOption(zone, data, keyName, keyValue, clearZones) {
        dwr.util.removeAllOptions(zone);
        document.getElementById(zone).options[0] = new Option('--------  Please Select  --------', '');
        dwr.util.addOptions(zone, data, keyName, keyValue);
        if (clearZones != null) {
            for (var i = 0; i < clearZones.length; i++) {
                dwr.util.removeAllOptions(clearZones[i]);
                document.getElementById(clearZones[i]).options[0] = new Option('--------  Please Select  --------', '');
            }
        }
    }

      function validateForm() {
        var thisForm = document.getElementById('form_submit_adjust');
          if (isEmptyById('sfi')) {
              alert('Please Select SFIs Name');
              thisForm.sfi.focus();
              return false;
          } else if (isEmptyById('group')) {
              alert('Please Select Group');
              thisForm.group.focus();
              return false;
          } else if (isEmptyById('title')) {
              alert('Please Select Title');
              thisForm.title.focus();
              return false;
          } else if (isEmptyById('subTitle')) {
              alert('Please Select SubTitle');
              thisForm.subTitle.focus();
              return false;
          } else if (isEmptyById('version')) {
              alert('Please Select Version');
              thisForm.version.focus();
              return false;
          }
          if (isEmptyById('upload')) {
              alert('Please Select File Name');
              thisForm.upload.focus();
              return false;
          } else {
              var file = getValue('upload');
              if ((file.substring(file.length - 4, file.length) != '.xml') && (file.substring(file.length - 4, file.length) != '.XML')) {
                  alert('Invalid File Type' + '\n Support XML Only');
                  thisForm.upload.focus();
                  return false;
              }
          }

          if (isEmptyById('adjustReason')) {
              alert('Please Input Adjust Reason');
              thisForm.adjustReason.focus();
              return false;
          }
          return true;
      }

      function preventSubmit() {
          if (validateForm()) {
              var thisForm = document.getElementById('form_submit_adjust');
              document.getElementById("submit_adjust_save").disabled = true;
              document.getElementById("reset").disabled = true;

              var hiddenf = document.createElement("input");
              hiddenf.setAttribute("type", "hidden");
              hiddenf.setAttribute("name", "method:save");

              thisForm.appendChild(hiddenf);
              thisForm.submit();
          }
      }
</script>
</head>
<body>
<s:form id="form_submit_adjust" action="submit_adjust" enctype="multipart/form-data">
    <%--<s:hidden name="type" id="type"/>--%>
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
                                    <td>
                                        <%--content here--%>
                                        <table width=100%>
                                            <tr>
                                                <td><b>Submit Adjust</b></td>
                                            </tr>
                                        </table>
                                        <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" class="displayTable">
                                            <tr class="bgGreen2">
                                                <td height=30 class="label" width="20%">Document Type :</td>
                                                <td width="80%">
                                                    <a>Structured</a>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td height=30 class="label">SFIs Name<span class="require_field">*</span> :</td>
                                                <td>
                                                    <c:if test="${sessionScope.userLogin.sfi.id eq 000}">
                                                        <select name="sfi" id="sfi">
                                                            <option value="">--------  Please Select  --------</option>
                                                            <%--<c:forEach items="${requestScope.sfiList}" var="obj">--%>
                                                            <c:forEach items="${requestScope.sfiFpoList}" var="obj">
                                                                <option value="${obj.id}">${obj.displayNameCodeAndCode}</option>
                                                            </c:forEach>
                                                        </select>
                                                    </c:if>
                                                    <c:if test="${sessionScope.userLogin.sfi.id ne 000}">
                                                        <s:hidden name="sfi"/>
                                                        ${requestScope.sfiName}
                                                    </c:if>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td class="label">Group<span class="require_field">*</span> :</td>
                                                <td>
                                                    <select name="group" id="group" onchange="findTitle(this.value,'title','id','name', new Array('subTitle','version'));">
                                                        <option value="">--------  Please Select  --------</option>
                                                        <c:forEach items="${requestScope.groupList}" var="obj">
                                                            <option value="${obj.id}">${obj.name}</option>
                                                        </c:forEach>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label">Title<span class="require_field">*</span> :</td>
                                                <td>
                                                    <select name="title" id="title" onchange="findSubtitle(this.value,'subTitle','id','name', new Array('version'));">
                                                        <option value="">--------  Please Select  --------</option>
                                                        <c:forEach items="${requestScope.titleList}" var="obj">
                                                            <option value="${obj.id}">${obj.name}</option>
                                                        </c:forEach>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td class="label">Subtitle<span class="require_field">*</span> :</td>
                                                <td>
                                                    <select name="subTitle" id="subTitle" onchange="findVersion(this.value,'version','id','name');">
                                                        <option value="">--------  Please Select  --------</option>
                                                        <c:forEach items="${requestScope.subTitleList}" var="obj">
                                                            <option value="${obj.id}">${obj.name}</option>
                                                        </c:forEach>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label">Version<span class="require_field">*</span> :</td>
                                                <td>
                                                    <select name="version" id="version">
                                                        <option value="">--------  Please Select  --------</option>
                                                        <c:forEach items="${requestScope.versionList}" var="obj">
                                                            <option value="${obj.id}">${obj.name}</option>
                                                        </c:forEach>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td class="label">Description :</td>
                                                <td>
                                                    <%--<input type="text" name="description" size="60" value="" id="description" maxlength="200"/>--%>
                                                    <%--<textarea rows="4" cols="60"  maxlength="200" name="description">--%>
                                                    <%--</textarea>--%>
                                                    <s:textarea rows="4" cols="60"  maxlength="200" name="description">
                                                    </s:textarea>

                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label">File name<span class="require_field">*</span> :</td>
                                                <td>
                                                    <input type="file" name="upload" size="60" value="" id="upload"/>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen2">
                                                <td class="label">Adjust Reason<span class="require_field">*</span> :</td>
                                                <td>
                                                    <%--<input type="text" name="adjustReason" size="60" value="" id="adjustReason"/>--%>
                                                    <%--<textarea rows="4" cols="60"  maxlength="1000" name="adjustReason">--%>
                                                    <%--</textarea>--%>
                                                    <s:textarea rows="4" cols="60" id="adjustReason"  maxlength="1000" name="adjustReason">
                                                    </s:textarea>
                                                </td>
                                            </tr>
                                            <tr class="bgGreen1">
                                                <td class="label">หลัง สตง. สอบทาน :</td>
                                                <td>
                                                    <s:checkbox id="passStatus" name="passStatus" />
                                                </td>
                                            </tr>
                                        </table>
                                        <table width="100%">
                                            <tr>
                                                <td width="100%" align="center">
                                                    <input type="button" id="submit_adjust_save" value="OK" class="button" onclick="preventSubmit()"/>&nbsp;
                                                    <input type="reset" id="reset" name="reset" value="Reset" class="button"/>
                                                    <%--<s:reset value="Reset" id="reset" name="reset" cssClass="button"/>--%>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="20px">&nbsp;</td>
                                </tr>
                            </table>
                          </td>
                        <td width="28" background="../images/table005.gif">
                            <img src="../images/table005.gif" width="28" height="37" alt=""></td>
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
</body>
</html>
